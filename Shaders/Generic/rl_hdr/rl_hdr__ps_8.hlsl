cbuffer cb0_t : register(b0)
{
    float4 cb0_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[19] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt6s6;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt5s5;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _66 = r0.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u));
    r1 = float4(_66.x, _66.y, _66.z, r1.w);
    float3 _74 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _86 = r0;
    _86.w = mad(_74.z, r1.xyz.z, mad(_74.y, r1.xyz.y, _74.x * r1.xyz.x));
    r0 = _86;
    float3 _95 = (r0.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u))) + (-r0.www);
    r0 = float4(_95.x, _95.y, _95.z, r0.w);
    float3 _111 = (cb0_m[0].x.xxx * r0.xyz) + r0.www;
    r0 = float4(_111.x, _111.y, _111.z, r0.w);
    float3 _125 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    r0 = float4(_125.x, _125.y, _125.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt6s6, shader_in[1].xyxx.xy);
    r1 = clamp(r1, 0.0f.xxxx, 1.0f.xxxx);
    float3 _142 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _154 = r0;
    _154.w = mad(_142.z, r1.xyz.z, mad(_142.y, r1.xyz.y, _142.x * r1.xyz.x));
    r0 = _154;
    float3 _161 = (-r0.www) + r1.xyz;
    r1 = float4(_161.x, _161.y, _161.z, r1.w);
    float3 _173 = (cb0_m[0].y.xxx * r1.xyz) + r0.www;
    r1 = float4(_173.x, _173.y, _173.z, r1.w);
    float3 _182 = (-r1.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_182.x, _182.y, _182.z, r1.w);
    float3 _187 = log2(r1.xyz);
    r1 = float4(_187.x, _187.y, _187.z, r1.w);
    float3 _195 = r1.xyz * asfloat(uint3(1060205080u, 1060205080u, 1060205080u));
    r1 = float4(_195.x, _195.y, _195.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float3 _212 = r1.xyz / r2.yyy;
    r1 = float4(_212.x, _212.y, _212.z, r1.w);
    float3 _223 = (r0.xyz * r1.www) + (-r1.xyz);
    r0 = float4(_223.x, _223.y, _223.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[1].xyxx.xy);
    float3 _241 = r1.xyz * cb2_m[18].y.xxx;
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float3 _250 = (r1.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u))) + r0.xyz;
    r0 = float4(_250.x, _250.y, _250.z, r0.w);
    float3 _258 = r0.xyz * (-r2.yyy);
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float3 _266 = r0.xyz * asfloat(uint3(1069066811u, 1069066811u, 1069066811u));
    r0 = float4(_266.x, _266.y, _266.z, r0.w);
    float3 _271 = exp2(r0.xyz);
    r0 = float4(_271.x, _271.y, _271.z, r0.w);
    float3 _278 = (-r0.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_278.x, _278.y, _278.z, r0.w);
    float3 _287 = asfloat(uint3(1050220167u, 1058424226u, 1038710997u));
    float4 _297 = o0;
    _297.w = mad(r0.xyz.z, _287.z, mad(r0.xyz.y, _287.y, r0.xyz.x * _287.x));
    o0 = _297;
    o0 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o0.w);
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
