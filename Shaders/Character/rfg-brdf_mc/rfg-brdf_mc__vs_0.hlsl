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
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _74 = r0;
    _74.x = shader_in[6].y + shader_in[6].x;
    r0 = _74;
    float4 _82 = r0;
    _82.x = r0.x + shader_in[6].z;
    r0 = _82;
    float4 _90 = r0;
    _90.x = r0.x + shader_in[6].w;
    r0 = _90;
    float4 _97 = r0;
    _97.x = asfloat(1065353216u) / r0.x;
    r0 = _97;
    float3 _112 = (shader_in[4].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_112.x, _112.y, _112.z, r1.w);
    float4 _117 = r1;
    _117.w = asfloat(1065353216u);
    r1 = _117;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _134 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_134].x, cb4_m[_134].y, cb4_m[_134].z, cb4_m[_134].w);
    int _156 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_156].x, cb4_m[_156].y, cb4_m[_156].z, cb4_m[_156].w)) + r3;
    int _175 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_175].x, cb4_m[_175].y, cb4_m[_175].z, cb4_m[_175].w)) + r3;
    int _194 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_194].x, cb4_m[_194].y, cb4_m[_194].z, cb4_m[_194].w)) + r3;
    float4 _223 = r4;
    _223.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _223;
    int _232 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_232].x, cb4_m[_232].y, cb4_m[_232].z, cb4_m[_232].w);
    int _251 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_251].x, cb4_m[_251].y, cb4_m[_251].z, cb4_m[_251].w)) + r5;
    int _271 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_271].x, cb4_m[_271].y, cb4_m[_271].z, cb4_m[_271].w)) + r5;
    int _291 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_291].x, cb4_m[_291].y, cb4_m[_291].z, cb4_m[_291].w)) + r5;
    float4 _319 = r4;
    _319.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _319;
    int _328 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_328].x, cb4_m[_328].y, cb4_m[_328].z, cb4_m[_328].w);
    int _347 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_347].x, cb4_m[_347].y, cb4_m[_347].z, cb4_m[_347].w)) + r6;
    int _367 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_367].x, cb4_m[_367].y, cb4_m[_367].z, cb4_m[_367].w)) + r6;
    int _387 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_387].x, cb4_m[_387].y, cb4_m[_387].z, cb4_m[_387].w)) + r6;
    float4 _415 = r4;
    _415.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _415;
    float3 _421 = r0.xxx * r4.xyz;
    r1 = float4(_421.x, _421.y, _421.z, r1.w);
    float4 _425 = r1;
    _425.w = asfloat(1065353216u);
    r1 = _425;
    float4 _436 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _450 = r4;
    _450.x = mad(_436.w, r1.w, mad(_436.z, r1.z, mad(_436.y, r1.y, _436.x * r1.x)));
    r4 = _450;
    float4 _461 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _475 = r4;
    _475.y = mad(_461.w, r1.w, mad(_461.z, r1.z, mad(_461.y, r1.y, _461.x * r1.x)));
    r4 = _475;
    float4 _486 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _500 = r4;
    _500.z = mad(_486.w, r1.w, mad(_486.z, r1.z, mad(_486.y, r1.y, _486.x * r1.x)));
    r4 = _500;
    float4 _503 = r4;
    _503.w = asfloat(1065353216u);
    r4 = _503;
    float4 _514 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _528 = o0;
    _528.x = mad(_514.w, r4.w, mad(_514.z, r4.z, mad(_514.y, r4.y, _514.x * r4.x)));
    o0 = _528;
    float4 _539 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _553 = o0;
    _553.y = mad(_539.w, r4.w, mad(_539.z, r4.z, mad(_539.y, r4.y, _539.x * r4.x)));
    o0 = _553;
    float4 _564 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _578 = o0;
    _578.z = mad(_564.w, r4.w, mad(_564.z, r4.z, mad(_564.y, r4.y, _564.x * r4.x)));
    o0 = _578;
    float4 _590 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _604 = o0;
    _604.w = mad(_590.w, r4.w, mad(_590.z, r4.z, mad(_590.y, r4.y, _590.x * r4.x)));
    o0 = _604;
    float2 _610 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _610.x, _610.y, r0.w);
    float2 _621 = r0.yz * float2(cb2_m[7].x, cb2_m[7].y);
    r0 = float4(r0.x, _621.x, _621.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _641 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _641.x, _641.y, _641.z);
    float3 _651 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_651.x, _651.y, _651.z, r1.w);
    float3 _660 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _660.x, _660.y, _660.z);
    float4 _676 = r1;
    _676.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _676;
    float4 _681 = r1;
    _681.x = rsqrt(r1.x);
    r1 = _681;
    float3 _687 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _687.x, _687.y, _687.z);
    float4 _703 = r1;
    _703.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _703;
    float4 _718 = r1;
    _718.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _718;
    float4 _733 = r1;
    _733.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _733;
    float3 _739 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _739.x, _739.y, _739.z);
    float4 _755 = r1;
    _755.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _755;
    float4 _760 = r1;
    _760.x = rsqrt(r1.x);
    r1 = _760;
    float3 _766 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _766.x, _766.y, _766.z);
    float3 _776 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _788 = r1;
    _788.x = mad(_776.z, r0.yzw.z, mad(_776.y, r0.yzw.y, _776.x * r0.yzw.x));
    r1 = _788;
    float3 _797 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _809 = r1;
    _809.y = mad(_797.z, r0.yzw.z, mad(_797.y, r0.yzw.y, _797.x * r0.yzw.x));
    r1 = _809;
    float3 _818 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _830 = r1;
    _830.z = mad(_818.z, r0.yzw.z, mad(_818.y, r0.yzw.y, _818.x * r0.yzw.x));
    r1 = _830;
    float4 _845 = r0;
    _845.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _845;
    float4 _850 = r0;
    _850.y = rsqrt(r0.y);
    r0 = _850;
    float3 _856 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _856.x, _856.y, _856.z);
    r1 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _880 = r3;
    _880.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _880;
    float4 _895 = r3;
    _895.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _895;
    float4 _910 = r3;
    _910.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _910;
    float3 _916 = r0.xxx * r3.xyz;
    r1 = float4(_916.x, _916.y, _916.z, r1.w);
    float4 _932 = r0;
    _932.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _932;
    float4 _937 = r0;
    _937.x = rsqrt(r0.x);
    r0 = _937;
    float3 _943 = r0.xxx * r1.xyz;
    r1 = float4(_943.x, _943.y, _943.z, r1.w);
    float3 _953 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _965 = r2;
    _965.x = mad(_953.z, r1.xyz.z, mad(_953.y, r1.xyz.y, _953.x * r1.xyz.x));
    r2 = _965;
    float3 _974 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _986 = r2;
    _986.y = mad(_974.z, r1.xyz.z, mad(_974.y, r1.xyz.y, _974.x * r1.xyz.x));
    r2 = _986;
    float3 _995 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1007 = r2;
    _1007.z = mad(_995.z, r1.xyz.z, mad(_995.y, r1.xyz.y, _995.x * r1.xyz.x));
    r2 = _1007;
    float4 _1022 = r0;
    _1022.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1022;
    float4 _1027 = r0;
    _1027.x = rsqrt(r0.x);
    r0 = _1027;
    float3 _1033 = r0.xxx * r2.xyz;
    r1 = float4(_1033.x, _1033.y, _1033.z, r1.w);
    float3 _1040 = r0.wyz * r1.yzx;
    r2 = float4(_1040.x, _1040.y, _1040.z, r2.w);
    float3 _1051 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1051.x, _1051.y, _1051.z, r2.w);
    float3 _1058 = r1.www * r2.xyz;
    r2 = float4(_1058.x, _1058.y, _1058.z, r2.w);
    float3 _1068 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1080 = o2;
    _1080.y = mad(_1068.z, r2.xyz.z, mad(_1068.y, r2.xyz.y, _1068.x * r2.xyz.x));
    o2 = _1080;
    float3 _1089 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1101 = o2;
    _1101.z = mad(_1089.z, r0.yzw.z, mad(_1089.y, r0.yzw.y, _1089.x * r0.yzw.x));
    o2 = _1101;
    float3 _1110 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1122 = o2;
    _1122.x = mad(_1110.z, r1.xyz.z, mad(_1110.y, r1.xyz.y, _1110.x * r1.xyz.x));
    o2 = _1122;
    float3 _1136 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r3 = float4(_1136.x, _1136.y, _1136.z, r3.w);
    float3 _1150 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1150.x, _1150.y, _1150.z, r4.w);
    float4 _1166 = r0;
    _1166.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1166;
    float4 _1171 = r0;
    _1171.x = rsqrt(r0.x);
    r0 = _1171;
    float3 _1177 = r0.xxx * r3.xyz;
    r3 = float4(_1177.x, _1177.y, _1177.z, r3.w);
    float3 _1193 = o3;
    _1193.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o3 = _1193;
    float4 _1197 = o4;
    _1197.z = r0.z;
    o4 = _1197;
    float3 _1212 = o3;
    _1212.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o3 = _1212;
    float4 _1216 = o4;
    _1216.x = r1.y;
    o4 = _1216;
    float3 _1231 = o3;
    _1231.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o3 = _1231;
    float4 _1235 = o4;
    _1235.y = r2.y;
    o4 = _1235;
    float4 _1244 = r0;
    _1244.x = r4.y * cb0_m[13].x;
    r0 = _1244;
    float4 _1251 = r0;
    _1251.y = r0.x * asfloat(3216550459u);
    r0 = _1251;
    float4 _1256 = r0;
    _1256.y = exp2(r0.y);
    r0 = _1256;
    float4 _1263 = r0;
    _1263.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1263;
    float4 _1270 = r0;
    _1270.x = r0.y / r0.x;
    r0 = _1270;
    float4 _1282 = r0;
    _1282.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1282;
    float4 _1297 = r0;
    _1297.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1297;
    float4 _1302 = r0;
    _1302.z = sqrt(r0.z);
    r0 = _1302;
    float4 _1310 = r0;
    _1310.z = r0.z * cb0_m[13].y;
    r0 = _1310;
    float4 _1320 = r0;
    _1320.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1320;
    float4 _1332 = r0;
    _1332.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1332;
    float4 _1338 = r0;
    _1338.x = exp2(-r0.x);
    r0 = _1338;
    float4 _1344 = r0;
    _1344.x = min(r0.x, asfloat(1065353216u));
    r0 = _1344;
    float4 _1351 = o4;
    _1351.w = (-r0.x) + asfloat(1065353216u);
    o4 = _1351;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1359 = asfloat(v1);
    shader_in[1] = float4(_1359.x, _1359.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = asfloat(v7);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
