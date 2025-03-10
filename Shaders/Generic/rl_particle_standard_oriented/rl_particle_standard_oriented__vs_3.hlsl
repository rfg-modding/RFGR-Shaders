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
static float3 o4;
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
    float4 _63 = r0;
    _63.x = shader_in[5].x + asfloat(897988541u);
    r0 = _63;
    float4 _79 = r0;
    _79.y = (-shader_in[4].x) + cb2_m[13].x;
    r0 = _79;
    float4 _86 = r0;
    _86.z = r0.y + asfloat(3171453065u);
    r0 = _86;
    float4 _92 = r0;
    _92.z = max(r0.z, asfloat(0u));
    r0 = _92;
    float4 _102 = r0;
    _102.w = clamp(r0.z / r0.x, 0.0f, 1.0f);
    r0 = _102;
    float4 _110 = r0;
    _110.x = clamp(r0.y / r0.x, 0.0f, 1.0f);
    r0 = _110;
    float4 _118 = r1;
    _118.x = r0.z * r0.z;
    r1 = _118;
    float2 _133 = (shader_in[6].wx * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r1 = float4(r1.x, _133.x, _133.y, r1.w);
    float3 _158 = (float3(cb2_m[7].z, cb2_m[7].x, cb2_m[7].y) * r1.zzz) + float3(cb2_m[6].z, cb2_m[6].x, cb2_m[6].y);
    r2 = float4(_158.x, _158.y, _158.z, r2.w);
    float3 _181 = (float3(cb2_m[5].z, cb2_m[5].x, cb2_m[5].y) * r1.zzz) + float3(cb2_m[4].z, cb2_m[4].x, cb2_m[4].y);
    r3 = float4(_181.x, _181.y, _181.z, r3.w);
    float3 _190 = r2.xyz + (-r3.xyz);
    r2 = float4(_190.x, _190.y, _190.z, r2.w);
    float3 _199 = r3.xyz * asfloat(uint3(1056964608u, 1056964608u, 1056964608u));
    r3 = float4(_199.x, _199.y, _199.z, r3.w);
    float3 _206 = r1.xxx * r2.xyz;
    r4 = float4(_206.x, _206.y, _206.z, r4.w);
    float3 _214 = r0.www * r4.xyz;
    r4 = float4(_214.x, _214.y, _214.z, r4.w);
    float3 _222 = r4.xyz * asfloat(uint3(1042983595u, 1042983595u, 1042983595u));
    r4 = float4(_222.x, _222.y, _222.z, r4.w);
    float3 _232 = (r3.xyz * r1.xxx) + r4.xyz;
    r1 = float4(_232.x, r1.y, _232.y, _232.z);
    float3 _241 = r1.xzw + shader_in[1].zxy;
    r1 = float4(_241.x, r1.y, _241.y, _241.z);
    float4 _254 = r0;
    _254.w = (cb2_m[13].w * r1.y) + cb2_m[13].z;
    r0 = _254;
    float4 _261 = r0;
    _261.w = r0.w * asfloat(981668463u);
    r0 = _261;
    float4 _268 = r0;
    _268.w = max(r0.w, asfloat(841731191u));
    r0 = _268;
    float4 _275 = r0;
    _275.w = min(r0.w, asfloat(1065353216u));
    r0 = _275;
    float4 _280 = r2;
    _280.w = log2(r0.w);
    r2 = _280;
    float4 _290 = r0;
    _290.w = asfloat((r0.w == asfloat(1065353216u)) ? 4294967295u : 0u);
    r0 = _290;
    float4 _297 = r3;
    _297.w = r0.z * r2.w;
    r3 = _297;
    float4 _302 = r3;
    _302.w = exp2(r3.w);
    r3 = _302;
    float4 _308 = r3;
    _308.w = r3.w + asfloat(3212836864u);
    r3 = _308;
    float4 _315 = r4;
    _315.x = r2.w * asfloat(1060205080u);
    r4 = _315;
    float4 _322 = r2;
    _322.w = r0.y * r2.w;
    r2 = _322;
    float4 _327 = r2;
    _327.w = exp2(r2.w);
    r2 = _327;
    float4 _333 = r2;
    _333.w = r2.w + asfloat(3212836864u);
    r2 = _333;
    float4 _340 = r2;
    _340.w = r2.w / r4.x;
    r2 = _340;
    float4 _347 = r3;
    _347.w = r3.w / r4.x;
    r3 = _347;
    float4 _358 = r0;
    _358.z = (asuint(r0.w) != 0u) ? r0.z : r3.w;
    r0 = _358;
    float4 _369 = r0;
    _369.w = (asuint(r0.w) != 0u) ? r0.y : r2.w;
    r0 = _369;
    float3 _379 = (r1.xzw * r0.zzz) + shader_in[0].zxy;
    r1 = float4(_379.x, r1.y, _379.y, _379.z);
    float4 _387 = r0;
    _387.z = r0.y * r0.y;
    r0 = _387;
    float4 _397 = r0;
    _397.y = asfloat((shader_in[5].x < r0.y) ? 4294967295u : 0u);
    r0 = _397;
    float3 _403 = r0.zzz * r2.yzx;
    r2 = float4(_403.x, _403.y, _403.z, r2.w);
    float3 _410 = r0.xxx * r2.xyz;
    r2 = float4(_410.x, _410.y, _410.z, r2.w);
    float3 _416 = r2.xyz * asfloat(uint3(1042983595u, 1042983595u, 1042983595u));
    r2 = float4(_416.x, _416.y, _416.z, r2.w);
    float3 _426 = (r3.yzx * r0.zzz) + r2.xyz;
    r2 = float4(_426.x, _426.y, _426.z, r2.w);
    float3 _434 = r2.xyz + shader_in[1].xyz;
    r2 = float4(_434.x, _434.y, _434.z, r2.w);
    float3 _445 = (r2.xyz * r0.www) + shader_in[0].xyz;
    r2 = float4(_445.x, _445.y, _445.z, r2.w);
    float3 _453 = (-r1.xzw) + r2.zxy;
    r1 = float4(_453.x, r1.y, _453.y, _453.z);
    uint3 _458 = asuint(r0.yyy);
    float3 _461 = asfloat(uint3(1733542428u, 1733542428u, 1733542428u));
    bool3 _466 = bool3(_458.x != uint3(0u, 0u, 0u).x, _458.y != uint3(0u, 0u, 0u).y, _458.z != uint3(0u, 0u, 0u).z);
    float3 _467 = float3(_466.x ? _461.x : r2.xyz.x, _466.y ? _461.y : r2.xyz.y, _466.z ? _461.z : r2.xyz.z);
    r2 = float4(_467.x, _467.y, _467.z, r2.w);
    float4 _483 = r0;
    _483.y = mad(r1.xzw.z, r1.xzw.z, mad(r1.xzw.y, r1.xzw.y, r1.xzw.x * r1.xzw.x));
    r0 = _483;
    float4 _488 = r0;
    _488.z = sqrt(r0.y);
    r0 = _488;
    float4 _493 = r0;
    _493.y = rsqrt(r0.y);
    r0 = _493;
    float3 _499 = r0.yyy * r1.xzw;
    r1 = float4(_499.x, r1.y, _499.y, _499.z);
    float4 _506 = r0;
    _506.y = r0.z + asfloat(1065353216u);
    r0 = _506;
    float4 _515 = r0;
    _515.z = (-cb2_m[7].w) + asfloat(1065353224u);
    r0 = _515;
    float4 _524 = r0;
    _524.w = r0.x + (-cb2_m[7].w);
    r0 = _524;
    float4 _531 = r0;
    _531.z = r0.w / r0.z;
    r0 = _531;
    float4 _544 = r0;
    _544.w = (cb2_m[16].w * r1.y) + cb2_m[5].w;
    r0 = _544;
    float4 _557 = r3;
    _557.x = (cb2_m[16].z * r1.y) + cb2_m[10].y;
    r3 = _557;
    float4 _565 = r0;
    _565.w = r0.w + (-r3.x);
    r0 = _565;
    float4 _575 = r0;
    _575.z = (r0.z * r0.w) + r3.x;
    r0 = _575;
    float4 _585 = r0;
    _585.w = (-cb2_m[6].w) + cb2_m[7].w;
    r0 = _585;
    float4 _591 = r0;
    _591.w = r0.w + asfloat(897988541u);
    r0 = _591;
    float4 _600 = r3;
    _600.y = r0.x + (-cb2_m[6].w);
    r3 = _600;
    float4 _607 = r0;
    _607.w = r3.y / r0.w;
    r0 = _607;
    float4 _620 = r3;
    _620.y = (cb2_m[16].y * r1.y) + cb2_m[9].y;
    r3 = _620;
    float4 _628 = r3;
    _628.x = (-r3.y) + r3.x;
    r3 = _628;
    float4 _638 = r0;
    _638.w = (r0.w * r3.x) + r3.y;
    r0 = _638;
    float4 _648 = r3;
    _648.x = asfloat((r0.x < cb2_m[7].w) ? 4294967295u : 0u);
    r3 = _648;
    float4 _659 = r0;
    _659.z = (asuint(r3.x) != 0u) ? r0.w : r0.z;
    r0 = _659;
    float4 _671 = r0;
    _671.w = (cb2_m[16].x * r1.y) + cb2_m[4].w;
    r0 = _671;
    float4 _679 = r3;
    _679.x = (-r0.w) + r3.y;
    r3 = _679;
    float4 _686 = r3;
    _686.y = cb2_m[6].w + asfloat(897988541u);
    r3 = _686;
    float4 _693 = r3;
    _693.y = r0.x / r3.y;
    r3 = _693;
    float4 _703 = r0;
    _703.w = (r3.y * r3.x) + r0.w;
    r0 = _703;
    float4 _713 = r3;
    _713.x = asfloat((r0.x < cb2_m[6].w) ? 4294967295u : 0u);
    r3 = _713;
    float4 _724 = r0;
    _724.z = (asuint(r3.x) != 0u) ? r0.w : r0.z;
    r0 = _724;
    float4 _738 = r0;
    _738.w = (cb2_m[15].y * r1.y) + cb2_m[11].z;
    r0 = _738;
    float4 _750 = r3;
    _750.x = (cb2_m[15].x * r1.y) + cb2_m[10].z;
    r3 = _750;
    float4 _758 = r0;
    _758.w = r0.w + (-r3.x);
    r0 = _758;
    float2 _770 = (-float2(cb2_m[12].y, cb2_m[12].w)) + asfloat(uint2(1065353224u, 1065353224u));
    r3 = float4(r3.x, _770.x, _770.y, r3.w);
    r4 = r0.xxxx + (-float4(cb2_m[12].y, cb2_m[12].x, cb2_m[12].w, cb2_m[12].z));
    float2 _791 = r4.xz / r3.yz;
    r3 = float4(r3.x, _791.x, _791.y, r3.w);
    float4 _802 = r0;
    _802.w = (r3.z * r0.w) + r3.x;
    r0 = _802;
    float4 _815 = r3;
    _815.z = (cb2_m[14].w * r1.y) + cb2_m[9].z;
    r3 = _815;
    float4 _828 = r1;
    _828.y = (cb2_m[14].z * r1.y) + cb2_m[8].z;
    r1 = _828;
    float4 _836 = r3;
    _836.x = (-r3.z) + r3.x;
    r3 = _836;
    float2 _851 = (-float2(cb2_m[12].x, cb2_m[12].z)) + float2(cb2_m[12].y, cb2_m[12].w);
    r4 = float4(_851.x, r4.y, _851.y, r4.w);
    float2 _858 = r4.xz + asfloat(uint2(897988541u, 897988541u));
    r4 = float4(_858.x, r4.y, _858.y, r4.w);
    float2 _865 = r4.yw / r4.xz;
    r4 = float4(_865.x, _865.y, r4.z, r4.w);
    float4 _876 = r3;
    _876.x = (r4.y * r3.x) + r3.z;
    r3 = _876;
    float4 _884 = r3;
    _884.z = (-r1.y) + r3.z;
    r3 = _884;
    float4 _897 = float4(cb2_m[12].y, cb2_m[12].x, cb2_m[12].w, cb2_m[12].z);
    bool4 _899 = bool4(r0.xxxx.x < _897.x, r0.xxxx.y < _897.y, r0.xxxx.z < _897.z, r0.xxxx.w < _897.w);
    r5 = asfloat(uint4(_899.x ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).x : uint4(0u, 0u, 0u, 0u).x, _899.y ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).y : uint4(0u, 0u, 0u, 0u).y, _899.z ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).z : uint4(0u, 0u, 0u, 0u).z, _899.w ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).w : uint4(0u, 0u, 0u, 0u).w));
    float4 _915 = r0;
    _915.w = (asuint(r5.z) != 0u) ? r3.x : r0.w;
    r0 = _915;
    float2 _924 = float2(cb2_m[12].x, cb2_m[12].z) + asfloat(uint2(897988541u, 897988541u));
    r3 = float4(_924.x, r3.y, r3.z, _924.y);
    float2 _931 = r0.xx / r3.xw;
    r3 = float4(_931.x, r3.y, r3.z, _931.y);
    float4 _942 = r0;
    _942.x = (r0.x * cb2_m[15].z) + asfloat(841731191u);
    r0 = _942;
    float4 _952 = r1;
    _952.y = (r3.w * r3.z) + r1.y;
    r1 = _952;
    float4 _963 = r0;
    _963.w = (asuint(r5.w) != 0u) ? r1.y : r0.w;
    r0 = _963;
    float4 _974 = r0;
    _974.y = (r0.z * r0.y) + (-r0.w);
    r0 = _974;
    float4 _977 = r2;
    _977.w = asfloat(1065353216u);
    r2 = _977;
    float4 _988 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _1003 = r6;
    _1003.x = mad(_988.w, r2.w, mad(_988.z, r2.z, mad(_988.y, r2.y, _988.x * r2.x)));
    r6 = _1003;
    float4 _1014 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _1028 = r6;
    _1028.y = mad(_1014.w, r2.w, mad(_1014.z, r2.z, mad(_1014.y, r2.y, _1014.x * r2.x)));
    r6 = _1028;
    float4 _1040 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _1054 = r6;
    _1054.z = mad(_1040.w, r2.w, mad(_1040.z, r2.z, mad(_1040.y, r2.y, _1040.x * r2.x)));
    r6 = _1054;
    float3 _1067 = (-r6.zxy) + float3(cb0_m[11].z, cb0_m[11].x, cb0_m[11].y);
    r2 = float4(_1067.x, _1067.y, _1067.z, r2.w);
    float4 _1083 = r0;
    _1083.z = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1083;
    float4 _1088 = r0;
    _1088.z = rsqrt(r0.z);
    r0 = _1088;
    float3 _1094 = r0.zzz * r2.xyz;
    r2 = float4(_1094.x, _1094.y, _1094.z, r2.w);
    float4 _1110 = r0;
    _1110.z = mad(r1.xzw.z, r2.xyz.z, mad(r1.xzw.y, r2.xyz.y, r1.xzw.x * r2.xyz.x));
    r0 = _1110;
    float4 _1118 = r0;
    _1118.z = (-abs(r0.z)) + asfloat(1065353216u);
    r0 = _1118;
    float4 _1128 = r0;
    _1128.y = (r0.z * r0.y) + r0.w;
    r0 = _1128;
    float2 _1135 = float2(asint(shader_in[3].xy));
    r3 = float4(r3.x, r3.y, _1135.x, _1135.y);
    float2 _1143 = r3.zw + asfloat(uint2(3204448256u, 3204448256u));
    r4 = float4(r4.x, _1143.x, _1143.y, r4.w);
    float2 _1150 = r0.yw * r4.yz;
    r0 = float4(r0.x, _1150.x, _1150.y, r0.w);
    float3 _1157 = r1.xzw * r2.zxy;
    r4 = float4(r4.x, _1157.x, _1157.y, _1157.z);
    float3 _1168 = (r1.wxz * r2.xyz) + (-r4.yzw);
    r1 = float4(_1168.x, _1168.y, _1168.z, r1.w);
    float4 _1184 = r0;
    _1184.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _1184;
    float4 _1189 = r0;
    _1189.w = rsqrt(r0.w);
    r0 = _1189;
    float3 _1195 = r0.www * r1.xyz;
    r1 = float4(_1195.x, _1195.y, _1195.z, r1.w);
    float3 _1202 = r1.yzx * r2.xyz;
    r4 = float4(r4.x, _1202.x, _1202.y, _1202.z);
    float3 _1213 = (r2.zxy * r1.zxy) + (-r4.yzw);
    r2 = float4(_1213.x, _1213.y, _1213.z, r2.w);
    float3 _1221 = r0.zzz * (-r1.xyz);
    r1 = float4(_1221.x, _1221.y, _1221.z, r1.w);
    float4 _1237 = r0;
    _1237.z = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1237;
    float4 _1242 = r0;
    _1242.z = rsqrt(r0.z);
    r0 = _1242;
    float3 _1248 = r0.zzz * r2.xyz;
    r2 = float4(_1248.x, _1248.y, _1248.z, r2.w);
    float3 _1259 = (r0.yyy * (-r2.xyz)) + r1.xyz;
    r0 = float4(r0.x, _1259.x, _1259.y, _1259.z);
    float3 _1266 = r0.yzw + r6.xyz;
    r1 = float4(_1266.x, _1266.y, _1266.z, r1.w);
    float4 _1270 = r1;
    _1270.w = asfloat(1065353216u);
    r1 = _1270;
    float4 _1281 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _1295 = r2;
    _1295.x = mad(_1281.w, r1.w, mad(_1281.z, r1.z, mad(_1281.y, r1.y, _1281.x * r1.x)));
    r2 = _1295;
    float4 _1306 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _1320 = r2;
    _1320.y = mad(_1306.w, r1.w, mad(_1306.z, r1.z, mad(_1306.y, r1.y, _1306.x * r1.x)));
    r2 = _1320;
    float4 _1331 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _1345 = r2;
    _1345.w = mad(_1331.w, r1.w, mad(_1331.z, r1.z, mad(_1331.y, r1.y, _1331.x * r1.x)));
    r2 = _1345;
    float4 _1356 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _1370 = o0;
    _1370.z = mad(_1356.w, r1.w, mad(_1356.z, r1.z, mad(_1356.y, r1.y, _1356.x * r1.x)));
    o0 = _1370;
    float3 _1383 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_1383.x, _1383.y, _1383.z, r1.w);
    o0 = float4(r2.xyw.x, r2.xyw.y, o0.z, r2.xyw.z);
    float2 _1394 = r2.xy / r2.ww;
    r2 = float4(_1394.x, _1394.y, r2.z, r2.w);
    float3 _1399 = o4;
    _1399.x = r2.w;
    o4 = _1399;
    float2 _1407 = (r2.xy * asfloat(uint2(1056964608u, 1056964608u))) + asfloat(uint2(1056964608u, 1056964608u));
    r2 = float4(_1407.x, _1407.y, r2.z, r2.w);
    float2 _1417 = (r2.xy * asfloat(uint2(1065353216u, 3212836864u))) + asfloat(uint2(0u, 1065353216u));
    o3 = float4(o3.x, o3.y, _1417.x, _1417.y);
    r2 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r2 = (r3.xxxx * r2) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r6 = (-float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w)) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    r6 = (r4.xxxx * r6) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r7 = (-float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w)) + float4(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z, cb2_m[3].w);
    r7 = (r3.yyyy * r7) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    uint4 _1534 = asuint(r5.xxxx);
    bool4 _1537 = bool4(_1534.x != uint4(0u, 0u, 0u, 0u).x, _1534.y != uint4(0u, 0u, 0u, 0u).y, _1534.z != uint4(0u, 0u, 0u, 0u).z, _1534.w != uint4(0u, 0u, 0u, 0u).w);
    r6 = float4(_1537.x ? r6.x : r7.x, _1537.y ? r6.y : r7.y, _1537.z ? r6.z : r7.z, _1537.w ? r6.w : r7.w);
    uint4 _1541 = asuint(r5.yyyy);
    bool4 _1544 = bool4(_1541.x != uint4(0u, 0u, 0u, 0u).x, _1541.y != uint4(0u, 0u, 0u, 0u).y, _1541.z != uint4(0u, 0u, 0u, 0u).z, _1541.w != uint4(0u, 0u, 0u, 0u).w);
    r2 = float4(_1544.x ? r2.x : r6.x, _1544.y ? r2.y : r6.y, _1544.z ? r2.z : r6.z, _1544.w ? r2.w : r6.w);
    float3 _1560 = (r2.xyz * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-r2.xyz);
    r4 = float4(r4.x, _1560.x, _1560.y, _1560.z);
    float3 _1572 = (cb3_m[7].w.xxx * r4.yzw) + r2.xyz;
    r2 = float4(_1572.x, _1572.y, _1572.z, r2.w);
    float4 _1581 = o1;
    _1581.w = r2.w * cb3_m[5].x;
    o1 = _1581;
    float3 _1609 = (float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z) * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z));
    r4 = float4(r4.x, _1609.x, _1609.y, _1609.z);
    float3 _1627 = (cb3_m[7].w.xxx * r4.yzw) + float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    r4 = float4(r4.x, _1627.x, _1627.y, _1627.z);
    float3 _1634 = r2.xyz + r4.yzw;
    o1 = float4(_1634.x, _1634.y, _1634.z, o1.w);
    float2 _1650 = (-float2(cb2_m[10].x, cb2_m[10].w)) + float2(cb2_m[11].x, cb2_m[11].w);
    r2 = float4(_1650.x, _1650.y, r2.z, r2.w);
    float2 _1664 = (r3.yy * r2.xy) + float2(cb2_m[10].x, cb2_m[10].w);
    r2 = float4(_1664.x, _1664.y, r2.z, r2.w);
    float2 _1680 = (-float2(cb2_m[9].x, cb2_m[9].w)) + float2(cb2_m[10].x, cb2_m[10].w);
    r2 = float4(r2.x, r2.y, _1680.x, _1680.y);
    float2 _1694 = (r4.xx * r2.zw) + float2(cb2_m[9].x, cb2_m[9].w);
    r2 = float4(r2.x, r2.y, _1694.x, _1694.y);
    uint2 _1699 = asuint(r5.xx);
    bool2 _1706 = bool2(_1699.x != uint2(0u, 0u).x, _1699.y != uint2(0u, 0u).y);
    float2 _1707 = float2(_1706.x ? r2.zw.x : r2.xy.x, _1706.y ? r2.zw.y : r2.xy.y);
    r2 = float4(_1707.x, _1707.y, r2.z, r2.w);
    float2 _1723 = (-float2(cb2_m[8].x, cb2_m[8].w)) + float2(cb2_m[9].x, cb2_m[9].w);
    r2 = float4(r2.x, r2.y, _1723.x, _1723.y);
    float2 _1737 = (r3.xx * r2.zw) + float2(cb2_m[8].x, cb2_m[8].w);
    r2 = float4(r2.x, r2.y, _1737.x, _1737.y);
    float4 _1749 = o2;
    _1749.w = (asuint(r5.y) != 0u) ? r2.w : r2.y;
    o2 = _1749;
    float3 _1760 = o4;
    _1760.y = (asuint(r5.y) != 0u) ? r2.z : r2.x;
    o4 = _1760;
    float4 _1775 = r1;
    _1775.w = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _1775;
    float4 _1780 = r1;
    _1780.w = rsqrt(r1.w);
    r1 = _1780;
    float3 _1786 = r0.yzw * r1.www;
    r0 = float4(r0.x, _1786.x, _1786.y, _1786.z);
    float4 _1802 = r1;
    _1802.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _1802;
    float4 _1807 = r2;
    _1807.x = rsqrt(r1.w);
    r2 = _1807;
    float4 _1812 = r1;
    _1812.w = sqrt(r1.w);
    r1 = _1812;
    float4 _1820 = r1;
    _1820.w = r1.w * cb0_m[13].y;
    r1 = _1820;
    float3 _1831 = ((-r1.xyz) * r2.xxx) + (-r0.yzw);
    r2 = float4(_1831.x, _1831.y, _1831.z, r2.w);
    float4 _1844 = r1;
    _1844.x = ((-shader_in[6].w) * asfloat(1041865114u)) + asfloat(1048576000u);
    r1 = _1844;
    float3 _1853 = (r1.xxx * r2.xyz) + r0.yzw;
    r0 = float4(r0.x, _1853.x, _1853.y, _1853.z);
    float4 _1869 = r1;
    _1869.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _1869;
    float4 _1874 = r1;
    _1874.x = rsqrt(r1.x);
    r1 = _1874;
    float3 _1880 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _1880.x, _1880.y, _1880.z);
    float3 _1889 = shader_in[6].xyz * asfloat(uint3(1036831949u, 1036831949u, 1036831949u));
    r2 = float4(_1889.x, _1889.y, _1889.z, r2.w);
    float3 _1900 = (r0.yzw * asfloat(uint3(1050253722u, 1050253722u, 1050253722u))) + r2.xyz;
    r0 = float4(r0.x, _1900.x, _1900.y, _1900.z);
    float4 _1916 = r1;
    _1916.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _1916;
    float4 _1921 = r1;
    _1921.x = rsqrt(r1.x);
    r1 = _1921;
    float3 _1927 = r0.yzw * r1.xxx;
    o2 = float4(_1927.x, _1927.y, _1927.z, o2.w);
    float4 _1937 = r0;
    _1937.y = cb3_m[8].y * cb3_m[8].x;
    r0 = _1937;
    float4 _1942 = r0;
    _1942.z = trunc(r0.y);
    r0 = _1942;
    float4 _1948 = r0;
    _1948.y = asfloat(int(r0.y));
    r0 = _1948;
    float4 _1955 = r0;
    _1955.x = r0.x * r0.z;
    r0 = _1955;
    float4 _1964 = r0;
    _1964.w = shader_in[6].w * cb2_m[15].w;
    r0 = _1964;
    float4 _1971 = r0;
    _1971.z = r0.z * r0.w;
    r0 = _1971;
    float2 _1976 = asfloat(int2(r0.xz));
    r0 = float4(_1976.x, r0.y, _1976.y, r0.w);
    float4 _1987 = r0;
    _1987.x = asfloat(asint(r0.z) + asint(r0.x));
    r0 = _1987;
    float2 _1997 = asfloat(max(asint(r0.yx), (-asint(r0.yx))));
    r0 = float4(r0.x, _1997.x, _1997.y, r0.w);
    float4 _2006 = r0;
    _2006.x = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _2006;
    uint _2013 = asuint(r0.y);
    float4 _2018 = r0;
    _2018.y = asfloat((_2013 != 0u) ? (asuint(r0.z) % _2013) : 4294967295u);
    r0 = _2018;
    float4 _2025 = r0;
    _2025.z = asfloat(-asint(r0.y));
    r0 = _2025;
    float4 _2036 = r0;
    _2036.x = (asuint(r0.x) != 0u) ? r0.z : r0.y;
    r0 = _2036;
    float4 _2043 = r0;
    _2043.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _2043;
    float4 _2054 = r0;
    _2054.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _2054;
    float4 _2060 = r0;
    _2060.x = float(asint(r0.x));
    r0 = _2060;
    float4 _2068 = r0;
    _2068.x = r0.x / cb3_m[8].x;
    r0 = _2068;
    float4 _2073 = r0;
    _2073.x = trunc(r0.x);
    r0 = _2073;
    float4 _2080 = r0;
    _2080.w = asfloat(int(cb3_m[8].x));
    r0 = _2080;
    float4 _2091 = r0;
    _2091.w = asfloat(max(asint(r0.w), (-asint(r0.w))));
    r0 = _2091;
    uint _2098 = asuint(r0.w);
    float4 _2103 = r0;
    _2103.z = asfloat((_2098 != 0u) ? (asuint(r0.z) % _2098) : 4294967295u);
    r0 = _2103;
    float4 _2110 = r0;
    _2110.w = asfloat(-asint(r0.z));
    r0 = _2110;
    float4 _2121 = r0;
    _2121.y = (asuint(r0.y) != 0u) ? r0.w : r0.z;
    r0 = _2121;
    float4 _2127 = r0;
    _2127.y = float(asint(r0.y));
    r0 = _2127;
    float2 _2137 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r0 = float4(r0.x, r0.y, _2137.x, _2137.y);
    float2 _2144 = r0.zw * r3.zw;
    r1 = float4(_2144.x, r1.y, _2144.y, r1.w);
    float4 _2155 = o3;
    _2155.x = (r0.y * r0.z) + r1.x;
    o3 = _2155;
    float4 _2165 = o3;
    _2165.y = (r0.x * r0.w) + r1.z;
    o3 = _2165;
    float4 _2173 = r0;
    _2173.x = r1.y * cb0_m[13].x;
    r0 = _2173;
    float4 _2183 = r0;
    _2183.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _2183;
    float4 _2190 = r0;
    _2190.z = r0.x * asfloat(3216550459u);
    r0 = _2190;
    float4 _2195 = r0;
    _2195.z = exp2(r0.z);
    r0 = _2195;
    float4 _2202 = r0;
    _2202.z = (-r0.z) + asfloat(1065353216u);
    r0 = _2202;
    float4 _2209 = r0;
    _2209.x = r0.z / r0.x;
    r0 = _2209;
    float4 _2219 = r0;
    _2219.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _2219;
    float4 _2231 = r0;
    _2231.x = (r0.x * r1.w) + (-cb0_m[13].w);
    r0 = _2231;
    float4 _2237 = r0;
    _2237.x = exp2(-r0.x);
    r0 = _2237;
    float4 _2243 = r0;
    _2243.x = min(r0.x, asfloat(1065353216u));
    r0 = _2243;
    float3 _2250 = o4;
    _2250.z = (-r0.x) + asfloat(1065353216u);
    o4 = _2250;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float2 _2262 = asfloat(v3);
    shader_in[3] = float4(_2262.x, _2262.y, shader_in[3].z, shader_in[3].w);
    float4 _2268 = shader_in[4];
    _2268.x = v4;
    shader_in[4] = _2268;
    float4 _2272 = shader_in[5];
    _2272.x = v5;
    shader_in[5] = _2272;
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
