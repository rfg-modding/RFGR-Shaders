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

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt6s6;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _76 = (-r0.yyy) * r1.xyz;
    r0 = float4(_76.x, _76.y, _76.z, r0.w);
    float4 _81 = o0;
    _81.w = r1.w;
    o0 = _81;
    float3 _89 = r0.xyz * asfloat(uint3(1069066811u, 1069066811u, 1069066811u));
    r0 = float4(_89.x, _89.y, _89.z, r0.w);
    float3 _94 = exp2(r0.xyz);
    r0 = float4(_94.x, _94.y, _94.z, r0.w);
    float3 _103 = (-r0.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_103.x, _103.y, _103.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[1].xyxx.xy);
    float3 _127 = (r1.xyz * cb2_m[18].y.xxx) + r0.xyz;
    r0 = float4(_127.x, _127.y, _127.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt6s6, shader_in[1].xyxx.xy);
    float3 _145 = (r0.xyz * r1.www) + r1.xyz;
    r0 = float4(_145.x, _145.y, _145.z, r0.w);
    float3 _152 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _164 = r0;
    _164.w = mad(_152.z, r0.xyz.z, mad(_152.y, r0.xyz.y, _152.x * r0.xyz.x));
    r0 = _164;
    float3 _171 = (-r0.www) + r0.xyz;
    r0 = float4(_171.x, _171.y, _171.z, r0.w);
    float3 _183 = (cb0_m[0].x.xxx * r0.xyz) + r0.www;
    r0 = float4(_183.x, _183.y, _183.z, r0.w);
    float3 _197 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    o0 = float4(_197.x, _197.y, _197.z, o0.w);
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
