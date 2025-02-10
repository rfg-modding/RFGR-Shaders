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

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _58 = r0.xyz * r0.xyz;
    r1 = float4(_58.x, _58.y, _58.z, r1.w);
    float3 _66 = r0.xyz * r1.xyz;
    r0 = float4(_66.x, _66.y, _66.z, r0.w);
    float4 _75 = r0;
    _75.w = clamp(shader_in[1].w, 0.0f, 1.0f);
    r0 = _75;
    float3 _92 = r0.www * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_92.x, _92.y, _92.z, r1.w);
    float3 _99 = r0.xyz * r1.xyz;
    r0 = float4(_99.x, _99.y, _99.z, r0.w);
    float4 _109 = r0;
    _109.w = (-shader_in[1].z) + asfloat(1065353216u);
    r0 = _109;
    float3 _115 = r0.xyz * r0.www;
    r0 = float4(_115.x, _115.y, _115.z, r0.w);
    float3 _133 = (shader_in[1].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_133.x, _133.y, _133.z, r0.w);
    float4 _137 = r0;
    _137.w = asfloat(1065353216u);
    r0 = _137;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
