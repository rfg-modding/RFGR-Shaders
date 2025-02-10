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
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
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
static float3 o4;
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
    float3 _108 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_108.x, _108.y, _108.z, r1.w);
    float4 _113 = r1;
    _113.w = asfloat(1065353216u);
    r1 = _113;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _130 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_130].x, cb4_m[_130].y, cb4_m[_130].z, cb4_m[_130].w);
    int _152 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_152].x, cb4_m[_152].y, cb4_m[_152].z, cb4_m[_152].w)) + r3;
    int _171 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_171].x, cb4_m[_171].y, cb4_m[_171].z, cb4_m[_171].w)) + r3;
    int _190 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_190].x, cb4_m[_190].y, cb4_m[_190].z, cb4_m[_190].w)) + r3;
    float4 _219 = r4;
    _219.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _219;
    int _228 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_228].x, cb4_m[_228].y, cb4_m[_228].z, cb4_m[_228].w);
    int _247 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_247].x, cb4_m[_247].y, cb4_m[_247].z, cb4_m[_247].w)) + r5;
    int _267 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_267].x, cb4_m[_267].y, cb4_m[_267].z, cb4_m[_267].w)) + r5;
    int _287 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_287].x, cb4_m[_287].y, cb4_m[_287].z, cb4_m[_287].w)) + r5;
    float4 _315 = r4;
    _315.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _315;
    int _324 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_324].x, cb4_m[_324].y, cb4_m[_324].z, cb4_m[_324].w);
    int _343 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_343].x, cb4_m[_343].y, cb4_m[_343].z, cb4_m[_343].w)) + r6;
    int _363 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_363].x, cb4_m[_363].y, cb4_m[_363].z, cb4_m[_363].w)) + r6;
    int _383 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_383].x, cb4_m[_383].y, cb4_m[_383].z, cb4_m[_383].w)) + r6;
    float4 _411 = r4;
    _411.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _411;
    float3 _417 = r0.xxx * r4.xyz;
    r1 = float4(_417.x, _417.y, _417.z, r1.w);
    float4 _421 = r1;
    _421.w = asfloat(1065353216u);
    r1 = _421;
    float4 _432 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _446 = r4;
    _446.x = mad(_432.w, r1.w, mad(_432.z, r1.z, mad(_432.y, r1.y, _432.x * r1.x)));
    r4 = _446;
    float4 _457 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _471 = r4;
    _471.y = mad(_457.w, r1.w, mad(_457.z, r1.z, mad(_457.y, r1.y, _457.x * r1.x)));
    r4 = _471;
    float4 _482 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _496 = r4;
    _496.z = mad(_482.w, r1.w, mad(_482.z, r1.z, mad(_482.y, r1.y, _482.x * r1.x)));
    r4 = _496;
    float4 _499 = r4;
    _499.w = asfloat(1065353216u);
    r4 = _499;
    float4 _510 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _524 = o0;
    _524.x = mad(_510.w, r4.w, mad(_510.z, r4.z, mad(_510.y, r4.y, _510.x * r4.x)));
    o0 = _524;
    float4 _535 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _549 = o0;
    _549.y = mad(_535.w, r4.w, mad(_535.z, r4.z, mad(_535.y, r4.y, _535.x * r4.x)));
    o0 = _549;
    float4 _560 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _574 = o0;
    _574.z = mad(_560.w, r4.w, mad(_560.z, r4.z, mad(_560.y, r4.y, _560.x * r4.x)));
    o0 = _574;
    float4 _585 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _599 = o0;
    _599.w = mad(_585.w, r4.w, mad(_585.z, r4.z, mad(_585.y, r4.y, _585.x * r4.x)));
    o0 = _599;
    float2 _605 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _605.x, _605.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    o2 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _637 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _637.x, _637.y, _637.z);
    float3 _647 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_647.x, _647.y, _647.z, r1.w);
    float3 _656 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _656.x, _656.y, _656.z);
    float4 _672 = r1;
    _672.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _672;
    float4 _677 = r1;
    _677.x = rsqrt(r1.x);
    r1 = _677;
    float3 _683 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _683.x, _683.y, _683.z);
    float4 _699 = r1;
    _699.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _699;
    float4 _714 = r1;
    _714.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _714;
    float4 _729 = r1;
    _729.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _729;
    float3 _735 = r0.xxx * r1.xyz;
    r0 = float4(_735.x, _735.y, _735.z, r0.w);
    float4 _751 = r0;
    _751.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _751;
    float4 _756 = r0;
    _756.w = rsqrt(r0.w);
    r0 = _756;
    float3 _762 = r0.www * r0.xyz;
    r0 = float4(_762.x, _762.y, _762.z, r0.w);
    float3 _772 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _784 = r1;
    _784.x = mad(_772.z, r0.xyz.z, mad(_772.y, r0.xyz.y, _772.x * r0.xyz.x));
    r1 = _784;
    float3 _793 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _805 = r1;
    _805.y = mad(_793.z, r0.xyz.z, mad(_793.y, r0.xyz.y, _793.x * r0.xyz.x));
    r1 = _805;
    float3 _814 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _826 = r1;
    _826.z = mad(_814.z, r0.xyz.z, mad(_814.y, r0.xyz.y, _814.x * r0.xyz.x));
    r1 = _826;
    float4 _841 = r0;
    _841.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _841;
    float4 _846 = r0;
    _846.x = rsqrt(r0.x);
    r0 = _846;
    o3 = r0.xxx * r1.xyz;
    o4 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o5 = float4(r4.xyz.x, r4.xyz.y, r4.xyz.z, o5.w);
    float3 _877 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_877.x, _877.y, _877.z, r0.w);
    float4 _881 = o5;
    _881.w = asfloat(0u);
    o5 = _881;
    float4 _890 = r0;
    _890.w = r0.y * cb0_m[13].x;
    r0 = _890;
    float4 _897 = r1;
    _897.x = r0.w * asfloat(3216550459u);
    r1 = _897;
    float4 _902 = r1;
    _902.x = exp2(r1.x);
    r1 = _902;
    float4 _909 = r1;
    _909.x = (-r1.x) + asfloat(1065353216u);
    r1 = _909;
    float4 _916 = r0;
    _916.w = r1.x / r0.w;
    r0 = _916;
    float4 _928 = r1;
    _928.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _928;
    float4 _943 = r0;
    _943.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _943;
    float4 _948 = r0;
    _948.x = sqrt(r0.x);
    r0 = _948;
    float4 _956 = r0;
    _956.x = r0.x * cb0_m[13].y;
    r0 = _956;
    float4 _966 = r0;
    _966.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _966;
    float4 _978 = r0;
    _978.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _978;
    float4 _984 = r0;
    _984.x = exp2(-r0.x);
    r0 = _984;
    float4 _990 = r0;
    _990.x = min(r0.x, asfloat(1065353216u));
    r0 = _990;
    float4 _997 = o6;
    _997.w = (-r0.x) + asfloat(1065353216u);
    o6 = _997;
    float3 _1006 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o6 = float4(_1006.x, _1006.y, _1006.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1015 = asfloat(v1);
    shader_in[1] = float4(_1015.x, _1015.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
