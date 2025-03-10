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
    float4 cb2_m[16] : packoffset(c0);
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
static float4 r9;

void vs_main()
{
    float2 _67 = (shader_in[6].wx * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_67.x, _67.y, r0.z, r0.w);
    float4 _86 = r0;
    _86.z = (cb2_m[13].w * r0.x) + cb2_m[13].z;
    r0 = _86;
    float4 _93 = r0;
    _93.z = r0.z * asfloat(981668463u);
    r0 = _93;
    float4 _100 = r0;
    _100.z = max(r0.z, asfloat(841731191u));
    r0 = _100;
    float4 _107 = r0;
    _107.z = min(r0.z, asfloat(1065353216u));
    r0 = _107;
    float4 _112 = r0;
    _112.w = log2(r0.z);
    r0 = _112;
    float4 _123 = r0;
    _123.z = asfloat((r0.z == asfloat(1065353216u)) ? 4294967295u : 0u);
    r0 = _123;
    float4 _131 = r1;
    _131.x = r0.w * asfloat(1060205080u);
    r1 = _131;
    float4 _142 = r1;
    _142.y = (-shader_in[4].x) + cb2_m[13].x;
    r1 = _142;
    float4 _149 = r0;
    _149.w = r0.w * r1.y;
    r0 = _149;
    float4 _154 = r0;
    _154.w = exp2(r0.w);
    r0 = _154;
    float4 _160 = r0;
    _160.w = r0.w + asfloat(3212836864u);
    r0 = _160;
    float4 _167 = r0;
    _167.w = r0.w / r1.x;
    r0 = _167;
    float4 _178 = r0;
    _178.z = (asuint(r0.z) != 0u) ? r1.y : r0.w;
    r0 = _178;
    float3 _201 = (float3(cb2_m[7].x, cb2_m[7].y, cb2_m[7].z) * r0.yyy) + float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r1 = float4(_201.x, r1.y, _201.y, _201.z);
    float3 _224 = (float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z) * r0.yyy) + float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r2 = float4(_224.x, _224.y, _224.z, r2.w);
    float3 _233 = r1.xzw + (-r2.xyz);
    r1 = float4(_233.x, r1.y, _233.y, _233.z);
    float4 _241 = r0;
    _241.y = r1.y * r1.y;
    r0 = _241;
    float3 _247 = r0.yyy * r1.xzw;
    r1 = float4(_247.x, r1.y, _247.y, _247.z);
    float3 _254 = r2.xyz * r0.yyy;
    r2 = float4(_254.x, _254.y, _254.z, r2.w);
    float4 _263 = r0;
    _263.y = shader_in[5].x + asfloat(897988541u);
    r0 = _263;
    float4 _273 = r0;
    _273.y = clamp(r1.y / r0.y, 0.0f, 1.0f);
    r0 = _273;
    float4 _283 = r0;
    _283.w = asfloat((shader_in[5].x < r1.y) ? 4294967295u : 0u);
    r0 = _283;
    float3 _289 = r0.yyy * r1.xzw;
    r1 = float4(_289.x, _289.y, _289.z, r1.w);
    float3 _298 = r1.xyz * asfloat(uint3(1042983595u, 1042983595u, 1042983595u));
    r1 = float4(_298.x, _298.y, _298.z, r1.w);
    float3 _309 = (r2.xyz * asfloat(uint3(1056964608u, 1056964608u, 1056964608u))) + r1.xyz;
    r1 = float4(_309.x, _309.y, _309.z, r1.w);
    float3 _318 = r1.xyz + shader_in[1].xyz;
    r1 = float4(_318.x, _318.y, _318.z, r1.w);
    r2 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r2.w);
    float4 _327 = r2;
    _327.w = asfloat(1065353216u);
    r2 = _327;
    float4 _338 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _353 = r3;
    _353.x = mad(_338.w, r2.w, mad(_338.z, r2.z, mad(_338.y, r2.y, _338.x * r2.x)));
    r3 = _353;
    float4 _364 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _378 = r3;
    _378.y = mad(_364.w, r2.w, mad(_364.z, r2.z, mad(_364.y, r2.y, _364.x * r2.x)));
    r3 = _378;
    float4 _390 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _404 = r3;
    _404.z = mad(_390.w, r2.w, mad(_390.z, r2.z, mad(_390.y, r2.y, _390.x * r2.x)));
    r3 = _404;
    float3 _413 = (r1.xyz * r0.zzz) + r3.xyz;
    r1 = float4(_413.x, _413.y, _413.z, r1.w);
    uint3 _418 = asuint(r0.www);
    float3 _421 = asfloat(uint3(1733542428u, 1733542428u, 1733542428u));
    bool3 _426 = bool3(_418.x != uint3(0u, 0u, 0u).x, _418.y != uint3(0u, 0u, 0u).y, _418.z != uint3(0u, 0u, 0u).z);
    float3 _427 = float3(_426.x ? _421.x : r1.xyz.x, _426.y ? _421.y : r1.xyz.y, _426.z ? _421.z : r1.xyz.z);
    r1 = float4(_427.x, _427.y, _427.z, r1.w);
    float3 _438 = float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z);
    r2 = float4(_438.x, _438.y, _438.z, r2.w);
    float3 _450 = -float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_450.x, _450.y, _450.z, r4.w);
    float4 _455 = r4;
    _455.w = asfloat(1065353216u);
    r4 = _455;
    float4 _466 = float4(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z, cb0_m[8].w);
    float4 _480 = r2;
    _480.w = mad(_466.w, r4.w, mad(_466.z, r4.z, mad(_466.y, r4.y, _466.x * r4.x)));
    r2 = _480;
    float4 _483 = r1;
    _483.w = asfloat(1065353216u);
    r1 = _483;
    float4 _500 = r5;
    _500.x = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r5 = _500;
    float4 _512 = float4(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z, cb0_m[9].w);
    float4 _527 = r6;
    _527.w = mad(_512.w, r4.w, mad(_512.z, r4.z, mad(_512.y, r4.y, _512.x * r4.x)));
    r6 = _527;
    float4 _539 = float4(cb0_m[10].x, cb0_m[10].y, cb0_m[10].z, cb0_m[10].w);
    float4 _553 = r4;
    _553.w = mad(_539.w, r4.w, mad(_539.z, r4.z, mad(_539.y, r4.y, _539.x * r4.x)));
    r4 = _553;
    float3 _562 = float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z);
    r6 = float4(_562.x, _562.y, _562.z, r6.w);
    float4 _579 = r5;
    _579.y = mad(r6.w, r1.w, mad(r6.z, r1.z, mad(r6.y, r1.y, r6.x * r1.x)));
    r5 = _579;
    float4 _582 = r3;
    _582.w = asfloat(1065353216u);
    r3 = _582;
    float4 _598 = r2;
    _598.x = mad(r2.w, r3.w, mad(r2.z, r3.z, mad(r2.y, r3.y, r2.x * r3.x)));
    r2 = _598;
    float4 _614 = r2;
    _614.y = mad(r6.w, r3.w, mad(r6.z, r3.z, mad(r6.y, r3.y, r6.x * r3.x)));
    r2 = _614;
    float2 _621 = (-r2.xy) + r5.xy;
    r0 = float4(r0.x, r0.y, _621.x, _621.y);
    float4 _634 = r2;
    _634.w = mad(r0.zw.y, r0.zw.y, r0.zw.x * r0.zw.x);
    r2 = _634;
    float4 _639 = r2;
    _639.w = rsqrt(r2.w);
    r2 = _639;
    float2 _645 = r0.zw * r2.ww;
    r0 = float4(r0.x, r0.y, _645.x, _645.y);
    float4 _659 = r2;
    _659.w = (cb2_m[15].y * r0.x) + cb2_m[11].z;
    r2 = _659;
    float4 _671 = r5;
    _671.w = (cb2_m[15].x * r0.x) + cb2_m[10].z;
    r5 = _671;
    float4 _679 = r2;
    _679.w = r2.w + (-r5.w);
    r2 = _679;
    float2 _692 = (-float2(cb2_m[12].y, cb2_m[12].w)) + asfloat(uint2(1065353224u, 1065353224u));
    r6 = float4(_692.x, _692.y, r6.z, r6.w);
    r7 = r0.yyyy + (-float4(cb2_m[12].y, cb2_m[12].x, cb2_m[12].w, cb2_m[12].z));
    float2 _714 = r7.xz / r6.xy;
    r6 = float4(_714.x, _714.y, r6.z, r6.w);
    float4 _725 = r2;
    _725.w = (r6.y * r2.w) + r5.w;
    r2 = _725;
    float4 _738 = r6;
    _738.y = (cb2_m[14].w * r0.x) + cb2_m[9].z;
    r6 = _738;
    float4 _750 = r0;
    _750.x = (cb2_m[14].z * r0.x) + cb2_m[8].z;
    r0 = _750;
    float4 _758 = r5;
    _758.w = r5.w + (-r6.y);
    r5 = _758;
    float2 _773 = (-float2(cb2_m[12].x, cb2_m[12].z)) + float2(cb2_m[12].y, cb2_m[12].w);
    r6 = float4(r6.x, r6.y, _773.x, _773.y);
    float2 _780 = r6.zw + asfloat(uint2(897988541u, 897988541u));
    r6 = float4(r6.x, r6.y, _780.x, _780.y);
    float2 _787 = r7.yw / r6.zw;
    r6 = float4(r6.x, r6.y, _787.x, _787.y);
    float4 _798 = r5;
    _798.w = (r6.w * r5.w) + r6.y;
    r5 = _798;
    float4 _806 = r6;
    _806.y = (-r0.x) + r6.y;
    r6 = _806;
    float4 _819 = float4(cb2_m[12].y, cb2_m[12].x, cb2_m[12].w, cb2_m[12].z);
    bool4 _821 = bool4(r0.yyyy.x < _819.x, r0.yyyy.y < _819.y, r0.yyyy.z < _819.z, r0.yyyy.w < _819.w);
    r7 = asfloat(uint4(_821.x ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).x : uint4(0u, 0u, 0u, 0u).x, _821.y ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).y : uint4(0u, 0u, 0u, 0u).y, _821.z ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).z : uint4(0u, 0u, 0u, 0u).z, _821.w ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).w : uint4(0u, 0u, 0u, 0u).w));
    float4 _836 = r2;
    _836.w = (asuint(r7.z) != 0u) ? r5.w : r2.w;
    r2 = _836;
    float2 _845 = float2(cb2_m[12].x, cb2_m[12].z) + asfloat(uint2(897988541u, 897988541u));
    r8 = float4(_845.x, _845.y, r8.z, r8.w);
    float2 _853 = r0.yy / r8.xy;
    r8 = float4(_853.x, _853.y, r8.z, r8.w);
    float4 _864 = r0;
    _864.y = (r0.y * cb2_m[15].z) + asfloat(841731191u);
    r0 = _864;
    float4 _874 = r0;
    _874.x = (r8.y * r6.y) + r0.x;
    r0 = _874;
    float4 _885 = r0;
    _885.x = (asuint(r7.w) != 0u) ? r0.x : r2.w;
    r0 = _885;
    float4 _891 = r0;
    _891.x = r0.x * asfloat(1056964608u);
    r0 = _891;
    float2 _897 = r0.xx * r0.zw;
    r9 = float4(_897.x, _897.y, r9.z, r9.w);
    float4 _902 = r9;
    _902.z = asfloat(0u);
    r9 = _902;
    float3 _911 = float3(cb0_m[10].x, cb0_m[10].y, cb0_m[10].z);
    r4 = float4(_911.x, _911.y, _911.z, r4.w);
    float4 _928 = r2;
    _928.z = mad(r4.w, r3.w, mad(r4.z, r3.z, mad(r4.y, r3.y, r4.x * r3.x)));
    r2 = _928;
    float4 _944 = r5;
    _944.z = mad(r4.w, r1.w, mad(r4.z, r1.z, mad(r4.y, r1.y, r4.x * r1.x)));
    r5 = _944;
    float3 _950 = r5.xyz + r9.xyz;
    r1 = float4(_950.x, _950.y, _950.z, r1.w);
    float3 _958 = r2.xyz + (-r9.xyz);
    r2 = float4(_958.x, _958.y, _958.z, r2.w);
    float2 _966 = float2(asint(shader_in[3].xy));
    r3 = float4(_966.x, _966.y, r3.z, r3.w);
    float2 _972 = asfloat(uint2(1056964608u, 1056964608u));
    bool2 _974 = bool2(r3.xy.x < _972.x, r3.xy.y < _972.y);
    float2 _978 = asfloat(uint2(_974.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _974.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r3 = float4(r3.x, r3.y, _978.x, _978.y);
    uint3 _983 = asuint(r3.zzz);
    bool3 _988 = bool3(_983.x != uint3(0u, 0u, 0u).x, _983.y != uint3(0u, 0u, 0u).y, _983.z != uint3(0u, 0u, 0u).z);
    float3 _989 = float3(_988.x ? r1.xyz.x : r2.xyz.x, _988.y ? r1.xyz.y : r2.xyz.y, _988.z ? r1.xyz.z : r2.xyz.z);
    r1 = float4(_989.x, _989.y, _989.z, r1.w);
    float4 _998 = r2;
    _998.x = r0.x * (-r0.w);
    r2 = _998;
    float4 _1005 = r2;
    _1005.y = r0.x * r0.z;
    r2 = _1005;
    float4 _1008 = r2;
    _1008.z = asfloat(0u);
    r2 = _1008;
    float3 _1014 = r1.xyz + r2.xyz;
    r0 = float4(_1014.x, r0.y, _1014.y, _1014.z);
    float3 _1022 = r1.xyz + (-r2.xyz);
    r1 = float4(_1022.x, _1022.y, _1022.z, r1.w);
    uint3 _1027 = asuint(r3.www);
    bool3 _1032 = bool3(_1027.x != uint3(0u, 0u, 0u).x, _1027.y != uint3(0u, 0u, 0u).y, _1027.z != uint3(0u, 0u, 0u).z);
    float3 _1033 = float3(_1032.x ? r0.xzw.x : r1.xyz.x, _1032.y ? r0.xzw.y : r1.xyz.y, _1032.z ? r0.xzw.z : r1.xyz.z);
    r0 = float4(_1033.x, r0.y, _1033.y, _1033.z);
    float3 _1046 = r0.zzz * float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z);
    r1 = float4(_1046.x, _1046.y, _1046.z, r1.w);
    float3 _1062 = (float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z) * r0.xxx) + r1.xyz;
    r1 = float4(_1062.x, _1062.y, _1062.z, r1.w);
    float3 _1078 = (float3(cb0_m[10].x, cb0_m[10].y, cb0_m[10].z) * r0.www) + r1.xyz;
    r0 = float4(_1078.x, r0.y, _1078.y, _1078.z);
    float3 _1091 = r0.xzw + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_1091.x, _1091.y, _1091.z, r1.w);
    float4 _1095 = r1;
    _1095.w = asfloat(1065353216u);
    r1 = _1095;
    float4 _1106 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _1120 = o0;
    _1120.x = mad(_1106.w, r1.w, mad(_1106.z, r1.z, mad(_1106.y, r1.y, _1106.x * r1.x)));
    o0 = _1120;
    float4 _1131 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _1145 = o0;
    _1145.y = mad(_1131.w, r1.w, mad(_1131.z, r1.z, mad(_1131.y, r1.y, _1131.x * r1.x)));
    o0 = _1145;
    float4 _1156 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _1170 = o0;
    _1170.z = mad(_1156.w, r1.w, mad(_1156.z, r1.z, mad(_1156.y, r1.y, _1156.x * r1.x)));
    o0 = _1170;
    float4 _1181 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _1195 = o0;
    _1195.w = mad(_1181.w, r1.w, mad(_1181.z, r1.z, mad(_1181.y, r1.y, _1181.x * r1.x)));
    o0 = _1195;
    r1 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r1 = (r8.xxxx * r1) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r2 = (-float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w)) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    r2 = (r6.zzzz * r2) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r4 = (-float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w)) + float4(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z, cb2_m[3].w);
    r4 = (r6.xxxx * r4) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    uint4 _1310 = asuint(r7.xxxx);
    bool4 _1313 = bool4(_1310.x != uint4(0u, 0u, 0u, 0u).x, _1310.y != uint4(0u, 0u, 0u, 0u).y, _1310.z != uint4(0u, 0u, 0u, 0u).z, _1310.w != uint4(0u, 0u, 0u, 0u).w);
    r2 = float4(_1313.x ? r2.x : r4.x, _1313.y ? r2.y : r4.y, _1313.z ? r2.z : r4.z, _1313.w ? r2.w : r4.w);
    uint4 _1317 = asuint(r7.yyyy);
    bool4 _1320 = bool4(_1317.x != uint4(0u, 0u, 0u, 0u).x, _1317.y != uint4(0u, 0u, 0u, 0u).y, _1317.z != uint4(0u, 0u, 0u, 0u).z, _1317.w != uint4(0u, 0u, 0u, 0u).w);
    r1 = float4(_1320.x ? r1.x : r2.x, _1320.y ? r1.y : r2.y, _1320.z ? r1.z : r2.z, _1320.w ? r1.w : r2.w);
    float3 _1336 = (r1.xyz * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-r1.xyz);
    r2 = float4(_1336.x, _1336.y, _1336.z, r2.w);
    float3 _1348 = (cb3_m[7].w.xxx * r2.xyz) + r1.xyz;
    r1 = float4(_1348.x, _1348.y, _1348.z, r1.w);
    float4 _1357 = o1;
    _1357.w = r1.w * cb3_m[5].x;
    o1 = _1357;
    float3 _1385 = (float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z) * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z));
    r2 = float4(_1385.x, _1385.y, _1385.z, r2.w);
    float3 _1403 = (cb3_m[7].w.xxx * r2.xyz) + float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    r2 = float4(_1403.x, _1403.y, _1403.z, r2.w);
    float3 _1410 = r1.xyz + r2.xyz;
    o1 = float4(_1410.x, _1410.y, _1410.z, o1.w);
    float4 _1419 = r1;
    _1419.x = r0.z * cb0_m[13].x;
    r1 = _1419;
    float4 _1426 = r1;
    _1426.y = r1.x * asfloat(3216550459u);
    r1 = _1426;
    float4 _1431 = r1;
    _1431.y = exp2(r1.y);
    r1 = _1431;
    float4 _1438 = r1;
    _1438.y = (-r1.y) + asfloat(1065353216u);
    r1 = _1438;
    float4 _1445 = r1;
    _1445.x = r1.y / r1.x;
    r1 = _1445;
    float4 _1455 = r1;
    _1455.y = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _1455;
    float4 _1470 = r0;
    _1470.x = mad(r0.xzw.z, r0.xzw.z, mad(r0.xzw.y, r0.xzw.y, r0.xzw.x * r0.xzw.x));
    r0 = _1470;
    float4 _1475 = r0;
    _1475.x = sqrt(r0.x);
    r0 = _1475;
    float4 _1483 = r0;
    _1483.x = r0.x * cb0_m[13].y;
    r0 = _1483;
    float4 _1493 = r0;
    _1493.z = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r0 = _1493;
    float4 _1505 = r0;
    _1505.x = (r0.z * r0.x) + (-cb0_m[13].w);
    r0 = _1505;
    float4 _1511 = r0;
    _1511.x = exp2(-r0.x);
    r0 = _1511;
    float4 _1517 = r0;
    _1517.x = min(r0.x, asfloat(1065353216u));
    r0 = _1517;
    o2 = (-r0.x) + asfloat(1065353216u);
    float2 _1537 = (-float2(cb2_m[10].x, cb2_m[10].w)) + float2(cb2_m[11].x, cb2_m[11].w);
    r0 = float4(_1537.x, r0.y, _1537.y, r0.w);
    float2 _1551 = (r6.xx * r0.xz) + float2(cb2_m[10].x, cb2_m[10].w);
    r0 = float4(_1551.x, r0.y, _1551.y, r0.w);
    float2 _1567 = (-float2(cb2_m[9].x, cb2_m[9].w)) + float2(cb2_m[10].x, cb2_m[10].w);
    r1 = float4(_1567.x, _1567.y, r1.z, r1.w);
    float2 _1581 = (r6.zz * r1.xy) + float2(cb2_m[9].x, cb2_m[9].w);
    r1 = float4(_1581.x, _1581.y, r1.z, r1.w);
    uint2 _1586 = asuint(r7.xx);
    bool2 _1591 = bool2(_1586.x != uint2(0u, 0u).x, _1586.y != uint2(0u, 0u).y);
    float2 _1592 = float2(_1591.x ? r1.xy.x : r0.xz.x, _1591.y ? r1.xy.y : r0.xz.y);
    r0 = float4(_1592.x, r0.y, _1592.y, r0.w);
    float2 _1608 = (-float2(cb2_m[8].x, cb2_m[8].w)) + float2(cb2_m[9].x, cb2_m[9].w);
    r1 = float4(_1608.x, _1608.y, r1.z, r1.w);
    float2 _1622 = (r8.xx * r1.xy) + float2(cb2_m[8].x, cb2_m[8].w);
    r1 = float4(_1622.x, _1622.y, r1.z, r1.w);
    uint2 _1627 = asuint(r7.yy);
    bool2 _1632 = bool2(_1627.x != uint2(0u, 0u).x, _1627.y != uint2(0u, 0u).y);
    float2 _1633 = float2(_1632.x ? r1.xy.x : r0.xz.x, _1632.y ? r1.xy.y : r0.xz.y);
    o3 = float4(o3.x, o3.y, _1633.x, _1633.y);
    float4 _1643 = r0;
    _1643.x = cb3_m[8].y * cb3_m[8].x;
    r0 = _1643;
    float4 _1648 = r0;
    _1648.z = trunc(r0.x);
    r0 = _1648;
    float4 _1654 = r0;
    _1654.x = asfloat(int(r0.x));
    r0 = _1654;
    float4 _1661 = r0;
    _1661.y = r0.y * r0.z;
    r0 = _1661;
    float4 _1670 = r0;
    _1670.w = shader_in[6].w * cb2_m[15].w;
    r0 = _1670;
    float4 _1677 = r0;
    _1677.z = r0.z * r0.w;
    r0 = _1677;
    float2 _1682 = asfloat(int2(r0.yz));
    r0 = float4(r0.x, _1682.x, _1682.y, r0.w);
    float4 _1693 = r0;
    _1693.y = asfloat(asint(r0.z) + asint(r0.y));
    r0 = _1693;
    float2 _1703 = asfloat(max(asint(r0.xy), (-asint(r0.xy))));
    r0 = float4(_1703.x, r0.y, _1703.y, r0.w);
    float4 _1712 = r0;
    _1712.y = asfloat(asuint(r0.y) & 2147483648u);
    r0 = _1712;
    uint _1719 = asuint(r0.x);
    float4 _1724 = r0;
    _1724.x = asfloat((_1719 != 0u) ? (asuint(r0.z) % _1719) : 4294967295u);
    r0 = _1724;
    float4 _1731 = r0;
    _1731.z = asfloat(-asint(r0.x));
    r0 = _1731;
    float4 _1742 = r0;
    _1742.x = (asuint(r0.y) != 0u) ? r0.z : r0.x;
    r0 = _1742;
    float4 _1749 = r0;
    _1749.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _1749;
    float4 _1760 = r0;
    _1760.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _1760;
    float4 _1766 = r0;
    _1766.x = float(asint(r0.x));
    r0 = _1766;
    float4 _1774 = r0;
    _1774.x = r0.x / cb3_m[8].x;
    r0 = _1774;
    float4 _1779 = r0;
    _1779.x = trunc(r0.x);
    r0 = _1779;
    float4 _1786 = r0;
    _1786.w = asfloat(int(cb3_m[8].x));
    r0 = _1786;
    float4 _1797 = r0;
    _1797.w = asfloat(max(asint(r0.w), (-asint(r0.w))));
    r0 = _1797;
    uint _1804 = asuint(r0.w);
    float4 _1809 = r0;
    _1809.z = asfloat((_1804 != 0u) ? (asuint(r0.z) % _1804) : 4294967295u);
    r0 = _1809;
    float4 _1816 = r0;
    _1816.w = asfloat(-asint(r0.z));
    r0 = _1816;
    float4 _1827 = r0;
    _1827.y = (asuint(r0.y) != 0u) ? r0.w : r0.z;
    r0 = _1827;
    float4 _1833 = r0;
    _1833.y = float(asint(r0.y));
    r0 = _1833;
    float2 _1843 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r0 = float4(r0.x, r0.y, _1843.x, _1843.y);
    float2 _1850 = r0.zw * r3.xy;
    r1 = float4(_1850.x, _1850.y, r1.z, r1.w);
    float4 _1861 = o3;
    _1861.x = (r0.y * r0.z) + r1.x;
    o3 = _1861;
    float4 _1871 = o3;
    _1871.y = (r0.x * r0.w) + r1.y;
    o3 = _1871;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float2 _1883 = asfloat(v3);
    shader_in[3] = float4(_1883.x, _1883.y, shader_in[3].z, shader_in[3].w);
    float4 _1889 = shader_in[4];
    _1889.x = v4;
    shader_in[4] = _1889;
    float4 _1893 = shader_in[5];
    _1893.x = v5;
    shader_in[5] = _1893;
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
