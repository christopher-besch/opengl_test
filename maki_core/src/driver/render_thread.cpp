#include "render_thread.h"

namespace Maki {

// called from control thread //
RenderThread::RenderThread(const std::string& title, uint32_t width, uint32_t height, std::function<void()> termination_callback)
    : m_termination_callback(termination_callback)
{
    m_thread = std::thread([this, title, width, height]() {
        m_renderer      = Renderer::create(title, width, height);
        m_camera_driver = new CameraDriver(m_renderer);

        setup();
        run();
        m_termination_callback();
    });
}

RenderThread::~RenderThread()
{
    MAKI_ASSERT_WARN(m_thread.joinable(), "Attempting termination of unjoinable render thread.");
    m_renderer->terminate();
    await_termination();

    delete m_renderer;
    delete m_camera_driver;

    // TODO: remove example
    delete m_shader;
    delete m_vertex_pos_buffer;
    delete m_vertex_col_buffer;
    delete m_vertex_array;
    delete m_index_buffer;
}

void RenderThread::await_termination()
{
    // not even running?
    if(!m_thread.joinable())
        return;
    m_thread.join();
}

// called from render thread //
void RenderThread::setup()
{
    // TODO: remove example
    m_shader = Shader::create("maki_core/res/shaders/simple_vertex.glsl", "maki_core/res/shaders/simple_fragment.glsl");
    // shader->set_float3("u_color", {1.0f, 1.0f, 0.0f});

    // cube vertices
    const GLfloat vertex_pos[] = {
        -1.0f, -1.0f, +1.0f, // 0 bottom front left
        +1.0f, -1.0f, +1.0f, // 1 bottom front right
        -1.0f, -1.0f, -1.0f, // 2 bottom back  left
        +1.0f, -1.0f, -1.0f, // 3 bottom back  right
        -1.0f, +1.0f, +1.0f, // 4 top    front left
        +1.0f, +1.0f, +1.0f, // 5 top    front right
        -1.0f, +1.0f, -1.0f, // 6 top    back  left
        +1.0f, +1.0f, -1.0f  // 7 top    back  right
    };
    const GLfloat vertex_color[] = {
        0.6f, 0.6f, 0.0f,
        0.0f, 0.0f, 0.6f,
        0.0f, 0.6f, 0.0f,
        0.6f, 0.0f, 0.0f,
        0.0f, 0.6f, 0.0f,
        0.6f, 0.0f, 0.6f,
        0.6f, 0.6f, 0.0f,
        1.0f, 1.0f, 1.0f};
    m_vertex_pos_buffer = VertexBuffer::create({{"a_position", DataType::float3}}, vertex_pos, sizeof(vertex_pos));
    m_vertex_col_buffer = VertexBuffer::create({{"a_color", DataType::float3}}, vertex_color, sizeof(vertex_color));

    const uint32_t index_buffer_data[] = {
        2, 3, 0, 0, 3, 1, // bottom
        0, 1, 5, 5, 4, 0, // front
        2, 0, 4, 4, 6, 2, // left
        1, 3, 7, 7, 5, 1, // right
        3, 2, 6, 6, 7, 3, // back
        7, 6, 4, 4, 5, 7  // top
    };

    m_index_buffer = IndexBuffer::create(sizeof(index_buffer_data) / sizeof(uint32_t), index_buffer_data);

    m_vertex_array = VertexArray::create();
    m_vertex_array->add_vertex_buffer(m_vertex_pos_buffer);
    m_vertex_array->add_vertex_buffer(m_vertex_col_buffer);
    m_vertex_array->set_index_buffer(m_index_buffer);
}

void RenderThread::run()
{
    do {
        render_frame();
    } while(!m_renderer->should_terminate());
    // thread killed
}

void RenderThread::render_frame()
{
    // TODO: remove example
    m_camera_driver->update(m_renderer->get_last_frame_time());
    m_renderer->start_frame();
    // m_renderer->get_camera()->set_fov(glm::radians(float(i)));
    mat4 mvp = m_renderer->get_camera()->get_view_projection() * mat4 {1.0f};
    m_shader->set_mat4("u_mvp", mvp);
    m_renderer->draw(m_vertex_array, m_index_buffer, m_shader);
    m_renderer->end_frame();
}

} // namespace Maki