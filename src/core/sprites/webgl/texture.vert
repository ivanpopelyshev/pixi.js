attribute vec3 aVertexPosition;
attribute vec2 aTextureCoord;
attribute vec4 aColor;
attribute float aTextureId;

uniform mat4 projectionMatrix;

varying vec2 vTextureCoord;
varying vec4 vColor;
varying float vTextureId;

void main(void){
   gl_Position = projectionMatrix * vec4(aVertexPosition, 1.0);
   vTextureCoord = aTextureCoord;
   vTextureId = aTextureId;
   vColor = vec4(aColor.rgb * aColor.a, aColor.a);
}
