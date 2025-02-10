cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _68 = r1;
    _68.w = asfloat(1065353216u);
    r1 = _68;
    float4 _83 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _97 = r0;
    _97.x = mad(_83.w, r1.w, mad(_83.z, r1.z, mad(_83.y, r1.y, _83.x * r1.x)));
    r0 = _97;
    float4 _109 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _123 = r0;
    _123.y = mad(_109.w, r1.w, mad(_109.z, r1.z, mad(_109.y, r1.y, _109.x * r1.x)));
    r0 = _123;
    float4 _135 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _149 = r0;
    _149.z = mad(_135.w, r1.w, mad(_135.z, r1.z, mad(_135.y, r1.y, _135.x * r1.x)));
    r0 = _149;
    float4 _160 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _174 = o0;
    _174.x = mad(_160.w, r0.w, mad(_160.z, r0.z, mad(_160.y, r0.y, _160.x * r0.x)));
    o0 = _174;
    float4 _185 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _199 = o0;
    _199.y = mad(_185.w, r0.w, mad(_185.z, r0.z, mad(_185.y, r0.y, _185.x * r0.x)));
    o0 = _199;
    float4 _210 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _224 = o0;
    _224.z = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float4 _236 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _250 = o0;
    _250.w = mad(_236.w, r0.w, mad(_236.z, r0.z, mad(_236.y, r0.y, _236.x * r0.x)));
    o0 = _250;
    float2 _256 = float2(asint(shader_in[3].xy));
    r1 = float4(_256.x, _256.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _278 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float3 _288 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _301 = r2;
    _301.x = mad(_288.z, r1.xyz.z, mad(_288.y, r1.xyz.y, _288.x * r1.xyz.x));
    r2 = _301;
    float3 _310 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _322 = r2;
    _322.y = mad(_310.z, r1.xyz.z, mad(_310.y, r1.xyz.y, _310.x * r1.xyz.x));
    r2 = _322;
    float3 _331 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _343 = r2;
    _343.z = mad(_331.z, r1.xyz.z, mad(_331.y, r1.xyz.y, _331.x * r1.xyz.x));
    r2 = _343;
    float4 _358 = r0;
    _358.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _358;
    float4 _363 = r0;
    _363.w = rsqrt(r0.w);
    r0 = _363;
    float3 _369 = r0.www * r2.xyz;
    r1 = float4(_369.x, _369.y, _369.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _389 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _402 = r3;
    _402.x = mad(_389.z, r2.xyz.z, mad(_389.y, r2.xyz.y, _389.x * r2.xyz.x));
    r3 = _402;
    float3 _411 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _423 = r3;
    _423.y = mad(_411.z, r2.xyz.z, mad(_411.y, r2.xyz.y, _411.x * r2.xyz.x));
    r3 = _423;
    float3 _432 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _444 = r3;
    _444.z = mad(_432.z, r2.xyz.z, mad(_432.y, r2.xyz.y, _432.x * r2.xyz.x));
    r3 = _444;
    float4 _459 = r0;
    _459.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _459;
    float4 _464 = r0;
    _464.w = rsqrt(r0.w);
    r0 = _464;
    float3 _470 = r0.www * r3.xyz;
    r2 = float4(_470.x, _470.y, _470.z, r2.w);
    float3 _477 = r1.zxy * r2.yzx;
    r3 = float4(_477.x, _477.y, _477.z, r3.w);
    float3 _488 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_488.x, _488.y, _488.z, r3.w);
    float3 _495 = r2.www * r3.xyz;
    r3 = float4(_495.x, _495.y, _495.z, r3.w);
    float3 _509 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_509.x, _509.y, _509.z, r4.w);
    float3 _525 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_525.x, _525.y, _525.z, r0.w);
    float3 _541 = o2;
    _541.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _541;
    float3 _550 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _562 = o3;
    _562.y = mad(_550.z, r3.xyz.z, mad(_550.y, r3.xyz.y, _550.x * r3.xyz.x));
    o3 = _562;
    float3 _577 = o2;
    _577.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _577;
    float3 _586 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _598 = o3;
    _598.z = mad(_586.z, r1.xyz.z, mad(_586.y, r1.xyz.y, _586.x * r1.xyz.x));
    o3 = _598;
    float3 _613 = o2;
    _613.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _613;
    float3 _622 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _634 = o3;
    _634.x = mad(_622.z, r2.xyz.z, mad(_622.y, r2.xyz.y, _622.x * r2.xyz.x));
    o3 = _634;
    float4 _643 = r0;
    _643.w = r0.y * cb0_m[13].x;
    r0 = _643;
    float4 _650 = r1;
    _650.x = r0.w * asfloat(3216550459u);
    r1 = _650;
    float4 _655 = r1;
    _655.x = exp2(r1.x);
    r1 = _655;
    float4 _662 = r1;
    _662.x = (-r1.x) + asfloat(1065353216u);
    r1 = _662;
    float4 _669 = r0;
    _669.w = r1.x / r0.w;
    r0 = _669;
    float4 _681 = r1;
    _681.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _681;
    float4 _696 = r0;
    _696.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _696;
    float4 _701 = r0;
    _701.x = sqrt(r0.x);
    r0 = _701;
    float4 _709 = r0;
    _709.x = r0.x * cb0_m[13].y;
    r0 = _709;
    float4 _719 = r0;
    _719.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _719;
    float4 _731 = r0;
    _731.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _731;
    float4 _737 = r0;
    _737.x = exp2(-r0.x);
    r0 = _737;
    float4 _743 = r0;
    _743.x = min(r0.x, asfloat(1065353216u));
    r0 = _743;
    float4 _750 = o3;
    _750.w = (-r0.x) + asfloat(1065353216u);
    o3 = _750;
    float2 _756 = float2(asint(shader_in[2].xy));
    r0 = float4(_756.x, _756.y, r0.z, r0.w);
    float2 _767 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_767.x, _767.y, r0.z, r0.w);
    float2 _773 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _773.x, _773.y);
    float2 _780 = float2(asint(shader_in[1].xy));
    r0 = float4(_780.x, _780.y, r0.z, r0.w);
    float2 _786 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_786.x, _786.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _795 = asfloat(v1);
    shader_in[1] = float4(_795.x, _795.y, shader_in[1].z, shader_in[1].w);
    float2 _800 = asfloat(v2);
    shader_in[2] = float4(_800.x, _800.y, shader_in[2].z, shader_in[2].w);
    float2 _805 = asfloat(v3);
    shader_in[3] = float4(_805.x, _805.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
