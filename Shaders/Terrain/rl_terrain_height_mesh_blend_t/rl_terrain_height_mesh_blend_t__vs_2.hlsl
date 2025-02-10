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
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float2 _57 = float2(asint(shader_in[0].xy));
    r0 = float4(_57.x, _57.y, r0.z, r0.w);
    float4 _66 = r0;
    _66.y = r0.y + asfloat(1191182336u);
    r0 = _66;
    float4 _74 = r1;
    _74.y = r0.x * asfloat(1015021568u);
    r1 = _74;
    float4 _81 = r0;
    _81.x = r0.y * asfloat(998244352u);
    r0 = _81;
    float4 _86 = r1;
    _86.z = trunc(r0.x);
    r1 = _86;
    float4 _97 = r1;
    _97.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _97;
    float4 _101 = r1;
    _101.w = asfloat(1065353216u);
    r1 = _101;
    float4 _118 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _132 = r0;
    _132.y = mad(_118.w, r1.w, mad(_118.z, r1.z, mad(_118.y, r1.y, _118.x * r1.x)));
    r0 = _132;
    float4 _143 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _157 = r0;
    _157.x = mad(_143.w, r1.w, mad(_143.z, r1.z, mad(_143.y, r1.y, _143.x * r1.x)));
    r0 = _157;
    float4 _169 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _183 = r0;
    _183.z = mad(_169.w, r1.w, mad(_169.z, r1.z, mad(_169.y, r1.y, _169.x * r1.x)));
    r0 = _183;
    float4 _186 = r0;
    _186.w = asfloat(1065353216u);
    r0 = _186;
    float4 _197 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _211 = o0;
    _211.x = mad(_197.w, r0.w, mad(_197.z, r0.z, mad(_197.y, r0.y, _197.x * r0.x)));
    o0 = _211;
    float4 _222 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _236 = o0;
    _236.y = mad(_222.w, r0.w, mad(_222.z, r0.z, mad(_222.y, r0.y, _222.x * r0.x)));
    o0 = _236;
    float4 _247 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _261 = o0;
    _261.z = mad(_247.w, r0.w, mad(_247.z, r0.z, mad(_247.y, r0.y, _247.x * r0.x)));
    o0 = _261;
    float4 _273 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _287 = o0;
    _287.w = mad(_273.w, r0.w, mad(_273.z, r0.z, mad(_273.y, r0.y, _273.x * r0.x)));
    o0 = _287;
    float3 _301 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_301.x, _301.y, _301.z, r1.w);
    float2 _313 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_313.x, _313.y, r0.z, r0.w);
    float2 _330 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _330.x, _330.y);
    o1 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    float3 _353 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_353.x, _353.y, _353.z, r2.w);
    float3 _364 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _377 = r3;
    _377.x = mad(_364.z, r2.xyz.z, mad(_364.y, r2.xyz.y, _364.x * r2.xyz.x));
    r3 = _377;
    float3 _386 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _398 = r3;
    _398.y = mad(_386.z, r2.xyz.z, mad(_386.y, r2.xyz.y, _386.x * r2.xyz.x));
    r3 = _398;
    float3 _407 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _419 = r3;
    _419.z = mad(_407.z, r2.xyz.z, mad(_407.y, r2.xyz.y, _407.x * r2.xyz.x));
    r3 = _419;
    float4 _434 = r0;
    _434.z = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _434;
    float4 _439 = r0;
    _439.z = rsqrt(r0.z);
    r0 = _439;
    float3 _445 = r0.zzz * r3.xyz;
    r2 = float4(_445.x, _445.y, _445.z, r2.w);
    float3 _452 = r2.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r3 = float4(_452.x, _452.y, _452.z, r3.w);
    float3 _463 = (r2.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r3.xyz);
    r3 = float4(_463.x, _463.y, _463.z, r3.w);
    float4 _476 = r0;
    _476.z = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _476;
    float4 _481 = r0;
    _481.z = rsqrt(r0.z);
    r0 = _481;
    float3 _487 = r0.zzz * r3.xyz;
    r3 = float4(_487.x, _487.y, _487.z, r3.w);
    float3 _495 = r2.yzx * (-r3.xyz);
    r4 = float4(_495.x, _495.y, _495.z, r4.w);
    float3 _508 = ((-r3.zxy) * r2.zxy) + (-r4.xyz);
    r4 = float4(_508.x, _508.y, _508.z, r4.w);
    float3 _518 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _530 = o2;
    _530.x = mad(_518.z, r4.xyz.z, mad(_518.y, r4.xyz.y, _518.x * r4.xyz.x));
    o2 = _530;
    float2 _537 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _540 = -r3.xz;
    float3 _547 = o2;
    _547.y = mad(_537.y, _540.y, _537.x * _540.x);
    o2 = _547;
    float3 _556 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _568 = o2;
    _568.z = mad(_556.z, r2.xyz.z, mad(_556.y, r2.xyz.y, _556.x * r2.xyz.x));
    o2 = _568;
    float4 _583 = r0;
    _583.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _583;
    float4 _588 = r0;
    _588.w = rsqrt(r0.z);
    r0 = _588;
    float4 _593 = o3;
    _593.w = sqrt(r0.z);
    o3 = _593;
    float3 _599 = r0.www * r1.xyz;
    r1 = float4(_599.x, _599.y, _599.z, r1.w);
    float4 _615 = o3;
    _615.z = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    o3 = _615;
    float2 _621 = -r3.xz;
    float4 _628 = o3;
    _628.y = mad(r1.zy.y, _621.y, r1.zy.x * _621.x);
    o3 = _628;
    float4 _643 = o3;
    _643.x = mad(r1.xyz.z, r4.xyz.z, mad(r1.xyz.y, r4.xyz.y, r1.xyz.x * r4.xyz.x));
    o3 = _643;
    float2 _656 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(r0.x, r0.y, _656.x, _656.y);
    float2 _667 = r0.zw * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(_667.x, _667.y, o4.z, o4.w);
    float2 _681 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r0 = float4(r0.x, r0.y, _681.x, _681.y);
    float2 _692 = r0.zw * float2(cb2_m[7].x, cb2_m[7].y);
    o4 = float4(o4.x, o4.y, _692.x, _692.y);
    float2 _702 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(r0.x, r0.y, _702.x, _702.y);
    float2 _716 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_716.x, _716.y, r0.z, r0.w);
    float2 _727 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o5 = float4(o5.x, o5.y, _727.x, _727.y);
    float2 _739 = r0.zw + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_739.x, _739.y, r0.z, r0.w);
    float2 _751 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_751.x, _751.y, o5.z, o5.w);
}

void vert_main()
{
    float2 _756 = asfloat(v0);
    shader_in[0] = float4(_756.x, _756.y, shader_in[0].z, shader_in[0].w);
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
