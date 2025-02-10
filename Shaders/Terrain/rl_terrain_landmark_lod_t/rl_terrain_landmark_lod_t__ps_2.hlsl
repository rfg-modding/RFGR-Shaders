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

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _68 = (r0.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_68.x, _68.y, _68.z, r0.w);
    float4 _84 = r0;
    _84.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _84;
    float4 _89 = r0;
    _89.w = rsqrt(r0.w);
    r0 = _89;
    float3 _95 = r0.www * r0.xyz;
    r0 = float4(_95.x, _95.y, _95.z, r0.w);
    float4 _114 = r0;
    _114.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _114;
    float4 _119 = r0;
    _119.w = rsqrt(r0.w);
    r0 = _119;
    float3 _126 = r0.www * shader_in[2].xyz;
    r1 = float4(_126.x, _126.y, _126.z, r1.w);
    float4 _143 = r0;
    _143.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _143;
    float4 _150 = r0;
    _150.y = r0.x + asfloat(1065353216u);
    r0 = _150;
    float4 _157 = r0;
    _157.x = clamp(r0.x, 0.0f, 1.0f);
    r0 = _157;
    float4 _164 = r0;
    _164.y = r0.y * asfloat(1056964608u);
    r0 = _164;
    r1 = (-float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w)) + float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    r1 = (r0.yyyy * r1) + float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    r0 = (float4(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z, cb1_m[0].w) * r0.xxxx) + r1;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r0 *= r1;
    float4 _242 = r1;
    _242.x = (-shader_in[2].w) + asfloat(1065353216u);
    r1 = _242;
    float3 _248 = r0.xyz * r1.xxx;
    r1 = float4(_248.x, _248.y, _248.z, r1.w);
    float3 _266 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_266.x, _266.y, _266.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
