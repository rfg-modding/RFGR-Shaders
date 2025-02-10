cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
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
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
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
    float4 _65 = r0;
    _65.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _65;
    float4 _70 = r0;
    _70.x = rsqrt(r0.x);
    r0 = _70;
    float3 _77 = r0.xxx * shader_in[3].xyz;
    r0 = float4(_77.x, _77.y, _77.z, r0.w);
    float4 _96 = r0;
    _96.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _96;
    float4 _101 = r0;
    _101.w = rsqrt(r0.w);
    r0 = _101;
    float3 _108 = r0.www * shader_in[2].xyz;
    r1 = float4(_108.x, _108.y, _108.z, r1.w);
    float4 _125 = r0;
    _125.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _125;
    float3 _140 = (abs(r0.xxx) * asfloat(uint3(1077936128u, 1077936128u, 1077936128u))) + asfloat(uint3(0u, 1065353216u, 3212836864u));
    r0 = float4(_140.x, _140.y, _140.z, r0.w);
    float3 _153 = clamp(abs(r0.xyz) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u)), 0.0f.xxx, 1.0f.xxx);
    r0 = float4(_153.x, _153.y, _153.z, r0.w);
    float3 _163 = (r0.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u))) + asfloat(uint3(0u, 1065353216u, 1065353216u));
    r0 = float4(_163.x, _163.y, _163.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _180 = r0.xyz * r1.xyz;
    r0 = float4(_180.x, _180.y, _180.z, r0.w);
    float4 _191 = r0;
    _191.w = (shader_in[3].w * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _191;
    float4 _200 = r0;
    _200.w = abs(r0.w) + abs(r0.w);
    r0 = _200;
    float4 _210 = r0;
    _210.w = ((-r0.w) * r0.w) + asfloat(1065353216u);
    r0 = _210;
    float4 _216 = r0;
    _216.w = max(r0.w, asfloat(0u));
    r0 = _216;
    float4 _228 = r0;
    _228.w = r0.w * cb0_m[7].y;
    r0 = _228;
    float3 _253 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(_253.x, _253.y, _253.z, r1.w);
    float3 _270 = (shader_in[3].www * r1.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(_270.x, _270.y, _270.z, r1.w);
    float3 _284 = (-r1.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(_284.x, _284.y, _284.z, r2.w);
    float3 _295 = (r0.www * r2.xyz) + r1.xyz;
    r1 = float4(_295.x, _295.y, _295.z, r1.w);
    float2 _309 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_309.x, _309.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _323 = r1.xyz * r2.xxx;
    r1 = float4(_323.x, _323.y, _323.z, r1.w);
    float3 _330 = r0.xyz * r2.yyy;
    r2 = float4(_330.x, _330.y, _330.z, r2.w);
    float3 _343 = r2.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_343.x, _343.y, _343.z, r2.w);
    float3 _353 = (r1.xyz * r0.xyz) + r2.xyz;
    r0 = float4(_353.x, _353.y, _353.z, r0.w);
    float4 _362 = r0;
    _362.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _362;
    float3 _368 = r0.xyz * r0.www;
    r0 = float4(_368.x, _368.y, _368.z, r0.w);
    float3 _386 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_386.x, _386.y, _386.z, r0.w);
    float4 _390 = r0;
    _390.w = asfloat(1065353216u);
    r0 = _390;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    float4 _414 = gl_FragCoord;
    _414.w = 1.0f / _414.w;
    shader_in[0] = float4(_414.xy.x, _414.xy.y, shader_in[0].z, shader_in[0].w);
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
