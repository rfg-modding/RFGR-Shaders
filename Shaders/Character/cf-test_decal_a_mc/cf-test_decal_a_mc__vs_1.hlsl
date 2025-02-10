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
static float2 o1;
static float3 o2;
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
static float4 r7;

void vs_main()
{
    float4 _72 = r0;
    _72.x = shader_in[4].y + shader_in[4].x;
    r0 = _72;
    float4 _80 = r0;
    _80.x = r0.x + shader_in[4].z;
    r0 = _80;
    float4 _88 = r0;
    _88.x = r0.x + shader_in[4].w;
    r0 = _88;
    float4 _95 = r0;
    _95.x = asfloat(1065353216u) / r0.x;
    r0 = _95;
    float3 _110 = (shader_in[2].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_110.x, _110.y, _110.z, r1.w);
    float4 _115 = r1;
    _115.w = asfloat(1065353216u);
    r1 = _115;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _132 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_132].x, cb4_m[_132].y, cb4_m[_132].z, cb4_m[_132].w);
    int _154 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_154].x, cb4_m[_154].y, cb4_m[_154].z, cb4_m[_154].w)) + r3;
    int _173 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_173].x, cb4_m[_173].y, cb4_m[_173].z, cb4_m[_173].w)) + r3;
    int _192 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_192].x, cb4_m[_192].y, cb4_m[_192].z, cb4_m[_192].w)) + r3;
    float4 _221 = r4;
    _221.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _221;
    int _230 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_230].x, cb4_m[_230].y, cb4_m[_230].z, cb4_m[_230].w);
    int _249 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_249].x, cb4_m[_249].y, cb4_m[_249].z, cb4_m[_249].w)) + r5;
    int _269 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_269].x, cb4_m[_269].y, cb4_m[_269].z, cb4_m[_269].w)) + r5;
    int _289 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_289].x, cb4_m[_289].y, cb4_m[_289].z, cb4_m[_289].w)) + r5;
    float4 _317 = r4;
    _317.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _317;
    int _325 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_325].x, cb4_m[_325].y, cb4_m[_325].z, cb4_m[_325].w);
    int _344 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_344].x, cb4_m[_344].y, cb4_m[_344].z, cb4_m[_344].w)) + r6;
    int _364 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_364].x, cb4_m[_364].y, cb4_m[_364].z, cb4_m[_364].w)) + r6;
    int _384 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_384].x, cb4_m[_384].y, cb4_m[_384].z, cb4_m[_384].w)) + r6;
    float4 _412 = r4;
    _412.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _412;
    float3 _418 = r0.xxx * r4.xyz;
    r1 = float4(_418.x, _418.y, _418.z, r1.w);
    float4 _422 = r1;
    _422.w = asfloat(1065353216u);
    r1 = _422;
    float4 _433 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _447 = r4;
    _447.x = mad(_433.w, r1.w, mad(_433.z, r1.z, mad(_433.y, r1.y, _433.x * r1.x)));
    r4 = _447;
    float4 _458 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _472 = r4;
    _472.y = mad(_458.w, r1.w, mad(_458.z, r1.z, mad(_458.y, r1.y, _458.x * r1.x)));
    r4 = _472;
    float4 _483 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _497 = r4;
    _497.z = mad(_483.w, r1.w, mad(_483.z, r1.z, mad(_483.y, r1.y, _483.x * r1.x)));
    r4 = _497;
    float4 _500 = r4;
    _500.w = asfloat(1065353216u);
    r4 = _500;
    float4 _511 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _525 = o0;
    _525.x = mad(_511.w, r4.w, mad(_511.z, r4.z, mad(_511.y, r4.y, _511.x * r4.x)));
    o0 = _525;
    float4 _536 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _550 = o0;
    _550.y = mad(_536.w, r4.w, mad(_536.z, r4.z, mad(_536.y, r4.y, _536.x * r4.x)));
    o0 = _550;
    float4 _561 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _575 = o0;
    _575.z = mad(_561.w, r4.w, mad(_561.z, r4.z, mad(_561.y, r4.y, _561.x * r4.x)));
    o0 = _575;
    float4 _587 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _601 = o0;
    _601.w = mad(_587.w, r4.w, mad(_587.z, r4.z, mad(_587.y, r4.y, _587.x * r4.x)));
    o0 = _601;
    float4 _605 = r0;
    _605.y = asfloat(3212836864u);
    r0 = _605;
    float3 _619 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_619.x, _619.y, _619.z, r1.w);
    float3 _631 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _641 = r0;
    _641.z = mad(r1.xyz.z, _631.z, mad(r1.xyz.y, _631.y, r1.xyz.x * _631.x));
    r0 = _641;
    float4 _649 = r0;
    _649.z = r0.z * cb5_m[5].y;
    r0 = _649;
    float4 _656 = r6;
    _656.y = r0.z * r0.y;
    r6 = _656;
    float3 _667 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _678 = r7;
    _678.x = mad(r1.xyz.z, _667.z, mad(r1.xyz.y, _667.y, r1.xyz.x * _667.x));
    r7 = _678;
    float3 _689 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _699 = r7;
    _699.z = mad(r1.xyz.z, _689.z, mad(r1.xyz.y, _689.y, r1.xyz.x * _689.x));
    r7 = _699;
    float2 _709 = r7.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r6 = float4(_709.x, r6.y, _709.y, r6.w);
    o1 = r6.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _721 = o3;
    _721.w = r6.z;
    o3 = _721;
    float3 _732 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _732.x, _732.y, _732.z);
    float3 _746 = r0.zwy * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_746.x, _746.y, _746.z, r1.w);
    float3 _764 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r0.wyz) + (-r1.xyz);
    r1 = float4(_764.x, _764.y, _764.z, r1.w);
    float4 _780 = r1;
    _780.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _780;
    float4 _785 = r1;
    _785.w = rsqrt(r1.w);
    r1 = _785;
    float3 _791 = r1.www * r1.xyz;
    r1 = float4(_791.x, _791.y, _791.z, r1.w);
    float3 _798 = r0.wyz * r1.yzx;
    r6 = float4(_798.x, _798.y, _798.z, r6.w);
    float3 _809 = (r0.zwy * r1.zxy) + (-r6.xyz);
    r6 = float4(_809.x, _809.y, _809.z, r6.w);
    float3 _819 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _831 = o3;
    _831.y = mad(_819.z, r1.xyz.z, mad(_819.y, r1.xyz.y, _819.x * r1.xyz.x));
    o3 = _831;
    float4 _846 = r1;
    _846.x = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r1 = _846;
    float4 _851 = r1;
    _851.x = rsqrt(r1.x);
    r1 = _851;
    float3 _857 = r1.xxx * r6.xyz;
    r1 = float4(_857.x, _857.y, _857.z, r1.w);
    float4 _873 = r6;
    _873.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r6 = _873;
    float4 _888 = r6;
    _888.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r6 = _888;
    float4 _903 = r6;
    _903.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r6 = _903;
    float3 _912 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _924 = o3;
    _924.x = mad(_912.z, r1.xyz.z, mad(_912.y, r1.xyz.y, _912.x * r1.xyz.x));
    o3 = _924;
    float3 _930 = r0.xxx * r6.xyz;
    r1 = float4(_930.x, _930.y, _930.z, r1.w);
    float4 _946 = r1;
    _946.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _946;
    float4 _951 = r1;
    _951.w = rsqrt(r1.w);
    r1 = _951;
    float3 _957 = r1.www * r1.xyz;
    r1 = float4(_957.x, _957.y, _957.z, r1.w);
    float3 _967 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _979 = r6;
    _979.x = mad(_967.z, r1.xyz.z, mad(_967.y, r1.xyz.y, _967.x * r1.xyz.x));
    r6 = _979;
    float3 _988 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1000 = r6;
    _1000.y = mad(_988.z, r1.xyz.z, mad(_988.y, r1.xyz.y, _988.x * r1.xyz.x));
    r6 = _1000;
    float3 _1009 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1021 = r6;
    _1021.z = mad(_1009.z, r1.xyz.z, mad(_1009.y, r1.xyz.y, _1009.x * r1.xyz.x));
    r6 = _1021;
    float4 _1036 = r1;
    _1036.x = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r1 = _1036;
    float4 _1041 = r1;
    _1041.x = rsqrt(r1.x);
    r1 = _1041;
    float3 _1047 = r1.xxx * r6.xyz;
    r1 = float4(_1047.x, _1047.y, _1047.z, r1.w);
    float3 _1056 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r6 = float4(_1056.x, _1056.y, _1056.z, r6.w);
    float3 _1065 = (r6.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r6 = float4(_1065.x, _1065.y, _1065.z, r6.w);
    float3 _1075 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1087 = o3;
    _1087.z = mad(_1075.z, r0.yzw.z, mad(_1075.y, r0.yzw.y, _1075.x * r0.yzw.x));
    o3 = _1087;
    float4 _1102 = r0;
    _1102.y = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r0 = _1102;
    float4 _1107 = r0;
    _1107.y = rsqrt(r0.y);
    r0 = _1107;
    float3 _1113 = r0.yyy * r6.xyz;
    r0 = float4(r0.x, _1113.x, _1113.y, _1113.z);
    float4 _1129 = r3;
    _1129.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r3 = _1129;
    float4 _1144 = r3;
    _1144.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r3 = _1144;
    float4 _1159 = r3;
    _1159.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r3 = _1159;
    float3 _1165 = r0.xxx * r3.xyz;
    r0 = float4(_1165.x, _1165.y, _1165.z, r0.w);
    float4 _1181 = r0;
    _1181.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _1181;
    float4 _1186 = r0;
    _1186.w = rsqrt(r0.w);
    r0 = _1186;
    float3 _1192 = r0.www * r0.xyz;
    r0 = float4(_1192.x, _1192.y, _1192.z, r0.w);
    float3 _1202 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1214 = r2;
    _1214.x = mad(_1202.z, r0.xyz.z, mad(_1202.y, r0.xyz.y, _1202.x * r0.xyz.x));
    r2 = _1214;
    float3 _1223 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1235 = r2;
    _1235.y = mad(_1223.z, r0.xyz.z, mad(_1223.y, r0.xyz.y, _1223.x * r0.xyz.x));
    r2 = _1235;
    float3 _1244 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1256 = r2;
    _1256.z = mad(_1244.z, r0.xyz.z, mad(_1244.y, r0.xyz.y, _1244.x * r0.xyz.x));
    r2 = _1256;
    float4 _1271 = r0;
    _1271.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1271;
    float4 _1276 = r0;
    _1276.x = rsqrt(r0.x);
    r0 = _1276;
    float3 _1282 = r0.xxx * r2.xyz;
    r0 = float4(_1282.x, _1282.y, _1282.z, r0.w);
    float3 _1289 = r1.yzx * r0.zxy;
    r2 = float4(_1289.x, _1289.y, _1289.z, r2.w);
    float3 _1300 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_1300.x, _1300.y, _1300.z, r2.w);
    float3 _1314 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_1314.x, _1314.y, _1314.z, r3.w);
    float3 _1329 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1329.x, _1329.y, _1329.z, r4.w);
    float3 _1336 = -r2.xyz;
    float3 _1346 = o2;
    _1346.y = mad(r3.xyz.z, _1336.z, mad(r3.xyz.y, _1336.y, r3.xyz.x * _1336.x));
    o2 = _1346;
    float3 _1355 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1358 = -r2.xyz;
    float4 _1368 = o6;
    _1368.y = mad(_1355.z, _1358.z, mad(_1355.y, _1358.y, _1355.x * _1358.x));
    o6 = _1368;
    float3 _1383 = o2;
    _1383.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o2 = _1383;
    float3 _1392 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1404 = o6;
    _1404.x = mad(_1392.z, r1.xyz.z, mad(_1392.y, r1.xyz.y, _1392.x * r1.xyz.x));
    o6 = _1404;
    float3 _1419 = o2;
    _1419.z = mad(r3.xyz.z, r0.xyz.z, mad(r3.xyz.y, r0.xyz.y, r3.xyz.x * r0.xyz.x));
    o2 = _1419;
    float3 _1428 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1440 = o6;
    _1440.z = mad(_1428.z, r0.xyz.z, mad(_1428.y, r0.xyz.y, _1428.x * r0.xyz.x));
    o6 = _1440;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _1470 = r0;
    _1470.x = r4.y * cb0_m[13].x;
    r0 = _1470;
    float4 _1477 = r0;
    _1477.y = r0.x * asfloat(3216550459u);
    r0 = _1477;
    float4 _1482 = r0;
    _1482.y = exp2(r0.y);
    r0 = _1482;
    float4 _1489 = r0;
    _1489.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1489;
    float4 _1496 = r0;
    _1496.x = r0.y / r0.x;
    r0 = _1496;
    float4 _1508 = r0;
    _1508.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1508;
    float4 _1523 = r0;
    _1523.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1523;
    float4 _1528 = r0;
    _1528.z = sqrt(r0.z);
    r0 = _1528;
    float4 _1536 = r0;
    _1536.z = r0.z * cb0_m[13].y;
    r0 = _1536;
    float4 _1546 = r0;
    _1546.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1546;
    float4 _1558 = r0;
    _1558.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1558;
    float4 _1564 = r0;
    _1564.x = exp2(-r0.x);
    r0 = _1564;
    float4 _1570 = r0;
    _1570.x = min(r0.x, asfloat(1065353216u));
    r0 = _1570;
    float4 _1577 = o6;
    _1577.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1577;
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
