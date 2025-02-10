cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
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
    float4 cb2_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;
static int4 v9;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
    float4 v9 : TEXCOORD9;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[10];
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
    float4 _76 = r0;
    _76.x = shader_in[8].y + shader_in[8].x;
    r0 = _76;
    float4 _84 = r0;
    _84.x = r0.x + shader_in[8].z;
    r0 = _84;
    float4 _92 = r0;
    _92.x = r0.x + shader_in[8].w;
    r0 = _92;
    float4 _99 = r0;
    _99.x = asfloat(1065353216u) / r0.x;
    r0 = _99;
    float3 _114 = (shader_in[6].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_114.x, _114.y, _114.z, r1.w);
    float4 _119 = r1;
    _119.w = asfloat(1065353216u);
    r1 = _119;
    r2 = asfloat(asint(shader_in[9]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _136 = asint(r2.y);
    r3 = shader_in[8].yyyy * float4(cb4_m[_136].x, cb4_m[_136].y, cb4_m[_136].z, cb4_m[_136].w);
    int _158 = asint(r2.x);
    r3 = (shader_in[8].xxxx * float4(cb4_m[_158].x, cb4_m[_158].y, cb4_m[_158].z, cb4_m[_158].w)) + r3;
    int _177 = asint(r2.z);
    r3 = (shader_in[8].zzzz * float4(cb4_m[_177].x, cb4_m[_177].y, cb4_m[_177].z, cb4_m[_177].w)) + r3;
    int _196 = asint(r2.w);
    r3 = (shader_in[8].wwww * float4(cb4_m[_196].x, cb4_m[_196].y, cb4_m[_196].z, cb4_m[_196].w)) + r3;
    float4 _225 = r4;
    _225.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _225;
    int _234 = asint(r2.y) + 1;
    r5 = shader_in[8].yyyy * float4(cb4_m[_234].x, cb4_m[_234].y, cb4_m[_234].z, cb4_m[_234].w);
    int _253 = asint(r2.x) + 1;
    r5 = (shader_in[8].xxxx * float4(cb4_m[_253].x, cb4_m[_253].y, cb4_m[_253].z, cb4_m[_253].w)) + r5;
    int _273 = asint(r2.z) + 1;
    r5 = (shader_in[8].zzzz * float4(cb4_m[_273].x, cb4_m[_273].y, cb4_m[_273].z, cb4_m[_273].w)) + r5;
    int _293 = asint(r2.w) + 1;
    r5 = (shader_in[8].wwww * float4(cb4_m[_293].x, cb4_m[_293].y, cb4_m[_293].z, cb4_m[_293].w)) + r5;
    float4 _321 = r4;
    _321.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _321;
    int _330 = asint(r2.y) + 2;
    r6 = shader_in[8].yyyy * float4(cb4_m[_330].x, cb4_m[_330].y, cb4_m[_330].z, cb4_m[_330].w);
    int _349 = asint(r2.x) + 2;
    r6 = (shader_in[8].xxxx * float4(cb4_m[_349].x, cb4_m[_349].y, cb4_m[_349].z, cb4_m[_349].w)) + r6;
    int _369 = asint(r2.z) + 2;
    r6 = (shader_in[8].zzzz * float4(cb4_m[_369].x, cb4_m[_369].y, cb4_m[_369].z, cb4_m[_369].w)) + r6;
    int _389 = asint(r2.w) + 2;
    r2 = (shader_in[8].wwww * float4(cb4_m[_389].x, cb4_m[_389].y, cb4_m[_389].z, cb4_m[_389].w)) + r6;
    float4 _417 = r4;
    _417.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _417;
    float3 _423 = r0.xxx * r4.xyz;
    r1 = float4(_423.x, _423.y, _423.z, r1.w);
    float4 _427 = r1;
    _427.w = asfloat(1065353216u);
    r1 = _427;
    float4 _438 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _452 = r4;
    _452.x = mad(_438.w, r1.w, mad(_438.z, r1.z, mad(_438.y, r1.y, _438.x * r1.x)));
    r4 = _452;
    float4 _463 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _477 = r4;
    _477.y = mad(_463.w, r1.w, mad(_463.z, r1.z, mad(_463.y, r1.y, _463.x * r1.x)));
    r4 = _477;
    float4 _488 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _502 = r4;
    _502.z = mad(_488.w, r1.w, mad(_488.z, r1.z, mad(_488.y, r1.y, _488.x * r1.x)));
    r4 = _502;
    float4 _505 = r4;
    _505.w = asfloat(1065353216u);
    r4 = _505;
    float4 _516 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _530 = o0;
    _530.x = mad(_516.w, r4.w, mad(_516.z, r4.z, mad(_516.y, r4.y, _516.x * r4.x)));
    o0 = _530;
    float4 _541 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _555 = o0;
    _555.y = mad(_541.w, r4.w, mad(_541.z, r4.z, mad(_541.y, r4.y, _541.x * r4.x)));
    o0 = _555;
    float4 _566 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _580 = o0;
    _580.z = mad(_566.w, r4.w, mad(_566.z, r4.z, mad(_566.y, r4.y, _566.x * r4.x)));
    o0 = _580;
    float4 _592 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _606 = o0;
    _606.w = mad(_592.w, r4.w, mad(_592.z, r4.z, mad(_592.y, r4.y, _592.x * r4.x)));
    o0 = _606;
    float3 _620 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _620.x, _620.y, _620.z);
    float2 _627 = float2(asint(shader_in[3].xy));
    r1 = float4(_627.x, _627.y, r1.z, r1.w);
    float2 _641 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r1 = float4(r1.x, r1.y, _641.x, _641.y);
    o1 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r1.zw;
    float3 _665 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_665.x, _665.y, _665.z, r1.w);
    float3 _675 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_675.x, _675.y, _675.z, r4.w);
    float3 _684 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_684.x, _684.y, _684.z, r1.w);
    float4 _700 = r1;
    _700.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _700;
    float4 _705 = r1;
    _705.w = rsqrt(r1.w);
    r1 = _705;
    float3 _711 = r1.www * r1.xyz;
    r1 = float4(_711.x, _711.y, _711.z, r1.w);
    float4 _727 = r4;
    _727.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _727;
    float4 _742 = r4;
    _742.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _742;
    float4 _757 = r4;
    _757.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _757;
    float3 _763 = r0.xxx * r4.xyz;
    r1 = float4(_763.x, _763.y, _763.z, r1.w);
    float4 _779 = r1;
    _779.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _779;
    float4 _784 = r1;
    _784.w = rsqrt(r1.w);
    r1 = _784;
    float3 _790 = r1.www * r1.xyz;
    r1 = float4(_790.x, _790.y, _790.z, r1.w);
    float3 _800 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _812 = r4;
    _812.x = mad(_800.z, r1.xyz.z, mad(_800.y, r1.xyz.y, _800.x * r1.xyz.x));
    r4 = _812;
    float3 _821 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _833 = r4;
    _833.y = mad(_821.z, r1.xyz.z, mad(_821.y, r1.xyz.y, _821.x * r1.xyz.x));
    r4 = _833;
    float3 _842 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _854 = r4;
    _854.z = mad(_842.z, r1.xyz.z, mad(_842.y, r1.xyz.y, _842.x * r1.xyz.x));
    r4 = _854;
    float4 _869 = r1;
    _869.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _869;
    float4 _874 = r1;
    _874.x = rsqrt(r1.x);
    r1 = _874;
    float3 _880 = r1.xxx * r4.xyz;
    r1 = float4(_880.x, _880.y, _880.z, r1.w);
    r4 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _905 = r3;
    _905.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _905;
    float4 _920 = r3;
    _920.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _920;
    float4 _935 = r3;
    _935.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _935;
    float3 _941 = r0.xxx * r3.xyz;
    r2 = float4(_941.x, _941.y, _941.z, r2.w);
    float4 _957 = r0;
    _957.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _957;
    float4 _962 = r0;
    _962.x = rsqrt(r0.x);
    r0 = _962;
    float3 _968 = r0.xxx * r2.xyz;
    r2 = float4(_968.x, _968.y, _968.z, r2.w);
    float3 _978 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _990 = r3;
    _990.x = mad(_978.z, r2.xyz.z, mad(_978.y, r2.xyz.y, _978.x * r2.xyz.x));
    r3 = _990;
    float3 _999 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1011 = r3;
    _1011.y = mad(_999.z, r2.xyz.z, mad(_999.y, r2.xyz.y, _999.x * r2.xyz.x));
    r3 = _1011;
    float3 _1020 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1032 = r3;
    _1032.z = mad(_1020.z, r2.xyz.z, mad(_1020.y, r2.xyz.y, _1020.x * r2.xyz.x));
    r3 = _1032;
    float4 _1047 = r0;
    _1047.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1047;
    float4 _1052 = r0;
    _1052.x = rsqrt(r0.x);
    r0 = _1052;
    float3 _1058 = r0.xxx * r3.xyz;
    r2 = float4(_1058.x, _1058.y, _1058.z, r2.w);
    float3 _1065 = r1.zxy * r2.yzx;
    r3 = float4(_1065.x, _1065.y, _1065.z, r3.w);
    float3 _1076 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1076.x, _1076.y, _1076.z, r3.w);
    float3 _1083 = r4.www * r3.xyz;
    r3 = float4(_1083.x, _1083.y, _1083.z, r3.w);
    float3 _1093 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1105 = o2;
    _1105.y = mad(_1093.z, r3.xyz.z, mad(_1093.y, r3.xyz.y, _1093.x * r3.xyz.x));
    o2 = _1105;
    float3 _1114 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1126 = o2;
    _1126.z = mad(_1114.z, r1.xyz.z, mad(_1114.y, r1.xyz.y, _1114.x * r1.xyz.x));
    o2 = _1126;
    float3 _1135 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1147 = o2;
    _1147.x = mad(_1135.z, r2.xyz.z, mad(_1135.y, r2.xyz.y, _1135.x * r2.xyz.x));
    o2 = _1147;
    float4 _1162 = r0;
    _1162.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1162;
    float4 _1167 = r0;
    _1167.x = rsqrt(r0.x);
    r0 = _1167;
    float3 _1173 = r0.xxx * r0.yzw;
    r0 = float4(_1173.x, _1173.y, _1173.z, r0.w);
    float3 _1189 = o3;
    _1189.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1189;
    float3 _1204 = o3;
    _1204.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1204;
    float3 _1219 = o3;
    _1219.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1219;
    float2 _1225 = float2(asint(shader_in[1].xy));
    r0 = float4(_1225.x, _1225.y, r0.z, r0.w);
    float2 _1238 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _1238.x, _1238.y);
    float2 _1247 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o4 = float4(_1247.x, _1247.y, o4.z, o4.w);
    float2 _1254 = float2(asint(shader_in[2].xy));
    r0 = float4(_1254.x, _1254.y, r0.z, r0.w);
    float2 _1267 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(r0.x, r0.y, _1267.x, _1267.y);
    float2 _1276 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    r0 = float4(_1276.x, _1276.y, r0.z, r0.w);
    float4 _1285 = o4;
    _1285.z = r0.x * cb2_m[2].w;
    o4 = _1285;
    float4 _1293 = o4;
    _1293.w = r0.y * cb2_m[3].x;
    o4 = _1293;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1301 = asfloat(v1);
    shader_in[1] = float4(_1301.x, _1301.y, shader_in[1].z, shader_in[1].w);
    float2 _1306 = asfloat(v2);
    shader_in[2] = float4(_1306.x, _1306.y, shader_in[2].z, shader_in[2].w);
    float2 _1311 = asfloat(v3);
    shader_in[3] = float4(_1311.x, _1311.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
    shader_in[9] = asfloat(v9);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
