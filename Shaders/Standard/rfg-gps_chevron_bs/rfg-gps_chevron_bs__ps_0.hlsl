cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _56 = r0;
    _56.x = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _56;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float4 _79 = r0;
    _79.x = asfloat((r0.x < r1.w) ? 4294967295u : 0u);
    r0 = _79;
    float4 _89 = r0;
    _89.y = asfloat((shader_in[2].w < r1.w) ? 4294967295u : 0u);
    r0 = _89;
    float2 _97 = asfloat(asuint(r0.xy) & uint2(1065353216u, 1065353216u));
    r0 = float4(_97.x, _97.y, r0.z, r0.w);
    float4 _105 = r0;
    _105.x = r0.y * r0.x;
    r0 = _105;
    float4 _119 = r0;
    _119.y = asfloat((r1.w >= cb2_m[3].x) ? 4294967295u : 0u);
    r0 = _119;
    float4 _126 = r0;
    _126.y = asfloat(asuint(r0.y) & 1065353216u);
    r0 = _126;
    float4 _133 = r0;
    _133.w = r0.y * r0.x;
    r0 = _133;
    float3 _156 = (cb0_m[1].w.xxx * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_156.x, _156.y, _156.z, r2.w);
    float3 _164 = r1.xyz * r2.xyz;
    r1 = float4(_164.x, _164.y, _164.z, r1.w);
    float3 _172 = r1.xyz * shader_in[1].xyz;
    r1 = float4(_172.x, _172.y, _172.z, r1.w);
    float4 _181 = r1;
    _181.w = (-shader_in[1].w) + asfloat(1065353216u);
    r1 = _181;
    float3 _187 = r1.xyz * r1.www;
    r1 = float4(_187.x, _187.y, _187.z, r1.w);
    float3 _205 = (shader_in[1].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_205.x, _205.y, _205.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
