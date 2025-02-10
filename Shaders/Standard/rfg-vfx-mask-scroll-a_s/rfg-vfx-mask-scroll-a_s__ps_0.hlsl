cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float4 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float4 _58 = r0;
    _58.x = cb6_m[0].w * asfloat(1132068864u);
    r0 = _58;
    float4 _64 = r0;
    _64.x = sin(r0.xxxx.x);
    r0 = _64;
    float4 _71 = r0;
    _71.x = r0.x + asfloat(1065353216u);
    r0 = _71;
    float4 _81 = r0;
    _81.x = (r0.x * asfloat(1041865114u)) + asfloat(1060320051u);
    r0 = _81;
    float2 _100 = (float2(cb2_m[1].x, cb2_m[1].y) * cb6_m[0].w.xx) + shader_in[1].xy;
    r0 = float4(r0.x, _100.x, _100.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.yzyy.xy);
    float3 _122 = (r1.zyx * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _122.x, _122.y, _122.z);
    float2 _135 = (r0.wz * asfloat(uint2(1036831949u, 1036831949u))) + shader_in[1].zw;
    r1 = float4(_135.x, _135.y, r1.z, r1.w);
    float2 _145 = (-r0.yz) + shader_in[2].xy;
    r0 = float4(r0.x, _145.x, _145.y, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    float2 _165 = (cb6_m[0].w.xx * asfloat(uint2(1073741824u, 0u))) + r1.xy;
    r0 = float4(r0.x, _165.x, _165.y, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    r3 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _193 = r0;
    _193.y = r0.x * r3.w;
    r0 = _193;
    r4 = r2 * float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float3 _221 = (r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r1 = float4(_221.x, _221.y, _221.z, r1.w);
    float3 _228 = r3.xyz * r4.xyz;
    r2 = float4(_228.x, _228.y, _228.z, r2.w);
    float3 _239 = (r2.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r1.xyz;
    r1 = float4(_239.x, _239.y, _239.z, r1.w);
    float3 _248 = r1.xyz * cb2_m[1].z.xxx;
    r1 = float4(_248.x, _248.y, _248.z, r1.w);
    float3 _256 = r1.xyz * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    r1 = float4(_256.x, _256.y, _256.z, r1.w);
    float4 _267 = r0;
    _267.z = (r4.w * r0.x) + r0.y;
    r0 = _267;
    float4 _274 = r0;
    _274.x = r0.x * r4.w;
    r0 = _274;
    float4 _284 = r0;
    _284.x = (r0.x * r0.y) + r0.z;
    r0 = _284;
    float4 _291 = o0;
    _291.w = r1.w * r0.x;
    o0 = _291;
    float4 _299 = r0;
    _299.x = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _299;
    float3 _305 = r1.xyz * r0.xxx;
    r0 = float4(_305.x, _305.y, _305.z, r0.w);
    float3 _323 = (shader_in[2].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    o0 = float4(_323.x, _323.y, _323.z, o0.w);
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
