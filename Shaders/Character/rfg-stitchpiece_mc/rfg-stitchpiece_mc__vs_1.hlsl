cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
    float2 _612 = float2(asint(shader_in[2].xy));
    r0 = float4(r0.x, _612.x, _612.y, r0.w);
    float2 _623 = r0.yz * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(r0.x, _623.x, _623.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _644 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _644.x, _644.y, _644.z);
    float3 _654 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_654.x, _654.y, _654.z, r1.w);
    float3 _663 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _663.x, _663.y, _663.z);
    float4 _679 = r1;
    _679.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _679;
    float4 _684 = r1;
    _684.x = rsqrt(r1.x);
    r1 = _684;
    float3 _690 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _690.x, _690.y, _690.z);
    float4 _706 = r1;
    _706.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _706;
    float4 _721 = r1;
    _721.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _721;
    float4 _736 = r1;
    _736.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _736;
    float3 _742 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _742.x, _742.y, _742.z);
    float4 _758 = r1;
    _758.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _758;
    float4 _763 = r1;
    _763.x = rsqrt(r1.x);
    r1 = _763;
    float3 _769 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _769.x, _769.y, _769.z);
    float3 _779 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _791 = r1;
    _791.x = mad(_779.z, r0.yzw.z, mad(_779.y, r0.yzw.y, _779.x * r0.yzw.x));
    r1 = _791;
    float3 _800 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _812 = r1;
    _812.y = mad(_800.z, r0.yzw.z, mad(_800.y, r0.yzw.y, _800.x * r0.yzw.x));
    r1 = _812;
    float3 _821 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _833 = r1;
    _833.z = mad(_821.z, r0.yzw.z, mad(_821.y, r0.yzw.y, _821.x * r0.yzw.x));
    r1 = _833;
    float4 _848 = r0;
    _848.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _848;
    float4 _853 = r0;
    _853.y = rsqrt(r0.y);
    r0 = _853;
    float3 _859 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _859.x, _859.y, _859.z);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _884 = r3;
    _884.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _884;
    float4 _899 = r3;
    _899.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _899;
    float4 _914 = r3;
    _914.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _914;
    float3 _920 = r0.xxx * r3.xyz;
    r1 = float4(_920.x, _920.y, _920.z, r1.w);
    float4 _936 = r0;
    _936.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _936;
    float4 _941 = r0;
    _941.x = rsqrt(r0.x);
    r0 = _941;
    float3 _947 = r0.xxx * r1.xyz;
    r1 = float4(_947.x, _947.y, _947.z, r1.w);
    float3 _957 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _969 = r2;
    _969.x = mad(_957.z, r1.xyz.z, mad(_957.y, r1.xyz.y, _957.x * r1.xyz.x));
    r2 = _969;
    float3 _978 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _990 = r2;
    _990.y = mad(_978.z, r1.xyz.z, mad(_978.y, r1.xyz.y, _978.x * r1.xyz.x));
    r2 = _990;
    float3 _999 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1011 = r2;
    _1011.z = mad(_999.z, r1.xyz.z, mad(_999.y, r1.xyz.y, _999.x * r1.xyz.x));
    r2 = _1011;
    float4 _1026 = r0;
    _1026.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1026;
    float4 _1031 = r0;
    _1031.x = rsqrt(r0.x);
    r0 = _1031;
    float3 _1037 = r0.xxx * r2.xyz;
    r1 = float4(_1037.x, _1037.y, _1037.z, r1.w);
    float3 _1044 = r0.wyz * r1.yzx;
    r2 = float4(_1044.x, _1044.y, _1044.z, r2.w);
    float3 _1055 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1055.x, _1055.y, _1055.z, r2.w);
    float3 _1062 = r1.www * r2.xyz;
    r2 = float4(_1062.x, _1062.y, _1062.z, r2.w);
    float3 _1076 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_1076.x, _1076.y, _1076.z, r3.w);
    float3 _1092 = o2;
    _1092.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o2 = _1092;
    float3 _1107 = o2;
    _1107.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o2 = _1107;
    float3 _1122 = o2;
    _1122.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
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
    float3 _1202 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1214 = o4;
    _1214.z = mad(_1202.z, r0.yzw.z, mad(_1202.y, r0.yzw.y, _1202.x * r0.yzw.x));
    o4 = _1214;
    float3 _1229 = o3;
    _1229.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o3 = _1229;
    float3 _1238 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1250 = o4;
    _1250.x = mad(_1238.z, r1.xyz.z, mad(_1238.y, r1.xyz.y, _1238.x * r1.xyz.x));
    o4 = _1250;
    float3 _1265 = o3;
    _1265.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o3 = _1265;
    float3 _1274 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1286 = o4;
    _1286.y = mad(_1274.z, r2.xyz.z, mad(_1274.y, r2.xyz.y, _1274.x * r2.xyz.x));
    o4 = _1286;
    float4 _1295 = r0;
    _1295.x = r4.y * cb0_m[13].x;
    r0 = _1295;
    float4 _1302 = r0;
    _1302.y = r0.x * asfloat(3216550459u);
    r0 = _1302;
    float4 _1307 = r0;
    _1307.y = exp2(r0.y);
    r0 = _1307;
    float4 _1314 = r0;
    _1314.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1314;
    float4 _1321 = r0;
    _1321.x = r0.y / r0.x;
    r0 = _1321;
    float4 _1333 = r0;
    _1333.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1333;
    float4 _1348 = r0;
    _1348.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1348;
    float4 _1353 = r0;
    _1353.z = sqrt(r0.z);
    r0 = _1353;
    float4 _1361 = r0;
    _1361.z = r0.z * cb0_m[13].y;
    r0 = _1361;
    float4 _1371 = r0;
    _1371.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1371;
    float4 _1383 = r0;
    _1383.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1383;
    float4 _1389 = r0;
    _1389.x = exp2(-r0.x);
    r0 = _1389;
    float4 _1395 = r0;
    _1395.x = min(r0.x, asfloat(1065353216u));
    r0 = _1395;
    float4 _1402 = o4;
    _1402.w = (-r0.x) + asfloat(1065353216u);
    o4 = _1402;
    float2 _1408 = float2(asint(shader_in[1].xy));
    r0 = float4(_1408.x, _1408.y, r0.z, r0.w);
    float2 _1414 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_1414.x, _1414.y, o5.z, o5.w);
    float2 _1421 = float2(asint(shader_in[3].xy));
    r0 = float4(_1421.x, _1421.y, r0.z, r0.w);
    float2 _1427 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _1427.x, _1427.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1436 = asfloat(v1);
    shader_in[1] = float4(_1436.x, _1436.y, shader_in[1].z, shader_in[1].w);
    float2 _1441 = asfloat(v2);
    shader_in[2] = float4(_1441.x, _1441.y, shader_in[2].z, shader_in[2].w);
    float2 _1446 = asfloat(v3);
    shader_in[3] = float4(_1446.x, _1446.y, shader_in[3].z, shader_in[3].w);
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
