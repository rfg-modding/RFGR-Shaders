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
    float3 _71 = r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_71.x, _71.y, _71.z, r0.w);
    float4 _82 = r0;
    _82.w = cb0_m[1].w * cb2_m[1].x;
    r0 = _82;
    float3 _88 = r0.www * r0.xyz;
    r0 = float4(_88.x, _88.y, _88.z, r0.w);
    float4 _111 = r0;
    _111.w = clamp(mad(shader_in[3].xyz.z, shader_in[2].xyz.z, mad(shader_in[3].xyz.y, shader_in[2].xyz.y, shader_in[3].xyz.x * shader_in[2].xyz.x)), 0.0f, 1.0f);
    r0 = _111;
    float3 _117 = r0.www * r0.xyz;
    r0 = float4(_117.x, _117.y, _117.z, r0.w);
    float3 _126 = r0.xyz * asfloat(uint3(1092616192u, 1092616192u, 1092616192u));
    r0 = float4(_126.x, _126.y, _126.z, r0.w);
    float4 _136 = r0;
    _136.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _136;
    float3 _142 = r0.xyz * r0.www;
    r0 = float4(_142.x, _142.y, _142.z, r0.w);
    float4 _151 = r0;
    _151.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _151;
    float3 _157 = r0.xyz * r0.www;
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float4 _161 = r0;
    _161.w = asfloat(1065353216u);
    r0 = _161;
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
