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
static float4 o2;
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
    float4 _67 = r0;
    _67.x = shader_in[2].y + shader_in[2].x;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[2].z;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[2].w;
    r0 = _83;
    float4 _90 = r0;
    _90.x = asfloat(1065353216u) / r0.x;
    r0 = _90;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _100 = r1;
    _100.w = asfloat(1065353216u);
    r1 = _100;
    r2 = asfloat(asint(shader_in[3]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _117 = asint(r2.y);
    r3 = shader_in[2].yyyy * float4(cb4_m[_117].x, cb4_m[_117].y, cb4_m[_117].z, cb4_m[_117].w);
    int _139 = asint(r2.x);
    r3 = (shader_in[2].xxxx * float4(cb4_m[_139].x, cb4_m[_139].y, cb4_m[_139].z, cb4_m[_139].w)) + r3;
    int _158 = asint(r2.z);
    r3 = (shader_in[2].zzzz * float4(cb4_m[_158].x, cb4_m[_158].y, cb4_m[_158].z, cb4_m[_158].w)) + r3;
    int _177 = asint(r2.w);
    r3 = (shader_in[2].wwww * float4(cb4_m[_177].x, cb4_m[_177].y, cb4_m[_177].z, cb4_m[_177].w)) + r3;
    float4 _206 = r4;
    _206.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _206;
    int _215 = asint(r2.y) + 1;
    r5 = shader_in[2].yyyy * float4(cb4_m[_215].x, cb4_m[_215].y, cb4_m[_215].z, cb4_m[_215].w);
    int _234 = asint(r2.x) + 1;
    r5 = (shader_in[2].xxxx * float4(cb4_m[_234].x, cb4_m[_234].y, cb4_m[_234].z, cb4_m[_234].w)) + r5;
    int _254 = asint(r2.z) + 1;
    r5 = (shader_in[2].zzzz * float4(cb4_m[_254].x, cb4_m[_254].y, cb4_m[_254].z, cb4_m[_254].w)) + r5;
    int _274 = asint(r2.w) + 1;
    r5 = (shader_in[2].wwww * float4(cb4_m[_274].x, cb4_m[_274].y, cb4_m[_274].z, cb4_m[_274].w)) + r5;
    float4 _302 = r4;
    _302.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _302;
    int _310 = asint(r2.y) + 2;
    r6 = shader_in[2].yyyy * float4(cb4_m[_310].x, cb4_m[_310].y, cb4_m[_310].z, cb4_m[_310].w);
    int _329 = asint(r2.x) + 2;
    r6 = (shader_in[2].xxxx * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w)) + r6;
    int _349 = asint(r2.z) + 2;
    r6 = (shader_in[2].zzzz * float4(cb4_m[_349].x, cb4_m[_349].y, cb4_m[_349].z, cb4_m[_349].w)) + r6;
    int _369 = asint(r2.w) + 2;
    r2 = (shader_in[2].wwww * float4(cb4_m[_369].x, cb4_m[_369].y, cb4_m[_369].z, cb4_m[_369].w)) + r6;
    float4 _397 = r4;
    _397.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _397;
    float3 _403 = r0.xxx * r4.xyz;
    r1 = float4(_403.x, _403.y, _403.z, r1.w);
    float4 _407 = r1;
    _407.w = asfloat(1065353216u);
    r1 = _407;
    float4 _418 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _432 = r4;
    _432.x = mad(_418.w, r1.w, mad(_418.z, r1.z, mad(_418.y, r1.y, _418.x * r1.x)));
    r4 = _432;
    float4 _443 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _457 = r4;
    _457.y = mad(_443.w, r1.w, mad(_443.z, r1.z, mad(_443.y, r1.y, _443.x * r1.x)));
    r4 = _457;
    float4 _468 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _482 = r4;
    _482.z = mad(_468.w, r1.w, mad(_468.z, r1.z, mad(_468.y, r1.y, _468.x * r1.x)));
    r4 = _482;
    float4 _485 = r4;
    _485.w = asfloat(1065353216u);
    r4 = _485;
    float4 _496 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _510 = o0;
    _510.x = mad(_496.w, r4.w, mad(_496.z, r4.z, mad(_496.y, r4.y, _496.x * r4.x)));
    o0 = _510;
    float4 _521 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _535 = o0;
    _535.y = mad(_521.w, r4.w, mad(_521.z, r4.z, mad(_521.y, r4.y, _521.x * r4.x)));
    o0 = _535;
    float4 _546 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _560 = o0;
    _560.z = mad(_546.w, r4.w, mad(_546.z, r4.z, mad(_546.y, r4.y, _546.x * r4.x)));
    o0 = _560;
    float4 _571 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _585 = o0;
    _585.w = mad(_571.w, r4.w, mad(_571.z, r4.z, mad(_571.y, r4.y, _571.x * r4.x)));
    o0 = _585;
    float4 _601 = r1;
    _601.x = mad(r3.xyz.z, shader_in[1].xyz.z, mad(r3.xyz.y, shader_in[1].xyz.y, r3.xyz.x * shader_in[1].xyz.x));
    r1 = _601;
    float4 _617 = r1;
    _617.y = mad(r5.xyz.z, shader_in[1].xyz.z, mad(r5.xyz.y, shader_in[1].xyz.y, r5.xyz.x * shader_in[1].xyz.x));
    r1 = _617;
    float4 _633 = r1;
    _633.z = mad(r2.xyz.z, shader_in[1].xyz.z, mad(r2.xyz.y, shader_in[1].xyz.y, r2.xyz.x * shader_in[1].xyz.x));
    r1 = _633;
    float3 _639 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _639.x, _639.y, _639.z);
    float4 _655 = r1;
    _655.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _655;
    float4 _660 = r1;
    _660.x = rsqrt(r1.x);
    r1 = _660;
    float3 _666 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _666.x, _666.y, _666.z);
    float3 _676 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _688 = r1;
    _688.x = mad(_676.z, r0.yzw.z, mad(_676.y, r0.yzw.y, _676.x * r0.yzw.x));
    r1 = _688;
    float3 _697 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _709 = r1;
    _709.y = mad(_697.z, r0.yzw.z, mad(_697.y, r0.yzw.y, _697.x * r0.yzw.x));
    r1 = _709;
    float3 _718 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _730 = r1;
    _730.z = mad(_718.z, r0.yzw.z, mad(_718.y, r0.yzw.y, _718.x * r0.yzw.x));
    r1 = _730;
    float4 _745 = r0;
    _745.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _745;
    float4 _750 = r0;
    _750.y = rsqrt(r0.y);
    r0 = _750;
    float3 _756 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _756.x, _756.y, _756.z);
    float3 _771 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_771.x, _771.y, _771.z, r1.w);
    float3 _790 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_790.x, _790.y, _790.z, r1.w);
    float4 _806 = r1;
    _806.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _806;
    float4 _811 = r1;
    _811.w = rsqrt(r1.w);
    r1 = _811;
    float3 _817 = r1.www * r1.xyz;
    r1 = float4(_817.x, _817.y, _817.z, r1.w);
    float3 _825 = r1.yzx * shader_in[1].zxy;
    r4 = float4(_825.x, _825.y, _825.z, r4.w);
    float3 _837 = (shader_in[1].yzx * r1.zxy) + (-r4.xyz);
    r4 = float4(_837.x, _837.y, _837.z, r4.w);
    float3 _847 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _859 = o2;
    _859.y = mad(_847.z, r1.xyz.z, mad(_847.y, r1.xyz.y, _847.x * r1.xyz.x));
    o2 = _859;
    float4 _874 = r1;
    _874.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _874;
    float4 _879 = r1;
    _879.x = rsqrt(r1.x);
    r1 = _879;
    float3 _885 = r1.xxx * r4.xyz;
    r1 = float4(_885.x, _885.y, _885.z, r1.w);
    float4 _901 = r3;
    _901.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _901;
    float4 _916 = r3;
    _916.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _916;
    float4 _931 = r3;
    _931.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _931;
    float3 _940 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _952 = o2;
    _952.x = mad(_940.z, r1.xyz.z, mad(_940.y, r1.xyz.y, _940.x * r1.xyz.x));
    o2 = _952;
    float3 _958 = r0.xxx * r3.xyz;
    r1 = float4(_958.x, _958.y, _958.z, r1.w);
    float4 _974 = r0;
    _974.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _974;
    float4 _979 = r0;
    _979.x = rsqrt(r0.x);
    r0 = _979;
    float3 _985 = r0.xxx * r1.xyz;
    r1 = float4(_985.x, _985.y, _985.z, r1.w);
    float3 _995 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1007 = r2;
    _1007.x = mad(_995.z, r1.xyz.z, mad(_995.y, r1.xyz.y, _995.x * r1.xyz.x));
    r2 = _1007;
    float3 _1016 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1028 = r2;
    _1028.y = mad(_1016.z, r1.xyz.z, mad(_1016.y, r1.xyz.y, _1016.x * r1.xyz.x));
    r2 = _1028;
    float3 _1037 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1049 = r2;
    _1049.z = mad(_1037.z, r1.xyz.z, mad(_1037.y, r1.xyz.y, _1037.x * r1.xyz.x));
    r2 = _1049;
    float4 _1064 = r0;
    _1064.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1064;
    float4 _1069 = r0;
    _1069.x = rsqrt(r0.x);
    r0 = _1069;
    float3 _1075 = r0.xxx * r2.xyz;
    r1 = float4(_1075.x, _1075.y, _1075.z, r1.w);
    float3 _1082 = r0.wyz * r1.yzx;
    r2 = float4(_1082.x, _1082.y, _1082.z, r2.w);
    float3 _1093 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1093.x, _1093.y, _1093.z, r2.w);
    float3 _1103 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1115 = o1;
    _1115.z = mad(_1103.z, r0.yzw.z, mad(_1103.y, r0.yzw.y, _1103.x * r0.yzw.x));
    o1 = _1115;
    float3 _1124 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1136 = o1;
    _1136.x = mad(_1124.z, r1.xyz.z, mad(_1124.y, r1.xyz.y, _1124.x * r1.xyz.x));
    o1 = _1136;
    float3 _1145 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1148 = -r2.xyz;
    float3 _1158 = o1;
    _1158.y = mad(_1145.z, _1148.z, mad(_1145.y, _1148.y, _1145.x * _1148.x));
    o1 = _1158;
    float3 _1167 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1180 = o2;
    _1180.z = mad(_1167.z, shader_in[1].xyz.z, mad(_1167.y, shader_in[1].xyz.y, _1167.x * shader_in[1].xyz.x));
    o2 = _1180;
    float3 _1194 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_1194.x, _1194.y, _1194.z, r0.w);
    float3 _1206 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _1216 = r1;
    _1216.x = mad(r0.xyz.z, _1206.z, mad(r0.xyz.y, _1206.y, r0.xyz.x * _1206.x));
    r1 = _1216;
    float3 _1227 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1237 = r1;
    _1237.z = mad(r0.xyz.z, _1227.z, mad(r0.xyz.y, _1227.y, r0.xyz.x * _1227.x));
    r1 = _1237;
    float3 _1248 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _1258 = r0;
    _1258.x = mad(r0.xyz.z, _1248.z, mad(r0.xyz.y, _1248.y, r0.xyz.x * _1248.x));
    r0 = _1258;
    float4 _1267 = r0;
    _1267.x = r0.x * cb5_m[5].y;
    r0 = _1267;
    float2 _1278 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_1278.x, r1.y, _1278.y, r1.w);
    float4 _1283 = o2;
    _1283.w = r1.z;
    o2 = _1283;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _1309 = r0;
    _1309.y = asfloat(3212836864u);
    r0 = _1309;
    float4 _1316 = r1;
    _1316.y = r0.x * r0.y;
    r1 = _1316;
    float2 _1324 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o5 = float4(_1324.x, _1324.y, o5.z, o5.w);
    float2 _1330 = cb5_m[5].w.xx;
    o5 = float4(o5.x, o5.y, _1330.x, _1330.y);
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
