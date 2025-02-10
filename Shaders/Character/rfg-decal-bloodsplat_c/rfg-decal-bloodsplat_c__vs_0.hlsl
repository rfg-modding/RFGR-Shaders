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
static int4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 o7;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _69 = r0;
    _69.x = shader_in[2].y + shader_in[2].x;
    r0 = _69;
    float4 _77 = r0;
    _77.x = r0.x + shader_in[2].z;
    r0 = _77;
    float4 _85 = r0;
    _85.x = r0.x + shader_in[2].w;
    r0 = _85;
    float4 _92 = r0;
    _92.x = asfloat(1065353216u) / r0.x;
    r0 = _92;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    r2 = asfloat(asint(shader_in[3]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _119 = asint(r2.y);
    r3 = shader_in[2].yyyy * float4(cb4_m[_119].x, cb4_m[_119].y, cb4_m[_119].z, cb4_m[_119].w);
    int _141 = asint(r2.x);
    r3 = (shader_in[2].xxxx * float4(cb4_m[_141].x, cb4_m[_141].y, cb4_m[_141].z, cb4_m[_141].w)) + r3;
    int _160 = asint(r2.z);
    r3 = (shader_in[2].zzzz * float4(cb4_m[_160].x, cb4_m[_160].y, cb4_m[_160].z, cb4_m[_160].w)) + r3;
    int _179 = asint(r2.w);
    r3 = (shader_in[2].wwww * float4(cb4_m[_179].x, cb4_m[_179].y, cb4_m[_179].z, cb4_m[_179].w)) + r3;
    float4 _208 = r4;
    _208.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _208;
    int _217 = asint(r2.y) + 1;
    r5 = shader_in[2].yyyy * float4(cb4_m[_217].x, cb4_m[_217].y, cb4_m[_217].z, cb4_m[_217].w);
    int _236 = asint(r2.x) + 1;
    r5 = (shader_in[2].xxxx * float4(cb4_m[_236].x, cb4_m[_236].y, cb4_m[_236].z, cb4_m[_236].w)) + r5;
    int _256 = asint(r2.z) + 1;
    r5 = (shader_in[2].zzzz * float4(cb4_m[_256].x, cb4_m[_256].y, cb4_m[_256].z, cb4_m[_256].w)) + r5;
    int _276 = asint(r2.w) + 1;
    r5 = (shader_in[2].wwww * float4(cb4_m[_276].x, cb4_m[_276].y, cb4_m[_276].z, cb4_m[_276].w)) + r5;
    float4 _304 = r4;
    _304.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _304;
    int _312 = asint(r2.y) + 2;
    r6 = shader_in[2].yyyy * float4(cb4_m[_312].x, cb4_m[_312].y, cb4_m[_312].z, cb4_m[_312].w);
    int _331 = asint(r2.x) + 2;
    r6 = (shader_in[2].xxxx * float4(cb4_m[_331].x, cb4_m[_331].y, cb4_m[_331].z, cb4_m[_331].w)) + r6;
    int _351 = asint(r2.z) + 2;
    r6 = (shader_in[2].zzzz * float4(cb4_m[_351].x, cb4_m[_351].y, cb4_m[_351].z, cb4_m[_351].w)) + r6;
    int _371 = asint(r2.w) + 2;
    r2 = (shader_in[2].wwww * float4(cb4_m[_371].x, cb4_m[_371].y, cb4_m[_371].z, cb4_m[_371].w)) + r6;
    float4 _399 = r4;
    _399.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _399;
    float3 _405 = r0.xxx * r4.xyz;
    r1 = float4(_405.x, _405.y, _405.z, r1.w);
    float4 _409 = r1;
    _409.w = asfloat(1065353216u);
    r1 = _409;
    float4 _420 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _434 = r4;
    _434.x = mad(_420.w, r1.w, mad(_420.z, r1.z, mad(_420.y, r1.y, _420.x * r1.x)));
    r4 = _434;
    float4 _445 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _459 = r4;
    _459.y = mad(_445.w, r1.w, mad(_445.z, r1.z, mad(_445.y, r1.y, _445.x * r1.x)));
    r4 = _459;
    float4 _470 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _484 = r4;
    _484.z = mad(_470.w, r1.w, mad(_470.z, r1.z, mad(_470.y, r1.y, _470.x * r1.x)));
    r4 = _484;
    float4 _487 = r4;
    _487.w = asfloat(1065353216u);
    r4 = _487;
    float4 _498 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _512 = o0;
    _512.x = mad(_498.w, r4.w, mad(_498.z, r4.z, mad(_498.y, r4.y, _498.x * r4.x)));
    o0 = _512;
    float4 _523 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _537 = o0;
    _537.y = mad(_523.w, r4.w, mad(_523.z, r4.z, mad(_523.y, r4.y, _523.x * r4.x)));
    o0 = _537;
    float4 _548 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _562 = o0;
    _562.z = mad(_548.w, r4.w, mad(_548.z, r4.z, mad(_548.y, r4.y, _548.x * r4.x)));
    o0 = _562;
    float4 _573 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _587 = o0;
    _587.w = mad(_573.w, r4.w, mad(_573.z, r4.z, mad(_573.y, r4.y, _573.x * r4.x)));
    o0 = _587;
    float4 _603 = r1;
    _603.x = mad(r3.xyz.z, shader_in[1].xyz.z, mad(r3.xyz.y, shader_in[1].xyz.y, r3.xyz.x * shader_in[1].xyz.x));
    r1 = _603;
    float4 _619 = r1;
    _619.y = mad(r5.xyz.z, shader_in[1].xyz.z, mad(r5.xyz.y, shader_in[1].xyz.y, r5.xyz.x * shader_in[1].xyz.x));
    r1 = _619;
    float4 _635 = r1;
    _635.z = mad(r2.xyz.z, shader_in[1].xyz.z, mad(r2.xyz.y, shader_in[1].xyz.y, r2.xyz.x * shader_in[1].xyz.x));
    r1 = _635;
    float3 _641 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _641.x, _641.y, _641.z);
    float4 _657 = r1;
    _657.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _657;
    float4 _662 = r1;
    _662.x = rsqrt(r1.x);
    r1 = _662;
    float3 _668 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _668.x, _668.y, _668.z);
    float3 _678 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _690 = r1;
    _690.x = mad(_678.z, r0.yzw.z, mad(_678.y, r0.yzw.y, _678.x * r0.yzw.x));
    r1 = _690;
    float3 _699 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _711 = r1;
    _711.y = mad(_699.z, r0.yzw.z, mad(_699.y, r0.yzw.y, _699.x * r0.yzw.x));
    r1 = _711;
    float3 _720 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _732 = r1;
    _732.z = mad(_720.z, r0.yzw.z, mad(_720.y, r0.yzw.y, _720.x * r0.yzw.x));
    r1 = _732;
    float4 _747 = r0;
    _747.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _747;
    float4 _752 = r0;
    _752.y = rsqrt(r0.y);
    r0 = _752;
    float3 _758 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _758.x, _758.y, _758.z);
    float3 _773 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_773.x, _773.y, _773.z, r1.w);
    float3 _792 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_792.x, _792.y, _792.z, r1.w);
    float4 _808 = r1;
    _808.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _808;
    float4 _813 = r1;
    _813.w = rsqrt(r1.w);
    r1 = _813;
    float3 _819 = r1.www * r1.xyz;
    r1 = float4(_819.x, _819.y, _819.z, r1.w);
    float3 _827 = r1.yzx * shader_in[1].zxy;
    r6 = float4(_827.x, _827.y, _827.z, r6.w);
    float3 _839 = (shader_in[1].yzx * r1.zxy) + (-r6.xyz);
    r6 = float4(_839.x, _839.y, _839.z, r6.w);
    float3 _849 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _861 = o3;
    _861.y = mad(_849.z, r1.xyz.z, mad(_849.y, r1.xyz.y, _849.x * r1.xyz.x));
    o3 = _861;
    float4 _876 = r1;
    _876.x = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r1 = _876;
    float4 _881 = r1;
    _881.x = rsqrt(r1.x);
    r1 = _881;
    float3 _887 = r1.xxx * r6.xyz;
    r1 = float4(_887.x, _887.y, _887.z, r1.w);
    float4 _903 = r3;
    _903.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _903;
    float4 _918 = r3;
    _918.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _918;
    float4 _933 = r3;
    _933.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _933;
    float3 _942 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _954 = o3;
    _954.x = mad(_942.z, r1.xyz.z, mad(_942.y, r1.xyz.y, _942.x * r1.xyz.x));
    o3 = _954;
    float3 _960 = r0.xxx * r3.xyz;
    r1 = float4(_960.x, _960.y, _960.z, r1.w);
    float4 _976 = r0;
    _976.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _976;
    float4 _981 = r0;
    _981.x = rsqrt(r0.x);
    r0 = _981;
    float3 _987 = r0.xxx * r1.xyz;
    r1 = float4(_987.x, _987.y, _987.z, r1.w);
    float3 _997 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1009 = r2;
    _1009.x = mad(_997.z, r1.xyz.z, mad(_997.y, r1.xyz.y, _997.x * r1.xyz.x));
    r2 = _1009;
    float3 _1018 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1030 = r2;
    _1030.y = mad(_1018.z, r1.xyz.z, mad(_1018.y, r1.xyz.y, _1018.x * r1.xyz.x));
    r2 = _1030;
    float3 _1039 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1051 = r2;
    _1051.z = mad(_1039.z, r1.xyz.z, mad(_1039.y, r1.xyz.y, _1039.x * r1.xyz.x));
    r2 = _1051;
    float4 _1066 = r0;
    _1066.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1066;
    float4 _1071 = r0;
    _1071.x = rsqrt(r0.x);
    r0 = _1071;
    float3 _1077 = r0.xxx * r2.xyz;
    r1 = float4(_1077.x, _1077.y, _1077.z, r1.w);
    float3 _1084 = r0.wyz * r1.yzx;
    r2 = float4(_1084.x, _1084.y, _1084.z, r2.w);
    float3 _1095 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1095.x, _1095.y, _1095.z, r2.w);
    float3 _1105 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1108 = -r2.xyz;
    float3 _1118 = o1;
    _1118.y = mad(_1105.z, _1108.z, mad(_1105.y, _1108.y, _1105.x * _1108.x));
    o1 = _1118;
    float3 _1127 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1139 = o1;
    _1139.z = mad(_1127.z, r0.yzw.z, mad(_1127.y, r0.yzw.y, _1127.x * r0.yzw.x));
    o1 = _1139;
    float3 _1148 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1160 = o1;
    _1160.x = mad(_1148.z, r1.xyz.z, mad(_1148.y, r1.xyz.y, _1148.x * r1.xyz.x));
    o1 = _1160;
    float3 _1174 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r3 = float4(_1174.x, _1174.y, _1174.z, r3.w);
    float3 _1188 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1188.x, _1188.y, _1188.z, r4.w);
    float3 _1204 = o2;
    _1204.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o2 = _1204;
    float4 _1208 = o6;
    _1208.x = r1.y;
    o6 = _1208;
    float3 _1223 = o2;
    _1223.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o2 = _1223;
    float4 _1227 = o6;
    _1227.z = r0.z;
    o6 = _1227;
    float3 _1233 = -r2.xyz;
    float3 _1243 = o2;
    _1243.y = mad(r3.xyz.z, _1233.z, mad(r3.xyz.y, _1233.y, r3.xyz.x * _1233.x));
    o2 = _1243;
    float4 _1248 = o6;
    _1248.y = -r2.y;
    o6 = _1248;
    float3 _1257 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1270 = o3;
    _1270.z = mad(_1257.z, shader_in[1].xyz.z, mad(_1257.y, shader_in[1].xyz.y, _1257.x * shader_in[1].xyz.x));
    o3 = _1270;
    float3 _1284 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_1284.x, _1284.y, _1284.z, r0.w);
    float3 _1296 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _1306 = r1;
    _1306.x = mad(r0.xyz.z, _1296.z, mad(r0.xyz.y, _1296.y, r0.xyz.x * _1296.x));
    r1 = _1306;
    float3 _1317 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1327 = r1;
    _1327.z = mad(r0.xyz.z, _1317.z, mad(r0.xyz.y, _1317.y, r0.xyz.x * _1317.x));
    r1 = _1327;
    float3 _1338 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _1348 = r0;
    _1348.x = mad(r0.xyz.z, _1338.z, mad(r0.xyz.y, _1338.y, r0.xyz.x * _1338.x));
    r0 = _1348;
    float4 _1357 = r0;
    _1357.x = r0.x * cb5_m[5].y;
    r0 = _1357;
    float2 _1368 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_1368.x, r1.y, _1368.y, r1.w);
    float4 _1373 = o3;
    _1373.w = r1.z;
    o3 = _1373;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _1404 = r0;
    _1404.y = r4.y * cb0_m[13].x;
    r0 = _1404;
    float4 _1411 = r0;
    _1411.z = r0.y * asfloat(3216550459u);
    r0 = _1411;
    float4 _1416 = r0;
    _1416.z = exp2(r0.z);
    r0 = _1416;
    float4 _1423 = r0;
    _1423.z = (-r0.z) + asfloat(1065353216u);
    r0 = _1423;
    float4 _1430 = r0;
    _1430.y = r0.z / r0.y;
    r0 = _1430;
    float4 _1442 = r0;
    _1442.z = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1442;
    float4 _1457 = r0;
    _1457.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1457;
    float4 _1462 = r0;
    _1462.w = sqrt(r0.w);
    r0 = _1462;
    float4 _1470 = r0;
    _1470.w = r0.w * cb0_m[13].y;
    r0 = _1470;
    float4 _1480 = r0;
    _1480.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _1480;
    float4 _1492 = r0;
    _1492.y = (r0.y * r0.w) + (-cb0_m[13].w);
    r0 = _1492;
    float4 _1498 = r0;
    _1498.y = exp2(-r0.y);
    r0 = _1498;
    float4 _1504 = r0;
    _1504.y = min(r0.y, asfloat(1065353216u));
    r0 = _1504;
    float4 _1511 = o6;
    _1511.w = (-r0.y) + asfloat(1065353216u);
    o6 = _1511;
    float4 _1515 = r0;
    _1515.y = asfloat(3212836864u);
    r0 = _1515;
    float4 _1522 = r1;
    _1522.y = r0.x * r0.y;
    r1 = _1522;
    float2 _1530 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o7 = float4(_1530.x, _1530.y, o7.z, o7.w);
    float2 _1536 = cb5_m[5].w.xx;
    o7 = float4(o7.x, o7.y, _1536.x, _1536.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = asfloat(v3);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
