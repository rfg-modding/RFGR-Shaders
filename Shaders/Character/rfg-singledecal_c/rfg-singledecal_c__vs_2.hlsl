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
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
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
static float3 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _69 = r0;
    _69.x = shader_in[6].y + shader_in[6].x;
    r0 = _69;
    float4 _77 = r0;
    _77.x = r0.x + shader_in[6].z;
    r0 = _77;
    float4 _85 = r0;
    _85.x = r0.x + shader_in[6].w;
    r0 = _85;
    float4 _92 = r0;
    _92.x = asfloat(1065353216u) / r0.x;
    r0 = _92;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _119 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_119].x, cb4_m[_119].y, cb4_m[_119].z, cb4_m[_119].w);
    int _141 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_141].x, cb4_m[_141].y, cb4_m[_141].z, cb4_m[_141].w)) + r3;
    int _160 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_160].x, cb4_m[_160].y, cb4_m[_160].z, cb4_m[_160].w)) + r3;
    int _179 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_179].x, cb4_m[_179].y, cb4_m[_179].z, cb4_m[_179].w)) + r3;
    float4 _208 = r4;
    _208.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _208;
    int _217 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_217].x, cb4_m[_217].y, cb4_m[_217].z, cb4_m[_217].w);
    int _236 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_236].x, cb4_m[_236].y, cb4_m[_236].z, cb4_m[_236].w)) + r5;
    int _256 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_256].x, cb4_m[_256].y, cb4_m[_256].z, cb4_m[_256].w)) + r5;
    int _276 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_276].x, cb4_m[_276].y, cb4_m[_276].z, cb4_m[_276].w)) + r5;
    float4 _304 = r4;
    _304.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _304;
    int _313 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_313].x, cb4_m[_313].y, cb4_m[_313].z, cb4_m[_313].w);
    int _332 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_332].x, cb4_m[_332].y, cb4_m[_332].z, cb4_m[_332].w)) + r6;
    int _352 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_352].x, cb4_m[_352].y, cb4_m[_352].z, cb4_m[_352].w)) + r6;
    int _372 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_372].x, cb4_m[_372].y, cb4_m[_372].z, cb4_m[_372].w)) + r6;
    float4 _400 = r4;
    _400.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _400;
    float3 _406 = r0.xxx * r4.xyz;
    r1 = float4(_406.x, _406.y, _406.z, r1.w);
    float4 _410 = r1;
    _410.w = asfloat(1065353216u);
    r1 = _410;
    float4 _421 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _435 = r4;
    _435.x = mad(_421.w, r1.w, mad(_421.z, r1.z, mad(_421.y, r1.y, _421.x * r1.x)));
    r4 = _435;
    float4 _446 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _460 = r4;
    _460.y = mad(_446.w, r1.w, mad(_446.z, r1.z, mad(_446.y, r1.y, _446.x * r1.x)));
    r4 = _460;
    float4 _471 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _485 = r4;
    _485.z = mad(_471.w, r1.w, mad(_471.z, r1.z, mad(_471.y, r1.y, _471.x * r1.x)));
    r4 = _485;
    float4 _488 = r4;
    _488.w = asfloat(1065353216u);
    r4 = _488;
    float4 _499 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _513 = o0;
    _513.x = mad(_499.w, r4.w, mad(_499.z, r4.z, mad(_499.y, r4.y, _499.x * r4.x)));
    o0 = _513;
    float4 _524 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _538 = o0;
    _538.y = mad(_524.w, r4.w, mad(_524.z, r4.z, mad(_524.y, r4.y, _524.x * r4.x)));
    o0 = _538;
    float4 _549 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _563 = o0;
    _563.z = mad(_549.w, r4.w, mad(_549.z, r4.z, mad(_549.y, r4.y, _549.x * r4.x)));
    o0 = _563;
    float4 _575 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _589 = o0;
    _589.w = mad(_575.w, r4.w, mad(_575.z, r4.z, mad(_575.y, r4.y, _575.x * r4.x)));
    o0 = _589;
    float3 _603 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _603.x, _603.y, _603.z);
    float3 _618 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_618.x, _618.y, _618.z, r1.w);
    float4 _634 = r4;
    _634.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _634;
    float4 _649 = r4;
    _649.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _649;
    float4 _664 = r4;
    _664.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _664;
    float3 _670 = r0.xxx * r4.xyz;
    r1 = float4(_670.x, _670.y, _670.z, r1.w);
    float4 _686 = r1;
    _686.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _686;
    float4 _691 = r1;
    _691.w = rsqrt(r1.w);
    r1 = _691;
    float3 _697 = r1.www * r1.xyz;
    r1 = float4(_697.x, _697.y, _697.z, r1.w);
    float3 _707 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _719 = r4;
    _719.x = mad(_707.z, r1.xyz.z, mad(_707.y, r1.xyz.y, _707.x * r1.xyz.x));
    r4 = _719;
    float3 _728 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _740 = r4;
    _740.y = mad(_728.z, r1.xyz.z, mad(_728.y, r1.xyz.y, _728.x * r1.xyz.x));
    r4 = _740;
    float3 _749 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _761 = r4;
    _761.z = mad(_749.z, r1.xyz.z, mad(_749.y, r1.xyz.y, _749.x * r1.xyz.x));
    r4 = _761;
    float4 _776 = r1;
    _776.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _776;
    float4 _781 = r1;
    _781.x = rsqrt(r1.x);
    r1 = _781;
    float3 _787 = r1.xxx * r4.xyz;
    r1 = float4(_787.x, _787.y, _787.z, r1.w);
    r4 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _812 = r3;
    _812.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _812;
    float4 _827 = r3;
    _827.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _827;
    float4 _842 = r3;
    _842.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _842;
    float3 _848 = r0.xxx * r3.xyz;
    r2 = float4(_848.x, _848.y, _848.z, r2.w);
    float4 _864 = r0;
    _864.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _864;
    float4 _869 = r0;
    _869.x = rsqrt(r0.x);
    r0 = _869;
    float3 _875 = r0.xxx * r2.xyz;
    r2 = float4(_875.x, _875.y, _875.z, r2.w);
    float3 _885 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _897 = r3;
    _897.x = mad(_885.z, r2.xyz.z, mad(_885.y, r2.xyz.y, _885.x * r2.xyz.x));
    r3 = _897;
    float3 _906 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _918 = r3;
    _918.y = mad(_906.z, r2.xyz.z, mad(_906.y, r2.xyz.y, _906.x * r2.xyz.x));
    r3 = _918;
    float3 _927 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _939 = r3;
    _939.z = mad(_927.z, r2.xyz.z, mad(_927.y, r2.xyz.y, _927.x * r2.xyz.x));
    r3 = _939;
    float4 _954 = r0;
    _954.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _954;
    float4 _959 = r0;
    _959.x = rsqrt(r0.x);
    r0 = _959;
    float3 _965 = r0.xxx * r3.xyz;
    r2 = float4(_965.x, _965.y, _965.z, r2.w);
    float3 _972 = r1.zxy * r2.yzx;
    r3 = float4(_972.x, _972.y, _972.z, r3.w);
    float3 _983 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_983.x, _983.y, _983.z, r3.w);
    float3 _990 = r4.www * r3.xyz;
    r3 = float4(_990.x, _990.y, _990.z, r3.w);
    float3 _1000 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1012 = o1;
    _1012.y = mad(_1000.z, r3.xyz.z, mad(_1000.y, r3.xyz.y, _1000.x * r3.xyz.x));
    o1 = _1012;
    float3 _1021 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1033 = o1;
    _1033.z = mad(_1021.z, r1.xyz.z, mad(_1021.y, r1.xyz.y, _1021.x * r1.xyz.x));
    o1 = _1033;
    float3 _1042 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1054 = o1;
    _1054.x = mad(_1042.z, r2.xyz.z, mad(_1042.y, r2.xyz.y, _1042.x * r2.xyz.x));
    o1 = _1054;
    float4 _1069 = r0;
    _1069.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1069;
    float4 _1074 = r0;
    _1074.x = rsqrt(r0.x);
    r0 = _1074;
    float3 _1080 = r0.xxx * r0.yzw;
    r0 = float4(_1080.x, _1080.y, _1080.z, r0.w);
    float3 _1096 = o2;
    _1096.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _1096;
    float3 _1111 = o2;
    _1111.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _1111;
    float3 _1126 = o2;
    _1126.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _1126;
    float2 _1133 = float2(asint(shader_in[2].xy));
    r0 = float4(_1133.x, _1133.y, r0.z, r0.w);
    float2 _1144 = r0.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_1144.x, _1144.y, r0.z, r0.w);
    float2 _1153 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _1153.x, _1153.y);
    float2 _1160 = float2(asint(shader_in[1].xy));
    r0 = float4(_1160.x, _1160.y, r0.z, r0.w);
    float2 _1166 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_1166.x, _1166.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1175 = asfloat(v1);
    shader_in[1] = float4(_1175.x, _1175.y, shader_in[1].z, shader_in[1].w);
    float2 _1180 = asfloat(v2);
    shader_in[2] = float4(_1180.x, _1180.y, shader_in[2].z, shader_in[2].w);
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
