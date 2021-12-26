#version 450 core

/* // load vec3 from buffer 0 for this vertex and store it as the position */
/* layout(location = 0) in vec3 vertex_position_modelspace; */
/* layout(location = 1) in vec2 vertex_uv; */

/* uniform mat4 mvp; */

/* out vec2 uv; */

/* void main() */
/* { */
/*     gl_Position = mvp * vec4(vertex_position_modelspace, 1); */
/*     uv = vertex_uv; */
/* } */

layout(location = 0) in vec3 a_position;

uniform mat4 u_mvp;

out vec3 pos;

void main(){
    gl_Position = u_mvp * vec4(a_position, 1.0);
    pos = a_position;
}
