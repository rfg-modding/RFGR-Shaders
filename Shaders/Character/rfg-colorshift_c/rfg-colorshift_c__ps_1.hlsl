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

void ps_main()
{
    float4 _66 = r0;
    _66.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _66;
    float4 _71 = r0;
    _71.x = rsqrt(r0.x);
    r0 = _71;
    float3 _78 = r0.xxx * shader_in[2].xyz;
    r0 = float4(_78.x, _78.y, _78.z, r0.w);
    float4 _97 = r0;
    _97.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _97;
    float4 _102 = r0;
    _102.w = rsqrt(r0.w);
    r0 = _102;
    float3 _109 = r0.www * shader_in[3].xyz;
    r1 = float4(_109.x, _109.y, _109.z, r1.w);
    float4 _126 = r0;
    _126.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _126;
    float3 _141 = (abs(r0.xxx) * asfloat(uint3(1077936128u, 1077936128u, 1077936128u))) + asfloat(uint3(0u, 1065353216u, 3212836864u));
    r0 = float4(_141.x, _141.y, _141.z, r0.w);
    float3 _154 = clamp(abs(r0.xyz) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u)), 0.0f.xxx, 1.0f.xxx);
    r0 = float4(_154.x, _154.y, _154.z, r0.w);
    float3 _164 = (r0.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u))) + asfloat(uint3(0u, 1065353216u, 1065353216u));
    r0 = float4(_164.x, _164.y, _164.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _181 = r0.xyz * r1.xyz;
    r0 = float4(_181.x, _181.y, _181.z, r0.w);
    float2 _199 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_199.x, _199.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float3 _213 = r0.xyz * r1.yyy;
    r0 = float4(_213.x, _213.y, _213.z, r0.w);
    float3 _226 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_226.x, _226.y, _226.z, r0.w);
    float4 _235 = r0;
    _235.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _235;
    float3 _241 = r0.xyz * r0.www;
    r0 = float4(_241.x, _241.y, _241.z, r0.w);
    float4 _245 = r0;
    _245.w = asfloat(1065353216u);
    r0 = _245;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float4 _271 = gl_FragCoord;
    _271.w = 1.0f / _271.w;
    shader_in[0] = float4(_271.xy.x, _271.xy.y, shader_in[0].z, shader_in[0].w);
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
