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
    float4 cb2_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].zwzz.xy);
    float2 _62 = r0.xy + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(_62.x, _62.y, r0.z, r0.w);
    float2 _69 = r0.xy + r0.xy;
    r0 = float4(_69.x, _69.y, r0.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float2 _85 = r1.xy + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(r0.x, r0.y, _85.x, _85.y);
    float2 _96 = (r0.zw * asfloat(uint2(1073741824u, 1073741824u))) + r0.xy;
    r0 = float4(_96.x, _96.y, r0.z, r0.w);
    float2 _108 = (r0.xy * asfloat(uint2(1036831949u, 1036831949u))) + shader_in[1].xy;
    r0 = float4(_108.x, _108.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float4 _120 = r0;
    _120.x = r0.z;
    r0 = _120;
    float4 _133 = r0;
    _133.y = cb0_m[1].x * cb2_m[0].y;
    r0 = _133;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    float3 _147 = r0.zzz * r1.xyz;
    r0 = float4(_147.x, _147.y, _147.z, r0.w);
    float3 _156 = r0.xyz * asfloat(uint3(1092616192u, 1092616192u, 1092616192u));
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float4 _166 = r0;
    _166.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _166;
    float3 _172 = r0.xyz * r0.www;
    r0 = float4(_172.x, _172.y, _172.z, r0.w);
    float4 _176 = r0;
    _176.w = asfloat(1065353216u);
    r0 = _176;
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
