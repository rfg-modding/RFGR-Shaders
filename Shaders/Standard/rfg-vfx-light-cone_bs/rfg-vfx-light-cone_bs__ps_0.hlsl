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

static float2 v1;
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _72 = r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_72.x, _72.y, _72.z, r0.w);
    float4 _83 = r0;
    _83.w = cb0_m[1].w * cb2_m[1].x;
    r0 = _83;
    float3 _89 = r0.www * r0.xyz;
    r0 = float4(_89.x, _89.y, _89.z, r0.w);
    float4 _112 = r0;
    _112.w = clamp(mad(shader_in[3].xyz.z, shader_in[2].xyz.z, mad(shader_in[3].xyz.y, shader_in[2].xyz.y, shader_in[3].xyz.x * shader_in[2].xyz.x)), 0.0f, 1.0f);
    r0 = _112;
    float3 _118 = r0.www * r0.xyz;
    r0 = float4(_118.x, _118.y, _118.z, r0.w);
    float3 _127 = r0.xyz * asfloat(uint3(1092616192u, 1092616192u, 1092616192u));
    r0 = float4(_127.x, _127.y, _127.z, r0.w);
    float4 _137 = r0;
    _137.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _137;
    float3 _143 = r0.xyz * r0.www;
    r0 = float4(_143.x, _143.y, _143.z, r0.w);
    float4 _152 = r0;
    _152.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _152;
    float3 _158 = r0.xyz * r0.www;
    r0 = float4(_158.x, _158.y, _158.z, r0.w);
    float3 _176 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_176.x, _176.y, _176.z, r0.w);
    float4 _180 = r0;
    _180.w = asfloat(1065353216u);
    r0 = _180;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
