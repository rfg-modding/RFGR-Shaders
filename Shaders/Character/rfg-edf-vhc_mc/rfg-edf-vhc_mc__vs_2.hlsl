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
static float4 v6;
static float4 v7;
static int4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
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
    float4 _75 = r0;
    _75.x = shader_in[7].y + shader_in[7].x;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[7].z;
    r0 = _83;
    float4 _91 = r0;
    _91.x = r0.x + shader_in[7].w;
    r0 = _91;
    float4 _98 = r0;
    _98.x = asfloat(1065353216u) / r0.x;
    r0 = _98;
    float3 _113 = (shader_in[5].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_113.x, _113.y, _113.z, r1.w);
    float4 _118 = r1;
    _118.w = asfloat(1065353216u);
    r1 = _118;
    r2 = asfloat(asint(shader_in[8]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _135 = asint(r2.y);
    r3 = shader_in[7].yyyy * float4(cb4_m[_135].x, cb4_m[_135].y, cb4_m[_135].z, cb4_m[_135].w);
    int _157 = asint(r2.x);
    r3 = (shader_in[7].xxxx * float4(cb4_m[_157].x, cb4_m[_157].y, cb4_m[_157].z, cb4_m[_157].w)) + r3;
    int _176 = asint(r2.z);
    r3 = (shader_in[7].zzzz * float4(cb4_m[_176].x, cb4_m[_176].y, cb4_m[_176].z, cb4_m[_176].w)) + r3;
    int _195 = asint(r2.w);
    r3 = (shader_in[7].wwww * float4(cb4_m[_195].x, cb4_m[_195].y, cb4_m[_195].z, cb4_m[_195].w)) + r3;
    float4 _224 = r4;
    _224.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _224;
    int _233 = asint(r2.y) + 1;
    r5 = shader_in[7].yyyy * float4(cb4_m[_233].x, cb4_m[_233].y, cb4_m[_233].z, cb4_m[_233].w);
    int _252 = asint(r2.x) + 1;
    r5 = (shader_in[7].xxxx * float4(cb4_m[_252].x, cb4_m[_252].y, cb4_m[_252].z, cb4_m[_252].w)) + r5;
    int _272 = asint(r2.z) + 1;
    r5 = (shader_in[7].zzzz * float4(cb4_m[_272].x, cb4_m[_272].y, cb4_m[_272].z, cb4_m[_272].w)) + r5;
    int _292 = asint(r2.w) + 1;
    r5 = (shader_in[7].wwww * float4(cb4_m[_292].x, cb4_m[_292].y, cb4_m[_292].z, cb4_m[_292].w)) + r5;
    float4 _320 = r4;
    _320.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _320;
    int _329 = asint(r2.y) + 2;
    r6 = shader_in[7].yyyy * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w);
    int _348 = asint(r2.x) + 2;
    r6 = (shader_in[7].xxxx * float4(cb4_m[_348].x, cb4_m[_348].y, cb4_m[_348].z, cb4_m[_348].w)) + r6;
    int _368 = asint(r2.z) + 2;
    r6 = (shader_in[7].zzzz * float4(cb4_m[_368].x, cb4_m[_368].y, cb4_m[_368].z, cb4_m[_368].w)) + r6;
    int _388 = asint(r2.w) + 2;
    r2 = (shader_in[7].wwww * float4(cb4_m[_388].x, cb4_m[_388].y, cb4_m[_388].z, cb4_m[_388].w)) + r6;
    float4 _416 = r4;
    _416.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _416;
    float3 _422 = r0.xxx * r4.xyz;
    r1 = float4(_422.x, _422.y, _422.z, r1.w);
    float4 _426 = r1;
    _426.w = asfloat(1065353216u);
    r1 = _426;
    float4 _437 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _451 = r4;
    _451.x = mad(_437.w, r1.w, mad(_437.z, r1.z, mad(_437.y, r1.y, _437.x * r1.x)));
    r4 = _451;
    float4 _462 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _476 = r4;
    _476.y = mad(_462.w, r1.w, mad(_462.z, r1.z, mad(_462.y, r1.y, _462.x * r1.x)));
    r4 = _476;
    float4 _487 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _501 = r4;
    _501.z = mad(_487.w, r1.w, mad(_487.z, r1.z, mad(_487.y, r1.y, _487.x * r1.x)));
    r4 = _501;
    float4 _504 = r4;
    _504.w = asfloat(1065353216u);
    r4 = _504;
    float4 _515 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _529 = o0;
    _529.x = mad(_515.w, r4.w, mad(_515.z, r4.z, mad(_515.y, r4.y, _515.x * r4.x)));
    o0 = _529;
    float4 _540 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _554 = o0;
    _554.y = mad(_540.w, r4.w, mad(_540.z, r4.z, mad(_540.y, r4.y, _540.x * r4.x)));
    o0 = _554;
    float4 _565 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _579 = o0;
    _579.z = mad(_565.w, r4.w, mad(_565.z, r4.z, mad(_565.y, r4.y, _565.x * r4.x)));
    o0 = _579;
    float4 _591 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _605 = o0;
    _605.w = mad(_591.w, r4.w, mad(_591.z, r4.z, mad(_591.y, r4.y, _591.x * r4.x)));
    o0 = _605;
    float3 _619 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _619.x, _619.y, _619.z);
    float2 _626 = float2(asint(shader_in[1].xy));
    r1 = float4(_626.x, _626.y, r1.z, r1.w);
    float2 _637 = r1.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r1 = float4(_637.x, _637.y, r1.z, r1.w);
    float2 _646 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r1 = float4(_646.x, _646.y, r1.z, r1.w);
    o1 = r1.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(r1.xy.x, r1.xy.y, o4.z, o4.w);
    float3 _673 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_673.x, _673.y, _673.z, r1.w);
    float3 _683 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_683.x, _683.y, _683.z, r4.w);
    float3 _692 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_692.x, _692.y, _692.z, r1.w);
    float4 _708 = r1;
    _708.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _708;
    float4 _713 = r1;
    _713.w = rsqrt(r1.w);
    r1 = _713;
    float3 _719 = r1.www * r1.xyz;
    r1 = float4(_719.x, _719.y, _719.z, r1.w);
    float4 _735 = r4;
    _735.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _735;
    float4 _750 = r4;
    _750.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _750;
    float4 _765 = r4;
    _765.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _765;
    float3 _771 = r0.xxx * r4.xyz;
    r1 = float4(_771.x, _771.y, _771.z, r1.w);
    float4 _787 = r1;
    _787.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _787;
    float4 _792 = r1;
    _792.w = rsqrt(r1.w);
    r1 = _792;
    float3 _798 = r1.www * r1.xyz;
    r1 = float4(_798.x, _798.y, _798.z, r1.w);
    float3 _808 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _820 = r4;
    _820.x = mad(_808.z, r1.xyz.z, mad(_808.y, r1.xyz.y, _808.x * r1.xyz.x));
    r4 = _820;
    float3 _829 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _841 = r4;
    _841.y = mad(_829.z, r1.xyz.z, mad(_829.y, r1.xyz.y, _829.x * r1.xyz.x));
    r4 = _841;
    float3 _850 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _862 = r4;
    _862.z = mad(_850.z, r1.xyz.z, mad(_850.y, r1.xyz.y, _850.x * r1.xyz.x));
    r4 = _862;
    float4 _877 = r1;
    _877.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _877;
    float4 _882 = r1;
    _882.x = rsqrt(r1.x);
    r1 = _882;
    float3 _888 = r1.xxx * r4.xyz;
    r1 = float4(_888.x, _888.y, _888.z, r1.w);
    r4 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _912 = r3;
    _912.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _912;
    float4 _927 = r3;
    _927.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _927;
    float4 _942 = r3;
    _942.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _942;
    float3 _948 = r0.xxx * r3.xyz;
    r2 = float4(_948.x, _948.y, _948.z, r2.w);
    float4 _964 = r0;
    _964.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _964;
    float4 _969 = r0;
    _969.x = rsqrt(r0.x);
    r0 = _969;
    float3 _975 = r0.xxx * r2.xyz;
    r2 = float4(_975.x, _975.y, _975.z, r2.w);
    float3 _985 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _997 = r3;
    _997.x = mad(_985.z, r2.xyz.z, mad(_985.y, r2.xyz.y, _985.x * r2.xyz.x));
    r3 = _997;
    float3 _1006 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1018 = r3;
    _1018.y = mad(_1006.z, r2.xyz.z, mad(_1006.y, r2.xyz.y, _1006.x * r2.xyz.x));
    r3 = _1018;
    float3 _1027 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1039 = r3;
    _1039.z = mad(_1027.z, r2.xyz.z, mad(_1027.y, r2.xyz.y, _1027.x * r2.xyz.x));
    r3 = _1039;
    float4 _1054 = r0;
    _1054.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1054;
    float4 _1059 = r0;
    _1059.x = rsqrt(r0.x);
    r0 = _1059;
    float3 _1065 = r0.xxx * r3.xyz;
    r2 = float4(_1065.x, _1065.y, _1065.z, r2.w);
    float3 _1072 = r1.zxy * r2.yzx;
    r3 = float4(_1072.x, _1072.y, _1072.z, r3.w);
    float3 _1083 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1083.x, _1083.y, _1083.z, r3.w);
    float3 _1090 = r4.www * r3.xyz;
    r3 = float4(_1090.x, _1090.y, _1090.z, r3.w);
    float3 _1100 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1112 = o2;
    _1112.y = mad(_1100.z, r3.xyz.z, mad(_1100.y, r3.xyz.y, _1100.x * r3.xyz.x));
    o2 = _1112;
    float3 _1121 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1133 = o2;
    _1133.z = mad(_1121.z, r1.xyz.z, mad(_1121.y, r1.xyz.y, _1121.x * r1.xyz.x));
    o2 = _1133;
    float3 _1142 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1154 = o2;
    _1154.x = mad(_1142.z, r2.xyz.z, mad(_1142.y, r2.xyz.y, _1142.x * r2.xyz.x));
    o2 = _1154;
    float4 _1169 = r0;
    _1169.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1169;
    float4 _1174 = r0;
    _1174.x = rsqrt(r0.x);
    r0 = _1174;
    float3 _1180 = r0.xxx * r0.yzw;
    r0 = float4(_1180.x, _1180.y, _1180.z, r0.w);
    float3 _1196 = o3;
    _1196.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1196;
    float3 _1211 = o3;
    _1211.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1211;
    float3 _1226 = o3;
    _1226.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1226;
    float2 _1232 = float2(asint(shader_in[2].xy));
    r0 = float4(_1232.x, _1232.y, r0.z, r0.w);
    float2 _1238 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _1238.x, _1238.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1247 = asfloat(v1);
    shader_in[1] = float4(_1247.x, _1247.y, shader_in[1].z, shader_in[1].w);
    float2 _1252 = asfloat(v2);
    shader_in[2] = float4(_1252.x, _1252.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = asfloat(v8);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
