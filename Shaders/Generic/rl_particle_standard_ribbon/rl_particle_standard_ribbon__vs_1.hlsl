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
static float4 v0;
static float4 v1;
static float2 v2;
static float2 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
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

void vs_main()
{
    float2 _63 = (shader_in[5].wx * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_63.x, _63.y, r0.z, r0.w);
    float4 _82 = r0;
    _82.x = (cb2_m[13].w * r0.x) + cb2_m[13].z;
    r0 = _82;
    float4 _89 = r0;
    _89.x = r0.x * asfloat(981668463u);
    r0 = _89;
    float4 _96 = r0;
    _96.x = max(r0.x, asfloat(841731191u));
    r0 = _96;
    float4 _103 = r0;
    _103.x = min(r0.x, asfloat(1065353216u));
    r0 = _103;
    float4 _114 = r0;
    _114.z = asfloat((r0.x == asfloat(1065353216u)) ? 4294967295u : 0u);
    r0 = _114;
    float4 _119 = r0;
    _119.x = log2(r0.x);
    r0 = _119;
    float4 _126 = r0;
    _126.w = r0.x * asfloat(1060205080u);
    r0 = _126;
    float2 _137 = (-shader_in[3].xy) + cb2_m[13].x.xx;
    r1 = float4(_137.x, _137.y, r1.z, r1.w);
    float4 _146 = r0;
    _146.x = r0.x * r1.y;
    r0 = _146;
    float4 _151 = r0;
    _151.x = exp2(r0.x);
    r0 = _151;
    float4 _157 = r0;
    _157.x = r0.x + asfloat(3212836864u);
    r0 = _157;
    float4 _164 = r0;
    _164.x = r0.x / r0.w;
    r0 = _164;
    float4 _175 = r0;
    _175.x = (asuint(r0.z) != 0u) ? r1.y : r0.x;
    r0 = _175;
    float3 _200 = (float3(cb2_m[7].x, cb2_m[7].y, cb2_m[7].z) * r0.yyy) + float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r2 = float4(_200.x, _200.y, _200.z, r2.w);
    float3 _224 = (float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z) * r0.yyy) + float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r0 = float4(r0.x, _224.x, _224.y, _224.z);
    float3 _232 = (-r0.yzw) + r2.xyz;
    r2 = float4(_232.x, _232.y, _232.z, r2.w);
    float2 _239 = r1.xy * r1.xy;
    r1 = float4(r1.x, r1.y, _239.x, _239.y);
    float3 _246 = r1.www * r2.xyz;
    r2 = float4(_246.x, _246.y, _246.z, r2.w);
    float4 _256 = r2;
    _256.w = shader_in[1].w + asfloat(897988541u);
    r2 = _256;
    float4 _266 = r1;
    _266.y = clamp(r1.y / r2.w, 0.0f, 1.0f);
    r1 = _266;
    float3 _272 = r1.yyy * r2.xyz;
    r2 = float4(_272.x, _272.y, _272.z, r2.w);
    float3 _281 = r2.xyz * asfloat(uint3(1042983595u, 1042983595u, 1042983595u));
    r2 = float4(_281.x, _281.y, _281.z, r2.w);
    float3 _288 = r0.yzw * r1.www;
    r0 = float4(r0.x, _288.x, _288.y, _288.z);
    float3 _299 = (r0.yzw * asfloat(uint3(1056964608u, 1056964608u, 1056964608u))) + r2.xyz;
    r0 = float4(r0.x, _299.x, _299.y, _299.z);
    float3 _310 = (r0.yzw * r0.xxx) + shader_in[1].xyz;
    r0 = float4(_310.x, _310.y, _310.z, r0.w);
    float4 _314 = r0;
    _314.w = asfloat(1065353216u);
    r0 = _314;
    float4 _325 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _339 = r2;
    _339.z = mad(_325.w, r0.w, mad(_325.z, r0.z, mad(_325.y, r0.y, _325.x * r0.x)));
    r2 = _339;
    float4 _350 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _364 = r2;
    _364.x = mad(_350.w, r0.w, mad(_350.z, r0.z, mad(_350.y, r0.y, _350.x * r0.x)));
    r2 = _364;
    float4 _376 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _390 = r2;
    _390.y = mad(_376.w, r0.w, mad(_376.z, r0.z, mad(_376.y, r0.y, _376.x * r0.x)));
    r2 = _390;
    float2 _398 = (shader_in[4].wx * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_398.x, _398.y, r0.z, r0.w);
    float4 _411 = r0;
    _411.z = (cb2_m[13].w * r0.x) + cb2_m[13].z;
    r0 = _411;
    float4 _417 = r0;
    _417.z = r0.z * asfloat(981668463u);
    r0 = _417;
    float4 _423 = r0;
    _423.z = max(r0.z, asfloat(841731191u));
    r0 = _423;
    float4 _429 = r0;
    _429.z = min(r0.z, asfloat(1065353216u));
    r0 = _429;
    float4 _434 = r0;
    _434.w = log2(r0.z);
    r0 = _434;
    float4 _442 = r0;
    _442.z = asfloat((r0.z == asfloat(1065353216u)) ? 4294967295u : 0u);
    r0 = _442;
    float4 _449 = r1;
    _449.y = r0.w * r1.x;
    r1 = _449;
    float4 _455 = r0;
    _455.w = r0.w * asfloat(1060205080u);
    r0 = _455;
    float4 _460 = r1;
    _460.y = exp2(r1.y);
    r1 = _460;
    float4 _466 = r1;
    _466.y = r1.y + asfloat(3212836864u);
    r1 = _466;
    float4 _473 = r0;
    _473.w = r1.y / r0.w;
    r0 = _473;
    float4 _484 = r0;
    _484.z = (asuint(r0.z) != 0u) ? r1.x : r0.w;
    r0 = _484;
    float3 _505 = (float3(cb2_m[7].x, cb2_m[7].y, cb2_m[7].z) * r0.yyy) + float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r3 = float4(_505.x, _505.y, _505.z, r3.w);
    float3 _528 = (float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z) * r0.yyy) + float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r4 = float4(_528.x, _528.y, _528.z, r4.w);
    float3 _537 = r3.xyz + (-r4.xyz);
    r3 = float4(_537.x, _537.y, _537.z, r3.w);
    float3 _544 = r1.zzz * r4.xyz;
    r4 = float4(_544.x, _544.y, _544.z, r4.w);
    float3 _551 = r1.zzz * r3.xyz;
    r1 = float4(r1.x, _551.x, _551.y, _551.z);
    float4 _559 = r0;
    _559.y = shader_in[0].w + asfloat(897988541u);
    r0 = _559;
    float4 _567 = r0;
    _567.y = clamp(r1.x / r0.y, 0.0f, 1.0f);
    r0 = _567;
    float3 _573 = r0.yyy * r1.yzw;
    r1 = float4(_573.x, _573.y, _573.z, r1.w);
    float3 _579 = r1.xyz * asfloat(uint3(1042983595u, 1042983595u, 1042983595u));
    r1 = float4(_579.x, _579.y, _579.z, r1.w);
    float3 _588 = (r4.xyz * asfloat(uint3(1056964608u, 1056964608u, 1056964608u))) + r1.xyz;
    r1 = float4(_588.x, _588.y, _588.z, r1.w);
    float3 _599 = (r1.xyz * r0.zzz) + shader_in[0].xyz;
    r1 = float4(_599.x, _599.y, _599.z, r1.w);
    float4 _603 = r1;
    _603.w = asfloat(1065353216u);
    r1 = _603;
    float4 _614 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _628 = r3;
    _628.x = mad(_614.w, r1.w, mad(_614.z, r1.z, mad(_614.y, r1.y, _614.x * r1.x)));
    r3 = _628;
    float4 _639 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _653 = r3;
    _653.y = mad(_639.w, r1.w, mad(_639.z, r1.z, mad(_639.y, r1.y, _639.x * r1.x)));
    r3 = _653;
    float4 _664 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _678 = r3;
    _678.z = mad(_664.w, r1.w, mad(_664.z, r1.z, mad(_664.y, r1.y, _664.x * r1.x)));
    r3 = _678;
    float3 _685 = r2.xyz + (-r3.yzx);
    r1 = float4(_685.x, _685.y, _685.z, r1.w);
    float4 _701 = r0;
    _701.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _701;
    float4 _706 = r0;
    _706.z = sqrt(r0.z);
    r0 = _706;
    float4 _714 = r0;
    _714.z = asfloat((r0.z == asfloat(0u)) ? 4294967295u : 0u);
    r0 = _714;
    uint3 _718 = asuint(r0.zzz);
    float3 _721 = asfloat(uint3(2147483648u, 2147483648u, 2147483648u));
    bool3 _726 = bool3(_718.x != uint3(0u, 0u, 0u).x, _718.y != uint3(0u, 0u, 0u).y, _718.z != uint3(0u, 0u, 0u).z);
    float3 _727 = float3(_726.x ? _721.x : r1.xyz.x, _726.y ? _721.y : r1.xyz.y, _726.z ? _721.z : r1.xyz.z);
    r1 = float4(_727.x, _727.y, _727.z, r1.w);
    float4 _743 = r0;
    _743.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _743;
    float4 _748 = r0;
    _748.z = rsqrt(r0.z);
    r0 = _748;
    float3 _754 = r0.zzz * r1.xyz;
    r1 = float4(_754.x, _754.y, _754.z, r1.w);
    float4 _764 = r0;
    _764.z = asfloat((shader_in[2].y < asfloat(0u)) ? 4294967295u : 0u);
    r0 = _764;
    uint3 _768 = asuint(r0.zzz);
    float3 _771 = -r1.xyz;
    bool3 _774 = bool3(_768.x != uint3(0u, 0u, 0u).x, _768.y != uint3(0u, 0u, 0u).y, _768.z != uint3(0u, 0u, 0u).z);
    float3 _775 = float3(_774.x ? _771.x : r1.xyz.x, _774.y ? _771.y : r1.xyz.y, _774.z ? _771.z : r1.xyz.z);
    r1 = float4(_775.x, _775.y, _775.z, r1.w);
    float3 _790 = r3.zxy + (-float3(cb0_m[11].z, cb0_m[11].x, cb0_m[11].y));
    r2 = float4(_790.x, _790.y, _790.z, r2.w);
    float4 _806 = r0;
    _806.z = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _806;
    float4 _811 = r0;
    _811.z = rsqrt(r0.z);
    r0 = _811;
    float3 _817 = r0.zzz * r2.xyz;
    r2 = float4(_817.x, _817.y, _817.z, r2.w);
    float3 _824 = r1.xyz * r2.xyz;
    r4 = float4(_824.x, _824.y, _824.z, r4.w);
    float3 _835 = (r2.zxy * r1.yzx) + (-r4.xyz);
    r1 = float4(_835.x, _835.y, _835.z, r1.w);
    float4 _851 = r0;
    _851.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _851;
    float4 _856 = r0;
    _856.z = rsqrt(r0.z);
    r0 = _856;
    float3 _862 = r0.zzz * r1.xyz;
    r1 = float4(_862.x, _862.y, _862.z, r1.w);
    float4 _876 = r0;
    _876.z = (cb2_m[15].y * r0.x) + cb2_m[11].z;
    r0 = _876;
    float4 _889 = r0;
    _889.w = (cb2_m[15].x * r0.x) + cb2_m[10].z;
    r0 = _889;
    float4 _897 = r0;
    _897.z = (-r0.w) + r0.z;
    r0 = _897;
    float2 _910 = (-float2(cb2_m[12].y, cb2_m[12].w)) + asfloat(uint2(1065353224u, 1065353224u));
    r2 = float4(_910.x, _910.y, r2.z, r2.w);
    r4 = r0.yyyy + (-float4(cb2_m[12].y, cb2_m[12].x, cb2_m[12].w, cb2_m[12].z));
    float2 _931 = r4.xz / r2.xy;
    r2 = float4(_931.x, _931.y, r2.z, r2.w);
    float4 _942 = r0;
    _942.z = (r2.y * r0.z) + r0.w;
    r0 = _942;
    float4 _956 = r1;
    _956.w = (cb2_m[14].w * r0.x) + cb2_m[9].z;
    r1 = _956;
    float4 _969 = r0;
    _969.x = (cb2_m[14].z * r0.x) + cb2_m[8].z;
    r0 = _969;
    float4 _977 = r0;
    _977.w = r0.w + (-r1.w);
    r0 = _977;
    float2 _992 = (-float2(cb2_m[12].x, cb2_m[12].z)) + float2(cb2_m[12].y, cb2_m[12].w);
    r2 = float4(r2.x, _992.x, _992.y, r2.w);
    float2 _999 = r2.yz + asfloat(uint2(897988541u, 897988541u));
    r2 = float4(r2.x, _999.x, _999.y, r2.w);
    float2 _1006 = r4.yw / r2.yz;
    r2 = float4(r2.x, _1006.x, _1006.y, r2.w);
    float4 _1017 = r0;
    _1017.w = (r2.z * r0.w) + r1.w;
    r0 = _1017;
    float4 _1025 = r1;
    _1025.w = (-r0.x) + r1.w;
    r1 = _1025;
    float4 _1038 = float4(cb2_m[12].y, cb2_m[12].x, cb2_m[12].w, cb2_m[12].z);
    bool4 _1040 = bool4(r0.yyyy.x < _1038.x, r0.yyyy.y < _1038.y, r0.yyyy.z < _1038.z, r0.yyyy.w < _1038.w);
    r4 = asfloat(uint4(_1040.x ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).x : uint4(0u, 0u, 0u, 0u).x, _1040.y ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).y : uint4(0u, 0u, 0u, 0u).y, _1040.z ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).z : uint4(0u, 0u, 0u, 0u).z, _1040.w ? uint4(4294967295u, 4294967295u, 4294967295u, 4294967295u).w : uint4(0u, 0u, 0u, 0u).w));
    float4 _1055 = r0;
    _1055.z = (asuint(r4.z) != 0u) ? r0.w : r0.z;
    r0 = _1055;
    float2 _1064 = float2(cb2_m[12].x, cb2_m[12].z) + asfloat(uint2(897988541u, 897988541u));
    r2 = float4(r2.x, r2.y, _1064.x, _1064.y);
    float2 _1071 = r0.yy / r2.zw;
    r2 = float4(r2.x, r2.y, _1071.x, _1071.y);
    float4 _1082 = r0;
    _1082.y = (r0.y * cb2_m[15].z) + asfloat(841731191u);
    r0 = _1082;
    float4 _1092 = r0;
    _1092.x = (r2.w * r1.w) + r0.x;
    r0 = _1092;
    float4 _1103 = r0;
    _1103.x = (asuint(r4.w) != 0u) ? r0.x : r0.z;
    r0 = _1103;
    float4 _1113 = r0;
    _1113.z = asfloat((asfloat(1056964608u) < abs(shader_in[2].y)) ? 4294967295u : 0u);
    r0 = _1113;
    float4 _1125 = r0;
    _1125.x = (asuint(r0.z) != 0u) ? (-r0.x) : r0.x;
    r0 = _1125;
    r5 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r5 = (r2.zzzz * r5) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r6 = (-float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w)) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    r6 = (r2.yyyy * r6) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r7 = (-float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w)) + float4(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z, cb2_m[3].w);
    r7 = (r2.xxxx * r7) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    uint4 _1243 = asuint(r4.xxxx);
    bool4 _1246 = bool4(_1243.x != uint4(0u, 0u, 0u, 0u).x, _1243.y != uint4(0u, 0u, 0u, 0u).y, _1243.z != uint4(0u, 0u, 0u, 0u).z, _1243.w != uint4(0u, 0u, 0u, 0u).w);
    r6 = float4(_1246.x ? r6.x : r7.x, _1246.y ? r6.y : r7.y, _1246.z ? r6.z : r7.z, _1246.w ? r6.w : r7.w);
    uint4 _1250 = asuint(r4.yyyy);
    bool4 _1253 = bool4(_1250.x != uint4(0u, 0u, 0u, 0u).x, _1250.y != uint4(0u, 0u, 0u, 0u).y, _1250.z != uint4(0u, 0u, 0u, 0u).z, _1250.w != uint4(0u, 0u, 0u, 0u).w);
    r5 = float4(_1253.x ? r5.x : r6.x, _1253.y ? r5.y : r6.y, _1253.z ? r5.z : r6.z, _1253.w ? r5.w : r6.w);
    float4 _1257 = r6;
    _1257.y = r5.w;
    r6 = _1257;
    float2 _1266 = shader_in[2].xx + asfloat(uint2(3225839206u, 3221644902u));
    r0 = float4(r0.x, r0.y, _1266.x, _1266.y);
    float2 _1271 = abs(r0.zw);
    float2 _1274 = asfloat(uint2(990057071u, 990057071u));
    bool2 _1276 = bool2(_1271.x < _1274.x, _1271.y < _1274.y);
    float2 _1280 = asfloat(uint2(_1276.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _1276.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(r0.x, r0.y, _1280.x, _1280.y);
    float4 _1293 = r1;
    _1293.w = (asuint(r0.z) != 0u) ? asfloat(1066192077u) : shader_in[2].x;
    r1 = _1293;
    float4 _1303 = r0;
    _1303.z = asfloat(asuint(r0.w) | asuint(r0.z));
    r0 = _1303;
    float4 _1309 = r0;
    _1309.w = r1.w + asfloat(3221644902u);
    r0 = _1309;
    float4 _1318 = r0;
    _1318.w = asfloat((abs(r0.w) < asfloat(990057071u)) ? 4294967295u : 0u);
    r0 = _1318;
    float4 _1329 = r7;
    _1329.x = (asuint(r0.w) != 0u) ? asfloat(1036831949u) : r1.w;
    r7 = _1329;
    float4 _1332 = r7;
    _1332.y = asfloat(0u);
    r7 = _1332;
    float4 _1337 = r6;
    _1337.x = shader_in[2].x;
    r6 = _1337;
    uint2 _1341 = asuint(r0.zz);
    bool2 _1346 = bool2(_1341.x != uint2(0u, 0u).x, _1341.y != uint2(0u, 0u).y);
    float2 _1347 = float2(_1346.x ? r7.xy.x : r6.xy.x, _1346.y ? r7.xy.y : r6.xy.y);
    r0 = float4(r0.x, r0.y, _1347.x, _1347.y);
    float4 _1357 = r0;
    _1357.z = asfloat((asfloat(1073657938u) < r0.z) ? 4294967295u : 0u);
    r0 = _1357;
    float4 _1365 = o1;
    _1365.w = r0.w * cb3_m[5].x;
    o1 = _1365;
    float4 _1377 = r0;
    _1377.x = (asuint(r0.z) != 0u) ? (-r0.x) : r0.x;
    r0 = _1377;
    float3 _1386 = (r1.xyz * r0.xxx) + r3.xyz;
    r1 = float4(_1386.x, _1386.y, _1386.z, r1.w);
    float4 _1390 = r1;
    _1390.w = asfloat(1065353216u);
    r1 = _1390;
    float4 _1401 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _1415 = o0;
    _1415.x = mad(_1401.w, r1.w, mad(_1401.z, r1.z, mad(_1401.y, r1.y, _1401.x * r1.x)));
    o0 = _1415;
    float4 _1426 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _1440 = o0;
    _1440.y = mad(_1426.w, r1.w, mad(_1426.z, r1.z, mad(_1426.y, r1.y, _1426.x * r1.x)));
    o0 = _1440;
    float4 _1451 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _1465 = o0;
    _1465.z = mad(_1451.w, r1.w, mad(_1451.z, r1.z, mad(_1451.y, r1.y, _1451.x * r1.x)));
    o0 = _1465;
    float4 _1476 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _1490 = o0;
    _1490.w = mad(_1476.w, r1.w, mad(_1476.z, r1.z, mad(_1476.y, r1.y, _1476.x * r1.x)));
    o0 = _1490;
    float3 _1503 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_1503.x, r0.y, _1503.y, _1503.z);
    float3 _1520 = (r5.xyz * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-r5.xyz);
    r1 = float4(_1520.x, _1520.y, _1520.z, r1.w);
    float3 _1532 = (cb3_m[7].w.xxx * r1.xyz) + r5.xyz;
    r1 = float4(_1532.x, _1532.y, _1532.z, r1.w);
    float3 _1561 = (float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z) * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z));
    r3 = float4(_1561.x, _1561.y, _1561.z, r3.w);
    float3 _1579 = (cb3_m[7].w.xxx * r3.xyz) + float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    r3 = float4(_1579.x, _1579.y, _1579.z, r3.w);
    float3 _1586 = r1.xyz + r3.xyz;
    o1 = float4(_1586.x, _1586.y, _1586.z, o1.w);
    float4 _1595 = r1;
    _1595.x = r0.z * cb0_m[13].x;
    r1 = _1595;
    float4 _1602 = r1;
    _1602.y = r1.x * asfloat(3216550459u);
    r1 = _1602;
    float4 _1607 = r1;
    _1607.y = exp2(r1.y);
    r1 = _1607;
    float4 _1614 = r1;
    _1614.y = (-r1.y) + asfloat(1065353216u);
    r1 = _1614;
    float4 _1621 = r1;
    _1621.x = r1.y / r1.x;
    r1 = _1621;
    float4 _1631 = r1;
    _1631.y = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _1631;
    float4 _1646 = r0;
    _1646.x = mad(r0.xzw.z, r0.xzw.z, mad(r0.xzw.y, r0.xzw.y, r0.xzw.x * r0.xzw.x));
    r0 = _1646;
    float4 _1651 = r0;
    _1651.x = sqrt(r0.x);
    r0 = _1651;
    float4 _1659 = r0;
    _1659.x = r0.x * cb0_m[13].y;
    r0 = _1659;
    float4 _1669 = r0;
    _1669.z = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r0 = _1669;
    float4 _1681 = r0;
    _1681.x = (r0.z * r0.x) + (-cb0_m[13].w);
    r0 = _1681;
    float4 _1687 = r0;
    _1687.x = exp2(-r0.x);
    r0 = _1687;
    float4 _1693 = r0;
    _1693.x = min(r0.x, asfloat(1065353216u));
    r0 = _1693;
    o2 = (-r0.x) + asfloat(1065353216u);
    float2 _1713 = (-float2(cb2_m[10].x, cb2_m[10].w)) + float2(cb2_m[11].x, cb2_m[11].w);
    r0 = float4(_1713.x, r0.y, _1713.y, r0.w);
    float2 _1727 = (r2.xx * r0.xz) + float2(cb2_m[10].x, cb2_m[10].w);
    r0 = float4(_1727.x, r0.y, _1727.y, r0.w);
    float2 _1743 = (-float2(cb2_m[9].x, cb2_m[9].w)) + float2(cb2_m[10].x, cb2_m[10].w);
    r1 = float4(_1743.x, _1743.y, r1.z, r1.w);
    float2 _1757 = (r2.yy * r1.xy) + float2(cb2_m[9].x, cb2_m[9].w);
    r1 = float4(_1757.x, _1757.y, r1.z, r1.w);
    uint2 _1762 = asuint(r4.xx);
    bool2 _1767 = bool2(_1762.x != uint2(0u, 0u).x, _1762.y != uint2(0u, 0u).y);
    float2 _1768 = float2(_1767.x ? r1.xy.x : r0.xz.x, _1767.y ? r1.xy.y : r0.xz.y);
    r0 = float4(_1768.x, r0.y, _1768.y, r0.w);
    float2 _1784 = (-float2(cb2_m[8].x, cb2_m[8].w)) + float2(cb2_m[9].x, cb2_m[9].w);
    r1 = float4(_1784.x, _1784.y, r1.z, r1.w);
    float2 _1798 = (r2.zz * r1.xy) + float2(cb2_m[8].x, cb2_m[8].w);
    r1 = float4(_1798.x, _1798.y, r1.z, r1.w);
    uint2 _1803 = asuint(r4.yy);
    bool2 _1808 = bool2(_1803.x != uint2(0u, 0u).x, _1803.y != uint2(0u, 0u).y);
    float2 _1809 = float2(_1808.x ? r1.xy.x : r0.xz.x, _1808.y ? r1.xy.y : r0.xz.y);
    o3 = float4(o3.x, o3.y, _1809.x, _1809.y);
    float4 _1819 = r0;
    _1819.x = cb3_m[8].y * cb3_m[8].x;
    r0 = _1819;
    float4 _1824 = r0;
    _1824.z = trunc(r0.x);
    r0 = _1824;
    float4 _1830 = r0;
    _1830.x = asfloat(int(r0.x));
    r0 = _1830;
    float4 _1837 = r0;
    _1837.y = r0.y * r0.z;
    r0 = _1837;
    float4 _1846 = r0;
    _1846.w = shader_in[4].w * cb2_m[15].w;
    r0 = _1846;
    float4 _1853 = r0;
    _1853.z = r0.z * r0.w;
    r0 = _1853;
    float2 _1859 = asfloat(int2(r0.yz));
    r0 = float4(r0.x, _1859.x, _1859.y, r0.w);
    float4 _1870 = r0;
    _1870.y = asfloat(asint(r0.z) + asint(r0.y));
    r0 = _1870;
    float2 _1880 = asfloat(max(asint(r0.xy), (-asint(r0.xy))));
    r0 = float4(_1880.x, r0.y, _1880.y, r0.w);
    float4 _1888 = r0;
    _1888.y = asfloat(asuint(r0.y) & 2147483648u);
    r0 = _1888;
    uint _1895 = asuint(r0.x);
    float4 _1900 = r0;
    _1900.x = asfloat((_1895 != 0u) ? (asuint(r0.z) % _1895) : 4294967295u);
    r0 = _1900;
    float4 _1907 = r0;
    _1907.z = asfloat(-asint(r0.x));
    r0 = _1907;
    float4 _1918 = r0;
    _1918.x = (asuint(r0.y) != 0u) ? r0.z : r0.x;
    r0 = _1918;
    float4 _1925 = r0;
    _1925.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _1925;
    float4 _1936 = r0;
    _1936.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _1936;
    float4 _1942 = r0;
    _1942.x = float(asint(r0.x));
    r0 = _1942;
    float4 _1950 = r0;
    _1950.x = r0.x / cb3_m[8].x;
    r0 = _1950;
    float4 _1955 = r0;
    _1955.x = trunc(r0.x);
    r0 = _1955;
    float4 _1962 = r0;
    _1962.w = asfloat(int(cb3_m[8].x));
    r0 = _1962;
    float4 _1973 = r0;
    _1973.w = asfloat(max(asint(r0.w), (-asint(r0.w))));
    r0 = _1973;
    uint _1980 = asuint(r0.w);
    float4 _1985 = r0;
    _1985.z = asfloat((_1980 != 0u) ? (asuint(r0.z) % _1980) : 4294967295u);
    r0 = _1985;
    float4 _1992 = r0;
    _1992.w = asfloat(-asint(r0.z));
    r0 = _1992;
    float4 _2003 = r0;
    _2003.y = (asuint(r0.y) != 0u) ? r0.w : r0.z;
    r0 = _2003;
    float4 _2009 = r0;
    _2009.y = float(asint(r0.y));
    r0 = _2009;
    float2 _2019 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r0 = float4(r0.x, r0.y, _2019.x, _2019.y);
    float2 _2026 = r0.wz * r0.xy;
    r0 = float4(_2026.x, _2026.y, r0.z, r0.w);
    float4 _2035 = r1;
    _2035.x = min(abs(shader_in[2].x), asfloat(1065353216u));
    r1 = _2035;
    float4 _2043 = r1;
    _2043.y = asfloat((r1.x < asfloat(1056964608u)) ? 4294967295u : 0u);
    r1 = _2043;
    float4 _2053 = r1;
    _2053.x = (asuint(r1.y) != 0u) ? asfloat(0u) : r1.x;
    r1 = _2053;
    float4 _2063 = o3;
    _2063.x = (r1.x * r0.z) + r0.y;
    o3 = _2063;
    float4 _2075 = o3;
    _2075.y = (abs(shader_in[2].y) * r0.w) + r0.x;
    o3 = _2075;
}

void vert_main()
{
    shader_in[0] = v0;
    shader_in[1] = v1;
    shader_in[2] = float4(v2.x, v2.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
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
