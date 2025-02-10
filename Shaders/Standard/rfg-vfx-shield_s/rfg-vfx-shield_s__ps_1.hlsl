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
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void ps_main()
{
    float4 _58 = r0;
    _58.x = cb0_m[1].y * asfloat(1153718641u);
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
    float2 _100 = (float2(cb2_m[2].x, cb2_m[2].y) * cb0_m[1].y.xx) + shader_in[2].xy;
    r0 = float4(r0.x, _100.x, _100.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.yzyy.xy);
    float3 _122 = (r1.zyx * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _122.x, _122.y, _122.z);
    float3 _134 = (r0.wwz * asfloat(uint3(1050253722u, 1050253722u, 1050253722u))) + shader_in[2].zxy;
    r1 = float4(_134.x, _134.y, _134.z, r1.w);
    float2 _143 = (-r0.yz) + shader_in[2].xy;
    r0 = float4(r0.x, _143.x, _143.y, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    float2 _168 = ((-float2(cb2_m[2].x, cb2_m[2].y)) * cb0_m[1].y.xx) + r1.yz;
    r0 = float4(r0.x, _168.x, _168.y, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    r4 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r4 = (r1.xxxx * r4) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _222 = r1;
    _222.x = clamp(r1.x, 0.0f, 1.0f);
    r1 = _222;
    r3 *= r4;
    float4 _232 = r0;
    _232.y = r0.x * r3.w;
    r0 = _232;
    r5 = r2 * r4;
    float3 _245 = (r2.xyz * r4.xyz) + r3.xyz;
    r2 = float4(_245.x, _245.y, _245.z, r2.w);
    float3 _252 = r3.xyz * r5.xyz;
    r3 = float4(_252.x, _252.y, _252.z, r3.w);
    float3 _263 = (r3.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r2.xyz;
    r2 = float4(_263.x, _263.y, _263.z, r2.w);
    float3 _272 = r2.xyz * cb2_m[2].z.xxx;
    r2 = float4(_272.x, _272.y, _272.z, r2.w);
    float3 _280 = r2.xyz * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    r2 = float4(_280.x, _280.y, _280.z, r2.w);
    float4 _291 = r0;
    _291.z = (r5.w * r0.x) + r0.y;
    r0 = _291;
    float4 _298 = r0;
    _298.x = r0.x * r5.w;
    r0 = _298;
    float4 _308 = r0;
    _308.x = (r0.x * r0.y) + r0.z;
    r0 = _308;
    float4 _315 = r0;
    _315.x = r1.x * r0.x;
    r0 = _315;
    float4 _322 = r0;
    _322.w = r1.w * r0.x;
    r0 = _322;
    float4 _330 = r1;
    _330.x = (-shader_in[1].x) + asfloat(1065353216u);
    r1 = _330;
    float3 _336 = r2.xyz * r1.xxx;
    r0 = float4(_336.x, _336.y, _336.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    float4 _354 = shader_in[1];
    _354.x = v1;
    shader_in[1] = _354;
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
