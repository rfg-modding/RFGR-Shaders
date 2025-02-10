cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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
static int4 v6;

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
static float4 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _58 = r0;
    _58.x = shader_in[5].y + shader_in[5].x;
    r0 = _58;
    float4 _66 = r0;
    _66.x = r0.x + shader_in[5].z;
    r0 = _66;
    float4 _74 = r0;
    _74.x = r0.x + shader_in[5].w;
    r0 = _74;
    float4 _81 = r0;
    _81.x = asfloat(1065353216u) / r0.x;
    r0 = _81;
    float3 _96 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_96.x, _96.y, _96.z, r1.w);
    float4 _101 = r1;
    _101.w = asfloat(1065353216u);
    r1 = _101;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _118 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_118].x, cb4_m[_118].y, cb4_m[_118].z, cb4_m[_118].w);
    int _141 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_141].x, cb4_m[_141].y, cb4_m[_141].z, cb4_m[_141].w)) + r3;
    int _160 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_160].x, cb4_m[_160].y, cb4_m[_160].z, cb4_m[_160].w)) + r3;
    int _179 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_179].x, cb4_m[_179].y, cb4_m[_179].z, cb4_m[_179].w)) + r3;
    float4 _208 = r4;
    _208.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _208;
    int _217 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_217].x, cb4_m[_217].y, cb4_m[_217].z, cb4_m[_217].w);
    int _236 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_236].x, cb4_m[_236].y, cb4_m[_236].z, cb4_m[_236].w)) + r5;
    int _256 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_256].x, cb4_m[_256].y, cb4_m[_256].z, cb4_m[_256].w)) + r5;
    int _276 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_276].x, cb4_m[_276].y, cb4_m[_276].z, cb4_m[_276].w)) + r5;
    float4 _304 = r4;
    _304.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _304;
    int _313 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_313].x, cb4_m[_313].y, cb4_m[_313].z, cb4_m[_313].w);
    int _332 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_332].x, cb4_m[_332].y, cb4_m[_332].z, cb4_m[_332].w)) + r6;
    int _352 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_352].x, cb4_m[_352].y, cb4_m[_352].z, cb4_m[_352].w)) + r6;
    int _372 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_372].x, cb4_m[_372].y, cb4_m[_372].z, cb4_m[_372].w)) + r6;
    float4 _400 = r4;
    _400.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _400;
    float3 _406 = r0.xxx * r4.xyz;
    r1 = float4(_406.x, _406.y, _406.z, r1.w);
    float4 _410 = r1;
    _410.w = asfloat(1065353216u);
    r1 = _410;
    float4 _421 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _435 = r4;
    _435.x = mad(_421.w, r1.w, mad(_421.z, r1.z, mad(_421.y, r1.y, _421.x * r1.x)));
    r4 = _435;
    float4 _446 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _460 = r4;
    _460.y = mad(_446.w, r1.w, mad(_446.z, r1.z, mad(_446.y, r1.y, _446.x * r1.x)));
    r4 = _460;
    float4 _471 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _485 = r4;
    _485.z = mad(_471.w, r1.w, mad(_471.z, r1.z, mad(_471.y, r1.y, _471.x * r1.x)));
    r4 = _485;
    float4 _488 = r4;
    _488.w = asfloat(1065353216u);
    r4 = _488;
    float4 _499 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _513 = o0;
    _513.x = mad(_499.w, r4.w, mad(_499.z, r4.z, mad(_499.y, r4.y, _499.x * r4.x)));
    o0 = _513;
    float4 _524 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _538 = o0;
    _538.y = mad(_524.w, r4.w, mad(_524.z, r4.z, mad(_524.y, r4.y, _524.x * r4.x)));
    o0 = _538;
    float4 _549 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _563 = o0;
    _563.z = mad(_549.w, r4.w, mad(_549.z, r4.z, mad(_549.y, r4.y, _549.x * r4.x)));
    o0 = _563;
    float4 _574 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _588 = o0;
    _588.w = mad(_574.w, r4.w, mad(_574.z, r4.z, mad(_574.y, r4.y, _574.x * r4.x)));
    o0 = _588;
    r1 = float4(asint(shader_in[1].xyxx));
    float2 _602 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(r0.x, _602.x, _602.y, r0.w);
    o1 = float4(r0.yz.x, o1.y, o1.z, r0.yz.y);
    float3 _619 = cb0_m[12].x.xxx * asfloat(uint3(1028443341u, 1036831949u, 3184315597u));
    r0 = float4(r0.x, _619.x, _619.y, _619.z);
    float2 _630 = (r1.yw * asfloat(uint2(981467136u, 985661440u))) + r0.yw;
    o1 = float4(o1.x, _630.x, _630.y, o1.w);
    float2 _641 = (r1.zy * asfloat(uint2(989855744u, 981467136u))) + r0.zz;
    o2 = float4(_641.x, _641.y, o2.z, o2.w);
    float3 _654 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _654.x, _654.y, _654.z);
    float3 _664 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_664.x, _664.y, _664.z, r1.w);
    float3 _673 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _673.x, _673.y, _673.z);
    float4 _689 = r1;
    _689.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _689;
    float4 _694 = r1;
    _694.x = rsqrt(r1.x);
    r1 = _694;
    float3 _700 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _700.x, _700.y, _700.z);
    float4 _716 = r1;
    _716.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _716;
    float4 _731 = r1;
    _731.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _731;
    float4 _746 = r1;
    _746.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _746;
    float3 _752 = r0.xxx * r1.xyz;
    r0 = float4(_752.x, _752.y, _752.z, r0.w);
    float4 _768 = r0;
    _768.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _768;
    float4 _773 = r0;
    _773.w = rsqrt(r0.w);
    r0 = _773;
    float3 _779 = r0.www * r0.xyz;
    r0 = float4(_779.x, _779.y, _779.z, r0.w);
    float3 _789 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _801 = r1;
    _801.x = mad(_789.z, r0.xyz.z, mad(_789.y, r0.xyz.y, _789.x * r0.xyz.x));
    r1 = _801;
    float3 _810 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _822 = r1;
    _822.y = mad(_810.z, r0.xyz.z, mad(_810.y, r0.xyz.y, _810.x * r0.xyz.x));
    r1 = _822;
    float3 _831 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _843 = r1;
    _843.z = mad(_831.z, r0.xyz.z, mad(_831.y, r0.xyz.y, _831.x * r0.xyz.x));
    r1 = _843;
    float4 _858 = r0;
    _858.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _858;
    float4 _863 = r0;
    _863.x = rsqrt(r0.x);
    r0 = _863;
    float3 _869 = r0.xxx * r1.xyz;
    r0 = float4(_869.x, _869.y, _869.z, r0.w);
    float3 _884 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_884.x, _884.y, _884.z, r1.w);
    float3 _898 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r2 = float4(_898.x, _898.y, _898.z, r2.w);
    float4 _914 = r0;
    _914.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _914;
    float4 _919 = r0;
    _919.w = rsqrt(r0.w);
    r0 = _919;
    float3 _925 = r0.www * r1.xyz;
    r1 = float4(_925.x, _925.y, _925.z, r1.w);
    float4 _944 = o2;
    _944.z = clamp(mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x)), 0.0f, 1.0f);
    o2 = _944;
    float4 _953 = r0;
    _953.x = r2.y * cb0_m[13].x;
    r0 = _953;
    float4 _960 = r0;
    _960.y = r0.x * asfloat(3216550459u);
    r0 = _960;
    float4 _965 = r0;
    _965.y = exp2(r0.y);
    r0 = _965;
    float4 _972 = r0;
    _972.y = (-r0.y) + asfloat(1065353216u);
    r0 = _972;
    float4 _979 = r0;
    _979.x = r0.y / r0.x;
    r0 = _979;
    float4 _991 = r0;
    _991.y = asfloat((asfloat(1008981770u) < abs(r2.y)) ? 4294967295u : 0u);
    r0 = _991;
    float4 _1006 = r0;
    _1006.z = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1006;
    float4 _1011 = r0;
    _1011.z = sqrt(r0.z);
    r0 = _1011;
    float4 _1019 = r0;
    _1019.z = r0.z * cb0_m[13].y;
    r0 = _1019;
    float4 _1029 = r0;
    _1029.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1029;
    float4 _1041 = r0;
    _1041.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1041;
    float4 _1047 = r0;
    _1047.x = exp2(-r0.x);
    r0 = _1047;
    float4 _1053 = r0;
    _1053.x = min(r0.x, asfloat(1065353216u));
    r0 = _1053;
    float4 _1060 = o2;
    _1060.w = (-r0.x) + asfloat(1065353216u);
    o2 = _1060;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1068 = asfloat(v1);
    shader_in[1] = float4(_1068.x, _1068.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = asfloat(v6);
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
