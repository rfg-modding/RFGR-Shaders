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

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float4 v1;
static float4 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    float4 _77 = r1;
    _77.x = asfloat((shader_in[1].x >= r0.w) ? 4294967295u : 0u);
    r1 = _77;
    float4 _87 = r1;
    _87.y = asfloat((r0.w >= shader_in[1].y) ? 4294967295u : 0u);
    r1 = _87;
    float2 _96 = asfloat(asuint(r1.xy) & uint2(1065353216u, 1065353216u));
    r1 = float4(_96.x, _96.y, r1.z, r1.w);
    float4 _104 = r1;
    _104.x = r1.y * r1.x;
    r1 = _104;
    float4 _117 = r0;
    _117.w = asfloat((r0.w >= cb2_m[3].x) ? 4294967295u : 0u);
    r0 = _117;
    float3 _125 = r0.xyz * shader_in[2].xyz;
    r0 = float4(_125.x, _125.y, _125.z, r0.w);
    float4 _133 = r0;
    _133.w = asfloat(asuint(r0.w) & 1065353216u);
    r0 = _133;
    float4 _140 = r0;
    _140.w = r0.w * r1.x;
    r0 = _140;
    float4 _148 = r1;
    _148.w = r0.w * shader_in[1].z;
    r1 = _148;
    float3 _155 = r0.xyz * shader_in[2].www;
    r2 = float4(_155.x, _155.y, _155.z, r2.w);
    float3 _170 = r2.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_170.x, _170.y, _170.z, r2.w);
    float2 _184 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_184.x, _184.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float4 _201 = r0;
    _201.w = r3.x * shader_in[1].w;
    r0 = _201;
    float3 _220 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r3 = float4(_220.x, r3.y, _220.y, _220.z);
    float3 _236 = (r0.www * r3.xzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r3 = float4(_236.x, r3.y, _236.y, _236.z);
    float3 _243 = r0.xyz * r3.xzw;
    r0 = float4(_243.x, _243.y, _243.z, r0.w);
    float3 _253 = (r2.xyz * r3.yyy) + r0.xyz;
    r0 = float4(_253.x, _253.y, _253.z, r0.w);
    float4 _262 = r0;
    _262.w = (-shader_in[3].z) + asfloat(1065353216u);
    r0 = _262;
    float3 _268 = r0.xyz * r0.www;
    r0 = float4(_268.x, _268.y, _268.z, r0.w);
    float3 _286 = (shader_in[3].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_286.x, _286.y, _286.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = v2;
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    float4 _311 = gl_FragCoord;
    _311.w = 1.0f / _311.w;
    shader_in[0] = float4(_311.xy.x, _311.xy.y, shader_in[0].z, shader_in[0].w);
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
