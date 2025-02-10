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
    float4 _223 = r1;
    _223.x = clamp(r1.x, 0.0f, 1.0f);
    r1 = _223;
    r3 *= r4;
    float4 _233 = r0;
    _233.y = r0.x * r3.w;
    r0 = _233;
    r5 = r2 * r4;
    float3 _246 = (r2.xyz * r4.xyz) + r3.xyz;
    r2 = float4(_246.x, _246.y, _246.z, r2.w);
    float3 _253 = r3.xyz * r5.xyz;
    r3 = float4(_253.x, _253.y, _253.z, r3.w);
    float3 _264 = (r3.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r2.xyz;
    r2 = float4(_264.x, _264.y, _264.z, r2.w);
    float3 _273 = r2.xyz * cb2_m[2].z.xxx;
    r2 = float4(_273.x, _273.y, _273.z, r2.w);
    float3 _281 = r2.xyz * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    r2 = float4(_281.x, _281.y, _281.z, r2.w);
    float4 _292 = r0;
    _292.z = (r5.w * r0.x) + r0.y;
    r0 = _292;
    float4 _299 = r0;
    _299.x = r0.x * r5.w;
    r0 = _299;
    float4 _309 = r0;
    _309.x = (r0.x * r0.y) + r0.z;
    r0 = _309;
    float4 _316 = r0;
    _316.x = r1.x * r0.x;
    r0 = _316;
    float4 _323 = r0;
    _323.w = r1.w * r0.x;
    r0 = _323;
    float4 _331 = r1;
    _331.x = (-shader_in[1].x) + asfloat(1065353216u);
    r1 = _331;
    float3 _337 = r2.xyz * r1.xxx;
    r1 = float4(_337.x, _337.y, _337.z, r1.w);
    float3 _355 = (shader_in[1].xxx * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_355.x, _355.y, _355.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    float4 _373 = shader_in[1];
    _373.x = v1;
    shader_in[1] = _373;
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
