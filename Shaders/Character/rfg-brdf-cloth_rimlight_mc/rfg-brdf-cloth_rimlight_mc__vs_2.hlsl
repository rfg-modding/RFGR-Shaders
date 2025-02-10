cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
    float4 cb2_m[6] : packoffset(c0);
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
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _73 = r0;
    _73.x = shader_in[6].y + shader_in[6].x;
    r0 = _73;
    float4 _81 = r0;
    _81.x = r0.x + shader_in[6].z;
    r0 = _81;
    float4 _89 = r0;
    _89.x = r0.x + shader_in[6].w;
    r0 = _89;
    float4 _96 = r0;
    _96.x = asfloat(1065353216u) / r0.x;
    r0 = _96;
    float3 _111 = (shader_in[4].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_111.x, _111.y, _111.z, r1.w);
    float4 _116 = r1;
    _116.w = asfloat(1065353216u);
    r1 = _116;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _133 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_133].x, cb4_m[_133].y, cb4_m[_133].z, cb4_m[_133].w);
    int _155 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_155].x, cb4_m[_155].y, cb4_m[_155].z, cb4_m[_155].w)) + r3;
    int _174 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_174].x, cb4_m[_174].y, cb4_m[_174].z, cb4_m[_174].w)) + r3;
    int _193 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_193].x, cb4_m[_193].y, cb4_m[_193].z, cb4_m[_193].w)) + r3;
    float4 _222 = r4;
    _222.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _222;
    int _231 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_231].x, cb4_m[_231].y, cb4_m[_231].z, cb4_m[_231].w);
    int _250 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_250].x, cb4_m[_250].y, cb4_m[_250].z, cb4_m[_250].w)) + r5;
    int _270 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_270].x, cb4_m[_270].y, cb4_m[_270].z, cb4_m[_270].w)) + r5;
    int _290 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_290].x, cb4_m[_290].y, cb4_m[_290].z, cb4_m[_290].w)) + r5;
    float4 _318 = r4;
    _318.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _318;
    int _327 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_327].x, cb4_m[_327].y, cb4_m[_327].z, cb4_m[_327].w);
    int _346 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_346].x, cb4_m[_346].y, cb4_m[_346].z, cb4_m[_346].w)) + r6;
    int _366 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_366].x, cb4_m[_366].y, cb4_m[_366].z, cb4_m[_366].w)) + r6;
    int _386 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_386].x, cb4_m[_386].y, cb4_m[_386].z, cb4_m[_386].w)) + r6;
    float4 _414 = r4;
    _414.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _414;
    float3 _420 = r0.xxx * r4.xyz;
    r1 = float4(_420.x, _420.y, _420.z, r1.w);
    float4 _424 = r1;
    _424.w = asfloat(1065353216u);
    r1 = _424;
    float4 _435 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _449 = r4;
    _449.x = mad(_435.w, r1.w, mad(_435.z, r1.z, mad(_435.y, r1.y, _435.x * r1.x)));
    r4 = _449;
    float4 _460 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _474 = r4;
    _474.y = mad(_460.w, r1.w, mad(_460.z, r1.z, mad(_460.y, r1.y, _460.x * r1.x)));
    r4 = _474;
    float4 _485 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _499 = r4;
    _499.z = mad(_485.w, r1.w, mad(_485.z, r1.z, mad(_485.y, r1.y, _485.x * r1.x)));
    r4 = _499;
    float4 _502 = r4;
    _502.w = asfloat(1065353216u);
    r4 = _502;
    float4 _513 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _527 = o0;
    _527.x = mad(_513.w, r4.w, mad(_513.z, r4.z, mad(_513.y, r4.y, _513.x * r4.x)));
    o0 = _527;
    float4 _538 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _552 = o0;
    _552.y = mad(_538.w, r4.w, mad(_538.z, r4.z, mad(_538.y, r4.y, _538.x * r4.x)));
    o0 = _552;
    float4 _563 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _577 = o0;
    _577.z = mad(_563.w, r4.w, mad(_563.z, r4.z, mad(_563.y, r4.y, _563.x * r4.x)));
    o0 = _577;
    float4 _589 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _603 = o0;
    _603.w = mad(_589.w, r4.w, mad(_589.z, r4.z, mad(_589.y, r4.y, _589.x * r4.x)));
    o0 = _603;
    float3 _617 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _617.x, _617.y, _617.z);
    float2 _624 = float2(asint(shader_in[1].xy));
    r1 = float4(_624.x, _624.y, r1.z, r1.w);
    float2 _636 = r1.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r1 = float4(_636.x, _636.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _656 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_656.x, _656.y, _656.z, r1.w);
    float3 _665 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_665.x, _665.y, _665.z, r4.w);
    float3 _674 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_674.x, _674.y, _674.z, r1.w);
    float4 _690 = r1;
    _690.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _690;
    float4 _695 = r1;
    _695.w = rsqrt(r1.w);
    r1 = _695;
    float3 _701 = r1.www * r1.xyz;
    r1 = float4(_701.x, _701.y, _701.z, r1.w);
    float4 _717 = r4;
    _717.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _717;
    float4 _732 = r4;
    _732.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _732;
    float4 _747 = r4;
    _747.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _747;
    float3 _753 = r0.xxx * r4.xyz;
    r1 = float4(_753.x, _753.y, _753.z, r1.w);
    float4 _769 = r1;
    _769.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _769;
    float4 _774 = r1;
    _774.w = rsqrt(r1.w);
    r1 = _774;
    float3 _780 = r1.www * r1.xyz;
    r1 = float4(_780.x, _780.y, _780.z, r1.w);
    float3 _790 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _802 = r4;
    _802.x = mad(_790.z, r1.xyz.z, mad(_790.y, r1.xyz.y, _790.x * r1.xyz.x));
    r4 = _802;
    float3 _811 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _823 = r4;
    _823.y = mad(_811.z, r1.xyz.z, mad(_811.y, r1.xyz.y, _811.x * r1.xyz.x));
    r4 = _823;
    float3 _832 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _844 = r4;
    _844.z = mad(_832.z, r1.xyz.z, mad(_832.y, r1.xyz.y, _832.x * r1.xyz.x));
    r4 = _844;
    float4 _859 = r1;
    _859.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _859;
    float4 _864 = r1;
    _864.x = rsqrt(r1.x);
    r1 = _864;
    float3 _870 = r1.xxx * r4.xyz;
    r1 = float4(_870.x, _870.y, _870.z, r1.w);
    r4 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _894 = r3;
    _894.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _894;
    float4 _909 = r3;
    _909.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _909;
    float4 _924 = r3;
    _924.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _924;
    float3 _930 = r0.xxx * r3.xyz;
    r2 = float4(_930.x, _930.y, _930.z, r2.w);
    float4 _946 = r0;
    _946.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _946;
    float4 _951 = r0;
    _951.x = rsqrt(r0.x);
    r0 = _951;
    float3 _957 = r0.xxx * r2.xyz;
    r2 = float4(_957.x, _957.y, _957.z, r2.w);
    float3 _967 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _979 = r3;
    _979.x = mad(_967.z, r2.xyz.z, mad(_967.y, r2.xyz.y, _967.x * r2.xyz.x));
    r3 = _979;
    float3 _988 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1000 = r3;
    _1000.y = mad(_988.z, r2.xyz.z, mad(_988.y, r2.xyz.y, _988.x * r2.xyz.x));
    r3 = _1000;
    float3 _1009 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1021 = r3;
    _1021.z = mad(_1009.z, r2.xyz.z, mad(_1009.y, r2.xyz.y, _1009.x * r2.xyz.x));
    r3 = _1021;
    float4 _1036 = r0;
    _1036.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1036;
    float4 _1041 = r0;
    _1041.x = rsqrt(r0.x);
    r0 = _1041;
    float3 _1047 = r0.xxx * r3.xyz;
    r2 = float4(_1047.x, _1047.y, _1047.z, r2.w);
    float3 _1054 = r1.zxy * r2.yzx;
    r3 = float4(_1054.x, _1054.y, _1054.z, r3.w);
    float3 _1065 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1065.x, _1065.y, _1065.z, r3.w);
    float3 _1072 = r4.www * r3.xyz;
    r3 = float4(_1072.x, _1072.y, _1072.z, r3.w);
    float3 _1082 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1094 = o2;
    _1094.y = mad(_1082.z, r3.xyz.z, mad(_1082.y, r3.xyz.y, _1082.x * r3.xyz.x));
    o2 = _1094;
    float3 _1103 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1115 = o2;
    _1115.z = mad(_1103.z, r1.xyz.z, mad(_1103.y, r1.xyz.y, _1103.x * r1.xyz.x));
    o2 = _1115;
    float3 _1124 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1136 = o2;
    _1136.x = mad(_1124.z, r2.xyz.z, mad(_1124.y, r2.xyz.y, _1124.x * r2.xyz.x));
    o2 = _1136;
    float4 _1151 = r0;
    _1151.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1151;
    float4 _1156 = r0;
    _1156.x = rsqrt(r0.x);
    r0 = _1156;
    float3 _1162 = r0.xxx * r0.yzw;
    r0 = float4(_1162.x, _1162.y, _1162.z, r0.w);
    float3 _1178 = o3;
    _1178.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1178;
    float3 _1193 = o3;
    _1193.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1193;
    float3 _1208 = o3;
    _1208.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1208;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1216 = asfloat(v1);
    shader_in[1] = float4(_1216.x, _1216.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = asfloat(v7);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
