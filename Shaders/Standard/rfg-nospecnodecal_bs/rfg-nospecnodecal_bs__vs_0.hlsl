cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
    float3 _235 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_235.x, _235.y, _235.z, r0.w);
    float2 _242 = float2(asint(shader_in[1].xy));
    r1 = float4(_242.x, _242.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _263 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_263.x, _263.y, _263.z, r1.w);
    float4 _281 = r2;
    _281.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _281;
    float4 _297 = r2;
    _297.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _297;
    float4 _313 = r2;
    _313.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _313;
    float4 _328 = r0;
    _328.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _328;
    float4 _333 = r0;
    _333.w = rsqrt(r0.w);
    r0 = _333;
    float3 _339 = r0.www * r2.xyz;
    r1 = float4(_339.x, _339.y, _339.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _366 = r3;
    _366.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _366;
    float4 _382 = r3;
    _382.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _382;
    float4 _398 = r3;
    _398.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _398;
    float4 _413 = r0;
    _413.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _413;
    float4 _418 = r0;
    _418.w = rsqrt(r0.w);
    r0 = _418;
    float3 _424 = r0.www * r3.xyz;
    r2 = float4(_424.x, _424.y, _424.z, r2.w);
    float3 _431 = r1.zxy * r2.yzx;
    r3 = float4(_431.x, _431.y, _431.z, r3.w);
    float3 _442 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_442.x, _442.y, _442.z, r3.w);
    float3 _449 = r2.www * r3.xyz;
    r3 = float4(_449.x, _449.y, _449.z, r3.w);
    float3 _459 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _471 = o2;
    _471.y = mad(_459.z, r3.xyz.z, mad(_459.y, r3.xyz.y, _459.x * r3.xyz.x));
    o2 = _471;
    float4 _475 = o3;
    _475.y = r3.y;
    o3 = _475;
    float3 _484 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _496 = o2;
    _496.z = mad(_484.z, r1.xyz.z, mad(_484.y, r1.xyz.y, _484.x * r1.xyz.x));
    o2 = _496;
    float4 _500 = o3;
    _500.z = r1.y;
    o3 = _500;
    float3 _509 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _521 = o2;
    _521.x = mad(_509.z, r2.xyz.z, mad(_509.y, r2.xyz.y, _509.x * r2.xyz.x));
    o2 = _521;
    float4 _525 = o3;
    _525.x = r2.y;
    o3 = _525;
    float4 _534 = r0;
    _534.w = r0.y * cb0_m[13].x;
    r0 = _534;
    float4 _541 = r1;
    _541.x = r0.w * asfloat(3216550459u);
    r1 = _541;
    float4 _546 = r1;
    _546.x = exp2(r1.x);
    r1 = _546;
    float4 _553 = r1;
    _553.x = (-r1.x) + asfloat(1065353216u);
    r1 = _553;
    float4 _560 = r0;
    _560.w = r1.x / r0.w;
    r0 = _560;
    float4 _572 = r1;
    _572.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _572;
    float4 _587 = r0;
    _587.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _587;
    float4 _592 = r0;
    _592.x = sqrt(r0.x);
    r0 = _592;
    float4 _600 = r0;
    _600.x = r0.x * cb0_m[13].y;
    r0 = _600;
    float4 _610 = r0;
    _610.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _610;
    float4 _622 = r0;
    _622.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _622;
    float4 _628 = r0;
    _628.x = exp2(-r0.x);
    r0 = _628;
    float4 _634 = r0;
    _634.x = min(r0.x, asfloat(1065353216u));
    r0 = _634;
    float4 _641 = o3;
    _641.w = (-r0.x) + asfloat(1065353216u);
    o3 = _641;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _649 = asfloat(v1);
    shader_in[1] = float4(_649.x, _649.y, shader_in[1].z, shader_in[1].w);
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
