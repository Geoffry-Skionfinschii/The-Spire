#version 110

vec4 linear_fog(vec4 inColor, float vertexDistance, float fogStart, float fogEnd, vec4 fogColor) {
    if (vertexDistance <= fogStart) {
        return inColor;
    }

    float fogValue = vertexDistance < fogEnd ? smoothstep(fogStart, fogEnd, vertexDistance) : 1.0;
    return vec4(mix(inColor.rgb, fogColor.rgb, fogValue * fogColor.a), inColor.a);
}

float near = 0.1; 
float far  = 100.0; 
  
float LinearizeDepth(float depth) 
{
    float z = depth * 2.0 - 1.0; // back to NDC 
    return (2.0 * near * far) / (far + near - z * (far - near));    
}

uniform sampler2D DiffuseSampler;
uniform sampler2D DiffuseDepthSampler;
uniform sampler2D IsGlowingSampler;

varying vec2 texCoord;
varying vec2 oneTexel;

void main() {

    float dist = texture2D(DiffuseDepthSampler, texCoord).r;

    float distLin = LinearizeDepth(dist);
    
    vec4 inColor = texture2D(DiffuseSampler, texCoord);
    
    float fogStart = 5.0;
    float fogEnd = 25.0;
    vec4 fogColor = vec4(0.2, 1.0, 1.0, 1.0);
    if(texture2D(IsGlowingSampler, vec2(0.0, 0.0)).a > 0.5) {
        gl_FragColor = linear_fog(inColor, distLin, fogStart, fogEnd, fogColor);
    } else {
        gl_FragColor = inColor;
    }
}