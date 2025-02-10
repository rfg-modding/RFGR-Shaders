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
    float4 _86 = r1;
    _86.x = mad(_74.z, r1.xyz.z, mad(_74.y, r1.xyz.y, _74.x * r1.xyz.x));
    r1 = _86;
    float3 _95 = (r0.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u))) + (-r1.xxx);
    r0 = float4(_95.x, _95.y, _95.z, r0.w);
    float3 _111 = (cb0_m[0].x.xxx * r0.xyz) + r1.xxx;
    r0 = float4(_111.x, _111.y, _111.z, r0.w);
    float3 _125 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    r0 = float4(_125.x, _125.y, _125.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt6s6, shader_in[1].xyxx.xy);
    float3 _136 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _149 = r2;
    _149.x = mad(_136.z, r1.xyz.z, mad(_136.y, r1.xyz.y, _136.x * r1.xyz.x));
    r2 = _149;
    float3 _156 = r1.xyz + (-r2.xxx);
    r1 = float4(_156.x, _156.y, _156.z, r1.w);
    float3 _168 = (cb0_m[0].y.xxx * r1.xyz) + r2.xxx;
    r1 = float4(_168.x, _168.y, _168.z, r1.w);
    float3 _177 = (-r1.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_177.x, _177.y, _177.z, r1.w);
    float3 _182 = log2(r1.xyz);
    r1 = float4(_182.x, _182.y, _182.z, r1.w);
    float3 _190 = r1.xyz * asfloat(uint3(1060205080u, 1060205080u, 1060205080u));
    r1 = float4(_190.x, _190.y, _190.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float3 _206 = r1.xyz / r2.yyy;
    r1 = float4(_206.x, _206.y, _206.z, r1.w);
    float3 _217 = (r0.xyz * r1.www) + (-r1.xyz);
    r0 = float4(_217.x, _217.y, _217.z, r0.w);
    float4 _226 = r0;
    _226.w = r0.w + (-r1.w);
    r0 = _226;
    float4 _232 = r0;
    _232.w = r0.w + asfloat(1065353216u);
    r0 = _232;
    float4 _242 = o0;
    _242.w = clamp(r0.w * asfloat(1148846080u), 0.0f, 1.0f);
    o0 = _242;
    r1 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[1].xyxx.xy);
    float3 _259 = r1.xyz * cb2_m[18].y.xxx;
    r1 = float4(_259.x, _259.y, _259.z, r1.w);
    float3 _268 = (r1.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u))) + r0.xyz;
    r0 = float4(_268.x, _268.y, _268.z, r0.w);
    float3 _276 = r0.xyz * (-r2.yyy);
    r0 = float4(_276.x, _276.y, _276.z, r0.w);
    float3 _284 = r0.xyz * asfloat(uint3(1069066811u, 1069066811u, 1069066811u));
    r0 = float4(_284.x, _284.y, _284.z, r0.w);
    float3 _289 = exp2(r0.xyz);
    r0 = float4(_289.x, _289.y, _289.z, r0.w);
    float3 _296 = (-r0.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_296.x, _296.y, _296.z, r0.w);
    float3 _302 = asfloat(uint3(0u, 0u, 0u));
    bool3 _305 = bool3(r0.xyz.x < _302.x, r0.xyz.y < _302.y, r0.xyz.z < _302.z);
    float3 _309 = asfloat(uint3(_305.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _305.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _305.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r1 = float4(_309.x, _309.y, _309.z, r1.w);
    float4 _320 = r0;
    _320.w = asfloat(asuint(r1.y) | asuint(r1.x));
    r0 = _320;
    float4 _330 = r0;
    _330.w = asfloat(asuint(r1.z) | asuint(r0.w));
    r0 = _330;
    uint3 _334 = asuint(r0.www);
    float3 _336 = asfloat(uint3(0u, 1065353216u, 1065353216u));
    bool3 _339 = bool3(_334.x != uint3(0u, 0u, 0u).x, _334.y != uint3(0u, 0u, 0u).y, _334.z != uint3(0u, 0u, 0u).z);
    float3 _340 = float3(_339.x ? _336.x : r0.xyz.x, _339.y ? _336.y : r0.xyz.y, _339.z ? _336.z : r0.xyz.z);
    o0 = float4(_340.x, _340.y, _340.z, o0.w);
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
