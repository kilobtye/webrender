#version 110

uniform sampler2D sDiffuse;
uniform sampler2D sMask;
uniform vec4 uBlendParams;
uniform vec2 uDirection;
uniform vec4 uFilterParams;
uniform vec2 uTextureSize;

varying vec2 vPosition;
varying vec4 vColor;
varying vec3 vColorTexCoord;
varying vec3 vMaskTexCoord;
varying vec4 vBorderPosition;
varying vec4 vBorderRadii;
varying vec2 vDestTextureSize;
varying vec2 vSourceTextureSize;
varying float vBlurRadius;

vec4 Texture(sampler2D sampler, vec3 texCoord) {
    return texture2D(sampler, texCoord.xy);
}

float GetAlphaFromMask(vec4 mask) {
    return mask.a;
}

void SetFragColor(vec4 color) {
    gl_FragColor = color;    
}

