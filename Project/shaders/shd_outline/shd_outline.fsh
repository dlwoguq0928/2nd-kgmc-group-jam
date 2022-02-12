//
// Simple passthrough fragment shader
//
#define PI 3.14159265358979
#define thick 1.25 

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 fragCoord;

uniform vec2 size;

void main()
{
	vec2 uv = v_vTexcoord ;
    vec2 apix = vec2(1./size);
    vec4 final = vec4(0.0);

    for ( float i = 0.; i < 4.; i += 1. )
    {
		final += vec4(0.0,0.0,0.0,1.0)*texture2D( gm_BaseTexture, uv + apix*thick* vec2( cos(PI*0.5*i),sin(PI*0.5*i) ) );
    }

    gl_FragColor = final;
}