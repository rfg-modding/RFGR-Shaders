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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
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
static float3 o1;
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
    float4 _67 = r0;
    _67.x = shader_in[5].y + shader_in[5].x;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[5].z;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[5].w;
    r0 = _83;
    float4 _90 = r0;
    _90.x = asfloat(1065353216u) / r0.x;
    r0 = _90;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _100 = r1;
    _100.w = asfloat(1065353216u);
    r1 = _100;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _117 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_117].x, cb4_m[_117].y, cb4_m[_117].z, cb4_m[_117].w);
    int _139 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_139].x, cb4_m[_139].y, cb4_m[_139].z, cb4_m[_139].w)) + r3;
    int _158 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_158].x, cb4_m[_158].y, cb4_m[_158].z, cb4_m[_158].w)) + r3;
    int _177 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_177].x, cb4_m[_177].y, cb4_m[_177].z, cb4_m[_177].w)) + r3;
    float4 _206 = r4;
    _206.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _206;
    int _215 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_215].x, cb4_m[_215].y, cb4_m[_215].z, cb4_m[_215].w);
    int _234 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_234].x, cb4_m[_234].y, cb4_m[_234].z, cb4_m[_234].w)) + r5;
    int _254 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_254].x, cb4_m[_254].y, cb4_m[_254].z, cb4_m[_254].w)) + r5;
    int _274 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_274].x, cb4_m[_274].y, cb4_m[_274].z, cb4_m[_274].w)) + r5;
    float4 _302 = r4;
    _302.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _302;
    int _311 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_311].x, cb4_m[_311].y, cb4_m[_311].z, cb4_m[_311].w);
    int _330 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_330].x, cb4_m[_330].y, cb4_m[_330].z, cb4_m[_330].w)) + r6;
    int _350 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_350].x, cb4_m[_350].y, cb4_m[_350].z, cb4_m[_350].w)) + r6;
    int _370 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_370].x, cb4_m[_370].y, cb4_m[_370].z, cb4_m[_370].w)) + r6;
    float4 _398 = r4;
    _398.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _398;
    float3 _404 = r0.xxx * r4.xyz;
    r1 = float4(_404.x, _404.y, _404.z, r1.w);
    float4 _408 = r1;
    _408.w = asfloat(1065353216u);
    r1 = _408;
    float4 _419 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _433 = r4;
    _433.x = mad(_419.w, r1.w, mad(_419.z, r1.z, mad(_419.y, r1.y, _419.x * r1.x)));
    r4 = _433;
    float4 _444 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _458 = r4;
    _458.y = mad(_444.w, r1.w, mad(_444.z, r1.z, mad(_444.y, r1.y, _444.x * r1.x)));
    r4 = _458;
    float4 _469 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _483 = r4;
    _483.z = mad(_469.w, r1.w, mad(_469.z, r1.z, mad(_469.y, r1.y, _469.x * r1.x)));
    r4 = _483;
    float4 _486 = r4;
    _486.w = asfloat(1065353216u);
    r4 = _486;
    float4 _497 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _511 = o0;
    _511.x = mad(_497.w, r4.w, mad(_497.z, r4.z, mad(_497.y, r4.y, _497.x * r4.x)));
    o0 = _511;
    float4 _522 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _536 = o0;
    _536.y = mad(_522.w, r4.w, mad(_522.z, r4.z, mad(_522.y, r4.y, _522.x * r4.x)));
    o0 = _536;
    float4 _547 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _561 = o0;
    _561.z = mad(_547.w, r4.w, mad(_547.z, r4.z, mad(_547.y, r4.y, _547.x * r4.x)));
    o0 = _561;
    float4 _573 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _587 = o0;
    _587.w = mad(_573.w, r4.w, mad(_573.z, r4.z, mad(_573.y, r4.y, _573.x * r4.x)));
    o0 = _587;
    float3 _600 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _600.x, _600.y, _600.z);
    float4 _616 = r1;
    _616.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _616;
    float4 _631 = r1;
    _631.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _631;
    float4 _646 = r1;
    _646.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _646;
    float3 _652 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _652.x, _652.y, _652.z);
    float4 _668 = r1;
    _668.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _668;
    float4 _673 = r1;
    _673.x = rsqrt(r1.x);
    r1 = _673;
    float3 _679 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _679.x, _679.y, _679.z);
    float3 _689 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _701 = r1;
    _701.x = mad(_689.z, r0.yzw.z, mad(_689.y, r0.yzw.y, _689.x * r0.yzw.x));
    r1 = _701;
    float3 _710 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _722 = r1;
    _722.y = mad(_710.z, r0.yzw.z, mad(_710.y, r0.yzw.y, _710.x * r0.yzw.x));
    r1 = _722;
    float3 _731 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _743 = r1;
    _743.z = mad(_731.z, r0.yzw.z, mad(_731.y, r0.yzw.y, _731.x * r0.yzw.x));
    r1 = _743;
    float4 _758 = r0;
    _758.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _758;
    float4 _763 = r0;
    _763.y = rsqrt(r0.y);
    r0 = _763;
    float3 _769 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _769.x, _769.y, _769.z);
    r1 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _793 = r3;
    _793.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _793;
    float4 _808 = r3;
    _808.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _808;
    float4 _823 = r3;
    _823.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _823;
    float3 _829 = r0.xxx * r3.xyz;
    r1 = float4(_829.x, _829.y, _829.z, r1.w);
    float4 _845 = r0;
    _845.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _845;
    float4 _850 = r0;
    _850.x = rsqrt(r0.x);
    r0 = _850;
    float3 _856 = r0.xxx * r1.xyz;
    r1 = float4(_856.x, _856.y, _856.z, r1.w);
    float3 _866 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _878 = r2;
    _878.x = mad(_866.z, r1.xyz.z, mad(_866.y, r1.xyz.y, _866.x * r1.xyz.x));
    r2 = _878;
    float3 _887 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _899 = r2;
    _899.y = mad(_887.z, r1.xyz.z, mad(_887.y, r1.xyz.y, _887.x * r1.xyz.x));
    r2 = _899;
    float3 _908 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _920 = r2;
    _920.z = mad(_908.z, r1.xyz.z, mad(_908.y, r1.xyz.y, _908.x * r1.xyz.x));
    r2 = _920;
    float4 _935 = r0;
    _935.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _935;
    float4 _940 = r0;
    _940.x = rsqrt(r0.x);
    r0 = _940;
    float3 _946 = r0.xxx * r2.xyz;
    r1 = float4(_946.x, _946.y, _946.z, r1.w);
    float3 _953 = r0.wyz * r1.yzx;
    r2 = float4(_953.x, _953.y, _953.z, r2.w);
    float3 _964 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_964.x, _964.y, _964.z, r2.w);
    float3 _971 = r1.www * r2.xyz;
    r2 = float4(_971.x, _971.y, _971.z, r2.w);
    float3 _986 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r3 = float4(_986.x, _986.y, _986.z, r3.w);
    float4 _1002 = r0;
    _1002.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1002;
    float4 _1007 = r0;
    _1007.x = rsqrt(r0.x);
    r0 = _1007;
    float3 _1013 = r0.xxx * r3.xyz;
    r3 = float4(_1013.x, _1013.y, _1013.z, r3.w);
    float3 _1029 = o1;
    _1029.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o1 = _1029;
    float3 _1044 = o1;
    _1044.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o1 = _1044;
    float4 _1059 = r0;
    _1059.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r0 = _1059;
    float3 _1063 = o1;
    _1063.z = r0.x;
    o1 = _1063;
    float4 _1070 = r0;
    _1070.x = r0.x + r0.x;
    r0 = _1070;
    float3 _1080 = (r0.yzw * (-r0.xxx)) + r3.xyz;
    r3 = float4(_1080.x, _1080.y, _1080.z, r3.w);
    o3 = r3.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u));
    float3 _1099 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_1099.x, _1099.y, _1099.z, r3.w);
    float3 _1113 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1113.x, _1113.y, _1113.z, r4.w);
    float3 _1129 = o2;
    _1129.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o2 = _1129;
    float3 _1138 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1150 = o4;
    _1150.x = mad(_1138.z, r1.xyz.z, mad(_1138.y, r1.xyz.y, _1138.x * r1.xyz.x));
    o4 = _1150;
    float3 _1165 = o2;
    _1165.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o2 = _1165;
    float3 _1174 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1186 = o4;
    _1186.z = mad(_1174.z, r0.yzw.z, mad(_1174.y, r0.yzw.y, _1174.x * r0.yzw.x));
    o4 = _1186;
    float3 _1201 = o2;
    _1201.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o2 = _1201;
    float3 _1210 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1222 = o4;
    _1222.y = mad(_1210.z, r2.xyz.z, mad(_1210.y, r2.xyz.y, _1210.x * r2.xyz.x));
    o4 = _1222;
    float4 _1231 = r0;
    _1231.x = r4.y * cb0_m[13].x;
    r0 = _1231;
    float4 _1238 = r0;
    _1238.y = r0.x * asfloat(3216550459u);
    r0 = _1238;
    float4 _1243 = r0;
    _1243.y = exp2(r0.y);
    r0 = _1243;
    float4 _1250 = r0;
    _1250.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1250;
    float4 _1257 = r0;
    _1257.x = r0.y / r0.x;
    r0 = _1257;
    float4 _1269 = r0;
    _1269.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1269;
    float4 _1284 = r0;
    _1284.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1284;
    float4 _1289 = r0;
    _1289.z = sqrt(r0.z);
    r0 = _1289;
    float4 _1297 = r0;
    _1297.z = r0.z * cb0_m[13].y;
    r0 = _1297;
    float4 _1307 = r0;
    _1307.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1307;
    float4 _1319 = r0;
    _1319.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1319;
    float4 _1325 = r0;
    _1325.x = exp2(-r0.x);
    r0 = _1325;
    float4 _1331 = r0;
    _1331.x = min(r0.x, asfloat(1065353216u));
    r0 = _1331;
    float4 _1338 = o4;
    _1338.w = (-r0.x) + asfloat(1065353216u);
    o4 = _1338;
    float2 _1345 = float2(asint(shader_in[1].xy));
    r0 = float4(_1345.x, _1345.y, r0.z, r0.w);
    float2 _1354 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_1354.x, _1354.y, o5.z, o5.w);
    float2 _1362 = float2(asint(shader_in[4].xy));
    r0 = float4(_1362.x, _1362.y, r0.z, r0.w);
    float2 _1368 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _1368.x, _1368.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1377 = asfloat(v1);
    shader_in[1] = float4(_1377.x, _1377.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _1388 = asfloat(v4);
    shader_in[4] = float4(_1388.x, _1388.y, shader_in[4].z, shader_in[4].w);
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
