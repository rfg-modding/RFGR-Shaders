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

static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float3 _66 = (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_66.x, _66.y, _66.z, r0.w);
    float4 _78 = r0;
    _78.w = cb6_m[0].w * cb2_m[2].x;
    r0 = _78;
    float3 _93 = (r0.www * r0.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_93.x, _93.y, _93.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _111 = r0.xyz * r1.xyz;
    r0 = float4(_111.x, _111.y, _111.z, r0.w);
    float4 _119 = r1;
    _119.w = r0.w * r1.w;
    r1 = _119;
    float4 _127 = r0;
    _127.w = cb2_m[2].y * asfloat(1092616192u);
    r0 = _127;
    float3 _133 = r0.www * r0.xyz;
    r0 = float4(_133.x, _133.y, _133.z, r0.w);
    float4 _143 = r0;
    _143.w = (-shader_in[1].z) + asfloat(1065353216u);
    r0 = _143;
    float3 _149 = r0.xyz * r0.www;
    r0 = float4(_149.x, _149.y, _149.z, r0.w);
    float3 _167 = (shader_in[1].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_167.x, _167.y, _167.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
