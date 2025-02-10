cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float4 r4;

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
    float3 _312 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _323 = r2;
    _323.x = mad(r1.xyz.z, _312.z, mad(r1.xyz.y, _312.y, r1.xyz.x * _312.x));
    r2 = _323;
    float3 _334 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _344 = r2;
    _344.z = mad(r1.xyz.z, _334.z, mad(r1.xyz.y, _334.y, r1.xyz.x * _334.x));
    r2 = _344;
    float3 _355 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _365 = r0;
    _365.w = mad(r1.xyz.z, _355.z, mad(r1.xyz.y, _355.y, r1.xyz.x * _355.x));
    r0 = _365;
    float4 _374 = r0;
    _374.w = r0.w * cb5_m[5].y;
    r0 = _374;
    float2 _384 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_384.x, r1.y, _384.y, r1.w);
    float4 _389 = r1;
    _389.w = asfloat(3212836864u);
    r1 = _389;
    float4 _396 = r1;
    _396.y = r0.w * r1.w;
    r1 = _396;
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _407 = o3;
    _407.w = r1.z;
    o3 = _407;
    float3 _420 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_420.x, _420.y, _420.z, r1.w);
    float3 _435 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_435.x, _435.y, _435.z, r0.w);
    float3 _448 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_448.x, _448.y, _448.z, r2.w);
    float3 _462 = r2.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r3 = float4(_462.x, _462.y, _462.z, r3.w);
    float3 _481 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r2.xyz) + (-r3.xyz);
    r3 = float4(_481.x, _481.y, _481.z, r3.w);
    float4 _497 = r0;
    _497.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _497;
    float4 _502 = r0;
    _502.w = rsqrt(r0.w);
    r0 = _502;
    float3 _508 = r0.www * r3.xyz;
    r3 = float4(_508.x, _508.y, _508.z, r3.w);
    float3 _515 = r2.zxy * r3.xyz;
    r4 = float4(_515.x, _515.y, _515.z, r4.w);
    float3 _527 = (r2.yzx * r3.yzx) + (-r4.xyz);
    r3 = float4(_527.x, _527.y, _527.z, r3.w);
    float4 _543 = r0;
    _543.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _543;
    float4 _548 = r0;
    _548.w = rsqrt(r0.w);
    r0 = _548;
    float3 _554 = r0.www * r3.xyz;
    r3 = float4(_554.x, _554.y, _554.z, r3.w);
    float3 _564 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _576 = r4;
    _576.x = mad(_564.z, r3.xyz.z, mad(_564.y, r3.xyz.y, _564.x * r3.xyz.x));
    r4 = _576;
    float3 _585 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _597 = r4;
    _597.y = mad(_585.z, r3.xyz.z, mad(_585.y, r3.xyz.y, _585.x * r3.xyz.x));
    r4 = _597;
    float3 _606 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _618 = r4;
    _618.z = mad(_606.z, r3.xyz.z, mad(_606.y, r3.xyz.y, _606.x * r3.xyz.x));
    r4 = _618;
    float3 _627 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _639 = o3;
    _639.x = mad(_627.z, r3.xyz.z, mad(_627.y, r3.xyz.y, _627.x * r3.xyz.x));
    o3 = _639;
    float4 _654 = r0;
    _654.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _654;
    float4 _659 = r0;
    _659.w = rsqrt(r0.w);
    r0 = _659;
    float3 _665 = r0.www * r4.xyz;
    r3 = float4(_665.x, _665.y, _665.z, r3.w);
    float3 _675 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _687 = r4;
    _687.x = mad(_675.z, r2.xyz.z, mad(_675.y, r2.xyz.y, _675.x * r2.xyz.x));
    r4 = _687;
    float3 _696 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _708 = r4;
    _708.y = mad(_696.z, r2.xyz.z, mad(_696.y, r2.xyz.y, _696.x * r2.xyz.x));
    r4 = _708;
    float3 _717 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _729 = r4;
    _729.z = mad(_717.z, r2.xyz.z, mad(_717.y, r2.xyz.y, _717.x * r2.xyz.x));
    r4 = _729;
    float3 _738 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _750 = o3;
    _750.z = mad(_738.z, r2.xyz.z, mad(_738.y, r2.xyz.y, _738.x * r2.xyz.x));
    o3 = _750;
    float4 _765 = r0;
    _765.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _765;
    float4 _770 = r0;
    _770.w = rsqrt(r0.w);
    r0 = _770;
    float3 _776 = r0.www * r4.xyz;
    r2 = float4(_776.x, _776.y, _776.z, r2.w);
    float3 _783 = r3.yzx * r2.zxy;
    r4 = float4(_783.x, _783.y, _783.z, r4.w);
    float3 _794 = (r2.yzx * r3.zxy) + (-r4.xyz);
    r4 = float4(_794.x, _794.y, _794.z, r4.w);
    float3 _801 = -r4.xyz;
    float3 _811 = o2;
    _811.y = mad(r1.xyz.z, _801.z, mad(r1.xyz.y, _801.y, r1.xyz.x * _801.x));
    o2 = _811;
    float3 _826 = o2;
    _826.x = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o2 = _826;
    float3 _835 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _847 = o6;
    _847.x = mad(_835.z, r3.xyz.z, mad(_835.y, r3.xyz.y, _835.x * r3.xyz.x));
    o6 = _847;
    float3 _862 = o2;
    _862.z = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    o2 = _862;
    float3 _871 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _883 = o6;
    _883.z = mad(_871.z, r2.xyz.z, mad(_871.y, r2.xyz.y, _871.x * r2.xyz.x));
    o6 = _883;
    float3 _892 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _904 = o3;
    _904.y = mad(_892.z, r4.xyz.z, mad(_892.y, r4.xyz.y, _892.x * r4.xyz.x));
    o3 = _904;
    float3 _913 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _916 = -r4.xyz;
    float4 _926 = o6;
    _926.y = mad(_913.z, _916.z, mad(_913.y, _916.y, _913.x * _916.x));
    o6 = _926;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _957 = r0;
    _957.w = r0.y * cb0_m[13].x;
    r0 = _957;
    float4 _964 = r1;
    _964.x = r0.w * asfloat(3216550459u);
    r1 = _964;
    float4 _969 = r1;
    _969.x = exp2(r1.x);
    r1 = _969;
    float4 _976 = r1;
    _976.x = (-r1.x) + asfloat(1065353216u);
    r1 = _976;
    float4 _983 = r0;
    _983.w = r1.x / r0.w;
    r0 = _983;
    float4 _995 = r1;
    _995.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _995;
    float4 _1010 = r0;
    _1010.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _1010;
    float4 _1015 = r0;
    _1015.x = sqrt(r0.x);
    r0 = _1015;
    float4 _1023 = r0;
    _1023.x = r0.x * cb0_m[13].y;
    r0 = _1023;
    float4 _1033 = r0;
    _1033.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _1033;
    float4 _1045 = r0;
    _1045.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _1045;
    float4 _1051 = r0;
    _1051.x = exp2(-r0.x);
    r0 = _1051;
    float4 _1057 = r0;
    _1057.x = min(r0.x, asfloat(1065353216u));
    r0 = _1057;
    float4 _1064 = o6;
    _1064.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1064;
}

void vert_main()
{
    float2 _1068 = asfloat(v0);
    shader_in[0] = float4(_1068.x, _1068.y, shader_in[0].z, shader_in[0].w);
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
