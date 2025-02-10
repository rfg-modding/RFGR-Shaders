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
    r1 = (float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].x, cb2_m[1].y) * cb6_m[0].w.xxxx) + shader_in[1].zwxy;
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float3 _121 = (r2.zyx * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _121.x, _121.y, _121.z);
    float2 _134 = (r0.wz * asfloat(uint2(1036831949u, 1036831949u))) + shader_in[1].xy;
    r1 = float4(r1.x, r1.y, _134.x, _134.y);
    float2 _142 = (-r0.yz) + r1.xy;
    r0 = float4(r0.x, _142.x, _142.y, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    float2 _162 = (cb6_m[0].w.xx * asfloat(uint2(0u, 1073741824u))) + r1.zw;
    r0 = float4(r0.x, _162.x, _162.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    r1 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _189 = r0;
    _189.y = r0.x * r1.w;
    r0 = _189;
    r4 = r3 * float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float3 _217 = (r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r1.xyz;
    r2 = float4(_217.x, _217.y, _217.z, r2.w);
    float3 _224 = r1.xyz * r4.xyz;
    r1 = float4(_224.x, _224.y, _224.z, r1.w);
    float3 _235 = (r1.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r2.xyz;
    r1 = float4(_235.x, _235.y, _235.z, r1.w);
    float3 _244 = r1.xyz * cb2_m[1].z.xxx;
    r1 = float4(_244.x, _244.y, _244.z, r1.w);
    float3 _252 = r1.xyz * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    r1 = float4(_252.x, _252.y, _252.z, r1.w);
    float4 _263 = r0;
    _263.z = (r4.w * r0.x) + r0.y;
    r0 = _263;
    float4 _270 = r0;
    _270.x = r0.x * r4.w;
    r0 = _270;
    float4 _280 = r0;
    _280.x = (r0.x * r0.y) + r0.z;
    r0 = _280;
    float4 _287 = r0;
    _287.x = r2.w * r0.x;
    r0 = _287;
    float4 _296 = r0;
    _296.y = clamp(shader_in[2].y, 0.0f, 1.0f);
    r0 = _296;
    float4 _303 = o0;
    _303.w = r0.y * r0.x;
    o0 = _303;
    float4 _311 = r0;
    _311.x = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _311;
    float3 _317 = r1.xyz * r0.xxx;
    r0 = float4(_317.x, _317.y, _317.z, r0.w);
    float3 _335 = (shader_in[2].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    o0 = float4(_335.x, _335.y, _335.z, o0.w);
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
