cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
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
static float3 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

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
    float4 _119 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _133 = r0;
    _133.y = mad(_119.w, r1.w, mad(_119.z, r1.z, mad(_119.y, r1.y, _119.x * r1.x)));
    r0 = _133;
    float4 _144 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _158 = r0;
    _158.x = mad(_144.w, r1.w, mad(_144.z, r1.z, mad(_144.y, r1.y, _144.x * r1.x)));
    r0 = _158;
    float4 _170 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _184 = r0;
    _184.z = mad(_170.w, r1.w, mad(_170.z, r1.z, mad(_170.y, r1.y, _170.x * r1.x)));
    r0 = _184;
    float4 _187 = r0;
    _187.w = asfloat(1065353216u);
    r0 = _187;
    float4 _198 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _212 = o0;
    _212.x = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _237 = o0;
    _237.y = mad(_223.w, r0.w, mad(_223.z, r0.z, mad(_223.y, r0.y, _223.x * r0.x)));
    o0 = _237;
    float4 _248 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _262 = o0;
    _262.z = mad(_248.w, r0.w, mad(_248.z, r0.z, mad(_248.y, r0.y, _248.x * r0.x)));
    o0 = _262;
    float4 _274 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _288 = o0;
    _288.w = mad(_274.w, r0.w, mad(_274.z, r0.z, mad(_274.y, r0.y, _274.x * r0.x)));
    o0 = _288;
    float2 _299 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_299.x, _299.y, r1.z, r1.w);
    float2 _316 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r1 = float4(r1.x, r1.y, _316.x, _316.y);
    o1 = r1.zw * float2(cb2_m[7].x, cb2_m[7].y);
    float3 _339 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_339.x, _339.y, _339.z, r2.w);
    float3 _350 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _363 = r3;
    _363.x = mad(_350.z, r2.xyz.z, mad(_350.y, r2.xyz.y, _350.x * r2.xyz.x));
    r3 = _363;
    float3 _372 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _384 = r3;
    _384.y = mad(_372.z, r2.xyz.z, mad(_372.y, r2.xyz.y, _372.x * r2.xyz.x));
    r3 = _384;
    float3 _393 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _405 = r3;
    _405.z = mad(_393.z, r2.xyz.z, mad(_393.y, r2.xyz.y, _393.x * r2.xyz.x));
    r3 = _405;
    float4 _420 = r0;
    _420.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _420;
    float4 _425 = r0;
    _425.w = rsqrt(r0.w);
    r0 = _425;
    float3 _431 = r0.www * r3.xyz;
    r2 = float4(_431.x, _431.y, _431.z, r2.w);
    float3 _438 = r2.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r3 = float4(_438.x, _438.y, _438.z, r3.w);
    float3 _449 = (r2.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r3.xyz);
    r3 = float4(_449.x, _449.y, _449.z, r3.w);
    float4 _462 = r0;
    _462.w = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _462;
    float4 _467 = r0;
    _467.w = rsqrt(r0.w);
    r0 = _467;
    float3 _473 = r0.www * r3.xyz;
    r3 = float4(_473.x, _473.y, _473.z, r3.w);
    float3 _481 = r2.yzx * (-r3.xyz);
    r4 = float4(_481.x, _481.y, _481.z, r4.w);
    float3 _494 = ((-r3.zxy) * r2.zxy) + (-r4.xyz);
    r4 = float4(_494.x, _494.y, _494.z, r4.w);
    float3 _504 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _516 = o2;
    _516.x = mad(_504.z, r4.xyz.z, mad(_504.y, r4.xyz.y, _504.x * r4.xyz.x));
    o2 = _516;
    float2 _523 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _526 = -r3.xz;
    float3 _533 = o2;
    _533.y = mad(_523.y, _526.y, _523.x * _526.x);
    o2 = _533;
    float3 _542 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _554 = o2;
    _554.z = mad(_542.z, r2.xyz.z, mad(_542.y, r2.xyz.y, _542.x * r2.xyz.x));
    o2 = _554;
    float3 _568 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r5 = float4(_568.x, _568.y, _568.z, r5.w);
    float3 _583 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_583.x, _583.y, _583.z, r0.w);
    float4 _599 = r0;
    _599.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _599;
    float4 _604 = r0;
    _604.w = rsqrt(r0.w);
    r0 = _604;
    float3 _610 = r0.www * r5.xyz;
    r5 = float4(_610.x, _610.y, _610.z, r5.w);
    float3 _626 = o3;
    _626.z = mad(r5.xyz.z, r2.xyz.z, mad(r5.xyz.y, r2.xyz.y, r5.xyz.x * r2.xyz.x));
    o3 = _626;
    float4 _630 = o4;
    _630.z = r2.y;
    o4 = _630;
    float2 _636 = -r3.xz;
    float3 _643 = o3;
    _643.y = mad(r5.zy.y, _636.y, r5.zy.x * _636.x);
    o3 = _643;
    float4 _648 = o4;
    _648.y = -r3.z;
    o4 = _648;
    float3 _663 = o3;
    _663.x = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    o3 = _663;
    float4 _667 = o4;
    _667.x = r4.y;
    o4 = _667;
    float4 _676 = r0;
    _676.w = r0.y * cb0_m[13].x;
    r0 = _676;
    float4 _683 = r1;
    _683.z = r0.w * asfloat(3216550459u);
    r1 = _683;
    float4 _688 = r1;
    _688.z = exp2(r1.z);
    r1 = _688;
    float4 _695 = r1;
    _695.z = (-r1.z) + asfloat(1065353216u);
    r1 = _695;
    float4 _702 = r0;
    _702.w = r1.z / r0.w;
    r0 = _702;
    float4 _714 = r1;
    _714.z = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _714;
    float4 _729 = r0;
    _729.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _729;
    float4 _734 = r0;
    _734.x = sqrt(r0.x);
    r0 = _734;
    float4 _742 = r0;
    _742.x = r0.x * cb0_m[13].y;
    r0 = _742;
    float4 _752 = r0;
    _752.y = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _752;
    float4 _764 = r0;
    _764.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _764;
    float4 _770 = r0;
    _770.x = exp2(-r0.x);
    r0 = _770;
    float4 _776 = r0;
    _776.x = min(r0.x, asfloat(1065353216u));
    r0 = _776;
    float4 _783 = o4;
    _783.w = (-r0.x) + asfloat(1065353216u);
    o4 = _783;
    float2 _792 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_792.x, _792.y, r0.z, r0.w);
    float2 _805 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_805.x, _805.y, r0.z, r0.w);
    float2 _817 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _817.x, _817.y);
    float2 _830 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_830.x, _830.y, r0.z, r0.w);
    float2 _841 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_841.x, _841.y, o5.z, o5.w);
    float2 _855 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_855.x, _855.y, r0.z, r0.w);
    float2 _869 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _869.x, _869.y);
    float2 _880 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _880.x, _880.y);
    float2 _891 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_891.x, _891.y, o6.z, o6.w);
}

void vert_main()
{
    float2 _896 = asfloat(v0);
    shader_in[0] = float4(_896.x, _896.y, shader_in[0].z, shader_in[0].w);
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
