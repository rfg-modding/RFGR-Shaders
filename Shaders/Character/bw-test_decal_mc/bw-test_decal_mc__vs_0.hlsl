cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
    float3 _613 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(r0.x, _613.x, _613.y, _613.z);
    float3 _626 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + shader_in[1].xyz;
    r1 = float4(_626.x, _626.y, _626.z, r1.w);
    float4 _642 = r1;
    _642.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _642;
    float4 _647 = r1;
    _647.w = rsqrt(r1.w);
    r1 = _647;
    float3 _653 = r1.www * r1.xyz;
    r1 = float4(_653.x, _653.y, _653.z, r1.w);
    float4 _669 = r4;
    _669.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _669;
    float4 _684 = r4;
    _684.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _684;
    float4 _699 = r4;
    _699.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _699;
    float3 _705 = r0.xxx * r4.xyz;
    r1 = float4(_705.x, _705.y, _705.z, r1.w);
    float4 _721 = r1;
    _721.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _721;
    float4 _726 = r1;
    _726.w = rsqrt(r1.w);
    r1 = _726;
    float3 _732 = r1.www * r1.xyz;
    r1 = float4(_732.x, _732.y, _732.z, r1.w);
    float3 _742 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _754 = r4;
    _754.x = mad(_742.z, r1.xyz.z, mad(_742.y, r1.xyz.y, _742.x * r1.xyz.x));
    r4 = _754;
    float3 _763 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _775 = r4;
    _775.y = mad(_763.z, r1.xyz.z, mad(_763.y, r1.xyz.y, _763.x * r1.xyz.x));
    r4 = _775;
    float3 _784 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _796 = r4;
    _796.z = mad(_784.z, r1.xyz.z, mad(_784.y, r1.xyz.y, _784.x * r1.xyz.x));
    r4 = _796;
    float4 _811 = r1;
    _811.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _811;
    float4 _816 = r1;
    _816.x = rsqrt(r1.x);
    r1 = _816;
    float3 _822 = r1.xxx * r4.xyz;
    r1 = float4(_822.x, _822.y, _822.z, r1.w);
    float3 _837 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r4 = float4(_837.x, _837.y, _837.z, r4.w);
    float3 _856 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r4.xyz);
    r4 = float4(_856.x, _856.y, _856.z, r4.w);
    float4 _872 = r1;
    _872.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _872;
    float4 _877 = r1;
    _877.w = rsqrt(r1.w);
    r1 = _877;
    float3 _883 = r1.www * r4.xyz;
    r4 = float4(_883.x, _883.y, _883.z, r4.w);
    float3 _891 = r4.yzx * shader_in[1].zxy;
    r6 = float4(_891.x, _891.y, _891.z, r6.w);
    float3 _903 = (shader_in[1].yzx * r4.zxy) + (-r6.xyz);
    r6 = float4(_903.x, _903.y, _903.z, r6.w);
    float3 _913 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _925 = o2;
    _925.y = mad(_913.z, r4.xyz.z, mad(_913.y, r4.xyz.y, _913.x * r4.xyz.x));
    o2 = _925;
    float4 _940 = r1;
    _940.w = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r1 = _940;
    float4 _945 = r1;
    _945.w = rsqrt(r1.w);
    r1 = _945;
    float3 _951 = r1.www * r6.xyz;
    r4 = float4(_951.x, _951.y, _951.z, r4.w);
    float4 _967 = r3;
    _967.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _967;
    float4 _982 = r3;
    _982.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _982;
    float4 _997 = r3;
    _997.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _997;
    float3 _1006 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1018 = o2;
    _1018.x = mad(_1006.z, r4.xyz.z, mad(_1006.y, r4.xyz.y, _1006.x * r4.xyz.x));
    o2 = _1018;
    float3 _1024 = r0.xxx * r3.xyz;
    r2 = float4(_1024.x, _1024.y, _1024.z, r2.w);
    float4 _1040 = r0;
    _1040.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1040;
    float4 _1045 = r0;
    _1045.x = rsqrt(r0.x);
    r0 = _1045;
    float3 _1051 = r0.xxx * r2.xyz;
    r2 = float4(_1051.x, _1051.y, _1051.z, r2.w);
    float3 _1061 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1073 = r3;
    _1073.x = mad(_1061.z, r2.xyz.z, mad(_1061.y, r2.xyz.y, _1061.x * r2.xyz.x));
    r3 = _1073;
    float3 _1082 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1094 = r3;
    _1094.y = mad(_1082.z, r2.xyz.z, mad(_1082.y, r2.xyz.y, _1082.x * r2.xyz.x));
    r3 = _1094;
    float3 _1103 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1115 = r3;
    _1115.z = mad(_1103.z, r2.xyz.z, mad(_1103.y, r2.xyz.y, _1103.x * r2.xyz.x));
    r3 = _1115;
    float4 _1130 = r0;
    _1130.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1130;
    float4 _1135 = r0;
    _1135.x = rsqrt(r0.x);
    r0 = _1135;
    float3 _1141 = r0.xxx * r3.xyz;
    r2 = float4(_1141.x, _1141.y, _1141.z, r2.w);
    float3 _1148 = r1.zxy * r2.yzx;
    r3 = float4(_1148.x, _1148.y, _1148.z, r3.w);
    float3 _1159 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1159.x, _1159.y, _1159.z, r3.w);
    float3 _1169 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1172 = -r3.xyz;
    float3 _1182 = o1;
    _1182.y = mad(_1169.z, _1172.z, mad(_1169.y, _1172.y, _1169.x * _1172.x));
    o1 = _1182;
    float4 _1187 = o5;
    _1187.y = -r3.y;
    o5 = _1187;
    float3 _1196 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1208 = o1;
    _1208.z = mad(_1196.z, r1.xyz.z, mad(_1196.y, r1.xyz.y, _1196.x * r1.xyz.x));
    o1 = _1208;
    float4 _1212 = o5;
    _1212.z = r1.y;
    o5 = _1212;
    float3 _1221 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1233 = o1;
    _1233.x = mad(_1221.z, r2.xyz.z, mad(_1221.y, r2.xyz.y, _1221.x * r2.xyz.x));
    o1 = _1233;
    float4 _1237 = o5;
    _1237.x = r2.y;
    o5 = _1237;
    float3 _1246 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1259 = o2;
    _1259.z = mad(_1246.z, shader_in[1].xyz.z, mad(_1246.y, shader_in[1].xyz.y, _1246.x * shader_in[1].xyz.x));
    o2 = _1259;
    float3 _1273 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_1273.x, _1273.y, _1273.z, r1.w);
    float3 _1285 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _1295 = r2;
    _1295.x = mad(r1.xyz.z, _1285.z, mad(r1.xyz.y, _1285.y, r1.xyz.x * _1285.x));
    r2 = _1295;
    float3 _1306 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1316 = r2;
    _1316.z = mad(r1.xyz.z, _1306.z, mad(r1.xyz.y, _1306.y, r1.xyz.x * _1306.x));
    r2 = _1316;
    float3 _1327 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _1337 = r0;
    _1337.x = mad(r1.xyz.z, _1327.z, mad(r1.xyz.y, _1327.y, r1.xyz.x * _1327.x));
    r0 = _1337;
    float4 _1345 = r0;
    _1345.x = r0.x * cb5_m[5].y;
    r0 = _1345;
    float2 _1356 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_1356.x, r1.y, _1356.y, r1.w);
    float4 _1361 = o2;
    _1361.w = r1.z;
    o2 = _1361;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _1391 = r1;
    _1391.z = r0.z * cb0_m[13].x;
    r1 = _1391;
    float4 _1398 = r1;
    _1398.w = r1.z * asfloat(3216550459u);
    r1 = _1398;
    float4 _1403 = r1;
    _1403.w = exp2(r1.w);
    r1 = _1403;
    float4 _1410 = r1;
    _1410.w = (-r1.w) + asfloat(1065353216u);
    r1 = _1410;
    float4 _1417 = r1;
    _1417.z = r1.w / r1.z;
    r1 = _1417;
    float4 _1429 = r1;
    _1429.w = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _1429;
    float4 _1444 = r0;
    _1444.y = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1444;
    float4 _1449 = r0;
    _1449.y = sqrt(r0.y);
    r0 = _1449;
    float4 _1457 = r0;
    _1457.y = r0.y * cb0_m[13].y;
    r0 = _1457;
    float4 _1467 = r0;
    _1467.z = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _1467;
    float4 _1479 = r0;
    _1479.y = (r0.z * r0.y) + (-cb0_m[13].w);
    r0 = _1479;
    float4 _1485 = r0;
    _1485.y = exp2(-r0.y);
    r0 = _1485;
    float4 _1491 = r0;
    _1491.y = min(r0.y, asfloat(1065353216u));
    r0 = _1491;
    float4 _1498 = o5;
    _1498.w = (-r0.y) + asfloat(1065353216u);
    o5 = _1498;
    float4 _1502 = r0;
    _1502.y = asfloat(3212836864u);
    r0 = _1502;
    float4 _1509 = r1;
    _1509.y = r0.x * r0.y;
    r1 = _1509;
    float2 _1517 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1517.x, _1517.y, o6.z, o6.w);
    float2 _1523 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1523.x, _1523.y);
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
