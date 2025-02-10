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

uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float4 _56 = r0;
    _56.x = (shader_in[1].x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _56;
    float4 _65 = r0;
    _65.x = abs(r0.x) + abs(r0.x);
    r0 = _65;
    float4 _76 = r0;
    _76.x = ((-r0.x) * r0.x) + asfloat(1065353216u);
    r0 = _76;
    float4 _83 = r0;
    _83.x = max(r0.x, asfloat(0u));
    r0 = _83;
    float4 _95 = r0;
    _95.x = r0.x * cb0_m[7].y;
    r0 = _95;
    float3 _122 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r0 = float4(r0.x, _122.x, _122.y, _122.z);
    float3 _139 = (shader_in[1].xxx * r0.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r0 = float4(r0.x, _139.x, _139.y, _139.z);
    float3 _154 = (-r0.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r1 = float4(_154.x, _154.y, _154.z, r1.w);
    float3 _165 = (r0.xxx * r1.xyz) + r0.yzw;
    r0 = float4(_165.x, _165.y, _165.z, r0.w);
    float2 _175 = shader_in[0].xy / shader_in[0].ww;
    r1 = float4(_175.x, _175.y, r1.z, r1.w);
    float2 _193 = (r1.xy * asfloat(uint2(1056964608u, 3204448256u))) + float2(cb0_m[6].x, cb0_m[6].y);
    r1 = float4(_193.x, _193.y, r1.z, r1.w);
    float2 _200 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    r1 = float4(_200.x, _200.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float3 _215 = r0.xyz * r1.xxx;
    r0 = float4(_215.x, _215.y, _215.z, r0.w);
    float4 _224 = r0;
    _224.w = clamp(shader_in[2].w, 0.0f, 1.0f);
    r0 = _224;
    float3 _236 = r0.www * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_236.x, _236.y, _236.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float3 _252 = r2.xyz * r2.xyz;
    r3 = float4(_252.x, _252.y, _252.z, r3.w);
    float3 _260 = r2.xyz * r3.xyz;
    r2 = float4(_260.x, _260.y, _260.z, r2.w);
    float3 _267 = r1.xyz * r2.xyz;
    r1 = float4(_267.x, _267.y, _267.z, r1.w);
    float3 _277 = (r0.xyz * r2.xyz) + r1.xyz;
    r0 = float4(_277.x, _277.y, _277.z, r0.w);
    float4 _286 = r0;
    _286.w = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _286;
    float3 _292 = r0.xyz * r0.www;
    r0 = float4(_292.x, _292.y, _292.z, r0.w);
    float3 _310 = (shader_in[2].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_310.x, _310.y, _310.z, r0.w);
    float4 _314 = r0;
    _314.w = asfloat(1065353216u);
    r0 = _314;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    float4 _332 = shader_in[1];
    _332.x = v1;
    shader_in[1] = _332;
    shader_in[2] = v2;
    float4 _337 = gl_FragCoord;
    _337.w = 1.0f / _337.w;
    shader_in[0] = float4(_337.xyw.x, _337.xyw.y, shader_in[0].z, _337.xyw.z);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
