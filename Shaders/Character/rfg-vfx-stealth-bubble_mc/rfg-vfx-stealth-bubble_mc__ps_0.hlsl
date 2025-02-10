cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _57 = r0;
    _57.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _57;
    float4 _64 = r0;
    _64.x = r0.x * asfloat(1028443341u);
    r0 = _64;
    float2 _74 = (-shader_in[1].zw) + asfloat(uint2(1065353216u, 1065353216u));
    r0 = float4(r0.x, _74.x, _74.y, r0.w);
    float4 _82 = r0;
    _82.y = r0.y * r0.y;
    r0 = _82;
    float4 _93 = r1;
    _93.z = (r0.y * r0.y) + r0.x;
    r1 = _93;
    float2 _97 = asfloat(uint2(0u, 0u));
    r1 = float4(_97.x, _97.y, r1.z, r1.w);
    float3 _105 = r0.zzz * r1.xyz;
    r0 = float4(_105.x, _105.y, _105.z, r0.w);
    float3 _127 = (shader_in[1].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_127.x, _127.y, _127.z, r0.w);
    float4 _131 = r0;
    _131.w = asfloat(1065353216u);
    r0 = _131;
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
