cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _68 = r0;
    _68.x = shader_in[2].y + shader_in[2].x;
    r0 = _68;
    float4 _76 = r0;
    _76.x = r0.x + shader_in[2].z;
    r0 = _76;
    float4 _84 = r0;
    _84.x = r0.x + shader_in[2].w;
    r0 = _84;
    float4 _91 = r0;
    _91.x = asfloat(1065353216u) / r0.x;
    r0 = _91;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _101 = r1;
    _101.w = asfloat(1065353216u);
    r1 = _101;
    r2 = asfloat(asint(shader_in[3]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _118 = asint(r2.y);
    r3 = shader_in[2].yyyy * float4(cb4_m[_118].x, cb4_m[_118].y, cb4_m[_118].z, cb4_m[_118].w);
    int _140 = asint(r2.x);
    r3 = (shader_in[2].xxxx * float4(cb4_m[_140].x, cb4_m[_140].y, cb4_m[_140].z, cb4_m[_140].w)) + r3;
    int _159 = asint(r2.z);
    r3 = (shader_in[2].zzzz * float4(cb4_m[_159].x, cb4_m[_159].y, cb4_m[_159].z, cb4_m[_159].w)) + r3;
    int _178 = asint(r2.w);
    r3 = (shader_in[2].wwww * float4(cb4_m[_178].x, cb4_m[_178].y, cb4_m[_178].z, cb4_m[_178].w)) + r3;
    float4 _207 = r4;
    _207.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _207;
    int _216 = asint(r2.y) + 1;
    r5 = shader_in[2].yyyy * float4(cb4_m[_216].x, cb4_m[_216].y, cb4_m[_216].z, cb4_m[_216].w);
    int _235 = asint(r2.x) + 1;
    r5 = (shader_in[2].xxxx * float4(cb4_m[_235].x, cb4_m[_235].y, cb4_m[_235].z, cb4_m[_235].w)) + r5;
    int _255 = asint(r2.z) + 1;
    r5 = (shader_in[2].zzzz * float4(cb4_m[_255].x, cb4_m[_255].y, cb4_m[_255].z, cb4_m[_255].w)) + r5;
    int _275 = asint(r2.w) + 1;
    r5 = (shader_in[2].wwww * float4(cb4_m[_275].x, cb4_m[_275].y, cb4_m[_275].z, cb4_m[_275].w)) + r5;
    float4 _303 = r4;
    _303.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _303;
    int _311 = asint(r2.y) + 2;
    r6 = shader_in[2].yyyy * float4(cb4_m[_311].x, cb4_m[_311].y, cb4_m[_311].z, cb4_m[_311].w);
    int _330 = asint(r2.x) + 2;
    r6 = (shader_in[2].xxxx * float4(cb4_m[_330].x, cb4_m[_330].y, cb4_m[_330].z, cb4_m[_330].w)) + r6;
    int _350 = asint(r2.z) + 2;
    r6 = (shader_in[2].zzzz * float4(cb4_m[_350].x, cb4_m[_350].y, cb4_m[_350].z, cb4_m[_350].w)) + r6;
    int _370 = asint(r2.w) + 2;
    r2 = (shader_in[2].wwww * float4(cb4_m[_370].x, cb4_m[_370].y, cb4_m[_370].z, cb4_m[_370].w)) + r6;
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
    float4 _572 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _586 = o0;
    _586.w = mad(_572.w, r4.w, mad(_572.z, r4.z, mad(_572.y, r4.y, _572.x * r4.x)));
    o0 = _586;
    float3 _600 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _600.x, _600.y, _600.z);
    float4 _617 = r1;
    _617.x = mad(r3.xyz.z, shader_in[1].xyz.z, mad(r3.xyz.y, shader_in[1].xyz.y, r3.xyz.x * shader_in[1].xyz.x));
    r1 = _617;
    float4 _633 = r1;
    _633.y = mad(r5.xyz.z, shader_in[1].xyz.z, mad(r5.xyz.y, shader_in[1].xyz.y, r5.xyz.x * shader_in[1].xyz.x));
    r1 = _633;
    float4 _649 = r1;
    _649.z = mad(r2.xyz.z, shader_in[1].xyz.z, mad(r2.xyz.y, shader_in[1].xyz.y, r2.xyz.x * shader_in[1].xyz.x));
    r1 = _649;
    float3 _655 = r0.xxx * r1.xyz;
    r1 = float4(_655.x, _655.y, _655.z, r1.w);
    float4 _671 = r1;
    _671.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _671;
    float4 _676 = r1;
    _676.w = rsqrt(r1.w);
    r1 = _676;
    float3 _682 = r1.www * r1.xyz;
    r1 = float4(_682.x, _682.y, _682.z, r1.w);
    float3 _692 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _704 = r4;
    _704.x = mad(_692.z, r1.xyz.z, mad(_692.y, r1.xyz.y, _692.x * r1.xyz.x));
    r4 = _704;
    float3 _713 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _725 = r4;
    _725.y = mad(_713.z, r1.xyz.z, mad(_713.y, r1.xyz.y, _713.x * r1.xyz.x));
    r4 = _725;
    float3 _734 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _746 = r4;
    _746.z = mad(_734.z, r1.xyz.z, mad(_734.y, r1.xyz.y, _734.x * r1.xyz.x));
    r4 = _746;
    float4 _761 = r1;
    _761.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _761;
    float4 _766 = r1;
    _766.x = rsqrt(r1.x);
    r1 = _766;
    float3 _772 = r1.xxx * r4.xyz;
    r1 = float4(_772.x, _772.y, _772.z, r1.w);
    float3 _787 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r4 = float4(_787.x, _787.y, _787.z, r4.w);
    float3 _806 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r4.xyz);
    r4 = float4(_806.x, _806.y, _806.z, r4.w);
    float4 _822 = r1;
    _822.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _822;
    float4 _827 = r1;
    _827.w = rsqrt(r1.w);
    r1 = _827;
    float3 _833 = r1.www * r4.xyz;
    r4 = float4(_833.x, _833.y, _833.z, r4.w);
    float3 _841 = r4.yzx * shader_in[1].zxy;
    r6 = float4(_841.x, _841.y, _841.z, r6.w);
    float3 _853 = (shader_in[1].yzx * r4.zxy) + (-r6.xyz);
    r6 = float4(_853.x, _853.y, _853.z, r6.w);
    float3 _863 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _875 = o3;
    _875.y = mad(_863.z, r4.xyz.z, mad(_863.y, r4.xyz.y, _863.x * r4.xyz.x));
    o3 = _875;
    float4 _890 = r1;
    _890.w = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r1 = _890;
    float4 _895 = r1;
    _895.w = rsqrt(r1.w);
    r1 = _895;
    float3 _901 = r1.www * r6.xyz;
    r4 = float4(_901.x, _901.y, _901.z, r4.w);
    float4 _917 = r3;
    _917.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _917;
    float4 _932 = r3;
    _932.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _932;
    float4 _947 = r3;
    _947.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _947;
    float3 _956 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _968 = o3;
    _968.x = mad(_956.z, r4.xyz.z, mad(_956.y, r4.xyz.y, _956.x * r4.xyz.x));
    o3 = _968;
    float3 _974 = r0.xxx * r3.xyz;
    r2 = float4(_974.x, _974.y, _974.z, r2.w);
    float4 _990 = r0;
    _990.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _990;
    float4 _995 = r0;
    _995.x = rsqrt(r0.x);
    r0 = _995;
    float3 _1001 = r0.xxx * r2.xyz;
    r2 = float4(_1001.x, _1001.y, _1001.z, r2.w);
    float3 _1011 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1023 = r3;
    _1023.x = mad(_1011.z, r2.xyz.z, mad(_1011.y, r2.xyz.y, _1011.x * r2.xyz.x));
    r3 = _1023;
    float3 _1032 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1044 = r3;
    _1044.y = mad(_1032.z, r2.xyz.z, mad(_1032.y, r2.xyz.y, _1032.x * r2.xyz.x));
    r3 = _1044;
    float3 _1053 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1065 = r3;
    _1065.z = mad(_1053.z, r2.xyz.z, mad(_1053.y, r2.xyz.y, _1053.x * r2.xyz.x));
    r3 = _1065;
    float4 _1080 = r0;
    _1080.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1080;
    float4 _1085 = r0;
    _1085.x = rsqrt(r0.x);
    r0 = _1085;
    float3 _1091 = r0.xxx * r3.xyz;
    r2 = float4(_1091.x, _1091.y, _1091.z, r2.w);
    float3 _1098 = r1.zxy * r2.yzx;
    r3 = float4(_1098.x, _1098.y, _1098.z, r3.w);
    float3 _1109 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1109.x, _1109.y, _1109.z, r3.w);
    float3 _1119 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1122 = -r3.xyz;
    float3 _1132 = o1;
    _1132.y = mad(_1119.z, _1122.z, mad(_1119.y, _1122.y, _1119.x * _1122.x));
    o1 = _1132;
    float3 _1138 = -r3.xyz;
    float3 _1148 = o2;
    _1148.y = mad(r0.yzw.z, _1138.z, mad(r0.yzw.y, _1138.y, r0.yzw.x * _1138.x));
    o2 = _1148;
    float3 _1157 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1169 = o1;
    _1169.z = mad(_1157.z, r1.xyz.z, mad(_1157.y, r1.xyz.y, _1157.x * r1.xyz.x));
    o1 = _1169;
    float3 _1184 = o2;
    _1184.z = mad(r0.yzw.z, r1.xyz.z, mad(r0.yzw.y, r1.xyz.y, r0.yzw.x * r1.xyz.x));
    o2 = _1184;
    float3 _1199 = o2;
    _1199.x = mad(r0.yzw.z, r2.xyz.z, mad(r0.yzw.y, r2.xyz.y, r0.yzw.x * r2.xyz.x));
    o2 = _1199;
    float3 _1208 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1220 = o1;
    _1220.x = mad(_1208.z, r2.xyz.z, mad(_1208.y, r2.xyz.y, _1208.x * r2.xyz.x));
    o1 = _1220;
    float3 _1229 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1242 = o3;
    _1242.z = mad(_1229.z, shader_in[1].xyz.z, mad(_1229.y, shader_in[1].xyz.y, _1229.x * shader_in[1].xyz.x));
    o3 = _1242;
    float3 _1256 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_1256.x, _1256.y, _1256.z, r0.w);
    float3 _1268 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _1278 = r1;
    _1278.x = mad(r0.xyz.z, _1268.z, mad(r0.xyz.y, _1268.y, r0.xyz.x * _1268.x));
    r1 = _1278;
    float3 _1289 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _1299 = r1;
    _1299.z = mad(r0.xyz.z, _1289.z, mad(r0.xyz.y, _1289.y, r0.xyz.x * _1289.x));
    r1 = _1299;
    float3 _1310 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _1320 = r0;
    _1320.x = mad(r0.xyz.z, _1310.z, mad(r0.xyz.y, _1310.y, r0.xyz.x * _1310.x));
    r0 = _1320;
    float4 _1329 = r0;
    _1329.x = r0.x * cb5_m[5].y;
    r0 = _1329;
    float2 _1340 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_1340.x, r1.y, _1340.y, r1.w);
    float4 _1345 = o3;
    _1345.w = r1.z;
    o3 = _1345;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _1371 = r0;
    _1371.y = asfloat(3212836864u);
    r0 = _1371;
    float4 _1378 = r1;
    _1378.y = r0.x * r0.y;
    r1 = _1378;
    float2 _1386 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1386.x, _1386.y, o6.z, o6.w);
    float2 _1392 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1392.x, _1392.y);
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
