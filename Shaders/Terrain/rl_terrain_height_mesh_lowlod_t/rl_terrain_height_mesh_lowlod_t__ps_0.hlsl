cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
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
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _66 = r0;
    _66.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _66;
    float4 _71 = r0;
    _71.x = rsqrt(r0.x);
    r0 = _71;
    float3 _78 = r0.xxx * shader_in[3].xyz;
    r0 = float4(_78.x, _78.y, _78.z, r0.w);
    float4 _97 = r0;
    _97.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _97;
    float4 _102 = r0;
    _102.w = rsqrt(r0.w);
    r0 = _102;
    float3 _109 = r0.www * shader_in[2].xyz;
    r1 = float4(_109.x, _109.y, _109.z, r1.w);
    float4 _126 = r0;
    _126.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _126;
    float4 _133 = r0;
    _133.x = max(r0.x, asfloat(0u));
    r0 = _133;
    float3 _149 = r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_149.x, _149.y, _149.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _166 = r1.xyz * r1.xyz;
    r2 = float4(_166.x, _166.y, _166.z, r2.w);
    float3 _174 = r1.xyz * r2.xyz;
    r1 = float4(_174.x, _174.y, _174.z, r1.w);
    float3 _181 = r0.xyz * r1.xyz;
    r0 = float4(_181.x, _181.y, _181.z, r0.w);
    float2 _195 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_195.x, _195.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _209 = r0.xyz * r2.yyy;
    r0 = float4(_209.x, _209.y, _209.z, r0.w);
    float3 _225 = (float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) * r1.xyz) + r0.xyz;
    r0 = float4(_225.x, _225.y, _225.z, r0.w);
    float4 _235 = r0;
    _235.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _235;
    float3 _241 = r0.xyz * r0.www;
    r0 = float4(_241.x, _241.y, _241.z, r0.w);
    float3 _259 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_259.x, _259.y, _259.z, r0.w);
    float4 _263 = r0;
    _263.w = asfloat(1065353216u);
    r0 = _263;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float4 _289 = gl_FragCoord;
    _289.w = 1.0f / _289.w;
    shader_in[0] = float4(_289.xy.x, _289.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
