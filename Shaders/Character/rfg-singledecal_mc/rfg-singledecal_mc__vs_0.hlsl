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
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
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
static float3 o1;
static float3 o2;
static float4 o3;
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
    float4 _72 = r0;
    _72.x = shader_in[8].y + shader_in[8].x;
    r0 = _72;
    float4 _80 = r0;
    _80.x = r0.x + shader_in[8].z;
    r0 = _80;
    float4 _88 = r0;
    _88.x = r0.x + shader_in[8].w;
    r0 = _88;
    float4 _95 = r0;
    _95.x = asfloat(1065353216u) / r0.x;
    r0 = _95;
    float3 _110 = (shader_in[6].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_110.x, _110.y, _110.z, r1.w);
    float4 _115 = r1;
    _115.w = asfloat(1065353216u);
    r1 = _115;
    r2 = asfloat(asint(shader_in[9]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _132 = asint(r2.y);
    r3 = shader_in[8].yyyy * float4(cb4_m[_132].x, cb4_m[_132].y, cb4_m[_132].z, cb4_m[_132].w);
    int _154 = asint(r2.x);
    r3 = (shader_in[8].xxxx * float4(cb4_m[_154].x, cb4_m[_154].y, cb4_m[_154].z, cb4_m[_154].w)) + r3;
    int _173 = asint(r2.z);
    r3 = (shader_in[8].zzzz * float4(cb4_m[_173].x, cb4_m[_173].y, cb4_m[_173].z, cb4_m[_173].w)) + r3;
    int _192 = asint(r2.w);
    r3 = (shader_in[8].wwww * float4(cb4_m[_192].x, cb4_m[_192].y, cb4_m[_192].z, cb4_m[_192].w)) + r3;
    float4 _221 = r4;
    _221.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _221;
    int _230 = asint(r2.y) + 1;
    r5 = shader_in[8].yyyy * float4(cb4_m[_230].x, cb4_m[_230].y, cb4_m[_230].z, cb4_m[_230].w);
    int _249 = asint(r2.x) + 1;
    r5 = (shader_in[8].xxxx * float4(cb4_m[_249].x, cb4_m[_249].y, cb4_m[_249].z, cb4_m[_249].w)) + r5;
    int _269 = asint(r2.z) + 1;
    r5 = (shader_in[8].zzzz * float4(cb4_m[_269].x, cb4_m[_269].y, cb4_m[_269].z, cb4_m[_269].w)) + r5;
    int _289 = asint(r2.w) + 1;
    r5 = (shader_in[8].wwww * float4(cb4_m[_289].x, cb4_m[_289].y, cb4_m[_289].z, cb4_m[_289].w)) + r5;
    float4 _317 = r4;
    _317.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _317;
    int _326 = asint(r2.y) + 2;
    r6 = shader_in[8].yyyy * float4(cb4_m[_326].x, cb4_m[_326].y, cb4_m[_326].z, cb4_m[_326].w);
    int _345 = asint(r2.x) + 2;
    r6 = (shader_in[8].xxxx * float4(cb4_m[_345].x, cb4_m[_345].y, cb4_m[_345].z, cb4_m[_345].w)) + r6;
    int _365 = asint(r2.z) + 2;
    r6 = (shader_in[8].zzzz * float4(cb4_m[_365].x, cb4_m[_365].y, cb4_m[_365].z, cb4_m[_365].w)) + r6;
    int _385 = asint(r2.w) + 2;
    r2 = (shader_in[8].wwww * float4(cb4_m[_385].x, cb4_m[_385].y, cb4_m[_385].z, cb4_m[_385].w)) + r6;
    float4 _413 = r4;
    _413.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _413;
    float3 _419 = r0.xxx * r4.xyz;
    r1 = float4(_419.x, _419.y, _419.z, r1.w);
    float4 _423 = r1;
    _423.w = asfloat(1065353216u);
    r1 = _423;
    float4 _434 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _448 = r4;
    _448.x = mad(_434.w, r1.w, mad(_434.z, r1.z, mad(_434.y, r1.y, _434.x * r1.x)));
    r4 = _448;
    float4 _459 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _473 = r4;
    _473.y = mad(_459.w, r1.w, mad(_459.z, r1.z, mad(_459.y, r1.y, _459.x * r1.x)));
    r4 = _473;
    float4 _484 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _498 = r4;
    _498.z = mad(_484.w, r1.w, mad(_484.z, r1.z, mad(_484.y, r1.y, _484.x * r1.x)));
    r4 = _498;
    float4 _501 = r4;
    _501.w = asfloat(1065353216u);
    r4 = _501;
    float4 _512 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _526 = o0;
    _526.x = mad(_512.w, r4.w, mad(_512.z, r4.z, mad(_512.y, r4.y, _512.x * r4.x)));
    o0 = _526;
    float4 _537 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _551 = o0;
    _551.y = mad(_537.w, r4.w, mad(_537.z, r4.z, mad(_537.y, r4.y, _537.x * r4.x)));
    o0 = _551;
    float4 _562 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _576 = o0;
    _576.z = mad(_562.w, r4.w, mad(_562.z, r4.z, mad(_562.y, r4.y, _562.x * r4.x)));
    o0 = _576;
    float4 _588 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _602 = o0;
    _602.w = mad(_588.w, r4.w, mad(_588.z, r4.z, mad(_588.y, r4.y, _588.x * r4.x)));
    o0 = _602;
    float3 _615 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _615.x, _615.y, _615.z);
    float3 _625 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_625.x, _625.y, _625.z, r1.w);
    float3 _634 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _634.x, _634.y, _634.z);
    float4 _650 = r1;
    _650.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _650;
    float4 _655 = r1;
    _655.x = rsqrt(r1.x);
    r1 = _655;
    float3 _661 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _661.x, _661.y, _661.z);
    float4 _677 = r1;
    _677.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _677;
    float4 _692 = r1;
    _692.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _692;
    float4 _707 = r1;
    _707.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _707;
    float3 _713 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _713.x, _713.y, _713.z);
    float4 _729 = r1;
    _729.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _729;
    float4 _734 = r1;
    _734.x = rsqrt(r1.x);
    r1 = _734;
    float3 _740 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _740.x, _740.y, _740.z);
    float3 _750 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _762 = r1;
    _762.x = mad(_750.z, r0.yzw.z, mad(_750.y, r0.yzw.y, _750.x * r0.yzw.x));
    r1 = _762;
    float3 _771 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _783 = r1;
    _783.y = mad(_771.z, r0.yzw.z, mad(_771.y, r0.yzw.y, _771.x * r0.yzw.x));
    r1 = _783;
    float3 _792 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _804 = r1;
    _804.z = mad(_792.z, r0.yzw.z, mad(_792.y, r0.yzw.y, _792.x * r0.yzw.x));
    r1 = _804;
    float4 _819 = r0;
    _819.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _819;
    float4 _824 = r0;
    _824.y = rsqrt(r0.y);
    r0 = _824;
    float3 _830 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _830.x, _830.y, _830.z);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _855 = r3;
    _855.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _855;
    float4 _870 = r3;
    _870.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _870;
    float4 _885 = r3;
    _885.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _885;
    float3 _891 = r0.xxx * r3.xyz;
    r1 = float4(_891.x, _891.y, _891.z, r1.w);
    float4 _907 = r0;
    _907.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _907;
    float4 _912 = r0;
    _912.x = rsqrt(r0.x);
    r0 = _912;
    float3 _918 = r0.xxx * r1.xyz;
    r1 = float4(_918.x, _918.y, _918.z, r1.w);
    float3 _928 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _940 = r2;
    _940.x = mad(_928.z, r1.xyz.z, mad(_928.y, r1.xyz.y, _928.x * r1.xyz.x));
    r2 = _940;
    float3 _949 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _961 = r2;
    _961.y = mad(_949.z, r1.xyz.z, mad(_949.y, r1.xyz.y, _949.x * r1.xyz.x));
    r2 = _961;
    float3 _970 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _982 = r2;
    _982.z = mad(_970.z, r1.xyz.z, mad(_970.y, r1.xyz.y, _970.x * r1.xyz.x));
    r2 = _982;
    float4 _997 = r0;
    _997.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _997;
    float4 _1002 = r0;
    _1002.x = rsqrt(r0.x);
    r0 = _1002;
    float3 _1008 = r0.xxx * r2.xyz;
    r1 = float4(_1008.x, _1008.y, _1008.z, r1.w);
    float3 _1015 = r0.wyz * r1.yzx;
    r2 = float4(_1015.x, _1015.y, _1015.z, r2.w);
    float3 _1026 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1026.x, _1026.y, _1026.z, r2.w);
    float3 _1033 = r1.www * r2.xyz;
    r2 = float4(_1033.x, _1033.y, _1033.z, r2.w);
    float3 _1043 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1055 = o1;
    _1055.y = mad(_1043.z, r2.xyz.z, mad(_1043.y, r2.xyz.y, _1043.x * r2.xyz.x));
    o1 = _1055;
    float3 _1064 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1076 = o1;
    _1076.z = mad(_1064.z, r0.yzw.z, mad(_1064.y, r0.yzw.y, _1064.x * r0.yzw.x));
    o1 = _1076;
    float3 _1085 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1097 = o1;
    _1097.x = mad(_1085.z, r1.xyz.z, mad(_1085.y, r1.xyz.y, _1085.x * r1.xyz.x));
    o1 = _1097;
    float3 _1111 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r3 = float4(_1111.x, _1111.y, _1111.z, r3.w);
    float3 _1125 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1125.x, _1125.y, _1125.z, r4.w);
    float4 _1141 = r0;
    _1141.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1141;
    float4 _1146 = r0;
    _1146.x = rsqrt(r0.x);
    r0 = _1146;
    float3 _1152 = r0.xxx * r3.xyz;
    r3 = float4(_1152.x, _1152.y, _1152.z, r3.w);
    float3 _1168 = o2;
    _1168.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o2 = _1168;
    float4 _1172 = o3;
    _1172.z = r0.z;
    o3 = _1172;
    float3 _1187 = o2;
    _1187.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o2 = _1187;
    float4 _1191 = o3;
    _1191.x = r1.y;
    o3 = _1191;
    float3 _1206 = o2;
    _1206.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o2 = _1206;
    float4 _1210 = o3;
    _1210.y = r2.y;
    o3 = _1210;
    float4 _1219 = r0;
    _1219.x = r4.y * cb0_m[13].x;
    r0 = _1219;
    float4 _1226 = r0;
    _1226.y = r0.x * asfloat(3216550459u);
    r0 = _1226;
    float4 _1231 = r0;
    _1231.y = exp2(r0.y);
    r0 = _1231;
    float4 _1238 = r0;
    _1238.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1238;
    float4 _1245 = r0;
    _1245.x = r0.y / r0.x;
    r0 = _1245;
    float4 _1257 = r0;
    _1257.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1257;
    float4 _1272 = r0;
    _1272.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1272;
    float4 _1277 = r0;
    _1277.z = sqrt(r0.z);
    r0 = _1277;
    float4 _1285 = r0;
    _1285.z = r0.z * cb0_m[13].y;
    r0 = _1285;
    float4 _1295 = r0;
    _1295.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1295;
    float4 _1307 = r0;
    _1307.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1307;
    float4 _1313 = r0;
    _1313.x = exp2(-r0.x);
    r0 = _1313;
    float4 _1319 = r0;
    _1319.x = min(r0.x, asfloat(1065353216u));
    r0 = _1319;
    float4 _1326 = o3;
    _1326.w = (-r0.x) + asfloat(1065353216u);
    o3 = _1326;
    float2 _1333 = float2(asint(shader_in[2].xy));
    r0 = float4(_1333.x, _1333.y, r0.z, r0.w);
    float2 _1344 = r0.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_1344.x, _1344.y, r0.z, r0.w);
    float2 _1353 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _1353.x, _1353.y);
    float2 _1360 = float2(asint(shader_in[1].xy));
    r0 = float4(_1360.x, _1360.y, r0.z, r0.w);
    float2 _1366 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_1366.x, _1366.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1375 = asfloat(v1);
    shader_in[1] = float4(_1375.x, _1375.y, shader_in[1].z, shader_in[1].w);
    float2 _1380 = asfloat(v2);
    shader_in[2] = float4(_1380.x, _1380.y, shader_in[2].z, shader_in[2].w);
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
