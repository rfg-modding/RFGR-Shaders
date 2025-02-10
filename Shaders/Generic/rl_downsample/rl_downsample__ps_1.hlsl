cbuffer cb2_t : register(b2)
{
    float4 cb2_m[16] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

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
    float2 _49 = shader_in[1].xy + float2(cb2_m[5].x, cb2_m[5].y);
    r0 = float4(_49.x, _49.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float2 _71 = shader_in[1].xy + float2(cb2_m[7].x, cb2_m[7].y);
    r1 = float4(_71.x, _71.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r0 += r1;
    float2 _95 = shader_in[1].xy + float2(cb2_m[13].x, cb2_m[13].y);
    r1 = float4(_95.x, _95.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r0 += r1;
    float2 _118 = shader_in[1].xy + float2(cb2_m[15].x, cb2_m[15].y);
    r1 = float4(_118.x, _118.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r0 += r1;
    o0 = r0 * asfloat(uint4(1048576000u, 1048576000u, 1048576000u, 1048576000u));
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
