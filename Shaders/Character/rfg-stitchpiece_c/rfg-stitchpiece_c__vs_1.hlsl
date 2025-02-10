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
static int4 v7;

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
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _107 = r1;
    _107.w = asfloat(1065353216u);
    r1 = _107;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _124 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_124].x, cb4_m[_124].y, cb4_m[_124].z, cb4_m[_124].w);
    int _146 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_146].x, cb4_m[_146].y, cb4_m[_146].z, cb4_m[_146].w)) + r3;
    int _165 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_165].x, cb4_m[_165].y, cb4_m[_165].z, cb4_m[_165].w)) + r3;
    int _184 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_184].x, cb4_m[_184].y, cb4_m[_184].z, cb4_m[_184].w)) + r3;
    float4 _213 = r4;
    _213.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _213;
    int _222 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_222].x, cb4_m[_222].y, cb4_m[_222].z, cb4_m[_222].w);
    int _241 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_241].x, cb4_m[_241].y, cb4_m[_241].z, cb4_m[_241].w)) + r5;
    int _261 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_261].x, cb4_m[_261].y, cb4_m[_261].z, cb4_m[_261].w)) + r5;
    int _281 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_281].x, cb4_m[_281].y, cb4_m[_281].z, cb4_m[_281].w)) + r5;
    float4 _309 = r4;
    _309.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _309;
    int _318 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_318].x, cb4_m[_318].y, cb4_m[_318].z, cb4_m[_318].w);
    int _337 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_337].x, cb4_m[_337].y, cb4_m[_337].z, cb4_m[_337].w)) + r6;
    int _357 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_357].x, cb4_m[_357].y, cb4_m[_357].z, cb4_m[_357].w)) + r6;
    int _377 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_377].x, cb4_m[_377].y, cb4_m[_377].z, cb4_m[_377].w)) + r6;
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
    float2 _611 = r0.yz * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(r0.x, _611.x, _611.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _633 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _633.x, _633.y, _633.z);
    float4 _649 = r1;
    _649.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _649;
    float4 _664 = r1;
    _664.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _664;
    float4 _679 = r1;
    _679.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _679;
    float3 _685 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _685.x, _685.y, _685.z);
    float4 _701 = r1;
    _701.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _701;
    float4 _706 = r1;
    _706.x = rsqrt(r1.x);
    r1 = _706;
    float3 _712 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _712.x, _712.y, _712.z);
    float3 _722 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _734 = r1;
    _734.x = mad(_722.z, r0.yzw.z, mad(_722.y, r0.yzw.y, _722.x * r0.yzw.x));
    r1 = _734;
    float3 _743 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _755 = r1;
    _755.y = mad(_743.z, r0.yzw.z, mad(_743.y, r0.yzw.y, _743.x * r0.yzw.x));
    r1 = _755;
    float3 _764 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _776 = r1;
    _776.z = mad(_764.z, r0.yzw.z, mad(_764.y, r0.yzw.y, _764.x * r0.yzw.x));
    r1 = _776;
    float4 _791 = r0;
    _791.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _791;
    float4 _796 = r0;
    _796.y = rsqrt(r0.y);
    r0 = _796;
    float3 _802 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _802.x, _802.y, _802.z);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _827 = r3;
    _827.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _827;
    float4 _842 = r3;
    _842.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _842;
    float4 _857 = r3;
    _857.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _857;
    float3 _863 = r0.xxx * r3.xyz;
    r1 = float4(_863.x, _863.y, _863.z, r1.w);
    float4 _879 = r0;
    _879.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _879;
    float4 _884 = r0;
    _884.x = rsqrt(r0.x);
    r0 = _884;
    float3 _890 = r0.xxx * r1.xyz;
    r1 = float4(_890.x, _890.y, _890.z, r1.w);
    float3 _900 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _912 = r2;
    _912.x = mad(_900.z, r1.xyz.z, mad(_900.y, r1.xyz.y, _900.x * r1.xyz.x));
    r2 = _912;
    float3 _921 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _933 = r2;
    _933.y = mad(_921.z, r1.xyz.z, mad(_921.y, r1.xyz.y, _921.x * r1.xyz.x));
    r2 = _933;
    float3 _942 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _954 = r2;
    _954.z = mad(_942.z, r1.xyz.z, mad(_942.y, r1.xyz.y, _942.x * r1.xyz.x));
    r2 = _954;
    float4 _969 = r0;
    _969.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _969;
    float4 _974 = r0;
    _974.x = rsqrt(r0.x);
    r0 = _974;
    float3 _980 = r0.xxx * r2.xyz;
    r1 = float4(_980.x, _980.y, _980.z, r1.w);
    float3 _987 = r0.wyz * r1.yzx;
    r2 = float4(_987.x, _987.y, _987.z, r2.w);
    float3 _998 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_998.x, _998.y, _998.z, r2.w);
    float3 _1005 = r1.www * r2.xyz;
    r2 = float4(_1005.x, _1005.y, _1005.z, r2.w);
    float3 _1019 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_1019.x, _1019.y, _1019.z, r3.w);
    float3 _1035 = o2;
    _1035.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o2 = _1035;
    float3 _1050 = o2;
    _1050.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o2 = _1050;
    float3 _1065 = o2;
    _1065.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o2 = _1065;
    float3 _1079 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r3 = float4(_1079.x, _1079.y, _1079.z, r3.w);
    float3 _1093 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1093.x, _1093.y, _1093.z, r4.w);
    float4 _1109 = r0;
    _1109.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1109;
    float4 _1114 = r0;
    _1114.x = rsqrt(r0.x);
    r0 = _1114;
    float3 _1120 = r0.xxx * r3.xyz;
    r3 = float4(_1120.x, _1120.y, _1120.z, r3.w);
    float3 _1136 = o3;
    _1136.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o3 = _1136;
    float3 _1145 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1157 = o4;
    _1157.x = mad(_1145.z, r1.xyz.z, mad(_1145.y, r1.xyz.y, _1145.x * r1.xyz.x));
    o4 = _1157;
    float3 _1172 = o3;
    _1172.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o3 = _1172;
    float3 _1181 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1193 = o4;
    _1193.z = mad(_1181.z, r0.yzw.z, mad(_1181.y, r0.yzw.y, _1181.x * r0.yzw.x));
    o4 = _1193;
    float3 _1208 = o3;
    _1208.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o3 = _1208;
    float3 _1217 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1229 = o4;
    _1229.y = mad(_1217.z, r2.xyz.z, mad(_1217.y, r2.xyz.y, _1217.x * r2.xyz.x));
    o4 = _1229;
    float4 _1238 = r0;
    _1238.x = r4.y * cb0_m[13].x;
    r0 = _1238;
    float4 _1245 = r0;
    _1245.y = r0.x * asfloat(3216550459u);
    r0 = _1245;
    float4 _1250 = r0;
    _1250.y = exp2(r0.y);
    r0 = _1250;
    float4 _1257 = r0;
    _1257.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1257;
    float4 _1264 = r0;
    _1264.x = r0.y / r0.x;
    r0 = _1264;
    float4 _1276 = r0;
    _1276.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1276;
    float4 _1291 = r0;
    _1291.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1291;
    float4 _1296 = r0;
    _1296.z = sqrt(r0.z);
    r0 = _1296;
    float4 _1304 = r0;
    _1304.z = r0.z * cb0_m[13].y;
    r0 = _1304;
    float4 _1314 = r0;
    _1314.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1314;
    float4 _1326 = r0;
    _1326.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1326;
    float4 _1332 = r0;
    _1332.x = exp2(-r0.x);
    r0 = _1332;
    float4 _1338 = r0;
    _1338.x = min(r0.x, asfloat(1065353216u));
    r0 = _1338;
    float4 _1345 = o4;
    _1345.w = (-r0.x) + asfloat(1065353216u);
    o4 = _1345;
    float2 _1351 = float2(asint(shader_in[1].xy));
    r0 = float4(_1351.x, _1351.y, r0.z, r0.w);
    float2 _1357 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_1357.x, _1357.y, o5.z, o5.w);
    float2 _1364 = float2(asint(shader_in[3].xy));
    r0 = float4(_1364.x, _1364.y, r0.z, r0.w);
    float2 _1370 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _1370.x, _1370.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1379 = asfloat(v1);
    shader_in[1] = float4(_1379.x, _1379.y, shader_in[1].z, shader_in[1].w);
    float2 _1384 = asfloat(v2);
    shader_in[2] = float4(_1384.x, _1384.y, shader_in[2].z, shader_in[2].w);
    float2 _1389 = asfloat(v3);
    shader_in[3] = float4(_1389.x, _1389.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
