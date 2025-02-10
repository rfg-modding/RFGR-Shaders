cbuffer cb0_t : register(b0)
{
    float4 cb0_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float4 _53 = r0;
    _53.x = cb2_m[3].z + asfloat(1008981770u);
    r0 = _53;
    float4 _60 = r0;
    _60.x = asfloat(1073741824u) / r0.x;
    r0 = _60;
    float4 _69 = r0;
    _69.x = r0.x * cb0_m[1].z;
    r0 = _69;
    float4 _75 = r0;
    _75.x = cos(r0.xxxx.x);
    r0 = _75;
    float4 _82 = r0;
    _82.x = r0.x + asfloat(1065353216u);
    r0 = _82;
    float4 _89 = r0;
    _89.x = r0.x * asfloat(1056964608u);
    r0 = _89;
    r1 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r0 = (r0.xxxx * r1) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _147 = r1;
    _147.w = r1.w * shader_in[1].z;
    r1 = _147;
    r0 *= r1;
    float4 _158 = r1;
    _158.x = (-shader_in[1].w) + asfloat(1065353216u);
    r1 = _158;
    float3 _165 = r0.xyz * r1.xxx;
    r0 = float4(_165.x, _165.y, _165.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
