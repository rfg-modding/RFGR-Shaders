cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static int2 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float2 _58 = float2(asint(shader_in[0].xy));
    r0 = float4(_58.x, _58.y, r0.z, r0.w);
    float4 _67 = r0;
    _67.y = r0.y + asfloat(1191182336u);
    r0 = _67;
    float4 _75 = r1;
    _75.y = r0.x * asfloat(1015021568u);
    r1 = _75;
    float4 _82 = r0;
    _82.x = r0.y * asfloat(998244352u);
    r0 = _82;
    float4 _87 = r1;
    _87.z = trunc(r0.x);
    r1 = _87;
    float4 _98 = r1;
    _98.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _98;
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    float4 _117 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _131 = r0;
    _131.x = mad(_117.w, r1.w, mad(_117.z, r1.z, mad(_117.y, r1.y, _117.x * r1.x)));
    r0 = _131;
    float4 _143 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _157 = r0;
    _157.y = mad(_143.w, r1.w, mad(_143.z, r1.z, mad(_143.y, r1.y, _143.x * r1.x)));
    r0 = _157;
    float4 _169 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _183 = r0;
    _183.z = mad(_169.w, r1.w, mad(_169.z, r1.z, mad(_169.y, r1.y, _169.x * r1.x)));
    r0 = _183;
    float3 _197 = r1.xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_197.x, _197.y, _197.z, r1.w);
    float4 _201 = r0;
    _201.w = asfloat(1065353216u);
    r0 = _201;
    float4 _212 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _226 = o0;
    _226.x = mad(_212.w, r0.w, mad(_212.z, r0.z, mad(_212.y, r0.y, _212.x * r0.x)));
    o0 = _226;
    float4 _237 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _251 = o0;
    _251.y = mad(_237.w, r0.w, mad(_237.z, r0.z, mad(_237.y, r0.y, _237.x * r0.x)));
    o0 = _251;
    float4 _262 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _276 = o0;
    _276.z = mad(_262.w, r0.w, mad(_262.z, r0.z, mad(_262.y, r0.y, _262.x * r0.x)));
    o0 = _276;
    float4 _287 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _301 = o0;
    _301.w = mad(_287.w, r0.w, mad(_287.z, r0.z, mad(_287.y, r0.y, _287.x * r0.x)));
    o0 = _301;
    float3 _315 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_315.x, _315.y, _315.z, r0.w);
    float3 _327 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _338 = r2;
    _338.x = mad(r1.xyz.z, _327.z, mad(r1.xyz.y, _327.y, r1.xyz.x * _327.x));
    r2 = _338;
    float3 _349 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _359 = r2;
    _359.z = mad(r1.xyz.z, _349.z, mad(r1.xyz.y, _349.y, r1.xyz.x * _349.x));
    r2 = _359;
    float3 _370 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _380 = r0;
    _380.w = mad(r1.xyz.z, _370.z, mad(r1.xyz.y, _370.y, r1.xyz.x * _370.x));
    r0 = _380;
    float4 _389 = r0;
    _389.w = r0.w * cb5_m[5].y;
    r0 = _389;
    float2 _399 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_399.x, r1.y, _399.y, r1.w);
    float4 _404 = r1;
    _404.w = asfloat(3212836864u);
    r1 = _404;
    float4 _411 = r1;
    _411.y = r0.w * r1.w;
    r1 = _411;
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _422 = o3;
    _422.w = r1.z;
    o3 = _422;
    float3 _434 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_434.x, _434.y, _434.z, r1.w);
    float3 _448 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_448.x, _448.y, _448.z, r2.w);
    float3 _466 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_466.x, _466.y, _466.z, r2.w);
    float4 _482 = r0;
    _482.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _482;
    float4 _487 = r0;
    _487.w = rsqrt(r0.w);
    r0 = _487;
    float3 _493 = r0.www * r2.xyz;
    r2 = float4(_493.x, _493.y, _493.z, r2.w);
    float3 _500 = r1.zxy * r2.xyz;
    r3 = float4(_500.x, _500.y, _500.z, r3.w);
    float3 _512 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_512.x, _512.y, _512.z, r2.w);
    float4 _528 = r0;
    _528.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _528;
    float4 _533 = r0;
    _533.w = rsqrt(r0.w);
    r0 = _533;
    float3 _539 = r0.www * r2.xyz;
    r2 = float4(_539.x, _539.y, _539.z, r2.w);
    float3 _549 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _561 = r3;
    _561.x = mad(_549.z, r2.xyz.z, mad(_549.y, r2.xyz.y, _549.x * r2.xyz.x));
    r3 = _561;
    float3 _570 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _582 = r3;
    _582.y = mad(_570.z, r2.xyz.z, mad(_570.y, r2.xyz.y, _570.x * r2.xyz.x));
    r3 = _582;
    float3 _591 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _603 = r3;
    _603.z = mad(_591.z, r2.xyz.z, mad(_591.y, r2.xyz.y, _591.x * r2.xyz.x));
    r3 = _603;
    float3 _612 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _624 = o3;
    _624.x = mad(_612.z, r2.xyz.z, mad(_612.y, r2.xyz.y, _612.x * r2.xyz.x));
    o3 = _624;
    float4 _639 = r0;
    _639.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _639;
    float4 _644 = r0;
    _644.w = rsqrt(r0.w);
    r0 = _644;
    float3 _650 = r0.www * r3.xyz;
    r2 = float4(_650.x, _650.y, _650.z, r2.w);
    float3 _660 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _672 = r3;
    _672.x = mad(_660.z, r1.xyz.z, mad(_660.y, r1.xyz.y, _660.x * r1.xyz.x));
    r3 = _672;
    float3 _681 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _693 = r3;
    _693.y = mad(_681.z, r1.xyz.z, mad(_681.y, r1.xyz.y, _681.x * r1.xyz.x));
    r3 = _693;
    float3 _702 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _714 = r3;
    _714.z = mad(_702.z, r1.xyz.z, mad(_702.y, r1.xyz.y, _702.x * r1.xyz.x));
    r3 = _714;
    float3 _723 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _735 = o3;
    _735.z = mad(_723.z, r1.xyz.z, mad(_723.y, r1.xyz.y, _723.x * r1.xyz.x));
    o3 = _735;
    float4 _750 = r0;
    _750.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _750;
    float4 _755 = r0;
    _755.w = rsqrt(r0.w);
    r0 = _755;
    float3 _761 = r0.www * r3.xyz;
    r1 = float4(_761.x, _761.y, _761.z, r1.w);
    float3 _768 = r2.yzx * r1.zxy;
    r3 = float4(_768.x, _768.y, _768.z, r3.w);
    float3 _779 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_779.x, _779.y, _779.z, r3.w);
    float3 _789 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _792 = -r3.xyz;
    float3 _802 = o2;
    _802.y = mad(_789.z, _792.z, mad(_789.y, _792.y, _789.x * _792.x));
    o2 = _802;
    float3 _811 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _823 = o2;
    _823.x = mad(_811.z, r2.xyz.z, mad(_811.y, r2.xyz.y, _811.x * r2.xyz.x));
    o2 = _823;
    float4 _827 = o6;
    _827.x = r2.y;
    o6 = _827;
    float3 _836 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _848 = o2;
    _848.z = mad(_836.z, r1.xyz.z, mad(_836.y, r1.xyz.y, _836.x * r1.xyz.x));
    o2 = _848;
    float4 _852 = o6;
    _852.z = r1.y;
    o6 = _852;
    float3 _861 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _873 = o3;
    _873.y = mad(_861.z, r3.xyz.z, mad(_861.y, r3.xyz.y, _861.x * r3.xyz.x));
    o3 = _873;
    float4 _878 = o6;
    _878.y = -r3.y;
    o6 = _878;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _909 = r0;
    _909.w = r0.y * cb0_m[13].x;
    r0 = _909;
    float4 _916 = r1;
    _916.x = r0.w * asfloat(3216550459u);
    r1 = _916;
    float4 _921 = r1;
    _921.x = exp2(r1.x);
    r1 = _921;
    float4 _928 = r1;
    _928.x = (-r1.x) + asfloat(1065353216u);
    r1 = _928;
    float4 _935 = r0;
    _935.w = r1.x / r0.w;
    r0 = _935;
    float4 _947 = r1;
    _947.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _947;
    float4 _962 = r0;
    _962.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _962;
    float4 _967 = r0;
    _967.x = sqrt(r0.x);
    r0 = _967;
    float4 _975 = r0;
    _975.x = r0.x * cb0_m[13].y;
    r0 = _975;
    float4 _985 = r0;
    _985.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _985;
    float4 _997 = r0;
    _997.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _997;
    float4 _1003 = r0;
    _1003.x = exp2(-r0.x);
    r0 = _1003;
    float4 _1009 = r0;
    _1009.x = min(r0.x, asfloat(1065353216u));
    r0 = _1009;
    float4 _1016 = o6;
    _1016.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1016;
}

void vert_main()
{
    float2 _1020 = asfloat(v0);
    shader_in[0] = float4(_1020.x, _1020.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
