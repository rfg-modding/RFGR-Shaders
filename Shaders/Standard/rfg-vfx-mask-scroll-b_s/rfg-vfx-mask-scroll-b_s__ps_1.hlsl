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
    r1 = (float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].x, cb2_m[1].y) * cb6_m[0].w.xxxx) + shader_in[1].zwxy;
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float3 _116 = (r2.zyx * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _116.x, _116.y, _116.z);
    float2 _129 = (r0.wz * asfloat(uint2(1036831949u, 1036831949u))) + shader_in[1].xy;
    r1 = float4(r1.x, r1.y, _129.x, _129.y);
    float2 _137 = (-r0.yz) + r1.xy;
    r0 = float4(r0.x, _137.x, _137.y, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    float2 _157 = (cb6_m[0].w.xx * asfloat(uint2(0u, 1073741824u))) + r1.zw;
    r0 = float4(r0.x, _157.x, _157.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    r1 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _184 = r0;
    _184.y = r0.x * r1.w;
    r0 = _184;
    r4 = r3 * float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float3 _212 = (r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r1.xyz;
    r2 = float4(_212.x, _212.y, _212.z, r2.w);
    float3 _219 = r1.xyz * r4.xyz;
    r1 = float4(_219.x, _219.y, _219.z, r1.w);
    float3 _230 = (r1.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r2.xyz;
    r1 = float4(_230.x, _230.y, _230.z, r1.w);
    float3 _239 = r1.xyz * cb2_m[1].z.xxx;
    r1 = float4(_239.x, _239.y, _239.z, r1.w);
    float3 _247 = r1.xyz * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    r1 = float4(_247.x, _247.y, _247.z, r1.w);
    float4 _258 = r0;
    _258.z = (r4.w * r0.x) + r0.y;
    r0 = _258;
    float4 _265 = r0;
    _265.x = r0.x * r4.w;
    r0 = _265;
    float4 _275 = r0;
    _275.x = (r0.x * r0.y) + r0.z;
    r0 = _275;
    float4 _282 = r0;
    _282.x = r2.w * r0.x;
    r0 = _282;
    float4 _291 = r0;
    _291.y = clamp(shader_in[2].y, 0.0f, 1.0f);
    r0 = _291;
    float4 _298 = o0;
    _298.w = r0.y * r0.x;
    o0 = _298;
    float4 _306 = r0;
    _306.x = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _306;
    float3 _312 = r1.xyz * r0.xxx;
    o0 = float4(_312.x, _312.y, _312.z, o0.w);
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
