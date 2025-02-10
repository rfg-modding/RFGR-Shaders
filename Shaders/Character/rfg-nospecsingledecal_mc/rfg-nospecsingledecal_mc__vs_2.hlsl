cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static int4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
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
    float4 _71 = r0;
    _71.x = shader_in[7].y + shader_in[7].x;
    r0 = _71;
    float4 _79 = r0;
    _79.x = r0.x + shader_in[7].z;
    r0 = _79;
    float4 _87 = r0;
    _87.x = r0.x + shader_in[7].w;
    r0 = _87;
    float4 _94 = r0;
    _94.x = asfloat(1065353216u) / r0.x;
    r0 = _94;
    float3 _109 = (shader_in[5].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_109.x, _109.y, _109.z, r1.w);
    float4 _114 = r1;
    _114.w = asfloat(1065353216u);
    r1 = _114;
    r2 = asfloat(asint(shader_in[8]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _131 = asint(r2.y);
    r3 = shader_in[7].yyyy * float4(cb4_m[_131].x, cb4_m[_131].y, cb4_m[_131].z, cb4_m[_131].w);
    int _152 = asint(r2.x);
    r3 = (shader_in[7].xxxx * float4(cb4_m[_152].x, cb4_m[_152].y, cb4_m[_152].z, cb4_m[_152].w)) + r3;
    int _171 = asint(r2.z);
    r3 = (shader_in[7].zzzz * float4(cb4_m[_171].x, cb4_m[_171].y, cb4_m[_171].z, cb4_m[_171].w)) + r3;
    int _190 = asint(r2.w);
    r3 = (shader_in[7].wwww * float4(cb4_m[_190].x, cb4_m[_190].y, cb4_m[_190].z, cb4_m[_190].w)) + r3;
    float4 _219 = r4;
    _219.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _219;
    int _228 = asint(r2.y) + 1;
    r5 = shader_in[7].yyyy * float4(cb4_m[_228].x, cb4_m[_228].y, cb4_m[_228].z, cb4_m[_228].w);
    int _247 = asint(r2.x) + 1;
    r5 = (shader_in[7].xxxx * float4(cb4_m[_247].x, cb4_m[_247].y, cb4_m[_247].z, cb4_m[_247].w)) + r5;
    int _267 = asint(r2.z) + 1;
    r5 = (shader_in[7].zzzz * float4(cb4_m[_267].x, cb4_m[_267].y, cb4_m[_267].z, cb4_m[_267].w)) + r5;
    int _287 = asint(r2.w) + 1;
    r5 = (shader_in[7].wwww * float4(cb4_m[_287].x, cb4_m[_287].y, cb4_m[_287].z, cb4_m[_287].w)) + r5;
    float4 _315 = r4;
    _315.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _315;
    int _324 = asint(r2.y) + 2;
    r6 = shader_in[7].yyyy * float4(cb4_m[_324].x, cb4_m[_324].y, cb4_m[_324].z, cb4_m[_324].w);
    int _343 = asint(r2.x) + 2;
    r6 = (shader_in[7].xxxx * float4(cb4_m[_343].x, cb4_m[_343].y, cb4_m[_343].z, cb4_m[_343].w)) + r6;
    int _363 = asint(r2.z) + 2;
    r6 = (shader_in[7].zzzz * float4(cb4_m[_363].x, cb4_m[_363].y, cb4_m[_363].z, cb4_m[_363].w)) + r6;
    int _383 = asint(r2.w) + 2;
    r2 = (shader_in[7].wwww * float4(cb4_m[_383].x, cb4_m[_383].y, cb4_m[_383].z, cb4_m[_383].w)) + r6;
    float4 _411 = r4;
    _411.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _411;
    float3 _417 = r0.xxx * r4.xyz;
    r1 = float4(_417.x, _417.y, _417.z, r1.w);
    float4 _421 = r1;
    _421.w = asfloat(1065353216u);
    r1 = _421;
    float4 _432 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _446 = r4;
    _446.x = mad(_432.w, r1.w, mad(_432.z, r1.z, mad(_432.y, r1.y, _432.x * r1.x)));
    r4 = _446;
    float4 _457 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _471 = r4;
    _471.y = mad(_457.w, r1.w, mad(_457.z, r1.z, mad(_457.y, r1.y, _457.x * r1.x)));
    r4 = _471;
    float4 _482 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _496 = r4;
    _496.z = mad(_482.w, r1.w, mad(_482.z, r1.z, mad(_482.y, r1.y, _482.x * r1.x)));
    r4 = _496;
    float4 _499 = r4;
    _499.w = asfloat(1065353216u);
    r4 = _499;
    float4 _510 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _524 = o0;
    _524.x = mad(_510.w, r4.w, mad(_510.z, r4.z, mad(_510.y, r4.y, _510.x * r4.x)));
    o0 = _524;
    float4 _535 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _549 = o0;
    _549.y = mad(_535.w, r4.w, mad(_535.z, r4.z, mad(_535.y, r4.y, _535.x * r4.x)));
    o0 = _549;
    float4 _560 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _574 = o0;
    _574.z = mad(_560.w, r4.w, mad(_560.z, r4.z, mad(_560.y, r4.y, _560.x * r4.x)));
    o0 = _574;
    float4 _586 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _600 = o0;
    _600.w = mad(_586.w, r4.w, mad(_586.z, r4.z, mad(_586.y, r4.y, _586.x * r4.x)));
    o0 = _600;
    float3 _612 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _612.x, _612.y, _612.z);
    float3 _622 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_622.x, _622.y, _622.z, r1.w);
    float3 _631 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _631.x, _631.y, _631.z);
    float4 _647 = r1;
    _647.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _647;
    float4 _652 = r1;
    _652.x = rsqrt(r1.x);
    r1 = _652;
    float3 _658 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _658.x, _658.y, _658.z);
    float4 _674 = r1;
    _674.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _674;
    float4 _689 = r1;
    _689.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _689;
    float4 _704 = r1;
    _704.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _704;
    float3 _710 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _710.x, _710.y, _710.z);
    float4 _726 = r1;
    _726.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _726;
    float4 _731 = r1;
    _731.x = rsqrt(r1.x);
    r1 = _731;
    float3 _737 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _737.x, _737.y, _737.z);
    float3 _747 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _759 = r1;
    _759.x = mad(_747.z, r0.yzw.z, mad(_747.y, r0.yzw.y, _747.x * r0.yzw.x));
    r1 = _759;
    float3 _768 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _780 = r1;
    _780.y = mad(_768.z, r0.yzw.z, mad(_768.y, r0.yzw.y, _768.x * r0.yzw.x));
    r1 = _780;
    float3 _789 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _801 = r1;
    _801.z = mad(_789.z, r0.yzw.z, mad(_789.y, r0.yzw.y, _789.x * r0.yzw.x));
    r1 = _801;
    float4 _816 = r0;
    _816.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _816;
    float4 _821 = r0;
    _821.y = rsqrt(r0.y);
    r0 = _821;
    float3 _827 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _827.x, _827.y, _827.z);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _852 = r3;
    _852.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _852;
    float4 _867 = r3;
    _867.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _867;
    float4 _882 = r3;
    _882.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _882;
    float3 _888 = r0.xxx * r3.xyz;
    r1 = float4(_888.x, _888.y, _888.z, r1.w);
    float4 _904 = r0;
    _904.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _904;
    float4 _909 = r0;
    _909.x = rsqrt(r0.x);
    r0 = _909;
    float3 _915 = r0.xxx * r1.xyz;
    r1 = float4(_915.x, _915.y, _915.z, r1.w);
    float3 _925 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _937 = r2;
    _937.x = mad(_925.z, r1.xyz.z, mad(_925.y, r1.xyz.y, _925.x * r1.xyz.x));
    r2 = _937;
    float3 _946 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _958 = r2;
    _958.y = mad(_946.z, r1.xyz.z, mad(_946.y, r1.xyz.y, _946.x * r1.xyz.x));
    r2 = _958;
    float3 _967 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _979 = r2;
    _979.z = mad(_967.z, r1.xyz.z, mad(_967.y, r1.xyz.y, _967.x * r1.xyz.x));
    r2 = _979;
    float4 _994 = r0;
    _994.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _994;
    float4 _999 = r0;
    _999.x = rsqrt(r0.x);
    r0 = _999;
    float3 _1005 = r0.xxx * r2.xyz;
    r1 = float4(_1005.x, _1005.y, _1005.z, r1.w);
    float3 _1012 = r0.wyz * r1.yzx;
    r2 = float4(_1012.x, _1012.y, _1012.z, r2.w);
    float3 _1023 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1023.x, _1023.y, _1023.z, r2.w);
    float3 _1033 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1045 = o1;
    _1045.z = mad(_1033.z, r0.yzw.z, mad(_1033.y, r0.yzw.y, _1033.x * r0.yzw.x));
    o1 = _1045;
    float3 _1054 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1066 = o1;
    _1066.x = mad(_1054.z, r1.xyz.z, mad(_1054.y, r1.xyz.y, _1054.x * r1.xyz.x));
    o1 = _1066;
    float3 _1072 = r1.www * r2.xyz;
    r0 = float4(_1072.x, _1072.y, _1072.z, r0.w);
    float3 _1082 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1094 = o1;
    _1094.y = mad(_1082.z, r0.xyz.z, mad(_1082.y, r0.xyz.y, _1082.x * r0.xyz.x));
    o1 = _1094;
    float2 _1101 = float2(asint(shader_in[2].xy));
    r0 = float4(_1101.x, _1101.y, r0.z, r0.w);
    float2 _1112 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_1112.x, _1112.y, r0.z, r0.w);
    float2 _1121 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _1121.x, _1121.y);
    float2 _1128 = float2(asint(shader_in[1].xy));
    r0 = float4(_1128.x, _1128.y, r0.z, r0.w);
    float2 _1134 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_1134.x, _1134.y, o2.z, o2.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1143 = asfloat(v1);
    shader_in[1] = float4(_1143.x, _1143.y, shader_in[1].z, shader_in[1].w);
    float2 _1148 = asfloat(v2);
    shader_in[2] = float4(_1148.x, _1148.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = asfloat(v8);
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
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
