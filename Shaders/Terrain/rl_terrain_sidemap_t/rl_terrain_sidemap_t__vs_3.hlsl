cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[15] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float4 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float3 o5;
static float4 o6;
static float4 o7;
static float4 o8;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float2 _59 = float2(asint(shader_in[0].xy));
    r0 = float4(_59.x, _59.y, r0.z, r0.w);
    float4 _68 = r0;
    _68.y = r0.y + asfloat(1191182336u);
    r0 = _68;
    float4 _76 = r1;
    _76.y = r0.x * asfloat(1015021568u);
    r1 = _76;
    float4 _83 = r0;
    _83.x = r0.y * asfloat(998244352u);
    r0 = _83;
    float4 _88 = r1;
    _88.z = trunc(r0.x);
    r1 = _88;
    float4 _99 = r1;
    _99.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _99;
    float4 _103 = r1;
    _103.w = asfloat(1065353216u);
    r1 = _103;
    float4 _119 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _133 = r0;
    _133.x = mad(_119.w, r1.w, mad(_119.z, r1.z, mad(_119.y, r1.y, _119.x * r1.x)));
    r0 = _133;
    float4 _145 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _159 = r0;
    _159.y = mad(_145.w, r1.w, mad(_145.z, r1.z, mad(_145.y, r1.y, _145.x * r1.x)));
    r0 = _159;
    float4 _171 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _185 = r0;
    _185.z = mad(_171.w, r1.w, mad(_171.z, r1.z, mad(_171.y, r1.y, _171.x * r1.x)));
    r0 = _185;
    float4 _188 = r0;
    _188.w = asfloat(1065353216u);
    r0 = _188;
    float4 _199 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _213 = o0;
    _213.x = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    o0 = _213;
    float4 _224 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _238 = o0;
    _238.y = mad(_224.w, r0.w, mad(_224.z, r0.z, mad(_224.y, r0.y, _224.x * r0.x)));
    o0 = _238;
    float4 _249 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _263 = o0;
    _263.z = mad(_249.w, r0.w, mad(_249.z, r0.z, mad(_249.y, r0.y, _249.x * r0.x)));
    o0 = _263;
    float4 _275 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _289 = o0;
    _289.w = mad(_275.w, r0.w, mad(_275.z, r0.z, mad(_275.y, r0.y, _275.x * r0.x)));
    o0 = _289;
    float3 _302 = r0.xyz + float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z);
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float2 _315 = (r1.xz * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r2 = float4(_315.x, _315.y, r2.z, r2.w);
    float2 _329 = r2.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r2 = float4(_329.x, _329.y, r2.z, r2.w);
    o1 = (r2.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    float4 _343 = r2;
    _343.y = asfloat(0u);
    r2 = _343;
    float3 _356 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_356.x, _356.y, _356.z, r3.w);
    float3 _367 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _380 = r4;
    _380.x = mad(_367.z, r3.xyz.z, mad(_367.y, r3.xyz.y, _367.x * r3.xyz.x));
    r4 = _380;
    float3 _389 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _401 = r4;
    _401.y = mad(_389.z, r3.xyz.z, mad(_389.y, r3.xyz.y, _389.x * r3.xyz.x));
    r4 = _401;
    float3 _410 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _422 = r4;
    _422.z = mad(_410.z, r3.xyz.z, mad(_410.y, r3.xyz.y, _410.x * r3.xyz.x));
    r4 = _422;
    float4 _437 = r0;
    _437.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _437;
    float4 _442 = r0;
    _442.w = rsqrt(r0.w);
    r0 = _442;
    float3 _448 = r0.www * r4.xyz;
    r3 = float4(_448.x, _448.y, _448.z, r3.w);
    float4 _453 = r4;
    _453.z = r3.y;
    r4 = _453;
    float2 _457 = abs(r3.zx);
    r4 = float4(_457.x, _457.y, r4.z, r4.w);
    float2 _465 = r4.yx * asfloat(uint2(2147483648u, 3212836864u));
    r2 = float4(_465.x, r2.y, _465.y, r2.w);
    float3 _476 = ((-r4.xyz) * asfloat(uint3(2147483648u, 3212836864u, 0u))) + r2.xyz;
    r2 = float4(_476.x, _476.y, _476.z, r2.w);
    float3 _483 = r4.xyz * asfloat(uint3(3212836864u, 3212836864u, 1065353216u));
    r4 = float4(_483.x, _483.y, _483.z, r4.w);
    float3 _490 = r2.xyz * r4.xyz;
    r5 = float4(_490.x, _490.y, _490.z, r5.w);
    float3 _502 = (r4.zxy * r2.yzx) + (-r5.xyz);
    r4 = float4(_502.x, _502.y, r4.z, _502.z);
    float3 _512 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _524 = o2;
    _524.y = mad(_512.z, r4.xyw.z, mad(_512.y, r4.xyw.y, _512.x * r4.xyw.x));
    o2 = _524;
    float3 _533 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _545 = o2;
    _545.z = mad(_533.z, r3.xyz.z, mad(_533.y, r3.xyz.y, _533.x * r3.xyz.x));
    o2 = _545;
    float2 _552 = float2(cb1_m[0].z, cb1_m[0].x);
    float3 _561 = o2;
    _561.x = mad(_552.y, r2.yz.y, _552.x * r2.yz.x);
    o2 = _561;
    float3 _575 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r5 = float4(_575.x, _575.y, _575.z, r5.w);
    float3 _589 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_589.x, _589.y, _589.z, r0.w);
    float4 _605 = r0;
    _605.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _605;
    float4 _610 = r0;
    _610.w = rsqrt(r0.w);
    r0 = _610;
    float3 _616 = r0.www * r5.xyz;
    r6 = float4(_616.x, _616.y, _616.z, r6.w);
    o5 = r5.xyz;
    float3 _635 = o3;
    _635.z = mad(r6.xyz.z, r3.xyz.z, mad(r6.xyz.y, r3.xyz.y, r6.xyz.x * r3.xyz.x));
    o3 = _635;
    o4 = float4(r3.xyz.x, r3.xyz.y, r3.xyz.z, o4.w);
    float3 _651 = o3;
    _651.x = mad(r6.zx.y, r2.yz.y, r6.zx.x * r2.yz.x);
    o3 = _651;
    float3 _666 = o3;
    _666.y = mad(r6.xyz.z, r4.xyw.z, mad(r6.xyz.y, r4.xyw.y, r6.xyz.x * r4.xyw.x));
    o3 = _666;
    o6 = float4(o6.x, r4.yz.x, r4.yz.y, o6.w);
    float4 _679 = o4;
    _679.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o4 = _679;
    float4 _688 = r0;
    _688.w = r0.y * cb0_m[13].x;
    r0 = _688;
    float4 _695 = r2;
    _695.x = r0.w * asfloat(3216550459u);
    r2 = _695;
    float4 _700 = r2;
    _700.x = exp2(r2.x);
    r2 = _700;
    float4 _707 = r2;
    _707.x = (-r2.x) + asfloat(1065353216u);
    r2 = _707;
    float4 _714 = r0;
    _714.w = r2.x / r0.w;
    r0 = _714;
    float4 _726 = r2;
    _726.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r2 = _726;
    float4 _741 = r0;
    _741.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _741;
    float4 _746 = r0;
    _746.x = sqrt(r0.x);
    r0 = _746;
    float4 _754 = r0;
    _754.x = r0.x * cb0_m[13].y;
    r0 = _754;
    float4 _764 = r0;
    _764.y = (asuint(r2.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _764;
    float4 _776 = r0;
    _776.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _776;
    float4 _782 = r0;
    _782.x = exp2(-r0.x);
    r0 = _782;
    float4 _788 = r0;
    _788.x = min(r0.x, asfloat(1065353216u));
    r0 = _788;
    float4 _795 = o6;
    _795.w = (-r0.x) + asfloat(1065353216u);
    o6 = _795;
    float4 _798 = o6;
    _798.x = asfloat(0u);
    o6 = _798;
    float4 _801 = r1;
    _801.w = asfloat(1065353216u);
    r1 = _801;
    float4 _812 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _826 = o7;
    _826.x = mad(_812.w, r1.w, mad(_812.z, r1.z, mad(_812.y, r1.y, _812.x * r1.x)));
    o7 = _826;
    float4 _837 = float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    float4 _851 = o7;
    _851.y = mad(_837.w, r1.w, mad(_837.z, r1.z, mad(_837.y, r1.y, _837.x * r1.x)));
    o7 = _851;
    float4 _862 = float4(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z, cb2_m[4].w);
    float4 _876 = o7;
    _876.z = mad(_862.w, r1.w, mad(_862.z, r1.z, mad(_862.y, r1.y, _862.x * r1.x)));
    o7 = _876;
    float4 _888 = float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    float4 _902 = o7;
    _902.w = mad(_888.w, r1.w, mad(_888.z, r1.z, mad(_888.y, r1.y, _888.x * r1.x)));
    o7 = _902;
    float4 _914 = float4(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z, cb2_m[8].w);
    float4 _928 = o8;
    _928.x = mad(_914.w, r1.w, mad(_914.z, r1.z, mad(_914.y, r1.y, _914.x * r1.x)));
    o8 = _928;
    float4 _940 = float4(cb2_m[10].x, cb2_m[10].y, cb2_m[10].z, cb2_m[10].w);
    float4 _954 = o8;
    _954.y = mad(_940.w, r1.w, mad(_940.z, r1.z, mad(_940.y, r1.y, _940.x * r1.x)));
    o8 = _954;
    float4 _966 = float4(cb2_m[12].x, cb2_m[12].y, cb2_m[12].z, cb2_m[12].w);
    float4 _980 = o8;
    _980.z = mad(_966.w, r1.w, mad(_966.z, r1.z, mad(_966.y, r1.y, _966.x * r1.x)));
    o8 = _980;
    float4 _991 = float4(cb2_m[14].x, cb2_m[14].y, cb2_m[14].z, cb2_m[14].w);
    float4 _1005 = o8;
    _1005.w = mad(_991.w, r1.w, mad(_991.z, r1.z, mad(_991.y, r1.y, _991.x * r1.x)));
    o8 = _1005;
}

void vert_main()
{
    float2 _1009 = asfloat(v0);
    shader_in[0] = float4(_1009.x, _1009.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = v1;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
