cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
    float4 _80 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _94 = r0;
    _94.x = mad(_80.w, r1.w, mad(_80.z, r1.z, mad(_80.y, r1.y, _80.x * r1.x)));
    r0 = _94;
    float4 _106 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _120 = r0;
    _120.y = mad(_106.w, r1.w, mad(_106.z, r1.z, mad(_106.y, r1.y, _106.x * r1.x)));
    r0 = _120;
    float4 _132 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _146 = r0;
    _146.z = mad(_132.w, r1.w, mad(_132.z, r1.z, mad(_132.y, r1.y, _132.x * r1.x)));
    r0 = _146;
    float4 _157 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _171 = o0;
    _171.x = mad(_157.w, r0.w, mad(_157.z, r0.z, mad(_157.y, r0.y, _157.x * r0.x)));
    o0 = _171;
    float4 _182 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _196 = o0;
    _196.y = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _221 = o0;
    _221.z = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float4 _233 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _247 = o0;
    _247.w = mad(_233.w, r0.w, mad(_233.z, r0.z, mad(_233.y, r0.y, _233.x * r0.x)));
    o0 = _247;
    float3 _260 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_260.x, _260.y, _260.z, r1.w);
    float3 _270 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _283 = r2;
    _283.x = mad(_270.z, r1.xyz.z, mad(_270.y, r1.xyz.y, _270.x * r1.xyz.x));
    r2 = _283;
    float3 _292 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _304 = r2;
    _304.y = mad(_292.z, r1.xyz.z, mad(_292.y, r1.xyz.y, _292.x * r1.xyz.x));
    r2 = _304;
    float3 _313 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _325 = r2;
    _325.z = mad(_313.z, r1.xyz.z, mad(_313.y, r1.xyz.y, _313.x * r1.xyz.x));
    r2 = _325;
    float4 _340 = r0;
    _340.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _340;
    float4 _345 = r0;
    _345.w = rsqrt(r0.w);
    r0 = _345;
    float3 _351 = r0.www * r2.xyz;
    r1 = float4(_351.x, _351.y, _351.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _370 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _383 = r3;
    _383.x = mad(_370.z, r2.xyz.z, mad(_370.y, r2.xyz.y, _370.x * r2.xyz.x));
    r3 = _383;
    float3 _392 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _404 = r3;
    _404.y = mad(_392.z, r2.xyz.z, mad(_392.y, r2.xyz.y, _392.x * r2.xyz.x));
    r3 = _404;
    float3 _413 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _425 = r3;
    _425.z = mad(_413.z, r2.xyz.z, mad(_413.y, r2.xyz.y, _413.x * r2.xyz.x));
    r3 = _425;
    float4 _440 = r0;
    _440.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _440;
    float4 _445 = r0;
    _445.w = rsqrt(r0.w);
    r0 = _445;
    float3 _451 = r0.www * r3.xyz;
    r2 = float4(_451.x, _451.y, _451.z, r2.w);
    float3 _458 = r1.zxy * r2.yzx;
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float3 _469 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_469.x, _469.y, _469.z, r3.w);
    float3 _476 = r2.www * r3.xyz;
    r3 = float4(_476.x, _476.y, _476.z, r3.w);
    float3 _486 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _498 = o1;
    _498.y = mad(_486.z, r3.xyz.z, mad(_486.y, r3.xyz.y, _486.x * r3.xyz.x));
    o1 = _498;
    float3 _507 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _519 = o1;
    _519.z = mad(_507.z, r1.xyz.z, mad(_507.y, r1.xyz.y, _507.x * r1.xyz.x));
    o1 = _519;
    float3 _528 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _540 = o1;
    _540.x = mad(_528.z, r2.xyz.z, mad(_528.y, r2.xyz.y, _528.x * r2.xyz.x));
    o1 = _540;
    float3 _554 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_554.x, _554.y, _554.z, r4.w);
    float3 _569 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_569.x, _569.y, _569.z, r0.w);
    float4 _585 = r0;
    _585.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _585;
    float4 _590 = r0;
    _590.w = rsqrt(r0.w);
    r0 = _590;
    float3 _596 = r0.www * r4.xyz;
    r4 = float4(_596.x, _596.y, _596.z, r4.w);
    float3 _612 = o2;
    _612.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _612;
    float4 _616 = o3;
    _616.x = r2.y;
    o3 = _616;
    float3 _631 = o2;
    _631.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _631;
    float4 _635 = o3;
    _635.z = r1.y;
    o3 = _635;
    float3 _650 = o2;
    _650.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _650;
    float4 _654 = o3;
    _654.y = r3.y;
    o3 = _654;
    float4 _663 = r0;
    _663.w = r0.y * cb0_m[13].x;
    r0 = _663;
    float4 _670 = r1;
    _670.x = r0.w * asfloat(3216550459u);
    r1 = _670;
    float4 _675 = r1;
    _675.x = exp2(r1.x);
    r1 = _675;
    float4 _682 = r1;
    _682.x = (-r1.x) + asfloat(1065353216u);
    r1 = _682;
    float4 _689 = r0;
    _689.w = r1.x / r0.w;
    r0 = _689;
    float4 _701 = r1;
    _701.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _701;
    float4 _716 = r0;
    _716.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _716;
    float4 _721 = r0;
    _721.x = sqrt(r0.x);
    r0 = _721;
    float4 _729 = r0;
    _729.x = r0.x * cb0_m[13].y;
    r0 = _729;
    float4 _739 = r0;
    _739.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _739;
    float4 _751 = r0;
    _751.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _751;
    float4 _757 = r0;
    _757.x = exp2(-r0.x);
    r0 = _757;
    float4 _763 = r0;
    _763.x = min(r0.x, asfloat(1065353216u));
    r0 = _763;
    float4 _770 = o3;
    _770.w = (-r0.x) + asfloat(1065353216u);
    o3 = _770;
    float2 _777 = float2(asint(shader_in[1].xy));
    r0 = float4(_777.x, _777.y, r0.z, r0.w);
    float2 _788 = r0.xy * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_788.x, _788.y, r0.z, r0.w);
    float2 _797 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_797.x, _797.y, o4.z, o4.w);
    float2 _805 = float2(asint(shader_in[4].xy));
    r0 = float4(_805.x, _805.y, r0.z, r0.w);
    float2 _811 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _811.x, _811.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _820 = asfloat(v1);
    shader_in[1] = float4(_820.x, _820.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _831 = asfloat(v4);
    shader_in[4] = float4(_831.x, _831.y, shader_in[4].z, shader_in[4].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
