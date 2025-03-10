cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb3_t : register(b163)
{
    float4 cb3_m[9] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float4 v0;
static float4 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;
static float4 v9;
static float4 v10;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
    float4 v9 : TEXCOORD9;
    float4 v10 : TEXCOORD10;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[11];
static float4 o0;
static float4 o1;
static float o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;
static float4 r7;
static float4 r8;

void vs_main()
{
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
    float2 _64 = shader_in[9].ww * asfloat(uint2(3204448256u, 1056964608u));
    r1 = float4(_64.x, _64.y, r1.z, r1.w);
    r2 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r2.w);
    float4 _77 = r2;
    _77.w = asfloat(1065353216u);
    r2 = _77;
    float4 _93 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _108 = r3;
    _108.x = mad(_93.w, r2.w, mad(_93.z, r2.z, mad(_93.y, r2.y, _93.x * r2.x)));
    r3 = _108;
    float4 _120 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _134 = r3;
    _134.y = mad(_120.w, r2.w, mad(_120.z, r2.z, mad(_120.y, r2.y, _120.x * r2.x)));
    r3 = _134;
    float4 _146 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _160 = r3;
    _160.z = mad(_146.w, r2.w, mad(_146.z, r2.z, mad(_146.y, r2.y, _146.x * r2.x)));
    r3 = _160;
    float3 _176 = (r1.xxx * float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z)) + r3.xyz;
    r2 = float4(_176.x, _176.y, _176.z, r2.w);
    float3 _193 = (r1.xxx * (-float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z))) + r2.xyz;
    r0 = float4(_193.x, _193.y, _193.z, r0.w);
    float4 _205 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _219 = r1;
    _219.z = mad(_205.w, r0.w, mad(_205.z, r0.z, mad(_205.y, r0.y, _205.x * r0.x)));
    r1 = _219;
    float4 _231 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _245 = r0;
    _245.x = mad(_231.w, r0.w, mad(_231.z, r0.z, mad(_231.y, r0.y, _231.x * r0.x)));
    r0 = _245;
    float4 _252 = r0;
    _252.x = r1.z / r0.x;
    r0 = _252;
    float4 _255 = r2;
    _255.w = asfloat(1065353216u);
    r2 = _255;
    float3 _270 = (r1.yyy * float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z)) + r3.xyz;
    r0 = float4(r0.x, _270.x, _270.y, _270.z);
    float3 _287 = (r1.xxx * (-float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z))) + r0.yzw;
    r2 = float4(_287.x, _287.y, _287.z, r2.w);
    float3 _304 = (r1.yyy * (-float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z))) + r0.yzw;
    r1 = float4(_304.x, _304.y, _304.z, r1.w);
    float4 _316 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _331 = r4;
    _331.x = mad(_316.w, r2.w, mad(_316.z, r2.z, mad(_316.y, r2.y, _316.x * r2.x)));
    r4 = _331;
    float4 _342 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _356 = r4;
    _356.y = mad(_342.w, r2.w, mad(_342.z, r2.z, mad(_342.y, r2.y, _342.x * r2.x)));
    r4 = _356;
    float4 _367 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _381 = r0;
    _381.y = mad(_367.w, r2.w, mad(_367.z, r2.z, mad(_367.y, r2.y, _367.x * r2.x)));
    r0 = _381;
    float2 _387 = r4.xy / r0.yy;
    r0 = float4(r0.x, _387.x, _387.y, r0.w);
    float4 _396 = r0;
    _396.w = (-r0.x) + r0.y;
    r0 = _396;
    float4 _403 = r0;
    _403.x = max(r0.x, asfloat(3212836864u));
    r0 = _403;
    float4 _406 = r1;
    _406.w = asfloat(1065353216u);
    r1 = _406;
    float4 _417 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _431 = r2;
    _431.x = mad(_417.w, r1.w, mad(_417.z, r1.z, mad(_417.y, r1.y, _417.x * r1.x)));
    r2 = _431;
    float4 _442 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _456 = r1;
    _456.x = mad(_442.w, r1.w, mad(_442.z, r1.z, mad(_442.y, r1.y, _442.x * r1.x)));
    r1 = _456;
    float4 _463 = r1;
    _463.x = r2.x / r1.x;
    r1 = _463;
    float4 _471 = r1;
    _471.y = (-r0.z) + r1.x;
    r1 = _471;
    float4 _477 = r1;
    _477.x = max(r1.x, asfloat(3212836864u));
    r1 = _477;
    float4 _483 = r1;
    _483.x = min(r1.x, asfloat(1065353216u));
    r1 = _483;
    float2 _489 = max(r0.yz, asfloat(uint2(3212836864u, 3212836864u)));
    r0 = float4(r0.x, _489.x, _489.y, r0.w);
    float3 _497 = min(r0.xyz, asfloat(uint3(1065353216u, 1065353216u, 1065353216u)));
    r0 = float4(_497.x, _497.y, _497.z, r0.w);
    float4 _507 = r0;
    _507.w = abs(r0.w) * abs(r1.y);
    r0 = _507;
    float4 _515 = r0;
    _515.x = (-r0.x) + r0.y;
    r0 = _515;
    float4 _523 = r0;
    _523.y = (-r0.z) + r1.x;
    r0 = _523;
    float4 _536 = r0;
    _536.x = ((-abs(r0.x)) * abs(r0.y)) + r0.w;
    r0 = _536;
    float4 _548 = r0;
    _548.x = (shader_in[3].w * r0.w) + (-r0.x);
    r0 = _548;
    float4 _558 = r0;
    _558.x = clamp(r0.x / r0.w, 0.0f, 1.0f);
    r0 = _558;
    float4 _569 = r0;
    _569.y = asfloat((shader_in[3].w == asfloat(0u)) ? 4294967295u : 0u);
    r0 = _569;
    float4 _579 = r0;
    _579.x = (asuint(r0.y) != 0u) ? asfloat(0u) : r0.x;
    r0 = _579;
    float4 _589 = r0;
    _589.y = (r0.x * asfloat(3221225472u)) + asfloat(1077936128u);
    r0 = _589;
    float4 _596 = r0;
    _596.x = r0.x * r0.x;
    r0 = _596;
    float4 _603 = r0;
    _603.x = r0.x * r0.y;
    r0 = _603;
    float4 _608 = r0;
    _608.x = log2(r0.x);
    r0 = _608;
    float2 _616 = r0.xx * shader_in[4].xy;
    r0 = float4(_616.x, _616.y, r0.z, r0.w);
    float2 _621 = exp2(r0.xy);
    r0 = float4(_621.x, _621.y, r0.z, r0.w);
    float2 _632 = (-shader_in[7].zx) + shader_in[7].wy;
    r0 = float4(r0.x, r0.y, _632.x, _632.y);
    float3 _647 = (-r3.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_647.x, _647.y, _647.z, r1.w);
    float4 _663 = r1;
    _663.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _663;
    float4 _668 = r2;
    _668.x = sqrt(r1.w);
    r2 = _668;
    float4 _673 = r1;
    _673.w = rsqrt(r1.w);
    r1 = _673;
    float3 _679 = r1.www * r1.xyz;
    r1 = float4(_679.x, _679.y, _679.z, r1.w);
    float4 _688 = r1;
    _688.w = min(r2.x, shader_in[7].w);
    r1 = _688;
    float4 _696 = r2;
    _696.x = min(r2.x, shader_in[4].w);
    r2 = _696;
    float4 _705 = r2;
    _705.x = r2.x + (-shader_in[4].z);
    r2 = _705;
    float4 _711 = r2;
    _711.x = max(r2.x, asfloat(0u));
    r2 = _711;
    float4 _720 = r1;
    _720.w = r1.w + (-shader_in[7].z);
    r1 = _720;
    float4 _726 = r1;
    _726.w = max(r1.w, asfloat(0u));
    r1 = _726;
    float4 _733 = r0;
    _733.z = r1.w / r0.z;
    r0 = _733;
    float4 _738 = r0;
    _738.z = rsqrt(r0.z);
    r0 = _738;
    float4 _744 = r0;
    _744.z = asfloat(1065353216u) / r0.z;
    r0 = _744;
    float4 _755 = r0;
    _755.z = (r0.z * r0.w) + shader_in[7].x;
    r0 = _755;
    float4 _762 = r0;
    _762.y = r0.y * r0.z;
    r0 = _762;
    float3 _766 = -r1.xyz;
    float4 _779 = r0;
    _779.z = mad(_766.z, shader_in[9].xyz.z, mad(_766.y, shader_in[9].xyz.y, _766.x * shader_in[9].xyz.x));
    r0 = _779;
    float3 _790 = float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z);
    float4 _800 = r0;
    _800.w = mad(r1.xyz.z, _790.z, mad(r1.xyz.y, _790.y, r1.xyz.x * _790.x));
    r0 = _800;
    float4 _806 = r1;
    _806.x = max(r0.z, asfloat(3212836864u));
    r1 = _806;
    float4 _814 = r0;
    _814.z = asfloat((asfloat(0u) < r0.z) ? 4294967295u : 0u);
    r0 = _814;
    float4 _820 = r1;
    _820.x = min(r1.x, asfloat(1065353216u));
    r1 = _820;
    float4 _831 = r1;
    _831.y = (abs(r1.x) * asfloat(3164171824u)) + asfloat(1033377319u);
    r1 = _831;
    float4 _842 = r1;
    _842.y = (r1.y * abs(r1.x)) + asfloat(3193517188u);
    r1 = _842;
    float4 _853 = r1;
    _853.y = (r1.y * abs(r1.x)) + asfloat(1070140836u);
    r1 = _853;
    float4 _861 = r1;
    _861.z = (-abs(r1.x)) + asfloat(1065353216u);
    r1 = _861;
    float4 _871 = r1;
    _871.x = asfloat((r1.x < (-r1.x)) ? 4294967295u : 0u);
    r1 = _871;
    float4 _876 = r1;
    _876.z = sqrt(r1.z);
    r1 = _876;
    float4 _883 = r1;
    _883.w = r1.z * r1.y;
    r1 = _883;
    float4 _892 = r1;
    _892.w = (r1.w * asfloat(3221225472u)) + asfloat(1078530011u);
    r1 = _892;
    float4 _902 = r1;
    _902.x = asfloat(asuint(r1.x) & asuint(r1.w));
    r1 = _902;
    float4 _912 = r1;
    _912.x = (r1.y * r1.z) + r1.x;
    r1 = _912;
    float4 _919 = r1;
    _919.x = r1.x * asfloat(1059256708u);
    r1 = _919;
    float4 _925 = r1;
    _925.x = min(r1.x, asfloat(1065353216u));
    r1 = _925;
    float4 _933 = r1;
    _933.y = (r1.x * asfloat(3221225472u)) + asfloat(1077936128u);
    r1 = _933;
    float4 _940 = r1;
    _940.x = r1.x * r1.x;
    r1 = _940;
    float4 _950 = r1;
    _950.x = ((-r1.y) * r1.x) + asfloat(1065353216u);
    r1 = _950;
    float4 _955 = r1;
    _955.x = log2(r1.x);
    r1 = _955;
    float4 _963 = r1;
    _963.x = r1.x * shader_in[8].w;
    r1 = _963;
    float4 _968 = r1;
    _968.x = exp2(r1.x);
    r1 = _968;
    float3 _975 = r1.xxx * shader_in[8].xyz;
    r1 = float4(_975.x, _975.y, _975.z, r1.w);
    float3 _985 = asfloat(asuint(r0.zzz) & asuint(r1.xyz));
    r1 = float4(_985.x, _985.y, _985.z, r1.w);
    float4 _993 = r0;
    _993.z = r0.y * r1.y;
    r0 = _993;
    float3 _997 = asfloat(uint3(925353388u, 925353388u, 925353388u));
    bool3 _1002 = bool3(_997.x < shader_in[8].xyz.x, _997.y < shader_in[8].xyz.y, _997.z < shader_in[8].xyz.z);
    float3 _1006 = asfloat(uint3(_1002.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _1002.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _1002.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(r2.x, _1006.x, _1006.y, _1006.z);
    float4 _1018 = r0;
    _1018.y = (asuint(r2.z) != 0u) ? r0.z : r0.y;
    r0 = _1018;
    float4 _1026 = r0;
    _1026.z = r0.y * shader_in[2].y;
    r0 = _1026;
    float4 _1034 = r1;
    _1034.y = shader_in[3].z * asfloat(1016003125u);
    r1 = _1034;
    float4 _1042 = r1;
    _1042.w = r0.w * shader_in[2].x;
    r1 = _1042;
    float4 _1049 = r0;
    _1049.w = min(abs(r0.w), asfloat(1065353216u));
    r0 = _1049;
    float4 _1057 = r1;
    _1057.w = (r1.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _1057;
    float4 _1067 = r1;
    _1067.y = (r1.w * asfloat(1086918618u)) + r1.y;
    r1 = _1067;
    float4 _1073 = r4;
    _1073.x = sin(r1.yyyy.x);
    r4 = _1073;
    float4 _1078 = r5;
    _1078.x = cos(r1.yyyy.x);
    r5 = _1078;
    r6 = r4.xxxx * asfloat(uint4(1065353216u, 0u, 0u, 1065353216u));
    r6 = (r5.xxxx * asfloat(uint4(0u, 3212836864u, 1065353216u, 0u))) + r6;
    r7 = shader_in[1].wwzz + asfloat(uint4(3204448256u, 3204448256u, 3204448256u, 3204448256u));
    r8 = r6 * r7;
    float2 _1109 = r0.zz * r8.zw;
    r1 = float4(r1.x, _1109.x, r1.z, _1109.y);
    float4 _1117 = r0;
    _1117.z = r0.z * r7.w;
    r0 = _1117;
    float4 _1124 = r2;
    _1124.z = r0.y * r7.y;
    r2 = _1124;
    float2 _1133 = (r8.xy * r0.yy) + r1.yw;
    r1 = float4(r1.x, _1133.x, r1.z, _1133.y);
    float2 _1145 = (r6.zw * shader_in[10].xx) + r1.yw;
    r6 = float4(_1145.x, _1145.y, r6.z, r6.w);
    float4 _1156 = r0;
    _1156.y = (-cb3_m[4].z) / cb3_m[4].w;
    r0 = _1156;
    float4 _1163 = r6;
    _1163.z = r0.y * r6.y;
    r6 = _1163;
    float4 _1166 = r3;
    _1166.w = asfloat(1065353216u);
    r3 = _1166;
    float4 _1177 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _1191 = r7;
    _1191.x = mad(_1177.w, r3.w, mad(_1177.z, r3.z, mad(_1177.y, r3.y, _1177.x * r3.x)));
    r7 = _1191;
    float4 _1202 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _1216 = r7;
    _1216.y = mad(_1202.w, r3.w, mad(_1202.z, r3.z, mad(_1202.y, r3.y, _1202.x * r3.x)));
    r7 = _1216;
    float4 _1227 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _1241 = r0;
    _1241.y = mad(_1227.w, r3.w, mad(_1227.z, r3.z, mad(_1227.y, r3.y, _1227.x * r3.x)));
    r0 = _1241;
    float2 _1247 = r7.xy / r0.yy;
    r1 = float4(r1.x, _1247.x, r1.z, _1247.y);
    float2 _1254 = r6.xz + r1.yw;
    r6 = float4(_1254.x, _1254.y, r6.z, r6.w);
    float3 _1267 = r5.xxx * float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z);
    r4 = float4(r4.x, _1267.x, _1267.y, _1267.z);
    float3 _1283 = (r4.xxx * float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z)) + r4.yzw;
    r4 = float4(r4.x, _1283.x, _1283.y, _1283.z);
    float3 _1294 = (r4.yzw * shader_in[10].xxx) + r3.xyz;
    r5 = float4(r5.x, _1294.x, _1294.y, _1294.z);
    float3 _1304 = (r0.zzz * r4.yzw) + r5.yzw;
    r4 = float4(r4.x, _1304.x, _1304.y, _1304.z);
    float3 _1318 = r3.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r3 = float4(_1318.x, _1318.y, _1318.z, r3.w);
    float3 _1331 = r4.xxx * float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z);
    r5 = float4(r5.x, _1331.x, _1331.y, _1331.z);
    float3 _1348 = ((-r5.xxx) * float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z)) + r5.yzw;
    r5 = float4(_1348.x, _1348.y, _1348.z, r5.w);
    float3 _1358 = (r2.zzz * r5.xyz) + r4.yzw;
    r4 = float4(_1358.x, _1358.y, _1358.z, r4.w);
    float4 _1362 = r4;
    _1362.w = asfloat(1065353216u);
    r4 = _1362;
    float4 _1373 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _1387 = r5;
    _1387.x = mad(_1373.w, r4.w, mad(_1373.z, r4.z, mad(_1373.y, r4.y, _1373.x * r4.x)));
    r5 = _1387;
    float4 _1398 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _1412 = r5;
    _1412.y = mad(_1398.w, r4.w, mad(_1398.z, r4.z, mad(_1398.y, r4.y, _1398.x * r4.x)));
    r5 = _1412;
    float4 _1423 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _1437 = r5;
    _1437.z = mad(_1423.w, r4.w, mad(_1423.z, r4.z, mad(_1423.y, r4.y, _1423.x * r4.x)));
    r5 = _1437;
    float4 _1448 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _1462 = r5;
    _1462.w = mad(_1448.w, r4.w, mad(_1448.z, r4.z, mad(_1448.y, r4.y, _1448.x * r4.x)));
    r5 = _1462;
    float4 _1470 = r0;
    _1470.y = abs(shader_in[0].w) + asfloat(3212836864u);
    r0 = _1470;
    float4 _1478 = r0;
    _1478.y = asfloat((asfloat(1056964608u) < r0.y) ? 4294967295u : 0u);
    r0 = _1478;
    float2 _1481 = asfloat(uint2(0u, 1065353216u));
    r6 = float4(r6.x, r6.y, _1481.x, _1481.y);
    uint4 _1486 = asuint(r0.yyyy);
    bool4 _1491 = bool4(_1486.x != uint4(0u, 0u, 0u, 0u).x, _1486.y != uint4(0u, 0u, 0u, 0u).y, _1486.z != uint4(0u, 0u, 0u, 0u).z, _1486.w != uint4(0u, 0u, 0u, 0u).w);
    r4 = float4(_1491.x ? r5.x : r6.x, _1491.y ? r5.y : r6.y, _1491.z ? r5.z : r6.z, _1491.w ? r5.w : r6.w);
    r5 = (-r4.xyww) + r4;
    float4 _1505 = r0;
    _1505.y = asfloat((shader_in[0].w >= asfloat(0u)) ? 4294967295u : 0u);
    r0 = _1505;
    float4 _1512 = r0;
    _1512.y = asfloat(asuint(r0.y) & 1065353216u);
    r0 = _1512;
    o0 = (r0.yyyy * r5) + r4.xyww;
    float4 _1527 = r0;
    _1527.y = (r0.w * asfloat(3221225472u)) + asfloat(1077936128u);
    r0 = _1527;
    float4 _1534 = r0;
    _1534.z = r0.w * r0.w;
    r0 = _1534;
    float4 _1544 = r0;
    _1544.y = ((-r0.y) * r0.z) + asfloat(1065353216u);
    r0 = _1544;
    float4 _1549 = r0;
    _1549.y = log2(r0.y);
    r0 = _1549;
    float4 _1557 = r0;
    _1557.y = r0.y * shader_in[3].x;
    r0 = _1557;
    float4 _1562 = r0;
    _1562.y = exp2(r0.y);
    r0 = _1562;
    float4 _1572 = r0;
    _1572.y = (r0.y * shader_in[1].y) + asfloat(1065353216u);
    r0 = _1572;
    float4 _1579 = r0;
    _1579.z = r1.x * r0.y;
    r0 = _1579;
    float4 _1590 = r0;
    _1590.y = (asuint(r2.y) != 0u) ? r0.z : r0.y;
    r0 = _1590;
    float4 _1600 = r0;
    _1600.z = (-shader_in[4].z) + shader_in[4].w;
    r0 = _1600;
    float4 _1607 = r0;
    _1607.z = r2.x / r0.z;
    r0 = _1607;
    float4 _1612 = r0;
    _1612.z = rsqrt(r0.z);
    r0 = _1612;
    float4 _1618 = r0;
    _1618.z = asfloat(1065353216u) / r0.z;
    r0 = _1618;
    r4 = (-shader_in[5]) + shader_in[6];
    r4 = (r0.zzzz * r4) + shader_in[5];
    float3 _1639 = r0.yyy * r4.xyz;
    o1 = float4(_1639.x, _1639.y, _1639.z, o1.w);
    float4 _1647 = r0;
    _1647.x = r0.x * r4.w;
    r0 = _1647;
    float4 _1654 = r0;
    _1654.y = r1.z * r0.x;
    r0 = _1654;
    float4 _1665 = r0;
    _1665.x = (asuint(r2.w) != 0u) ? r0.y : r0.x;
    r0 = _1665;
    float4 _1673 = o1;
    _1673.w = r0.x * cb3_m[5].x;
    o1 = _1673;
    float4 _1682 = r0;
    _1682.x = r3.y * cb0_m[13].x;
    r0 = _1682;
    float4 _1689 = r0;
    _1689.y = r0.x * asfloat(3216550459u);
    r0 = _1689;
    float4 _1694 = r0;
    _1694.y = exp2(r0.y);
    r0 = _1694;
    float4 _1701 = r0;
    _1701.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1701;
    float4 _1708 = r0;
    _1708.x = r0.y / r0.x;
    r0 = _1708;
    float4 _1718 = r0;
    _1718.y = asfloat((asfloat(1008981770u) < abs(r3.y)) ? 4294967295u : 0u);
    r0 = _1718;
    float4 _1733 = r0;
    _1733.z = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1733;
    float4 _1738 = r0;
    _1738.z = sqrt(r0.z);
    r0 = _1738;
    float4 _1746 = r0;
    _1746.z = r0.z * cb0_m[13].y;
    r0 = _1746;
    float4 _1756 = r0;
    _1756.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1756;
    float4 _1768 = r0;
    _1768.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1768;
    float4 _1774 = r0;
    _1774.x = exp2(-r0.x);
    r0 = _1774;
    float4 _1780 = r0;
    _1780.x = min(r0.x, asfloat(1065353216u));
    r0 = _1780;
    o2 = (-r0.x) + asfloat(1065353216u);
    float4 _1793 = r0;
    _1793.x = shader_in[2].w + asfloat(841731191u);
    r0 = _1793;
    float4 _1802 = r0;
    _1802.y = cb3_m[8].y * cb3_m[8].x;
    r0 = _1802;
    float4 _1807 = r0;
    _1807.z = trunc(r0.y);
    r0 = _1807;
    float4 _1813 = r0;
    _1813.y = asfloat(int(r0.y));
    r0 = _1813;
    float4 _1820 = r0;
    _1820.x = r0.x * r0.z;
    r0 = _1820;
    float4 _1826 = r0;
    _1826.x = asfloat(int(r0.x));
    r0 = _1826;
    float2 _1837 = asfloat(max(asint(r0.yx), (-asint(r0.yx))));
    r0 = float4(r0.x, _1837.x, _1837.y, r0.w);
    float4 _1846 = r0;
    _1846.x = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _1846;
    uint _1853 = asuint(r0.y);
    float4 _1858 = r0;
    _1858.y = asfloat((_1853 != 0u) ? (asuint(r0.z) % _1853) : 4294967295u);
    r0 = _1858;
    float4 _1865 = r0;
    _1865.z = asfloat(-asint(r0.y));
    r0 = _1865;
    float4 _1876 = r0;
    _1876.x = (asuint(r0.x) != 0u) ? r0.z : r0.y;
    r0 = _1876;
    float4 _1883 = r0;
    _1883.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _1883;
    float4 _1894 = r0;
    _1894.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _1894;
    float4 _1900 = r0;
    _1900.x = float(asint(r0.x));
    r0 = _1900;
    float4 _1908 = r0;
    _1908.x = r0.x / cb3_m[8].x;
    r0 = _1908;
    float4 _1913 = r0;
    _1913.x = trunc(r0.x);
    r0 = _1913;
    float4 _1920 = r0;
    _1920.w = asfloat(int(cb3_m[8].x));
    r0 = _1920;
    float4 _1931 = r0;
    _1931.w = asfloat(max(asint(r0.w), (-asint(r0.w))));
    r0 = _1931;
    uint _1938 = asuint(r0.w);
    float4 _1943 = r0;
    _1943.z = asfloat((_1938 != 0u) ? (asuint(r0.z) % _1938) : 4294967295u);
    r0 = _1943;
    float4 _1950 = r0;
    _1950.w = asfloat(-asint(r0.z));
    r0 = _1950;
    float4 _1961 = r0;
    _1961.y = (asuint(r0.y) != 0u) ? r0.w : r0.z;
    r0 = _1961;
    float4 _1967 = r0;
    _1967.y = float(asint(r0.y));
    r0 = _1967;
    float2 _1977 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r0 = float4(r0.x, r0.y, _1977.x, _1977.y);
    float2 _1985 = r0.zw * shader_in[1].zw;
    r1 = float4(_1985.x, _1985.y, r1.z, r1.w);
    float4 _1996 = o3;
    _1996.x = (r0.y * r0.z) + r1.x;
    o3 = _1996;
    float4 _2006 = o3;
    _2006.y = (r0.x * r0.w) + r1.y;
    o3 = _2006;
    float4 _2011 = o3;
    _2011.z = shader_in[1].x;
    o3 = _2011;
    float4 _2016 = o3;
    _2016.w = shader_in[2].z;
    o3 = _2016;
}

void vert_main()
{
    shader_in[0] = v0;
    shader_in[1] = v1;
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
    shader_in[9] = v9;
    shader_in[10] = v10;
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
    v9 = stage_input.v9;
    v10 = stage_input.v10;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
