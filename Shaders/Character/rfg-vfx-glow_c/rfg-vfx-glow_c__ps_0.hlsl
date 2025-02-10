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

void ps_main()
{
    float3 _68 = (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_68.x, _68.y, _68.z, r0.w);
    float4 _80 = r0;
    _80.w = shader_in[1].x * cb2_m[2].x;
    r0 = _80;
    float3 _95 = (r0.www * r0.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_95.x, _95.y, _95.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float3 _113 = r0.xyz * r1.xyz;
    r0 = float4(_113.x, _113.y, _113.z, r0.w);
    float4 _121 = r1;
    _121.w = r0.w * r1.w;
    r1 = _121;
    float4 _129 = r0;
    _129.w = cb2_m[2].y * asfloat(1092616192u);
    r0 = _129;
    float3 _135 = r0.www * r0.xyz;
    r0 = float4(_135.x, _135.y, _135.z, r0.w);
    float4 _145 = r0;
    _145.w = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _145;
    float3 _151 = r0.xyz * r0.www;
    r0 = float4(_151.x, _151.y, _151.z, r0.w);
    float3 _169 = (shader_in[2].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_169.x, _169.y, _169.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    float4 _187 = shader_in[1];
    _187.x = v1;
    shader_in[1] = _187;
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
