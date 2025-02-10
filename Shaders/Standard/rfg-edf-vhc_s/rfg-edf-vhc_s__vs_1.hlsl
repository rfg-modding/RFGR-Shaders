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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _59 = r0;
    _59.w = asfloat(1065353216u);
    r0 = _59;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _69 = r1;
    _69.w = asfloat(1065353216u);
    r1 = _69;
    float4 _84 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _98 = r0;
    _98.x = mad(_84.w, r1.w, mad(_84.z, r1.z, mad(_84.y, r1.y, _84.x * r1.x)));
    r0 = _98;
    float4 _110 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _124 = r0;
    _124.y = mad(_110.w, r1.w, mad(_110.z, r1.z, mad(_110.y, r1.y, _110.x * r1.x)));
    r0 = _124;
    float4 _136 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _150 = r0;
    _150.z = mad(_136.w, r1.w, mad(_136.z, r1.z, mad(_136.y, r1.y, _136.x * r1.x)));
    r0 = _150;
    float4 _161 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _175 = o0;
    _175.x = mad(_161.w, r0.w, mad(_161.z, r0.z, mad(_161.y, r0.y, _161.x * r0.x)));
    o0 = _175;
    float4 _186 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _200 = o0;
    _200.y = mad(_186.w, r0.w, mad(_186.z, r0.z, mad(_186.y, r0.y, _186.x * r0.x)));
    o0 = _200;
    float4 _211 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _225 = o0;
    _225.z = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float4 _237 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _251 = o0;
    _251.w = mad(_237.w, r0.w, mad(_237.z, r0.z, mad(_237.y, r0.y, _237.x * r0.x)));
    o0 = _251;
    float2 _257 = float2(asint(shader_in[2].xy));
    r1 = float4(_257.x, _257.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _278 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
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
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
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
    float3 _526 = o2;
    _526.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _526;
    float3 _541 = o2;
    _541.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _541;
    float3 _556 = o2;
    _556.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _556;
    float3 _570 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_570.x, _570.y, _570.z, r4.w);
    float3 _584 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_584.x, _584.y, _584.z, r0.w);
    float4 _600 = r0;
    _600.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _600;
    float4 _605 = r0;
    _605.w = rsqrt(r0.w);
    r0 = _605;
    float3 _611 = r0.www * r4.xyz;
    r4 = float4(_611.x, _611.y, _611.z, r4.w);
    float3 _627 = o3;
    _627.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _627;
    float3 _636 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _648 = o4;
    _648.x = mad(_636.z, r2.xyz.z, mad(_636.y, r2.xyz.y, _636.x * r2.xyz.x));
    o4 = _648;
    float3 _663 = o3;
    _663.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _663;
    float3 _672 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _684 = o4;
    _684.z = mad(_672.z, r1.xyz.z, mad(_672.y, r1.xyz.y, _672.x * r1.xyz.x));
    o4 = _684;
    float3 _699 = o3;
    _699.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _699;
    float3 _708 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _720 = o4;
    _720.y = mad(_708.z, r3.xyz.z, mad(_708.y, r3.xyz.y, _708.x * r3.xyz.x));
    o4 = _720;
    float4 _729 = r0;
    _729.w = r0.y * cb0_m[13].x;
    r0 = _729;
    float4 _736 = r1;
    _736.x = r0.w * asfloat(3216550459u);
    r1 = _736;
    float4 _741 = r1;
    _741.x = exp2(r1.x);
    r1 = _741;
    float4 _748 = r1;
    _748.x = (-r1.x) + asfloat(1065353216u);
    r1 = _748;
    float4 _755 = r0;
    _755.w = r1.x / r0.w;
    r0 = _755;
    float4 _767 = r1;
    _767.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _767;
    float4 _782 = r0;
    _782.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _782;
    float4 _787 = r0;
    _787.x = sqrt(r0.x);
    r0 = _787;
    float4 _795 = r0;
    _795.x = r0.x * cb0_m[13].y;
    r0 = _795;
    float4 _805 = r0;
    _805.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _805;
    float4 _817 = r0;
    _817.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _817;
    float4 _823 = r0;
    _823.x = exp2(-r0.x);
    r0 = _823;
    float4 _829 = r0;
    _829.x = min(r0.x, asfloat(1065353216u));
    r0 = _829;
    float4 _836 = o4;
    _836.w = (-r0.x) + asfloat(1065353216u);
    o4 = _836;
    float2 _842 = float2(asint(shader_in[1].xy));
    r0 = float4(_842.x, _842.y, r0.z, r0.w);
    float2 _854 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r0 = float4(_854.x, _854.y, r0.z, r0.w);
    float2 _860 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_860.x, _860.y, r0.z, r0.w);
    float2 _871 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(o5.x, o5.y, _871.x, _871.y);
    o5 = float4(r0.xy.x, r0.xy.y, o5.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _884 = asfloat(v1);
    shader_in[1] = float4(_884.x, _884.y, shader_in[1].z, shader_in[1].w);
    float2 _889 = asfloat(v2);
    shader_in[2] = float4(_889.x, _889.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
