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

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static int4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _72 = r0;
    _72.x = shader_in[7].y + shader_in[7].x;
    r0 = _72;
    float4 _80 = r0;
    _80.x = r0.x + shader_in[7].z;
    r0 = _80;
    float4 _88 = r0;
    _88.x = r0.x + shader_in[7].w;
    r0 = _88;
    float4 _95 = r0;
    _95.x = asfloat(1065353216u) / r0.x;
    r0 = _95;
    float3 _110 = (shader_in[5].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_110.x, _110.y, _110.z, r1.w);
    float4 _115 = r1;
    _115.w = asfloat(1065353216u);
    r1 = _115;
    r2 = asfloat(asint(shader_in[8]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _132 = asint(r2.y);
    r3 = shader_in[7].yyyy * float4(cb4_m[_132].x, cb4_m[_132].y, cb4_m[_132].z, cb4_m[_132].w);
    int _153 = asint(r2.x);
    r3 = (shader_in[7].xxxx * float4(cb4_m[_153].x, cb4_m[_153].y, cb4_m[_153].z, cb4_m[_153].w)) + r3;
    int _172 = asint(r2.z);
    r3 = (shader_in[7].zzzz * float4(cb4_m[_172].x, cb4_m[_172].y, cb4_m[_172].z, cb4_m[_172].w)) + r3;
    int _191 = asint(r2.w);
    r3 = (shader_in[7].wwww * float4(cb4_m[_191].x, cb4_m[_191].y, cb4_m[_191].z, cb4_m[_191].w)) + r3;
    float4 _220 = r4;
    _220.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _220;
    int _229 = asint(r2.y) + 1;
    r5 = shader_in[7].yyyy * float4(cb4_m[_229].x, cb4_m[_229].y, cb4_m[_229].z, cb4_m[_229].w);
    int _248 = asint(r2.x) + 1;
    r5 = (shader_in[7].xxxx * float4(cb4_m[_248].x, cb4_m[_248].y, cb4_m[_248].z, cb4_m[_248].w)) + r5;
    int _268 = asint(r2.z) + 1;
    r5 = (shader_in[7].zzzz * float4(cb4_m[_268].x, cb4_m[_268].y, cb4_m[_268].z, cb4_m[_268].w)) + r5;
    int _288 = asint(r2.w) + 1;
    r5 = (shader_in[7].wwww * float4(cb4_m[_288].x, cb4_m[_288].y, cb4_m[_288].z, cb4_m[_288].w)) + r5;
    float4 _316 = r4;
    _316.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _316;
    int _325 = asint(r2.y) + 2;
    r6 = shader_in[7].yyyy * float4(cb4_m[_325].x, cb4_m[_325].y, cb4_m[_325].z, cb4_m[_325].w);
    int _344 = asint(r2.x) + 2;
    r6 = (shader_in[7].xxxx * float4(cb4_m[_344].x, cb4_m[_344].y, cb4_m[_344].z, cb4_m[_344].w)) + r6;
    int _364 = asint(r2.z) + 2;
    r6 = (shader_in[7].zzzz * float4(cb4_m[_364].x, cb4_m[_364].y, cb4_m[_364].z, cb4_m[_364].w)) + r6;
    int _384 = asint(r2.w) + 2;
    r2 = (shader_in[7].wwww * float4(cb4_m[_384].x, cb4_m[_384].y, cb4_m[_384].z, cb4_m[_384].w)) + r6;
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
    float3 _615 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(r0.x, _615.x, _615.y, _615.z);
    float3 _628 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_628.x, _628.y, _628.z, r1.w);
    float3 _638 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_638.x, _638.y, _638.z, r4.w);
    float3 _647 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_647.x, _647.y, _647.z, r1.w);
    float4 _663 = r1;
    _663.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _663;
    float4 _668 = r1;
    _668.w = rsqrt(r1.w);
    r1 = _668;
    float3 _674 = r1.www * r1.xyz;
    r1 = float4(_674.x, _674.y, _674.z, r1.w);
    float4 _690 = r4;
    _690.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _690;
    float4 _705 = r4;
    _705.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _705;
    float4 _720 = r4;
    _720.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _720;
    float3 _726 = r0.xxx * r4.xyz;
    r1 = float4(_726.x, _726.y, _726.z, r1.w);
    float4 _742 = r1;
    _742.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _742;
    float4 _747 = r1;
    _747.w = rsqrt(r1.w);
    r1 = _747;
    float3 _753 = r1.www * r1.xyz;
    r1 = float4(_753.x, _753.y, _753.z, r1.w);
    float3 _763 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _775 = r4;
    _775.x = mad(_763.z, r1.xyz.z, mad(_763.y, r1.xyz.y, _763.x * r1.xyz.x));
    r4 = _775;
    float3 _784 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _796 = r4;
    _796.y = mad(_784.z, r1.xyz.z, mad(_784.y, r1.xyz.y, _784.x * r1.xyz.x));
    r4 = _796;
    float3 _805 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _817 = r4;
    _817.z = mad(_805.z, r1.xyz.z, mad(_805.y, r1.xyz.y, _805.x * r1.xyz.x));
    r4 = _817;
    float4 _832 = r1;
    _832.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _832;
    float4 _837 = r1;
    _837.x = rsqrt(r1.x);
    r1 = _837;
    float3 _843 = r1.xxx * r4.xyz;
    r1 = float4(_843.x, _843.y, _843.z, r1.w);
    r4 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _868 = r3;
    _868.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _868;
    float4 _883 = r3;
    _883.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _883;
    float4 _898 = r3;
    _898.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _898;
    float3 _904 = r0.xxx * r3.xyz;
    r2 = float4(_904.x, _904.y, _904.z, r2.w);
    float4 _920 = r0;
    _920.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _920;
    float4 _925 = r0;
    _925.x = rsqrt(r0.x);
    r0 = _925;
    float3 _931 = r0.xxx * r2.xyz;
    r2 = float4(_931.x, _931.y, _931.z, r2.w);
    float3 _941 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _953 = r3;
    _953.x = mad(_941.z, r2.xyz.z, mad(_941.y, r2.xyz.y, _941.x * r2.xyz.x));
    r3 = _953;
    float3 _962 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _974 = r3;
    _974.y = mad(_962.z, r2.xyz.z, mad(_962.y, r2.xyz.y, _962.x * r2.xyz.x));
    r3 = _974;
    float3 _983 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _995 = r3;
    _995.z = mad(_983.z, r2.xyz.z, mad(_983.y, r2.xyz.y, _983.x * r2.xyz.x));
    r3 = _995;
    float4 _1010 = r0;
    _1010.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1010;
    float4 _1015 = r0;
    _1015.x = rsqrt(r0.x);
    r0 = _1015;
    float3 _1021 = r0.xxx * r3.xyz;
    r2 = float4(_1021.x, _1021.y, _1021.z, r2.w);
    float3 _1028 = r1.zxy * r2.yzx;
    r3 = float4(_1028.x, _1028.y, _1028.z, r3.w);
    float3 _1039 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1039.x, _1039.y, _1039.z, r3.w);
    float3 _1046 = r4.www * r3.xyz;
    r3 = float4(_1046.x, _1046.y, _1046.z, r3.w);
    float3 _1056 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1068 = o1;
    _1068.y = mad(_1056.z, r3.xyz.z, mad(_1056.y, r3.xyz.y, _1056.x * r3.xyz.x));
    o1 = _1068;
    float4 _1072 = o2;
    _1072.y = r3.y;
    o2 = _1072;
    float3 _1081 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1093 = o1;
    _1093.z = mad(_1081.z, r1.xyz.z, mad(_1081.y, r1.xyz.y, _1081.x * r1.xyz.x));
    o1 = _1093;
    float4 _1097 = o2;
    _1097.z = r1.y;
    o2 = _1097;
    float3 _1106 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1118 = o1;
    _1118.x = mad(_1106.z, r2.xyz.z, mad(_1106.y, r2.xyz.y, _1106.x * r2.xyz.x));
    o1 = _1118;
    float4 _1122 = o2;
    _1122.x = r2.y;
    o2 = _1122;
    float4 _1131 = r0;
    _1131.x = r0.z * cb0_m[13].x;
    r0 = _1131;
    float4 _1138 = r1;
    _1138.x = r0.x * asfloat(3216550459u);
    r1 = _1138;
    float4 _1143 = r1;
    _1143.x = exp2(r1.x);
    r1 = _1143;
    float4 _1150 = r1;
    _1150.x = (-r1.x) + asfloat(1065353216u);
    r1 = _1150;
    float4 _1157 = r0;
    _1157.x = r1.x / r0.x;
    r0 = _1157;
    float4 _1169 = r1;
    _1169.x = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _1169;
    float4 _1184 = r0;
    _1184.y = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1184;
    float4 _1189 = r0;
    _1189.y = sqrt(r0.y);
    r0 = _1189;
    float4 _1197 = r0;
    _1197.y = r0.y * cb0_m[13].y;
    r0 = _1197;
    float4 _1207 = r0;
    _1207.x = (asuint(r1.x) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1207;
    float4 _1219 = r0;
    _1219.x = (r0.x * r0.y) + (-cb0_m[13].w);
    r0 = _1219;
    float4 _1225 = r0;
    _1225.x = exp2(-r0.x);
    r0 = _1225;
    float4 _1231 = r0;
    _1231.x = min(r0.x, asfloat(1065353216u));
    r0 = _1231;
    float4 _1238 = o2;
    _1238.w = (-r0.x) + asfloat(1065353216u);
    o2 = _1238;
    float2 _1245 = float2(asint(shader_in[2].xy));
    r0 = float4(_1245.x, _1245.y, r0.z, r0.w);
    float2 _1256 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_1256.x, _1256.y, r0.z, r0.w);
    float2 _1265 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _1265.x, _1265.y);
    float2 _1272 = float2(asint(shader_in[1].xy));
    r0 = float4(_1272.x, _1272.y, r0.z, r0.w);
    float2 _1278 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_1278.x, _1278.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1287 = asfloat(v1);
    shader_in[1] = float4(_1287.x, _1287.y, shader_in[1].z, shader_in[1].w);
    float2 _1292 = asfloat(v2);
    shader_in[2] = float4(_1292.x, _1292.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = asfloat(v8);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
