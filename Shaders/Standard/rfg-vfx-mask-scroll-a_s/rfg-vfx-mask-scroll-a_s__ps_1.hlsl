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
    float4 _53 = r0;
    _53.x = cb6_m[0].w * asfloat(1132068864u);
    r0 = _53;
    float4 _59 = r0;
    _59.x = sin(r0.xxxx.x);
    r0 = _59;
    float4 _66 = r0;
    _66.x = r0.x + asfloat(1065353216u);
    r0 = _66;
    float4 _76 = r0;
    _76.x = (r0.x * asfloat(1041865114u)) + asfloat(1060320051u);
    r0 = _76;
    float2 _95 = (float2(cb2_m[1].x, cb2_m[1].y) * cb6_m[0].w.xx) + shader_in[1].xy;
    r0 = float4(r0.x, _95.x, _95.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.yzyy.xy);
    float3 _117 = (r1.zyx * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _117.x, _117.y, _117.z);
    float2 _130 = (r0.wz * asfloat(uint2(1036831949u, 1036831949u))) + shader_in[1].zw;
    r1 = float4(_130.x, _130.y, r1.z, r1.w);
    float2 _140 = (-r0.yz) + shader_in[2].xy;
    r0 = float4(r0.x, _140.x, _140.y, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    float2 _160 = (cb6_m[0].w.xx * asfloat(uint2(1073741824u, 0u))) + r1.xy;
    r0 = float4(r0.x, _160.x, _160.y, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    r3 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _188 = r0;
    _188.y = r0.x * r3.w;
    r0 = _188;
    r4 = r2 * float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float3 _216 = (r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r1 = float4(_216.x, _216.y, _216.z, r1.w);
    float3 _223 = r3.xyz * r4.xyz;
    r2 = float4(_223.x, _223.y, _223.z, r2.w);
    float3 _234 = (r2.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r1.xyz;
    r1 = float4(_234.x, _234.y, _234.z, r1.w);
    float3 _243 = r1.xyz * cb2_m[1].z.xxx;
    r1 = float4(_243.x, _243.y, _243.z, r1.w);
    float3 _251 = r1.xyz * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    r1 = float4(_251.x, _251.y, _251.z, r1.w);
    float4 _262 = r0;
    _262.z = (r4.w * r0.x) + r0.y;
    r0 = _262;
    float4 _269 = r0;
    _269.x = r0.x * r4.w;
    r0 = _269;
    float4 _279 = r0;
    _279.x = (r0.x * r0.y) + r0.z;
    r0 = _279;
    float4 _286 = o0;
    _286.w = r1.w * r0.x;
    o0 = _286;
    float4 _294 = r0;
    _294.x = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _294;
    float3 _300 = r1.xyz * r0.xxx;
    o0 = float4(_300.x, _300.y, _300.z, o0.w);
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
