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
    float4 cb2_m[6] : packoffset(c0);
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
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
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
    float4 _74 = r0;
    _74.x = shader_in[5].y + shader_in[5].x;
    r0 = _74;
    float4 _82 = r0;
    _82.x = r0.x + shader_in[5].z;
    r0 = _82;
    float4 _90 = r0;
    _90.x = r0.x + shader_in[5].w;
    r0 = _90;
    float4 _97 = r0;
    _97.x = asfloat(1065353216u) / r0.x;
    r0 = _97;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _107 = r1;
    _107.w = asfloat(1065353216u);
    r1 = _107;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _124 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_124].x, cb4_m[_124].y, cb4_m[_124].z, cb4_m[_124].w);
    int _146 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_146].x, cb4_m[_146].y, cb4_m[_146].z, cb4_m[_146].w)) + r3;
    int _165 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_165].x, cb4_m[_165].y, cb4_m[_165].z, cb4_m[_165].w)) + r3;
    int _184 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_184].x, cb4_m[_184].y, cb4_m[_184].z, cb4_m[_184].w)) + r3;
    float4 _213 = r4;
    _213.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _213;
    int _222 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_222].x, cb4_m[_222].y, cb4_m[_222].z, cb4_m[_222].w);
    int _241 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_241].x, cb4_m[_241].y, cb4_m[_241].z, cb4_m[_241].w)) + r5;
    int _261 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_261].x, cb4_m[_261].y, cb4_m[_261].z, cb4_m[_261].w)) + r5;
    int _281 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_281].x, cb4_m[_281].y, cb4_m[_281].z, cb4_m[_281].w)) + r5;
    float4 _309 = r4;
    _309.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _309;
    int _318 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_318].x, cb4_m[_318].y, cb4_m[_318].z, cb4_m[_318].w);
    int _337 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_337].x, cb4_m[_337].y, cb4_m[_337].z, cb4_m[_337].w)) + r6;
    int _357 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_357].x, cb4_m[_357].y, cb4_m[_357].z, cb4_m[_357].w)) + r6;
    int _377 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_377].x, cb4_m[_377].y, cb4_m[_377].z, cb4_m[_377].w)) + r6;
    float4 _405 = r4;
    _405.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _405;
    float3 _411 = r0.xxx * r4.xyz;
    r1 = float4(_411.x, _411.y, _411.z, r1.w);
    float4 _415 = r1;
    _415.w = asfloat(1065353216u);
    r1 = _415;
    float4 _426 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _440 = r4;
    _440.x = mad(_426.w, r1.w, mad(_426.z, r1.z, mad(_426.y, r1.y, _426.x * r1.x)));
    r4 = _440;
    float4 _451 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _465 = r4;
    _465.y = mad(_451.w, r1.w, mad(_451.z, r1.z, mad(_451.y, r1.y, _451.x * r1.x)));
    r4 = _465;
    float4 _476 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _490 = r4;
    _490.z = mad(_476.w, r1.w, mad(_476.z, r1.z, mad(_476.y, r1.y, _476.x * r1.x)));
    r4 = _490;
    float4 _493 = r4;
    _493.w = asfloat(1065353216u);
    r4 = _493;
    float4 _504 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _518 = o0;
    _518.x = mad(_504.w, r4.w, mad(_504.z, r4.z, mad(_504.y, r4.y, _504.x * r4.x)));
    o0 = _518;
    float4 _529 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _543 = o0;
    _543.y = mad(_529.w, r4.w, mad(_529.z, r4.z, mad(_529.y, r4.y, _529.x * r4.x)));
    o0 = _543;
    float4 _554 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _568 = o0;
    _568.z = mad(_554.w, r4.w, mad(_554.z, r4.z, mad(_554.y, r4.y, _554.x * r4.x)));
    o0 = _568;
    float4 _580 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _594 = o0;
    _594.w = mad(_580.w, r4.w, mad(_580.z, r4.z, mad(_580.y, r4.y, _580.x * r4.x)));
    o0 = _594;
    float2 _600 = float2(asint(shader_in[2].xy));
    r0 = float4(r0.x, _600.x, _600.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _621 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _621.x, _621.y, _621.z);
    float4 _637 = r1;
    _637.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _637;
    float4 _652 = r1;
    _652.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _652;
    float4 _667 = r1;
    _667.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _667;
    float3 _673 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _673.x, _673.y, _673.z);
    float4 _689 = r1;
    _689.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _689;
    float4 _694 = r1;
    _694.x = rsqrt(r1.x);
    r1 = _694;
    float3 _700 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _700.x, _700.y, _700.z);
    float3 _710 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _722 = r1;
    _722.x = mad(_710.z, r0.yzw.z, mad(_710.y, r0.yzw.y, _710.x * r0.yzw.x));
    r1 = _722;
    float3 _731 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _743 = r1;
    _743.y = mad(_731.z, r0.yzw.z, mad(_731.y, r0.yzw.y, _731.x * r0.yzw.x));
    r1 = _743;
    float3 _752 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _764 = r1;
    _764.z = mad(_752.z, r0.yzw.z, mad(_752.y, r0.yzw.y, _752.x * r0.yzw.x));
    r1 = _764;
    float4 _779 = r0;
    _779.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _779;
    float4 _784 = r0;
    _784.y = rsqrt(r0.y);
    r0 = _784;
    float3 _790 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _790.x, _790.y, _790.z);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _815 = r3;
    _815.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _815;
    float4 _830 = r3;
    _830.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _830;
    float4 _845 = r3;
    _845.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _845;
    float3 _851 = r0.xxx * r3.xyz;
    r1 = float4(_851.x, _851.y, _851.z, r1.w);
    float4 _867 = r0;
    _867.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _867;
    float4 _872 = r0;
    _872.x = rsqrt(r0.x);
    r0 = _872;
    float3 _878 = r0.xxx * r1.xyz;
    r1 = float4(_878.x, _878.y, _878.z, r1.w);
    float3 _888 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _900 = r2;
    _900.x = mad(_888.z, r1.xyz.z, mad(_888.y, r1.xyz.y, _888.x * r1.xyz.x));
    r2 = _900;
    float3 _909 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _921 = r2;
    _921.y = mad(_909.z, r1.xyz.z, mad(_909.y, r1.xyz.y, _909.x * r1.xyz.x));
    r2 = _921;
    float3 _930 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _942 = r2;
    _942.z = mad(_930.z, r1.xyz.z, mad(_930.y, r1.xyz.y, _930.x * r1.xyz.x));
    r2 = _942;
    float4 _957 = r0;
    _957.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _957;
    float4 _962 = r0;
    _962.x = rsqrt(r0.x);
    r0 = _962;
    float3 _968 = r0.xxx * r2.xyz;
    r1 = float4(_968.x, _968.y, _968.z, r1.w);
    float3 _975 = r0.wyz * r1.yzx;
    r2 = float4(_975.x, _975.y, _975.z, r2.w);
    float3 _986 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_986.x, _986.y, _986.z, r2.w);
    float3 _993 = r1.www * r2.xyz;
    r2 = float4(_993.x, _993.y, _993.z, r2.w);
    float3 _1007 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_1007.x, _1007.y, _1007.z, r3.w);
    float3 _1023 = o2;
    _1023.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o2 = _1023;
    float3 _1038 = o2;
    _1038.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o2 = _1038;
    float3 _1053 = o2;
    _1053.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o2 = _1053;
    float3 _1067 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r3 = float4(_1067.x, _1067.y, _1067.z, r3.w);
    float3 _1081 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1081.x, _1081.y, _1081.z, r4.w);
    float4 _1097 = r0;
    _1097.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1097;
    float4 _1102 = r0;
    _1102.x = rsqrt(r0.x);
    r0 = _1102;
    float3 _1108 = r0.xxx * r3.xyz;
    r3 = float4(_1108.x, _1108.y, _1108.z, r3.w);
    float3 _1124 = o3;
    _1124.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o3 = _1124;
    float3 _1133 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1145 = o4;
    _1145.x = mad(_1133.z, r1.xyz.z, mad(_1133.y, r1.xyz.y, _1133.x * r1.xyz.x));
    o4 = _1145;
    float3 _1160 = o3;
    _1160.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o3 = _1160;
    float3 _1169 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1181 = o4;
    _1181.z = mad(_1169.z, r0.yzw.z, mad(_1169.y, r0.yzw.y, _1169.x * r0.yzw.x));
    o4 = _1181;
    float3 _1196 = o3;
    _1196.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o3 = _1196;
    float3 _1205 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1217 = o4;
    _1217.y = mad(_1205.z, r2.xyz.z, mad(_1205.y, r2.xyz.y, _1205.x * r2.xyz.x));
    o4 = _1217;
    float4 _1226 = r0;
    _1226.x = r4.y * cb0_m[13].x;
    r0 = _1226;
    float4 _1233 = r0;
    _1233.y = r0.x * asfloat(3216550459u);
    r0 = _1233;
    float4 _1238 = r0;
    _1238.y = exp2(r0.y);
    r0 = _1238;
    float4 _1245 = r0;
    _1245.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1245;
    float4 _1252 = r0;
    _1252.x = r0.y / r0.x;
    r0 = _1252;
    float4 _1264 = r0;
    _1264.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1264;
    float4 _1279 = r0;
    _1279.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1279;
    float4 _1284 = r0;
    _1284.z = sqrt(r0.z);
    r0 = _1284;
    float4 _1292 = r0;
    _1292.z = r0.z * cb0_m[13].y;
    r0 = _1292;
    float4 _1302 = r0;
    _1302.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1302;
    float4 _1314 = r0;
    _1314.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1314;
    float4 _1320 = r0;
    _1320.x = exp2(-r0.x);
    r0 = _1320;
    float4 _1326 = r0;
    _1326.x = min(r0.x, asfloat(1065353216u));
    r0 = _1326;
    float4 _1333 = o4;
    _1333.w = (-r0.x) + asfloat(1065353216u);
    o4 = _1333;
    float2 _1339 = float2(asint(shader_in[1].xy));
    r0 = float4(_1339.x, _1339.y, r0.z, r0.w);
    float2 _1350 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r0 = float4(_1350.x, _1350.y, r0.z, r0.w);
    float2 _1356 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_1356.x, _1356.y, r0.z, r0.w);
    float2 _1367 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(o5.x, o5.y, _1367.x, _1367.y);
    o5 = float4(r0.xy.x, r0.xy.y, o5.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1380 = asfloat(v1);
    shader_in[1] = float4(_1380.x, _1380.y, shader_in[1].z, shader_in[1].w);
    float2 _1385 = asfloat(v2);
    shader_in[2] = float4(_1385.x, _1385.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = asfloat(v6);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
