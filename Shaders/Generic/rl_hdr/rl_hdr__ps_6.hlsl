cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt4s4;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[1].xyxx.xy);
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    r1 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[1].xyxx.xy);
    o0 = (r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w)) + r0;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
