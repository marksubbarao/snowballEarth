uniform float uv_fade;
uniform float uv_alpha;
uniform sampler2D startMap;
uniform sampler2D endMap;
uniform sampler2D transitionMap;
uniform sampler2D stateTexture;
uniform float snowPhase;
flat in float DistanceFade;
in vec2 TexCoord;

void main()
{	
	float transInterval = 1./64.;
	vec4 startColor = texture(startMap,TexCoord);
	vec4 endColor = texture(endMap,TexCoord);
	vec4 transitionColor = texture(transitionMap,TexCoord);
	vec4 color = mix(startColor,endColor,clamp((snowPhase-transitionColor.r)/transInterval,0.0,1.0));
    color.a*=uv_alpha*uv_fade;
	gl_FragColor = color;

}