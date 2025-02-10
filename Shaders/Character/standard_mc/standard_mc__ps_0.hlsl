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

static float2 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float4 _64 = r0;
    _64.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _64;
    float4 _69 = r0;
    _69.x = rsqrt(r0.x);
    r0 = _69;
    float3 _76 = r0.xxx * shader_in[3].xyz;
    r0 = float4(_76.x, _76.y, _76.z, r0.w);
    float4 _95 = r0;
    _95.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _95;
    float4 _100 = r0;
    _100.w = rsqrt(r0.w);
    r0 = _100;
    float3 _107 = r0.www * shader_in[2].xyz;
    r1 = float4(_107.x, _107.y, _107.z, r1.w);
    float4 _124 = r0;
    _124.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _124;
    float4 _131 = r0;
    _131.x = max(r0.x, asfloat(0u));
    r0 = _131;
    float3 _156 = (r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _173 = r0.xyz * r1.xyz;
    r0 = float4(_173.x, _173.y, _173.z, r0.w);
    float4 _183 = r0;
    _183.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _183;
    float3 _189 = r0.xyz * r0.www;
    r0 = float4(_189.x, _189.y, _189.z, r0.w);
    float3 _207 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_207.x, _207.y, _207.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
