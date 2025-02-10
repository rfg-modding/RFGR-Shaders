cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _59 = r1;
    _59.w = asfloat(1065353216u);
    r1 = _59;
    float4 _77 = r0;
    _77.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _77;
    float4 _95 = r0;
    _95.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _95;
    float4 _113 = r0;
    _113.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _113;
    float4 _129 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _143 = o0;
    _143.x = mad(_129.w, r0.w, mad(_129.z, r0.z, mad(_129.y, r0.y, _129.x * r0.x)));
    o0 = _143;
    float4 _155 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _169 = o0;
    _169.y = mad(_155.w, r0.w, mad(_155.z, r0.z, mad(_155.y, r0.y, _155.x * r0.x)));
    o0 = _169;
    float4 _181 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _195 = o0;
    _195.z = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _207 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _221 = o0;
    _221.w = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float2 _227 = float2(asint(shader_in[1].xy));
    r1 = float4(_227.x, _227.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _248 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_248.x, _248.y, _248.z, r1.w);
    float4 _266 = r2;
    _266.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _266;
    float4 _282 = r2;
    _282.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _282;
    float4 _298 = r2;
    _298.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _298;
    float4 _313 = r0;
    _313.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _313;
    float4 _318 = r0;
    _318.w = rsqrt(r0.w);
    r0 = _318;
    float3 _324 = r0.www * r2.xyz;
    r1 = float4(_324.x, _324.y, _324.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _351 = r3;
    _351.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _351;
    float4 _367 = r3;
    _367.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _367;
    float4 _383 = r3;
    _383.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _383;
    float4 _398 = r0;
    _398.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _398;
    float4 _403 = r0;
    _403.w = rsqrt(r0.w);
    r0 = _403;
    float3 _409 = r0.www * r3.xyz;
    r2 = float4(_409.x, _409.y, _409.z, r2.w);
    float3 _416 = r1.zxy * r2.yzx;
    r3 = float4(_416.x, _416.y, _416.z, r3.w);
    float3 _427 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_427.x, _427.y, _427.z, r3.w);
    float3 _434 = r2.www * r3.xyz;
    r3 = float4(_434.x, _434.y, _434.z, r3.w);
    float3 _448 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_448.x, _448.y, _448.z, r4.w);
    float3 _464 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_464.x, _464.y, _464.z, r0.w);
    float3 _480 = o2;
    _480.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _480;
    float3 _489 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _501 = o3;
    _501.y = mad(_489.z, r3.xyz.z, mad(_489.y, r3.xyz.y, _489.x * r3.xyz.x));
    o3 = _501;
    float3 _516 = o2;
    _516.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _516;
    float3 _525 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _537 = o3;
    _537.z = mad(_525.z, r1.xyz.z, mad(_525.y, r1.xyz.y, _525.x * r1.xyz.x));
    o3 = _537;
    float3 _552 = o2;
    _552.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _552;
    float3 _561 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _573 = o3;
    _573.x = mad(_561.z, r2.xyz.z, mad(_561.y, r2.xyz.y, _561.x * r2.xyz.x));
    o3 = _573;
    float4 _582 = r0;
    _582.w = r0.y * cb0_m[13].x;
    r0 = _582;
    float4 _589 = r1;
    _589.x = r0.w * asfloat(3216550459u);
    r1 = _589;
    float4 _594 = r1;
    _594.x = exp2(r1.x);
    r1 = _594;
    float4 _601 = r1;
    _601.x = (-r1.x) + asfloat(1065353216u);
    r1 = _601;
    float4 _608 = r0;
    _608.w = r1.x / r0.w;
    r0 = _608;
    float4 _620 = r1;
    _620.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _620;
    float4 _635 = r0;
    _635.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _635;
    float4 _640 = r0;
    _640.x = sqrt(r0.x);
    r0 = _640;
    float4 _648 = r0;
    _648.x = r0.x * cb0_m[13].y;
    r0 = _648;
    float4 _658 = r0;
    _658.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _658;
    float4 _670 = r0;
    _670.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _670;
    float4 _676 = r0;
    _676.x = exp2(-r0.x);
    r0 = _676;
    float4 _682 = r0;
    _682.x = min(r0.x, asfloat(1065353216u));
    r0 = _682;
    float4 _689 = o3;
    _689.w = (-r0.x) + asfloat(1065353216u);
    o3 = _689;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _697 = asfloat(v1);
    shader_in[1] = float4(_697.x, _697.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
