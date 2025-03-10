cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static int4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _70 = r0;
    _70.x = shader_in[4].y + shader_in[4].x;
    r0 = _70;
    float4 _78 = r0;
    _78.x = r0.x + shader_in[4].z;
    r0 = _78;
    float4 _86 = r0;
    _86.x = r0.x + shader_in[4].w;
    r0 = _86;
    float4 _93 = r0;
    _93.x = asfloat(1065353216u) / r0.x;
    r0 = _93;
    float3 _108 = (shader_in[2].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_108.x, _108.y, _108.z, r1.w);
    float4 _113 = r1;
    _113.w = asfloat(1065353216u);
    r1 = _113;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _130 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_130].x, cb4_m[_130].y, cb4_m[_130].z, cb4_m[_130].w);
    int _152 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_152].x, cb4_m[_152].y, cb4_m[_152].z, cb4_m[_152].w)) + r3;
    int _171 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_171].x, cb4_m[_171].y, cb4_m[_171].z, cb4_m[_171].w)) + r3;
    int _190 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_190].x, cb4_m[_190].y, cb4_m[_190].z, cb4_m[_190].w)) + r3;
    float4 _219 = r4;
    _219.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _219;
    int _228 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_228].x, cb4_m[_228].y, cb4_m[_228].z, cb4_m[_228].w);
    int _247 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_247].x, cb4_m[_247].y, cb4_m[_247].z, cb4_m[_247].w)) + r5;
    int _267 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_267].x, cb4_m[_267].y, cb4_m[_267].z, cb4_m[_267].w)) + r5;
    int _287 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_287].x, cb4_m[_287].y, cb4_m[_287].z, cb4_m[_287].w)) + r5;
    float4 _315 = r4;
    _315.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _315;
    int _323 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_323].x, cb4_m[_323].y, cb4_m[_323].z, cb4_m[_323].w);
    int _342 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_342].x, cb4_m[_342].y, cb4_m[_342].z, cb4_m[_342].w)) + r6;
    int _362 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_362].x, cb4_m[_362].y, cb4_m[_362].z, cb4_m[_362].w)) + r6;
    int _382 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_382].x, cb4_m[_382].y, cb4_m[_382].z, cb4_m[_382].w)) + r6;
    float4 _410 = r4;
    _410.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _410;
    float3 _416 = r0.xxx * r4.xyz;
    r1 = float4(_416.x, _416.y, _416.z, r1.w);
    float4 _420 = r1;
    _420.w = asfloat(1065353216u);
    r1 = _420;
    float4 _431 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _445 = r4;
    _445.x = mad(_431.w, r1.w, mad(_431.z, r1.z, mad(_431.y, r1.y, _431.x * r1.x)));
    r4 = _445;
    float4 _456 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _470 = r4;
    _470.y = mad(_456.w, r1.w, mad(_456.z, r1.z, mad(_456.y, r1.y, _456.x * r1.x)));
    r4 = _470;
    float4 _481 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _495 = r4;
    _495.z = mad(_481.w, r1.w, mad(_481.z, r1.z, mad(_481.y, r1.y, _481.x * r1.x)));
    r4 = _495;
    float4 _498 = r4;
    _498.w = asfloat(1065353216u);
    r4 = _498;
    float4 _509 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _523 = o0;
    _523.x = mad(_509.w, r4.w, mad(_509.z, r4.z, mad(_509.y, r4.y, _509.x * r4.x)));
    o0 = _523;
    float4 _534 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _548 = o0;
    _548.y = mad(_534.w, r4.w, mad(_534.z, r4.z, mad(_534.y, r4.y, _534.x * r4.x)));
    o0 = _548;
    float4 _559 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _573 = o0;
    _573.z = mad(_559.w, r4.w, mad(_559.z, r4.z, mad(_559.y, r4.y, _559.x * r4.x)));
    o0 = _573;
    float4 _585 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _599 = o0;
    _599.w = mad(_585.w, r4.w, mad(_585.z, r4.z, mad(_585.y, r4.y, _585.x * r4.x)));
    o0 = _599;
    float3 _611 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + shader_in[1].xyz;
    r0 = float4(r0.x, _611.x, _611.y, _611.z);
    float4 _627 = r1;
    _627.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _627;
    float4 _632 = r1;
    _632.x = rsqrt(r1.x);
    r1 = _632;
    float3 _638 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _638.x, _638.y, _638.z);
    float4 _654 = r1;
    _654.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _654;
    float4 _669 = r1;
    _669.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _669;
    float4 _684 = r1;
    _684.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _684;
    float3 _690 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _690.x, _690.y, _690.z);
    float4 _706 = r1;
    _706.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _706;
    float4 _711 = r1;
    _711.x = rsqrt(r1.x);
    r1 = _711;
    float3 _717 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _717.x, _717.y, _717.z);
    float3 _727 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _739 = r1;
    _739.x = mad(_727.z, r0.yzw.z, mad(_727.y, r0.yzw.y, _727.x * r0.yzw.x));
    r1 = _739;
    float3 _748 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _760 = r1;
    _760.y = mad(_748.z, r0.yzw.z, mad(_748.y, r0.yzw.y, _748.x * r0.yzw.x));
    r1 = _760;
    float3 _769 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _781 = r1;
    _781.z = mad(_769.z, r0.yzw.z, mad(_769.y, r0.yzw.y, _769.x * r0.yzw.x));
    r1 = _781;
    float4 _796 = r0;
    _796.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _796;
    float4 _801 = r0;
    _801.y = rsqrt(r0.y);
    r0 = _801;
    float3 _807 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _807.x, _807.y, _807.z);
    float3 _822 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_822.x, _822.y, _822.z, r1.w);
    float3 _841 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_841.x, _841.y, _841.z, r1.w);
    float4 _857 = r1;
    _857.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _857;
    float4 _862 = r1;
    _862.w = rsqrt(r1.w);
    r1 = _862;
    float3 _868 = r1.www * r1.xyz;
    r1 = float4(_868.x, _868.y, _868.z, r1.w);
    float3 _876 = r1.yzx * shader_in[1].zxy;
    r6 = float4(_876.x, _876.y, _876.z, r6.w);
    float3 _888 = (shader_in[1].yzx * r1.zxy) + (-r6.xyz);
    r6 = float4(_888.x, _888.y, _888.z, r6.w);
    float3 _898 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _910 = o2;
    _910.y = mad(_898.z, r1.xyz.z, mad(_898.y, r1.xyz.y, _898.x * r1.xyz.x));
    o2 = _910;
    float4 _925 = r1;
    _925.x = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r1 = _925;
    float4 _930 = r1;
    _930.x = rsqrt(r1.x);
    r1 = _930;
    float3 _936 = r1.xxx * r6.xyz;
    r1 = float4(_936.x, _936.y, _936.z, r1.w);
    float4 _952 = r3;
    _952.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _952;
    float4 _967 = r3;
    _967.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _967;
    float4 _982 = r3;
    _982.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _982;
    float3 _991 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1003 = o2;
    _1003.x = mad(_991.z, r1.xyz.z, mad(_991.y, r1.xyz.y, _991.x * r1.xyz.x));
    o2 = _1003;
    float3 _1009 = r0.xxx * r3.xyz;
    r1 = float4(_1009.x, _1009.y, _1009.z, r1.w);
    float4 _1025 = r0;
    _1025.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _1025;
    float4 _1030 = r0;
    _1030.x = rsqrt(r0.x);
    r0 = _1030;
    float3 _1036 = r0.xxx * r1.xyz;
    r1 = float4(_1036.x, _1036.y, _1036.z, r1.w);
    float3 _1046 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1058 = r2;
    _1058.x = mad(_1046.z, r1.xyz.z, mad(_1046.y, r1.xyz.y, _1046.x * r1.xyz.x));
    r2 = _1058;
    float3 _1067 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1079 = r2;
    _1079.y = mad(_1067.z, r1.xyz.z, mad(_1067.y, r1.xyz.y, _1067.x * r1.xyz.x));
    r2 = _1079;
    float3 _1088 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1100 = r2;
    _1100.z = mad(_1088.z, r1.xyz.z, mad(_1088.y, r1.xyz.y, _1088.x * r1.xyz.x));
    r2 = _1100;
    float4 _1115 = r0;
    _1115.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1115;
    float4 _1120 = r0;
    _1120.x = rsqrt(r0.x);
    r0 = _1120;
    float3 _1126 = r0.xxx * r2.xyz;
    r1 = float4(_1126.x, _1126.y, _1126.z, r1.w);
    float3 _1133 = r0.wyz * r1.yzx;
    r2 = float4(_1133.x, _1133.y, _1133.z, r2.w);
    float3 _1144 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1144.x, _1144.y, _1144.z, r2.w);
    float3 _1158 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_1158.x, _1158.y, _1158.z, r3.w);
    float3 _1173 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1173.x, _1173.y, _1173.z, r4.w);
    float3 _1180 = -r2.xyz;
    float3 _1190 = o1;
    _1190.y = mad(r3.xyz.z, _1180.z, mad(r3.xyz.y, _1180.y, r3.xyz.x * _1180.x));
    o1 = _1190;
    float3 _1199 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1202 = -r2.xyz;
    float4 _1212 = o5;
    _1212.y = mad(_1199.z, _1202.z, mad(_1199.y, _1202.y, _1199.x * _1202.x));
    o5 = _1212;
    float3 _1227 = o1;
    _1227.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o1 = _1227;
    float3 _1236 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1248 = o5;
    _1248.z = mad(_1236.z, r0.yzw.z, mad(_1236.y, r0.yzw.y, _1236.x * r0.yzw.x));
    o5 = _1248;
    float3 _1263 = o1;
    _1263.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o1 = _1263;
    float3 _1272 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1284 = o5;
    _1284.x = mad(_1272.z, r1.xyz.z, mad(_1272.y, r1.xyz.y, _1272.x * r1.xyz.x));
    o5 = _1284;
    float3 _1293 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1306 = o2;
    _1306.z = mad(_1293.z, shader_in[1].xyz.z, mad(_1293.y, shader_in[1].xyz.y, _1293.x * shader_in[1].xyz.x));
    o2 = _1306;
    float3 _1320 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_1320.x, _1320.y, _1320.z, r0.w);
    float3 _1332 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _1342 = r1;
    _1342.x = mad(r0.xyz.z, _1332.z, mad(r0.xyz.y, _1332.y, r0.xyz.x * _1332.x));
    r1 = _1342;
    float3 _1353 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1363 = r1;
    _1363.z = mad(r0.xyz.z, _1353.z, mad(r0.xyz.y, _1353.y, r0.xyz.x * _1353.x));
    r1 = _1363;
    float3 _1374 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _1384 = r0;
    _1384.x = mad(r0.xyz.z, _1374.z, mad(r0.xyz.y, _1374.y, r0.xyz.x * _1374.x));
    r0 = _1384;
    float4 _1392 = r0;
    _1392.x = r0.x * cb5_m[5].y;
    r0 = _1392;
    float2 _1403 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_1403.x, r1.y, _1403.y, r1.w);
    float4 _1408 = o2;
    _1408.w = r1.z;
    o2 = _1408;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _1438 = r0;
    _1438.y = r4.y * cb0_m[13].x;
    r0 = _1438;
    float4 _1445 = r0;
    _1445.z = r0.y * asfloat(3216550459u);
    r0 = _1445;
    float4 _1450 = r0;
    _1450.z = exp2(r0.z);
    r0 = _1450;
    float4 _1457 = r0;
    _1457.z = (-r0.z) + asfloat(1065353216u);
    r0 = _1457;
    float4 _1464 = r0;
    _1464.y = r0.z / r0.y;
    r0 = _1464;
    float4 _1476 = r0;
    _1476.z = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1476;
    float4 _1491 = r0;
    _1491.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1491;
    float4 _1496 = r0;
    _1496.w = sqrt(r0.w);
    r0 = _1496;
    float4 _1504 = r0;
    _1504.w = r0.w * cb0_m[13].y;
    r0 = _1504;
    float4 _1514 = r0;
    _1514.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _1514;
    float4 _1526 = r0;
    _1526.y = (r0.y * r0.w) + (-cb0_m[13].w);
    r0 = _1526;
    float4 _1532 = r0;
    _1532.y = exp2(-r0.y);
    r0 = _1532;
    float4 _1538 = r0;
    _1538.y = min(r0.y, asfloat(1065353216u));
    r0 = _1538;
    float4 _1545 = o5;
    _1545.w = (-r0.y) + asfloat(1065353216u);
    o5 = _1545;
    float4 _1549 = r0;
    _1549.y = asfloat(3212836864u);
    r0 = _1549;
    float4 _1556 = r1;
    _1556.y = r0.x * r0.y;
    r1 = _1556;
    float2 _1564 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1564.x, _1564.y, o6.z, o6.w);
    float2 _1570 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1570.x, _1570.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = asfloat(v5);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
