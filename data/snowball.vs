attribute vec3 uv_vertexAttrib;
attribute vec2 uv_texCoordAttrib0;
uniform vec4 uv_cameraPos;
uniform vec4 uv_lightPos;
uniform mat4 uv_modelViewInverseMatrix;
uniform mat4 uv_modelViewProjectionMatrix;
uniform mat4 uv_scene2ObjectMatrix;
uniform float Scale;

out vec2 TexCoord;
const float PI = 3.1415926535897932384626433;
const float DEG2PI = PI / 180.0;
const mat3 RotMat = mat3(1,  0, 0,
						 0,  0, 1,
						 0, -1, 0);



void main()
{  
  gl_Position = uv_modelViewProjectionMatrix*vec4(RotMat*uv_vertexAttrib,1.0);
  TexCoord=vec2(0.75-uv_texCoordAttrib0.x,uv_texCoordAttrib0.y);
}