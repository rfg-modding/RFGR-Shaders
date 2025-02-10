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
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v3;
static float4 v5;
static float4 v6;
static float4 v7;
static int4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
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
static float4 o2;
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
    _70.x = shader_in[7].y + shader_in[7].x;
    r0 = _70;
    float4 _78 = r0;
    _78.x = r0.x + shader_in[7].z;
    r0 = _78;
    float4 _86 = r0;
    _86.x = r0.x + shader_in[7].w;
    r0 = _86;
    float4 _93 = r0;
    _93.x = asfloat(1065353216u) / r0.x;
    r0 = _93;
    float3 _108 = (shader_in[5].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_108.x, _108.y, _108.z, r1.w);
    float4 _113 = r1;
    _113.w = asfloat(1065353216u);
    r1 = _113;
    r2 = asfloat(asint(shader_in[8]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _130 = asint(r2.y);
    r3 = shader_in[7].yyyy * float4(cb4_m[_130].x, cb4_m[_130].y, cb4_m[_130].z, cb4_m[_130].w);
    int _152 = asint(r2.x);
    r3 = (shader_in[7].xxxx * float4(cb4_m[_152].x, cb4_m[_152].y, cb4_m[_152].z, cb4_m[_152].w)) + r3;
    int _171 = asint(r2.z);
    r3 = (shader_in[7].zzzz * float4(cb4_m[_171].x, cb4_m[_171].y, cb4_m[_171].z, cb4_m[_171].w)) + r3;
    int _190 = asint(r2.w);
    r3 = (shader_in[7].wwww * float4(cb4_m[_190].x, cb4_m[_190].y, cb4_m[_190].z, cb4_m[_190].w)) + r3;
    float4 _219 = r4;
    _219.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _219;
    int _228 = asint(r2.y) + 1;
    r5 = shader_in[7].yyyy * float4(cb4_m[_228].x, cb4_m[_228].y, cb4_m[_228].z, cb4_m[_228].w);
    int _247 = asint(r2.x) + 1;
    r5 = (shader_in[7].xxxx * float4(cb4_m[_247].x, cb4_m[_247].y, cb4_m[_247].z, cb4_m[_247].w)) + r5;
    int _267 = asint(r2.z) + 1;
    r5 = (shader_in[7].zzzz * float4(cb4_m[_267].x, cb4_m[_267].y, cb4_m[_267].z, cb4_m[_267].w)) + r5;
    int _287 = asint(r2.w) + 1;
    r5 = (shader_in[7].wwww * float4(cb4_m[_287].x, cb4_m[_287].y, cb4_m[_287].z, cb4_m[_287].w)) + r5;
    float4 _315 = r4;
    _315.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _315;
    int _324 = asint(r2.y) + 2;
    r6 = shader_in[7].yyyy * float4(cb4_m[_324].x, cb4_m[_324].y, cb4_m[_324].z, cb4_m[_324].w);
    int _343 = asint(r2.x) + 2;
    r6 = (shader_in[7].xxxx * float4(cb4_m[_343].x, cb4_m[_343].y, cb4_m[_343].z, cb4_m[_343].w)) + r6;
    int _363 = asint(r2.z) + 2;
    r6 = (shader_in[7].zzzz * float4(cb4_m[_363].x, cb4_m[_363].y, cb4_m[_363].z, cb4_m[_363].w)) + r6;
    int _383 = asint(r2.w) + 2;
    r2 = (shader_in[7].wwww * float4(cb4_m[_383].x, cb4_m[_383].y, cb4_m[_383].z, cb4_m[_383].w)) + r6;
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
    float4 _586 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _600 = o0;
    _600.w = mad(_586.w, r4.w, mad(_586.z, r4.z, mad(_586.y, r4.y, _586.x * r4.x)));
    o0 = _600;
    float2 _606 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _606.x, _606.y, r0.w);
    float2 _617 = r0.yz * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(r0.x, _617.x, _617.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _639 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(r0.x, _639.x, _639.y, _639.z);
    float3 _653 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_653.x, _653.y, _653.z, r1.w);
    float4 _663 = r1;
    _663.w = r0.z * cb0_m[13].x;
    r1 = _663;
    float4 _670 = r2;
    _670.w = r1.w * asfloat(3216550459u);
    r2 = _670;
    float4 _675 = r2;
    _675.w = exp2(r2.w);
    r2 = _675;
    float4 _682 = r2;
    _682.w = (-r2.w) + asfloat(1065353216u);
    r2 = _682;
    float4 _689 = r1;
    _689.w = r2.w / r1.w;
    r1 = _689;
    float4 _701 = r2;
    _701.w = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r2 = _701;
    float4 _716 = r0;
    _716.y = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _716;
    float4 _721 = r0;
    _721.y = sqrt(r0.y);
    r0 = _721;
    float4 _729 = r0;
    _729.y = r0.y * cb0_m[13].y;
    r0 = _729;
    float4 _739 = r0;
    _739.z = (asuint(r2.w) != 0u) ? r1.w : asfloat(1065353216u);
    r0 = _739;
    float4 _751 = r0;
    _751.y = (r0.z * r0.y) + (-cb0_m[13].w);
    r0 = _751;
    float4 _757 = r0;
    _757.y = exp2(-r0.y);
    r0 = _757;
    float4 _763 = r0;
    _763.y = min(r0.y, asfloat(1065353216u));
    r0 = _763;
    float4 _770 = o2;
    _770.w = (-r0.y) + asfloat(1065353216u);
    o2 = _770;
    float4 _785 = r0;
    _785.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _785;
    float4 _790 = r0;
    _790.y = rsqrt(r0.y);
    r0 = _790;
    float3 _796 = r0.yyy * r1.xyz;
    o2 = float4(_796.x, _796.y, _796.z, o2.w);
    float3 _809 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _809.x, _809.y, _809.z);
    float3 _819 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_819.x, _819.y, _819.z, r1.w);
    float3 _828 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _828.x, _828.y, _828.z);
    float4 _844 = r1;
    _844.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _844;
    float4 _849 = r1;
    _849.x = rsqrt(r1.x);
    r1 = _849;
    float3 _855 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _855.x, _855.y, _855.z);
    float4 _871 = r1;
    _871.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _871;
    float4 _886 = r1;
    _886.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _886;
    float4 _901 = r1;
    _901.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _901;
    float3 _907 = r0.xxx * r1.xyz;
    r0 = float4(_907.x, _907.y, _907.z, r0.w);
    float4 _923 = r0;
    _923.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _923;
    float4 _928 = r0;
    _928.w = rsqrt(r0.w);
    r0 = _928;
    float3 _934 = r0.www * r0.xyz;
    r0 = float4(_934.x, _934.y, _934.z, r0.w);
    float3 _944 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _956 = r1;
    _956.x = mad(_944.z, r0.xyz.z, mad(_944.y, r0.xyz.y, _944.x * r0.xyz.x));
    r1 = _956;
    float3 _965 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _977 = r1;
    _977.z = mad(_965.z, r0.xyz.z, mad(_965.y, r0.xyz.y, _965.x * r0.xyz.x));
    r1 = _977;
    float3 _986 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _998 = r1;
    _998.y = mad(_986.z, r0.xyz.z, mad(_986.y, r0.xyz.y, _986.x * r0.xyz.x));
    r1 = _998;
    float4 _1013 = r0;
    _1013.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _1013;
    float4 _1018 = r0;
    _1018.x = rsqrt(r0.x);
    r0 = _1018;
    float4 _1025 = r0;
    _1025.x = r0.x * r1.y;
    r0 = _1025;
    float4 _1037 = o3;
    _1037.w = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o3 = _1037;
    float3 _1046 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o3 = float4(_1046.x, _1046.y, _1046.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1055 = asfloat(v1);
    shader_in[1] = float4(_1055.x, _1055.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
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
    v3 = stage_input.v3;
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
