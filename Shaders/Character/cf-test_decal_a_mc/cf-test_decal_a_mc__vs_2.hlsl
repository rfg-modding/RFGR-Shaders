cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
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
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _71 = r0;
    _71.x = shader_in[4].y + shader_in[4].x;
    r0 = _71;
    float4 _79 = r0;
    _79.x = r0.x + shader_in[4].z;
    r0 = _79;
    float4 _87 = r0;
    _87.x = r0.x + shader_in[4].w;
    r0 = _87;
    float4 _94 = r0;
    _94.x = asfloat(1065353216u) / r0.x;
    r0 = _94;
    float3 _109 = (shader_in[2].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_109.x, _109.y, _109.z, r1.w);
    float4 _114 = r1;
    _114.w = asfloat(1065353216u);
    r1 = _114;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _131 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_131].x, cb4_m[_131].y, cb4_m[_131].z, cb4_m[_131].w);
    int _153 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_153].x, cb4_m[_153].y, cb4_m[_153].z, cb4_m[_153].w)) + r3;
    int _172 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_172].x, cb4_m[_172].y, cb4_m[_172].z, cb4_m[_172].w)) + r3;
    int _191 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_191].x, cb4_m[_191].y, cb4_m[_191].z, cb4_m[_191].w)) + r3;
    float4 _220 = r4;
    _220.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _220;
    int _229 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_229].x, cb4_m[_229].y, cb4_m[_229].z, cb4_m[_229].w);
    int _248 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_248].x, cb4_m[_248].y, cb4_m[_248].z, cb4_m[_248].w)) + r5;
    int _268 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_268].x, cb4_m[_268].y, cb4_m[_268].z, cb4_m[_268].w)) + r5;
    int _288 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_288].x, cb4_m[_288].y, cb4_m[_288].z, cb4_m[_288].w)) + r5;
    float4 _316 = r4;
    _316.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _316;
    int _324 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_324].x, cb4_m[_324].y, cb4_m[_324].z, cb4_m[_324].w);
    int _343 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_343].x, cb4_m[_343].y, cb4_m[_343].z, cb4_m[_343].w)) + r6;
    int _363 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_363].x, cb4_m[_363].y, cb4_m[_363].z, cb4_m[_363].w)) + r6;
    int _383 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_383].x, cb4_m[_383].y, cb4_m[_383].z, cb4_m[_383].w)) + r6;
    float4 _411 = r4;
    _411.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _411;
    float3 _417 = r0.xxx * r4.xyz;
    r1 = float4(_417.x, _417.y, _417.z, r1.w);
    float4 _421 = r1;
    _421.w = asfloat(1065353216u);
    r1 = _421;
    float4 _432 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _446 = r4;
    _446.x = mad(_432.w, r1.w, mad(_432.z, r1.z, mad(_432.y, r1.y, _432.x * r1.x)));
    r4 = _446;
    float4 _457 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _471 = r4;
    _471.y = mad(_457.w, r1.w, mad(_457.z, r1.z, mad(_457.y, r1.y, _457.x * r1.x)));
    r4 = _471;
    float4 _482 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _496 = r4;
    _496.z = mad(_482.w, r1.w, mad(_482.z, r1.z, mad(_482.y, r1.y, _482.x * r1.x)));
    r4 = _496;
    float4 _499 = r4;
    _499.w = asfloat(1065353216u);
    r4 = _499;
    float4 _510 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _524 = o0;
    _524.x = mad(_510.w, r4.w, mad(_510.z, r4.z, mad(_510.y, r4.y, _510.x * r4.x)));
    o0 = _524;
    float4 _535 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _549 = o0;
    _549.y = mad(_535.w, r4.w, mad(_535.z, r4.z, mad(_535.y, r4.y, _535.x * r4.x)));
    o0 = _549;
    float4 _560 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _574 = o0;
    _574.z = mad(_560.w, r4.w, mad(_560.z, r4.z, mad(_560.y, r4.y, _560.x * r4.x)));
    o0 = _574;
    float4 _586 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _600 = o0;
    _600.w = mad(_586.w, r4.w, mad(_586.z, r4.z, mad(_586.y, r4.y, _586.x * r4.x)));
    o0 = _600;
    float4 _604 = r0;
    _604.y = asfloat(3212836864u);
    r0 = _604;
    float3 _618 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_618.x, _618.y, _618.z, r1.w);
    float3 _630 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _640 = r0;
    _640.z = mad(r1.xyz.z, _630.z, mad(r1.xyz.y, _630.y, r1.xyz.x * _630.x));
    r0 = _640;
    float4 _648 = r0;
    _648.z = r0.z * cb5_m[5].y;
    r0 = _648;
    float4 _655 = r4;
    _655.y = r0.z * r0.y;
    r4 = _655;
    float3 _666 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _676 = r6;
    _676.x = mad(r1.xyz.z, _666.z, mad(r1.xyz.y, _666.y, r1.xyz.x * _666.x));
    r6 = _676;
    float3 _687 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _697 = r6;
    _697.z = mad(r1.xyz.z, _687.z, mad(r1.xyz.y, _687.y, r1.xyz.x * _687.x));
    r6 = _697;
    float2 _707 = r6.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r4 = float4(_707.x, r4.y, _707.y, r4.w);
    o1 = r4.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _719 = o3;
    _719.w = r4.z;
    o3 = _719;
    float3 _730 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _730.x, _730.y, _730.z);
    float3 _744 = r0.zwy * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_744.x, _744.y, _744.z, r1.w);
    float3 _762 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r0.wyz) + (-r1.xyz);
    r1 = float4(_762.x, _762.y, _762.z, r1.w);
    float4 _778 = r1;
    _778.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _778;
    float4 _783 = r1;
    _783.w = rsqrt(r1.w);
    r1 = _783;
    float3 _789 = r1.www * r1.xyz;
    r1 = float4(_789.x, _789.y, _789.z, r1.w);
    float3 _796 = r0.wyz * r1.yzx;
    r4 = float4(_796.x, _796.y, _796.z, r4.w);
    float3 _807 = (r0.zwy * r1.zxy) + (-r4.xyz);
    r4 = float4(_807.x, _807.y, _807.z, r4.w);
    float3 _817 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _829 = o3;
    _829.y = mad(_817.z, r1.xyz.z, mad(_817.y, r1.xyz.y, _817.x * r1.xyz.x));
    o3 = _829;
    float4 _844 = r1;
    _844.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _844;
    float4 _849 = r1;
    _849.x = rsqrt(r1.x);
    r1 = _849;
    float3 _855 = r1.xxx * r4.xyz;
    r1 = float4(_855.x, _855.y, _855.z, r1.w);
    float4 _871 = r4;
    _871.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _871;
    float4 _886 = r4;
    _886.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _886;
    float4 _901 = r4;
    _901.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _901;
    float3 _910 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _922 = o3;
    _922.x = mad(_910.z, r1.xyz.z, mad(_910.y, r1.xyz.y, _910.x * r1.xyz.x));
    o3 = _922;
    float3 _928 = r0.xxx * r4.xyz;
    r1 = float4(_928.x, _928.y, _928.z, r1.w);
    float4 _944 = r1;
    _944.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _944;
    float4 _949 = r1;
    _949.w = rsqrt(r1.w);
    r1 = _949;
    float3 _955 = r1.www * r1.xyz;
    r1 = float4(_955.x, _955.y, _955.z, r1.w);
    float3 _965 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _977 = r4;
    _977.x = mad(_965.z, r1.xyz.z, mad(_965.y, r1.xyz.y, _965.x * r1.xyz.x));
    r4 = _977;
    float3 _986 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _998 = r4;
    _998.y = mad(_986.z, r1.xyz.z, mad(_986.y, r1.xyz.y, _986.x * r1.xyz.x));
    r4 = _998;
    float3 _1007 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1019 = r4;
    _1019.z = mad(_1007.z, r1.xyz.z, mad(_1007.y, r1.xyz.y, _1007.x * r1.xyz.x));
    r4 = _1019;
    float4 _1034 = r1;
    _1034.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _1034;
    float4 _1039 = r1;
    _1039.x = rsqrt(r1.x);
    r1 = _1039;
    float3 _1045 = r1.xxx * r4.xyz;
    r1 = float4(_1045.x, _1045.y, _1045.z, r1.w);
    float3 _1054 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_1054.x, _1054.y, _1054.z, r4.w);
    float3 _1063 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r4 = float4(_1063.x, _1063.y, _1063.z, r4.w);
    float3 _1073 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1085 = o3;
    _1085.z = mad(_1073.z, r0.yzw.z, mad(_1073.y, r0.yzw.y, _1073.x * r0.yzw.x));
    o3 = _1085;
    float4 _1100 = r0;
    _1100.y = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1100;
    float4 _1105 = r0;
    _1105.y = rsqrt(r0.y);
    r0 = _1105;
    float3 _1111 = r0.yyy * r4.xyz;
    r0 = float4(r0.x, _1111.x, _1111.y, _1111.z);
    float4 _1127 = r3;
    _1127.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r3 = _1127;
    float4 _1142 = r3;
    _1142.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r3 = _1142;
    float4 _1157 = r3;
    _1157.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r3 = _1157;
    float3 _1163 = r0.xxx * r3.xyz;
    r0 = float4(_1163.x, _1163.y, _1163.z, r0.w);
    float4 _1179 = r0;
    _1179.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _1179;
    float4 _1184 = r0;
    _1184.w = rsqrt(r0.w);
    r0 = _1184;
    float3 _1190 = r0.www * r0.xyz;
    r0 = float4(_1190.x, _1190.y, _1190.z, r0.w);
    float3 _1200 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1212 = r2;
    _1212.x = mad(_1200.z, r0.xyz.z, mad(_1200.y, r0.xyz.y, _1200.x * r0.xyz.x));
    r2 = _1212;
    float3 _1221 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1233 = r2;
    _1233.y = mad(_1221.z, r0.xyz.z, mad(_1221.y, r0.xyz.y, _1221.x * r0.xyz.x));
    r2 = _1233;
    float3 _1242 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1254 = r2;
    _1254.z = mad(_1242.z, r0.xyz.z, mad(_1242.y, r0.xyz.y, _1242.x * r0.xyz.x));
    r2 = _1254;
    float4 _1269 = r0;
    _1269.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1269;
    float4 _1274 = r0;
    _1274.x = rsqrt(r0.x);
    r0 = _1274;
    float3 _1280 = r0.xxx * r2.xyz;
    r0 = float4(_1280.x, _1280.y, _1280.z, r0.w);
    float3 _1287 = r1.yzx * r0.zxy;
    r2 = float4(_1287.x, _1287.y, _1287.z, r2.w);
    float3 _1298 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_1298.x, _1298.y, _1298.z, r2.w);
    float3 _1308 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1320 = o2;
    _1320.x = mad(_1308.z, r1.xyz.z, mad(_1308.y, r1.xyz.y, _1308.x * r1.xyz.x));
    o2 = _1320;
    float3 _1329 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1341 = o2;
    _1341.z = mad(_1329.z, r0.xyz.z, mad(_1329.y, r0.xyz.y, _1329.x * r0.xyz.x));
    o2 = _1341;
    float3 _1350 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1353 = -r2.xyz;
    float3 _1363 = o2;
    _1363.y = mad(_1350.z, _1353.z, mad(_1350.y, _1353.y, _1350.x * _1353.x));
    o2 = _1363;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
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
