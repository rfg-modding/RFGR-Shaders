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
    float4 cb2_m[5] : packoffset(c0);
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
    float4 _70 = r0;
    _70.x = shader_in[5].y + shader_in[5].x;
    r0 = _70;
    float4 _78 = r0;
    _78.x = r0.x + shader_in[5].z;
    r0 = _78;
    float4 _86 = r0;
    _86.x = r0.x + shader_in[5].w;
    r0 = _86;
    float4 _93 = r0;
    _93.x = asfloat(1065353216u) / r0.x;
    r0 = _93;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _103 = r1;
    _103.w = asfloat(1065353216u);
    r1 = _103;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _120 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_120].x, cb4_m[_120].y, cb4_m[_120].z, cb4_m[_120].w);
    int _142 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_142].x, cb4_m[_142].y, cb4_m[_142].z, cb4_m[_142].w)) + r3;
    int _161 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_161].x, cb4_m[_161].y, cb4_m[_161].z, cb4_m[_161].w)) + r3;
    int _180 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_180].x, cb4_m[_180].y, cb4_m[_180].z, cb4_m[_180].w)) + r3;
    float4 _209 = r4;
    _209.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _209;
    int _218 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_218].x, cb4_m[_218].y, cb4_m[_218].z, cb4_m[_218].w);
    int _237 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_237].x, cb4_m[_237].y, cb4_m[_237].z, cb4_m[_237].w)) + r5;
    int _257 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_257].x, cb4_m[_257].y, cb4_m[_257].z, cb4_m[_257].w)) + r5;
    int _277 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_277].x, cb4_m[_277].y, cb4_m[_277].z, cb4_m[_277].w)) + r5;
    float4 _305 = r4;
    _305.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _305;
    int _314 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_314].x, cb4_m[_314].y, cb4_m[_314].z, cb4_m[_314].w);
    int _333 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_333].x, cb4_m[_333].y, cb4_m[_333].z, cb4_m[_333].w)) + r6;
    int _353 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_353].x, cb4_m[_353].y, cb4_m[_353].z, cb4_m[_353].w)) + r6;
    int _373 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_373].x, cb4_m[_373].y, cb4_m[_373].z, cb4_m[_373].w)) + r6;
    float4 _401 = r4;
    _401.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _401;
    float3 _407 = r0.xxx * r4.xyz;
    r1 = float4(_407.x, _407.y, _407.z, r1.w);
    float4 _411 = r1;
    _411.w = asfloat(1065353216u);
    r1 = _411;
    float4 _422 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _436 = r4;
    _436.x = mad(_422.w, r1.w, mad(_422.z, r1.z, mad(_422.y, r1.y, _422.x * r1.x)));
    r4 = _436;
    float4 _447 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _461 = r4;
    _461.y = mad(_447.w, r1.w, mad(_447.z, r1.z, mad(_447.y, r1.y, _447.x * r1.x)));
    r4 = _461;
    float4 _472 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _486 = r4;
    _486.z = mad(_472.w, r1.w, mad(_472.z, r1.z, mad(_472.y, r1.y, _472.x * r1.x)));
    r4 = _486;
    float4 _489 = r4;
    _489.w = asfloat(1065353216u);
    r4 = _489;
    float4 _500 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _514 = o0;
    _514.x = mad(_500.w, r4.w, mad(_500.z, r4.z, mad(_500.y, r4.y, _500.x * r4.x)));
    o0 = _514;
    float4 _525 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _539 = o0;
    _539.y = mad(_525.w, r4.w, mad(_525.z, r4.z, mad(_525.y, r4.y, _525.x * r4.x)));
    o0 = _539;
    float4 _550 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _564 = o0;
    _564.z = mad(_550.w, r4.w, mad(_550.z, r4.z, mad(_550.y, r4.y, _550.x * r4.x)));
    o0 = _564;
    float4 _576 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _590 = o0;
    _590.w = mad(_576.w, r4.w, mad(_576.z, r4.z, mad(_576.y, r4.y, _576.x * r4.x)));
    o0 = _590;
    float3 _604 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _604.x, _604.y, _604.z);
    float3 _618 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
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
    r4 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
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
    float2 _1144 = r0.xy * float2(cb2_m[4].z, cb2_m[4].w);
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
