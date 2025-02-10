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

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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
    _67.x = shader_in[6].y + shader_in[6].x;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[6].z;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[6].w;
    r0 = _83;
    float4 _90 = r0;
    _90.x = asfloat(1065353216u) / r0.x;
    r0 = _90;
    float3 _105 = (shader_in[4].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_105.x, _105.y, _105.z, r1.w);
    float4 _110 = r1;
    _110.w = asfloat(1065353216u);
    r1 = _110;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _127 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_127].x, cb4_m[_127].y, cb4_m[_127].z, cb4_m[_127].w);
    int _149 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_149].x, cb4_m[_149].y, cb4_m[_149].z, cb4_m[_149].w)) + r3;
    int _168 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_168].x, cb4_m[_168].y, cb4_m[_168].z, cb4_m[_168].w)) + r3;
    int _187 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_187].x, cb4_m[_187].y, cb4_m[_187].z, cb4_m[_187].w)) + r3;
    float4 _216 = r4;
    _216.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _216;
    int _225 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_225].x, cb4_m[_225].y, cb4_m[_225].z, cb4_m[_225].w);
    int _244 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_244].x, cb4_m[_244].y, cb4_m[_244].z, cb4_m[_244].w)) + r5;
    int _264 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_264].x, cb4_m[_264].y, cb4_m[_264].z, cb4_m[_264].w)) + r5;
    int _284 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_284].x, cb4_m[_284].y, cb4_m[_284].z, cb4_m[_284].w)) + r5;
    float4 _312 = r4;
    _312.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _312;
    int _321 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_321].x, cb4_m[_321].y, cb4_m[_321].z, cb4_m[_321].w);
    int _340 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_340].x, cb4_m[_340].y, cb4_m[_340].z, cb4_m[_340].w)) + r6;
    int _360 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_360].x, cb4_m[_360].y, cb4_m[_360].z, cb4_m[_360].w)) + r6;
    int _380 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_380].x, cb4_m[_380].y, cb4_m[_380].z, cb4_m[_380].w)) + r6;
    float4 _408 = r4;
    _408.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _408;
    float3 _414 = r0.xxx * r4.xyz;
    r1 = float4(_414.x, _414.y, _414.z, r1.w);
    float4 _418 = r1;
    _418.w = asfloat(1065353216u);
    r1 = _418;
    float4 _429 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _443 = r4;
    _443.x = mad(_429.w, r1.w, mad(_429.z, r1.z, mad(_429.y, r1.y, _429.x * r1.x)));
    r4 = _443;
    float4 _454 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _468 = r4;
    _468.y = mad(_454.w, r1.w, mad(_454.z, r1.z, mad(_454.y, r1.y, _454.x * r1.x)));
    r4 = _468;
    float4 _479 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _493 = r4;
    _493.z = mad(_479.w, r1.w, mad(_479.z, r1.z, mad(_479.y, r1.y, _479.x * r1.x)));
    r4 = _493;
    float4 _496 = r4;
    _496.w = asfloat(1065353216u);
    r4 = _496;
    float4 _507 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _521 = o0;
    _521.x = mad(_507.w, r4.w, mad(_507.z, r4.z, mad(_507.y, r4.y, _507.x * r4.x)));
    o0 = _521;
    float4 _532 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _546 = o0;
    _546.y = mad(_532.w, r4.w, mad(_532.z, r4.z, mad(_532.y, r4.y, _532.x * r4.x)));
    o0 = _546;
    float4 _557 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _571 = o0;
    _571.z = mad(_557.w, r4.w, mad(_557.z, r4.z, mad(_557.y, r4.y, _557.x * r4.x)));
    o0 = _571;
    float4 _583 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _597 = o0;
    _597.w = mad(_583.w, r4.w, mad(_583.z, r4.z, mad(_583.y, r4.y, _583.x * r4.x)));
    o0 = _597;
    float2 _603 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _603.x, _603.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _623 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _623.x, _623.y, _623.z);
    float3 _633 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_633.x, _633.y, _633.z, r1.w);
    float3 _642 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _642.x, _642.y, _642.z);
    float4 _658 = r1;
    _658.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _658;
    float4 _663 = r1;
    _663.x = rsqrt(r1.x);
    r1 = _663;
    float3 _669 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _669.x, _669.y, _669.z);
    float4 _685 = r1;
    _685.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _685;
    float4 _700 = r1;
    _700.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _700;
    float4 _715 = r1;
    _715.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _715;
    float3 _721 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _721.x, _721.y, _721.z);
    float4 _737 = r1;
    _737.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _737;
    float4 _742 = r1;
    _742.x = rsqrt(r1.x);
    r1 = _742;
    float3 _748 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _748.x, _748.y, _748.z);
    float3 _758 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _770 = r1;
    _770.x = mad(_758.z, r0.yzw.z, mad(_758.y, r0.yzw.y, _758.x * r0.yzw.x));
    r1 = _770;
    float3 _779 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _791 = r1;
    _791.y = mad(_779.z, r0.yzw.z, mad(_779.y, r0.yzw.y, _779.x * r0.yzw.x));
    r1 = _791;
    float3 _800 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _812 = r1;
    _812.z = mad(_800.z, r0.yzw.z, mad(_800.y, r0.yzw.y, _800.x * r0.yzw.x));
    r1 = _812;
    float4 _827 = r0;
    _827.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _827;
    float4 _832 = r0;
    _832.y = rsqrt(r0.y);
    r0 = _832;
    float3 _838 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _838.x, _838.y, _838.z);
    r1 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _862 = r3;
    _862.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _862;
    float4 _877 = r3;
    _877.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _877;
    float4 _892 = r3;
    _892.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _892;
    float3 _898 = r0.xxx * r3.xyz;
    r1 = float4(_898.x, _898.y, _898.z, r1.w);
    float4 _914 = r0;
    _914.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _914;
    float4 _919 = r0;
    _919.x = rsqrt(r0.x);
    r0 = _919;
    float3 _925 = r0.xxx * r1.xyz;
    r1 = float4(_925.x, _925.y, _925.z, r1.w);
    float3 _935 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _947 = r2;
    _947.x = mad(_935.z, r1.xyz.z, mad(_935.y, r1.xyz.y, _935.x * r1.xyz.x));
    r2 = _947;
    float3 _956 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _968 = r2;
    _968.y = mad(_956.z, r1.xyz.z, mad(_956.y, r1.xyz.y, _956.x * r1.xyz.x));
    r2 = _968;
    float3 _977 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _989 = r2;
    _989.z = mad(_977.z, r1.xyz.z, mad(_977.y, r1.xyz.y, _977.x * r1.xyz.x));
    r2 = _989;
    float4 _1004 = r0;
    _1004.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1004;
    float4 _1009 = r0;
    _1009.x = rsqrt(r0.x);
    r0 = _1009;
    float3 _1015 = r0.xxx * r2.xyz;
    r1 = float4(_1015.x, _1015.y, _1015.z, r1.w);
    float3 _1022 = r0.wyz * r1.yzx;
    r2 = float4(_1022.x, _1022.y, _1022.z, r2.w);
    float3 _1033 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1033.x, _1033.y, _1033.z, r2.w);
    float3 _1043 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1055 = o2;
    _1055.z = mad(_1043.z, r0.yzw.z, mad(_1043.y, r0.yzw.y, _1043.x * r0.yzw.x));
    o2 = _1055;
    float3 _1064 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1076 = o2;
    _1076.x = mad(_1064.z, r1.xyz.z, mad(_1064.y, r1.xyz.y, _1064.x * r1.xyz.x));
    o2 = _1076;
    float3 _1082 = r1.www * r2.xyz;
    r0 = float4(_1082.x, _1082.y, _1082.z, r0.w);
    float3 _1092 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1104 = o2;
    _1104.y = mad(_1092.z, r0.xyz.z, mad(_1092.y, r0.xyz.y, _1092.x * r0.xyz.x));
    o2 = _1104;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1112 = asfloat(v1);
    shader_in[1] = float4(_1112.x, _1112.y, shader_in[1].z, shader_in[1].w);
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
