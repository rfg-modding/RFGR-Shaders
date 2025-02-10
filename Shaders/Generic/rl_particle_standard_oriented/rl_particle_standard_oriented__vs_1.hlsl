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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[17] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static int2 v3;
static float v4;
static float v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float2 v3 : TEXCOORD3;
    float v4 : TEXCOORD4;
    float v5 : TEXCOORD5;
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
static float4 o3;
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
    float4 _61 = r0;
    _61.x = shader_in[5].x + asfloat(897988541u);
    r0 = _61;
    float4 _77 = r0;
    _77.y = (-shader_in[4].x) + cb2_m[13].x;
    r0 = _77;
    float4 _84 = r0;
    _84.z = r0.y + asfloat(3171453065u);
    r0 = _84;
    float4 _90 = r0;
    _90.z = max(r0.z, asfloat(0u));
    r0 = _90;
    float4 _100 = r0;
    _100.w = clamp(r0.z / r0.x, 0.0f, 1.0f);
    r0 = _100;
    float4 _108 = r0;
    _108.x = clamp(r0.y / r0.x, 0.0f, 1.0f);
    r0 = _108;
    float4 _116 = r1;
    _116.x = r0.z * r0.z;
    r1 = _116;
    float2 _131 = (shader_in[6].wx * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r1 = float4(r1.x, _131.x, _131.y, r1.w);
    float3 _156 = (float3(cb2_m[7].z, cb2_m[7].x, cb2_m[7].y) * r1.zzz) + float3(cb2_m[6].z, cb2_m[6].x, cb2_m[6].y);
    r2 = float4(_156.x, _156.y, _156.z, r2.w);
    float3 _179 = (float3(cb2_m[5].z, cb2_m[5].x, cb2_m[5].y) * r1.zzz) + float3(cb2_m[4].z, cb2_m[4].x, cb2_m[4].y);
    r3 = float4(_179.x, _179.y, _179.z, r3.w);
    float3 _188 = r2.xyz + (-r3.xyz);
    r2 = float4(_188.x, _188.y, _188.z, r2.w);
    float3 _197 = r3.xyz * asfloat(uint3(1056964608u, 1056964608u, 1056964608u));
    r3 = float4(_197.x, _197.y, _197.z, r3.w);
    float3 _204 = r1.xxx * r2.xyz;
    r4 = float4(_204.x, _204.y, _204.z, r4.w);
    float3 _212 = r0.www * r4.xyz;
    r4 = float4(_212.x, _212.y, _212.z, r4.w);
    float3 _220 = r4.xyz * asfloat(uint3(1042983595u, 1042983595u, 1042983595u));
    r4 = float4(_220.x, _220.y, _220.z, r4.w);
    float3 _230 = (r3.xyz * r1.xxx) + r4.xyz;
    r1 = float4(_230.x, r1.y, _230.y, _230.z);
    float3 _239 = r1.xzw + shader_in[1].zxy;
    r1 = float4(_239.x, r1.y, _239.y, _239.z);
    float4 _252 = r0;
    _252.w = (cb2_m[13].w * r1.y) + cb2_m[13].z;
    r0 = _252;
    float4 _259 = r0;
    _259.w = r0.w * asfloat(981668463u);
    r0 = _259;
    float4 _266 = r0;
    _266.w = max(r0.w, asfloat(841731191u));
    r0 = _266;
    float4 _273 = r0;
    _273.w = min(r0.w, asfloat(1065353216u));
    r0 = _273;
    float4 _278 = r2;
    _278.w = log2(r0.w);
    r2 = _278;
    float4 _288 = r0;
    _288.w = asfloat((r0.w == asfloat(1065353216u)) ? 4294967295u : 0u);
    r0 = _288;
    float4 _295 = r3;
    _295.w = r0.z * r2.w;
    r3 = _295;
    float4 _300 = r3;
    _300.w = exp2(r3.w);
    r3 = _300;
    float4 _306 = r3;
    _306.w = r3.w + asfloat(3212836864u);
    r3 = _306;
    float4 _313 = r4;
    _313.x = r2.w * asfloat(1060205080u);
    r4 = _313;
    float4 _320 = r2;
    _320.w = r0.y * r2.w;
    r2 = _320;
    float4 _325 = r2;
    _325.w = exp2(r2.w);
    r2 = _325;
    float4 _331 = r2;
    _331.w = r2.w + asfloat(3212836864u);
    r2 = _331;
    float4 _338 = r2;
    _338.w = r2.w / r4.x;
    r2 = _338;
    float4 _345 = r3;
    _345.w = r3.w / r4.x;
    r3 = _345;
    float4 _356 = r0;
    _356.z = (asuint(r0.w) != 0u) ? r0.z : r3.w;
    r0 = _356;
    float4 _367 = r0;
    _367.w = (asuint(r0.w) != 0u) ? r0.y : r2.w;
    r0 = _367;
    float3 _377 = (r1.xzw * r0.zzz) + shader_in[0].zxy;
    r1 = float4(_377.x, r1.y, _377.y, _377.z);
    float4 _385 = r0;
    _385.z = r0.y * r0.y;
    r0 = _385;
    float4 _395 = r0;
    _395.y = asfloat((shader_in[5].x < r0.y) ? 4294967295u : 0u);
    r0 = _395;
    float3 _401 = r0.zzz * r2.yzx;
    r2 = float4(_401.x, _401.y, _401.z, r2.w);
    float3 _408 = r0.xxx * r2.xyz;
    r2 = float4(_408.x, _408.y, _408.z, r2.w);
    float3 _414 = r2.xyz * asfloat(uint3(1042983595u, 1042983595u, 1042983595u));
    r2 = float4(_414.x, _414.y, _414.z, r2.w);
    float3 _424 = (r3.yzx * r0.zzz) + r2.xyz;
    r2 = float4(_424.x, _424.y, _424.z, r2.w);
    float3 _432 = r2.xyz + shader_in[1].xyz;
    r2 = float4(_432.x, _432.y, _432.z, r2.w);
    float3 _443 = (r2.xyz * r0.www) + shader_in[0].xyz;
    r2 = float4(_443.x, _443.y, _443.z, r2.w);
    float3 _451 = (-r1.xzw) + r2.zxy;
    r1 = float4(_451.x, r1.y, _451.y, _451.z);
    uint3 _456 = asuint(r0.yyy);
    float3 _459 = asfloat(uint3(1733542428u, 1733542428u, 1733542428u));
    bool3 _464 = bool3(_456.x != uint3(0u, 0u, 0u).x, _456.y != uint3(0u, 0u, 0u).y, _456.z != uint3(0u, 0u, 0u).z);
    float3 _465 = float3(_464.x ? _459.x : r2.xyz.x, _464.y ? _459.y : r2.xyz.y, _464.z ? _459.z : r2.xyz.z);
    r2 = float4(_465.x, _465.y, _465.z, r2.w);
    float4 _481 = r0;
    _481.y = mad(r1.xzw.z, r1.xzw.z, mad(r1.xzw.y, r1.xzw.y, r1.xzw.x * r1.xzw.x));
    r0 = _481;
    float4 _486 = r0;
    _486.z = sqrt(r0.y);
    r0 = _486;
    float4 _491 = r0;
    _491.y = rsqrt(r0.y);
    r0 = _491;
    float3 _497 = r0.yyy * r1.xzw;
    r1 = float4(_497.x, r1.y, _497.y, _497.z);
    float4 _504 = r0;
    _504.y = r0.z + asfloat(1065353216u);
    r0 = _504;
    float4 _513 = r0;
    _513.z = (-cb2_m[7].w) + asfloat(1065353224u);
    r0 = _513;
    float4 _522 = r0;
    _522.w = r0.x + (-cb2_m[7].w);
    r0 = _522;
    float4 _529 = r0;
    _529.z = r0.w / r0.z;
    r0 = _529;
    float4 _542 = r0;
    _542.w = (cb2_m[16].w * r1.y) + cb2_m[5].w;
    r0 = _542;
    float4 _555 = r3;
    _555.x = (cb2_m[16].z * r1.y) + cb2_m[10].y;
    r3 = _555;
    float4 _563 = r0;
    _563.w = r0.w + (-r3.x);
    r0 = _563;
    float4 _573 = r0;
    _573.z = (r0.z * r0.w) + r3.x;
    r0 = _573;
    float4 _583 = r0;
    _583.w = (-cb2_m[6].w) + cb2_m[7].w;
    r0 = _583;
    float4 _589 = r0;
    _589.w = r0.w + asfloat(897988541u);
    r0 = _589;
    float4 _598 = r3;
    _598.y = r0.x + (-cb2_m[6].w);
    r3 = _598;
    float4 _605 = r0;
    _605.w = r3.y / r0.w;
    r0 = _605;
    float4 _618 = r3;
    _618.y = (cb2_m[16].y * r1.y) + cb2_m[9].y;
    r3 = _618;
    float4 _626 = r3;
    _626.x = (-r3.y) + r3.x;
    r3 = _626;
    float4 _636 = r0;
    _636.w = (r0.w * r3.x) + r3.y;
    r0 = _636;
    float4 _646 = r3;
    _646.x = asfloat((r0.x < cb2_m[7].w) ? 4294967295u : 0u);
    r3 = _646;
    float4 _657 = r0;
    _657.z = (asuint(r3.x) != 0u) ? r0.w : r0.z;
    r0 = _657;
    float4 _669 = r0;
    _669.w = (cb2_m[16].x * r1.y) + cb2_m[4].w;
    r0 = _669;
    float4 _677 = r3;
    _677.x = (-r0.w) + r3.y;
    r3 = _677;
    float4 _684 = r3;
    _684.y = cb2_m[6].w + asfloat(897988541u);
    r3 = _684;
    float4 _691 = r3;
    _691.y = r0.x / r3.y;
    r3 = _691;
    float4 _701 = r0;
    _701.w = (r3.y * r3.x) + r0.w;
    r0 = _701;
    float4 _711 = r3;
    _711.x = asfloat((r0.x < cb2_m[6].w) ? 4294967295u : 0u);
    r3 = _711;
    float4 _722 = r0;
    _722.z = (asuint(r3.x) != 0u) ? r0.w : r0.z;
    r0 = _722;
    float4 _736 = r0;
    _736.w = (cb2_m[15].y * r1.y) + cb2_m[11].z;
    r0 = _736;
    float4 _748 = r3;
    _748.x = (cb2_m[15].x * r1.y) + cb2_m[10].z;
    r3 = _748;
    float4 _756 = r0;
    _756.w = r0.w + (-r3.x);
    r0 = _756;
    float2 _768 = (-float2(cb2_m[12].y, cb2_m[12].w)) + asfloat(uint2(1065353224u, 1065353224u));
    r3 = float4(r3.x, _768.x, _768.y, r3.w);
    r4 = r0.xxxx + (-float4(cb2_m[12].y, cb2_m[12].x, cb2_m[12].w, cb2_m[12].z));
    float2 _789 = r4.xz / r3.yz;
    r3 = float4(r3.x, _789.x, _789.y, r3.w);
    float4 _800 = r0;
    _800.w = (r3.z * r0.w) + r3.x;
    r0 = _800;
    float4 _813 = r3;
    _813.z = (cb2_m[14].w * r1.y) + cb2_m[9].z;
    r3 = _813;
    float4 _826 = r1;
    _826.y = (cb2_m[14].z * r1.y) + cb2_m[8].z;
    r1 = _826;
    float4 _834 = r3;
    _834.x = (-r3.z) + r3.x;
    r3 = _834;
    float2 _849 = (-float2(cb2_m[12].x, cb2_m[12].z)) + float2(cb2_m[12].y, cb2_m[12].w);
    r4 = float4(_849.x, r4.y, _849.y, r4.w);
    float2 _856 = r4.xz + asfloat(uint2(897988541u, 897988541u));
    r4 = float4(_856.x, r4.y, _856.y, r4.w);
    float2 _863 = r4.yw / r4.xz;
    r4 = float4(_863.x, _863.y, r4.z, r4.w);
    float4 _874 = r3;
    _874.x = (r4.y * r3.x) + r3.z;
    r3 = _874;
    float4 _882 = r3;
    _882.z = (-r1.y) + r3.z;
    r3 = _882;
    float4 _895 = float4(cb2_m[12].y, cb2_m[12].x, cb2_m[12].w, cb2_m[12].z);
    bool4 _897 = bool4(r0.xxxx.x < _895.x, r0.xxxx.y < _895.y, r0.xxxx.z < _895.z, r0.xxxx.w < _895.w);
    r5 = asfloat(uint4(_897.x ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).x : uint4(0u, 0u, 0u, 0u).x, _897.y ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).y : uint4(0u, 0u, 0u, 0u).y, _897.z ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).z : uint4(0u, 0u, 0u, 0u).z, _897.w ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).w : uint4(0u, 0u, 0u, 0u).w));
    float4 _913 = r0;
    _913.w = (asuint(r5.z) != 0u) ? r3.x : r0.w;
    r0 = _913;
    float2 _922 = float2(cb2_m[12].x, cb2_m[12].z) + asfloat(uint2(897988541u, 897988541u));
    r3 = float4(_922.x, r3.y, r3.z, _922.y);
    float2 _929 = r0.xx / r3.xw;
    r3 = float4(_929.x, r3.y, r3.z, _929.y);
    float4 _940 = r0;
    _940.x = (r0.x * cb2_m[15].z) + asfloat(841731191u);
    r0 = _940;
    float4 _950 = r1;
    _950.y = (r3.w * r3.z) + r1.y;
    r1 = _950;
    float4 _961 = r0;
    _961.w = (asuint(r5.w) != 0u) ? r1.y : r0.w;
    r0 = _961;
    float4 _972 = r0;
    _972.y = (r0.z * r0.y) + (-r0.w);
    r0 = _972;
    float4 _975 = r2;
    _975.w = asfloat(1065353216u);
    r2 = _975;
    float4 _986 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _1001 = r6;
    _1001.x = mad(_986.w, r2.w, mad(_986.z, r2.z, mad(_986.y, r2.y, _986.x * r2.x)));
    r6 = _1001;
    float4 _1012 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _1026 = r6;
    _1026.y = mad(_1012.w, r2.w, mad(_1012.z, r2.z, mad(_1012.y, r2.y, _1012.x * r2.x)));
    r6 = _1026;
    float4 _1038 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _1052 = r6;
    _1052.z = mad(_1038.w, r2.w, mad(_1038.z, r2.z, mad(_1038.y, r2.y, _1038.x * r2.x)));
    r6 = _1052;
    float3 _1065 = (-r6.zxy) + float3(cb0_m[11].z, cb0_m[11].x, cb0_m[11].y);
    r2 = float4(_1065.x, _1065.y, _1065.z, r2.w);
    float4 _1081 = r0;
    _1081.z = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1081;
    float4 _1086 = r0;
    _1086.z = rsqrt(r0.z);
    r0 = _1086;
    float3 _1092 = r0.zzz * r2.xyz;
    r2 = float4(_1092.x, _1092.y, _1092.z, r2.w);
    float4 _1108 = r0;
    _1108.z = mad(r1.xzw.z, r2.xyz.z, mad(r1.xzw.y, r2.xyz.y, r1.xzw.x * r2.xyz.x));
    r0 = _1108;
    float4 _1116 = r0;
    _1116.z = (-abs(r0.z)) + asfloat(1065353216u);
    r0 = _1116;
    float4 _1126 = r0;
    _1126.y = (r0.z * r0.y) + r0.w;
    r0 = _1126;
    float2 _1133 = float2(asint(shader_in[3].xy));
    r3 = float4(r3.x, r3.y, _1133.x, _1133.y);
    float2 _1141 = r3.zw + asfloat(uint2(3204448256u, 3204448256u));
    r4 = float4(r4.x, _1141.x, _1141.y, r4.w);
    float2 _1148 = r0.yw * r4.yz;
    r0 = float4(r0.x, _1148.x, _1148.y, r0.w);
    float3 _1155 = r1.xzw * r2.zxy;
    r4 = float4(r4.x, _1155.x, _1155.y, _1155.z);
    float3 _1166 = (r1.wxz * r2.xyz) + (-r4.yzw);
    r1 = float4(_1166.x, _1166.y, _1166.z, r1.w);
    float4 _1182 = r0;
    _1182.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _1182;
    float4 _1187 = r0;
    _1187.w = rsqrt(r0.w);
    r0 = _1187;
    float3 _1193 = r0.www * r1.xyz;
    r1 = float4(_1193.x, _1193.y, _1193.z, r1.w);
    float3 _1200 = r1.yzx * r2.xyz;
    r4 = float4(r4.x, _1200.x, _1200.y, _1200.z);
    float3 _1211 = (r2.zxy * r1.zxy) + (-r4.yzw);
    r2 = float4(_1211.x, _1211.y, _1211.z, r2.w);
    float3 _1219 = r0.zzz * (-r1.xyz);
    r1 = float4(_1219.x, _1219.y, _1219.z, r1.w);
    float4 _1235 = r0;
    _1235.z = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1235;
    float4 _1240 = r0;
    _1240.z = rsqrt(r0.z);
    r0 = _1240;
    float3 _1246 = r0.zzz * r2.xyz;
    r2 = float4(_1246.x, _1246.y, _1246.z, r2.w);
    float3 _1257 = (r0.yyy * (-r2.xyz)) + r1.xyz;
    r0 = float4(r0.x, _1257.x, _1257.y, _1257.z);
    float3 _1264 = r0.yzw + r6.xyz;
    r1 = float4(_1264.x, _1264.y, _1264.z, r1.w);
    float4 _1268 = r1;
    _1268.w = asfloat(1065353216u);
    r1 = _1268;
    float4 _1279 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _1293 = o0;
    _1293.x = mad(_1279.w, r1.w, mad(_1279.z, r1.z, mad(_1279.y, r1.y, _1279.x * r1.x)));
    o0 = _1293;
    float4 _1304 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _1318 = o0;
    _1318.y = mad(_1304.w, r1.w, mad(_1304.z, r1.z, mad(_1304.y, r1.y, _1304.x * r1.x)));
    o0 = _1318;
    float4 _1329 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _1343 = o0;
    _1343.z = mad(_1329.w, r1.w, mad(_1329.z, r1.z, mad(_1329.y, r1.y, _1329.x * r1.x)));
    o0 = _1343;
    float4 _1354 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _1368 = o0;
    _1368.w = mad(_1354.w, r1.w, mad(_1354.z, r1.z, mad(_1354.y, r1.y, _1354.x * r1.x)));
    o0 = _1368;
    float3 _1381 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_1381.x, _1381.y, _1381.z, r1.w);
    r2 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r2 = (r3.xxxx * r2) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r6 = (-float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w)) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    r6 = (r4.xxxx * r6) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r7 = (-float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w)) + float4(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z, cb2_m[3].w);
    r7 = (r3.yyyy * r7) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    uint4 _1498 = asuint(r5.xxxx);
    bool4 _1501 = bool4(_1498.x != uint4(0u, 0u, 0u, 0u).x, _1498.y != uint4(0u, 0u, 0u, 0u).y, _1498.z != uint4(0u, 0u, 0u, 0u).z, _1498.w != uint4(0u, 0u, 0u, 0u).w);
    r6 = float4(_1501.x ? r6.x : r7.x, _1501.y ? r6.y : r7.y, _1501.z ? r6.z : r7.z, _1501.w ? r6.w : r7.w);
    uint4 _1505 = asuint(r5.yyyy);
    bool4 _1508 = bool4(_1505.x != uint4(0u, 0u, 0u, 0u).x, _1505.y != uint4(0u, 0u, 0u, 0u).y, _1505.z != uint4(0u, 0u, 0u, 0u).z, _1505.w != uint4(0u, 0u, 0u, 0u).w);
    r2 = float4(_1508.x ? r2.x : r6.x, _1508.y ? r2.y : r6.y, _1508.z ? r2.z : r6.z, _1508.w ? r2.w : r6.w);
    float3 _1524 = (r2.xyz * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-r2.xyz);
    r4 = float4(r4.x, _1524.x, _1524.y, _1524.z);
    float3 _1536 = (cb3_m[7].w.xxx * r4.yzw) + r2.xyz;
    r2 = float4(_1536.x, _1536.y, _1536.z, r2.w);
    float4 _1545 = o1;
    _1545.w = r2.w * cb3_m[5].x;
    o1 = _1545;
    float3 _1573 = (float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z) * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z));
    r4 = float4(r4.x, _1573.x, _1573.y, _1573.z);
    float3 _1591 = (cb3_m[7].w.xxx * r4.yzw) + float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    r4 = float4(r4.x, _1591.x, _1591.y, _1591.z);
    float3 _1598 = r2.xyz + r4.yzw;
    o1 = float4(_1598.x, _1598.y, _1598.z, o1.w);
    float2 _1614 = (-float2(cb2_m[10].x, cb2_m[10].w)) + float2(cb2_m[11].x, cb2_m[11].w);
    r2 = float4(_1614.x, _1614.y, r2.z, r2.w);
    float2 _1628 = (r3.yy * r2.xy) + float2(cb2_m[10].x, cb2_m[10].w);
    r2 = float4(_1628.x, _1628.y, r2.z, r2.w);
    float2 _1644 = (-float2(cb2_m[9].x, cb2_m[9].w)) + float2(cb2_m[10].x, cb2_m[10].w);
    r2 = float4(r2.x, r2.y, _1644.x, _1644.y);
    float2 _1658 = (r4.xx * r2.zw) + float2(cb2_m[9].x, cb2_m[9].w);
    r2 = float4(r2.x, r2.y, _1658.x, _1658.y);
    uint2 _1663 = asuint(r5.xx);
    bool2 _1670 = bool2(_1663.x != uint2(0u, 0u).x, _1663.y != uint2(0u, 0u).y);
    float2 _1671 = float2(_1670.x ? r2.zw.x : r2.xy.x, _1670.y ? r2.zw.y : r2.xy.y);
    r2 = float4(_1671.x, _1671.y, r2.z, r2.w);
    float2 _1687 = (-float2(cb2_m[8].x, cb2_m[8].w)) + float2(cb2_m[9].x, cb2_m[9].w);
    r2 = float4(r2.x, r2.y, _1687.x, _1687.y);
    float2 _1701 = (r3.xx * r2.zw) + float2(cb2_m[8].x, cb2_m[8].w);
    r2 = float4(r2.x, r2.y, _1701.x, _1701.y);
    float4 _1713 = o2;
    _1713.w = (asuint(r5.y) != 0u) ? r2.w : r2.y;
    o2 = _1713;
    float4 _1724 = o3;
    _1724.z = (asuint(r5.y) != 0u) ? r2.z : r2.x;
    o3 = _1724;
    float4 _1739 = r1;
    _1739.w = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _1739;
    float4 _1744 = r1;
    _1744.w = rsqrt(r1.w);
    r1 = _1744;
    float3 _1750 = r0.yzw * r1.www;
    r0 = float4(r0.x, _1750.x, _1750.y, _1750.z);
    float4 _1766 = r1;
    _1766.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _1766;
    float4 _1771 = r2;
    _1771.x = rsqrt(r1.w);
    r2 = _1771;
    float4 _1776 = r1;
    _1776.w = sqrt(r1.w);
    r1 = _1776;
    float4 _1784 = r1;
    _1784.w = r1.w * cb0_m[13].y;
    r1 = _1784;
    float3 _1795 = ((-r1.xyz) * r2.xxx) + (-r0.yzw);
    r2 = float4(_1795.x, _1795.y, _1795.z, r2.w);
    float4 _1808 = r1;
    _1808.x = ((-shader_in[6].w) * asfloat(1041865114u)) + asfloat(1048576000u);
    r1 = _1808;
    float3 _1817 = (r1.xxx * r2.xyz) + r0.yzw;
    r0 = float4(r0.x, _1817.x, _1817.y, _1817.z);
    float4 _1833 = r1;
    _1833.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _1833;
    float4 _1838 = r1;
    _1838.x = rsqrt(r1.x);
    r1 = _1838;
    float3 _1844 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _1844.x, _1844.y, _1844.z);
    float3 _1853 = shader_in[6].xyz * asfloat(uint3(1036831949u, 1036831949u, 1036831949u));
    r2 = float4(_1853.x, _1853.y, _1853.z, r2.w);
    float3 _1864 = (r0.yzw * asfloat(uint3(1050253722u, 1050253722u, 1050253722u))) + r2.xyz;
    r0 = float4(r0.x, _1864.x, _1864.y, _1864.z);
    float4 _1880 = r1;
    _1880.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _1880;
    float4 _1885 = r1;
    _1885.x = rsqrt(r1.x);
    r1 = _1885;
    float3 _1891 = r0.yzw * r1.xxx;
    o2 = float4(_1891.x, _1891.y, _1891.z, o2.w);
    float4 _1900 = r0;
    _1900.y = r1.y * cb0_m[13].x;
    r0 = _1900;
    float4 _1910 = r0;
    _1910.z = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _1910;
    float4 _1917 = r0;
    _1917.w = r0.y * asfloat(3216550459u);
    r0 = _1917;
    float4 _1922 = r0;
    _1922.w = exp2(r0.w);
    r0 = _1922;
    float4 _1929 = r0;
    _1929.w = (-r0.w) + asfloat(1065353216u);
    r0 = _1929;
    float4 _1936 = r0;
    _1936.y = r0.w / r0.y;
    r0 = _1936;
    float4 _1946 = r0;
    _1946.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _1946;
    float4 _1958 = r0;
    _1958.y = (r0.y * r1.w) + (-cb0_m[13].w);
    r0 = _1958;
    float4 _1964 = r0;
    _1964.y = exp2(-r0.y);
    r0 = _1964;
    float4 _1970 = r0;
    _1970.y = min(r0.y, asfloat(1065353216u));
    r0 = _1970;
    float4 _1977 = o3;
    _1977.w = (-r0.y) + asfloat(1065353216u);
    o3 = _1977;
    float4 _1986 = r0;
    _1986.y = cb3_m[8].y * cb3_m[8].x;
    r0 = _1986;
    float4 _1991 = r0;
    _1991.z = trunc(r0.y);
    r0 = _1991;
    float4 _1997 = r0;
    _1997.y = asfloat(int(r0.y));
    r0 = _1997;
    float4 _2004 = r0;
    _2004.x = r0.x * r0.z;
    r0 = _2004;
    float4 _2013 = r0;
    _2013.w = shader_in[6].w * cb2_m[15].w;
    r0 = _2013;
    float4 _2020 = r0;
    _2020.z = r0.z * r0.w;
    r0 = _2020;
    float2 _2025 = asfloat(int2(r0.xz));
    r0 = float4(_2025.x, r0.y, _2025.y, r0.w);
    float4 _2036 = r0;
    _2036.x = asfloat(asint(r0.z) + asint(r0.x));
    r0 = _2036;
    float2 _2046 = asfloat(max(asint(r0.yx), (-asint(r0.yx))));
    r0 = float4(r0.x, _2046.x, _2046.y, r0.w);
    float4 _2055 = r0;
    _2055.x = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _2055;
    uint _2062 = asuint(r0.y);
    float4 _2067 = r0;
    _2067.y = asfloat((_2062 != 0u) ? (asuint(r0.z) % _2062) : 4294967295u);
    r0 = _2067;
    float4 _2074 = r0;
    _2074.z = asfloat(-asint(r0.y));
    r0 = _2074;
    float4 _2085 = r0;
    _2085.x = (asuint(r0.x) != 0u) ? r0.z : r0.y;
    r0 = _2085;
    float4 _2092 = r0;
    _2092.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _2092;
    float4 _2103 = r0;
    _2103.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _2103;
    float4 _2109 = r0;
    _2109.x = float(asint(r0.x));
    r0 = _2109;
    float4 _2117 = r0;
    _2117.x = r0.x / cb3_m[8].x;
    r0 = _2117;
    float4 _2122 = r0;
    _2122.x = trunc(r0.x);
    r0 = _2122;
    float4 _2129 = r0;
    _2129.w = asfloat(int(cb3_m[8].x));
    r0 = _2129;
    float4 _2140 = r0;
    _2140.w = asfloat(max(asint(r0.w), (-asint(r0.w))));
    r0 = _2140;
    uint _2147 = asuint(r0.w);
    float4 _2152 = r0;
    _2152.z = asfloat((_2147 != 0u) ? (asuint(r0.z) % _2147) : 4294967295u);
    r0 = _2152;
    float4 _2159 = r0;
    _2159.w = asfloat(-asint(r0.z));
    r0 = _2159;
    float4 _2170 = r0;
    _2170.y = (asuint(r0.y) != 0u) ? r0.w : r0.z;
    r0 = _2170;
    float4 _2176 = r0;
    _2176.y = float(asint(r0.y));
    r0 = _2176;
    float2 _2186 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r0 = float4(r0.x, r0.y, _2186.x, _2186.y);
    float2 _2193 = r0.zw * r3.zw;
    r1 = float4(_2193.x, _2193.y, r1.z, r1.w);
    float4 _2204 = o3;
    _2204.x = (r0.y * r0.z) + r1.x;
    o3 = _2204;
    float4 _2214 = o3;
    _2214.y = (r0.x * r0.w) + r1.y;
    o3 = _2214;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float2 _2226 = asfloat(v3);
    shader_in[3] = float4(_2226.x, _2226.y, shader_in[3].z, shader_in[3].w);
    float4 _2232 = shader_in[4];
    _2232.x = v4;
    shader_in[4] = _2232;
    float4 _2236 = shader_in[5];
    _2236.x = v5;
    shader_in[5] = _2236;
    shader_in[6] = v6;
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
