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
    float2 _268 = r1.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_268.x, _268.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _290 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_290.x, _290.y, _290.z, r1.w);
    float3 _300 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _313 = r2;
    _313.x = mad(_300.z, r1.xyz.z, mad(_300.y, r1.xyz.y, _300.x * r1.xyz.x));
    r2 = _313;
    float3 _322 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _334 = r2;
    _334.y = mad(_322.z, r1.xyz.z, mad(_322.y, r1.xyz.y, _322.x * r1.xyz.x));
    r2 = _334;
    float3 _343 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _355 = r2;
    _355.z = mad(_343.z, r1.xyz.z, mad(_343.y, r1.xyz.y, _343.x * r1.xyz.x));
    r2 = _355;
    float4 _370 = r0;
    _370.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _370;
    float4 _375 = r0;
    _375.w = rsqrt(r0.w);
    r0 = _375;
    float3 _381 = r0.www * r2.xyz;
    r1 = float4(_381.x, _381.y, _381.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _401 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _414 = r3;
    _414.x = mad(_401.z, r2.xyz.z, mad(_401.y, r2.xyz.y, _401.x * r2.xyz.x));
    r3 = _414;
    float3 _423 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _435 = r3;
    _435.y = mad(_423.z, r2.xyz.z, mad(_423.y, r2.xyz.y, _423.x * r2.xyz.x));
    r3 = _435;
    float3 _444 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _456 = r3;
    _456.z = mad(_444.z, r2.xyz.z, mad(_444.y, r2.xyz.y, _444.x * r2.xyz.x));
    r3 = _456;
    float4 _471 = r0;
    _471.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _471;
    float4 _476 = r0;
    _476.w = rsqrt(r0.w);
    r0 = _476;
    float3 _482 = r0.www * r3.xyz;
    r2 = float4(_482.x, _482.y, _482.z, r2.w);
    float3 _489 = r1.zxy * r2.yzx;
    r3 = float4(_489.x, _489.y, _489.z, r3.w);
    float3 _500 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_500.x, _500.y, _500.z, r3.w);
    float3 _507 = r2.www * r3.xyz;
    r3 = float4(_507.x, _507.y, _507.z, r3.w);
    float3 _521 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_521.x, _521.y, _521.z, r4.w);
    float3 _538 = o2;
    _538.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _538;
    float3 _553 = o2;
    _553.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _553;
    float3 _568 = o2;
    _568.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _568;
    float3 _582 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_582.x, _582.y, _582.z, r4.w);
    float3 _596 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_596.x, _596.y, _596.z, r0.w);
    float4 _612 = r0;
    _612.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _612;
    float4 _617 = r0;
    _617.w = rsqrt(r0.w);
    r0 = _617;
    float3 _623 = r0.www * r4.xyz;
    r4 = float4(_623.x, _623.y, _623.z, r4.w);
    float3 _639 = o3;
    _639.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _639;
    float3 _648 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _660 = o4;
    _660.x = mad(_648.z, r2.xyz.z, mad(_648.y, r2.xyz.y, _648.x * r2.xyz.x));
    o4 = _660;
    float3 _675 = o3;
    _675.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _675;
    float3 _684 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _696 = o4;
    _696.z = mad(_684.z, r1.xyz.z, mad(_684.y, r1.xyz.y, _684.x * r1.xyz.x));
    o4 = _696;
    float3 _711 = o3;
    _711.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _711;
    float3 _720 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _732 = o4;
    _732.y = mad(_720.z, r3.xyz.z, mad(_720.y, r3.xyz.y, _720.x * r3.xyz.x));
    o4 = _732;
    float4 _741 = r0;
    _741.w = r0.y * cb0_m[13].x;
    r0 = _741;
    float4 _748 = r1;
    _748.x = r0.w * asfloat(3216550459u);
    r1 = _748;
    float4 _753 = r1;
    _753.x = exp2(r1.x);
    r1 = _753;
    float4 _760 = r1;
    _760.x = (-r1.x) + asfloat(1065353216u);
    r1 = _760;
    float4 _767 = r0;
    _767.w = r1.x / r0.w;
    r0 = _767;
    float4 _779 = r1;
    _779.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _779;
    float4 _794 = r0;
    _794.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _794;
    float4 _799 = r0;
    _799.x = sqrt(r0.x);
    r0 = _799;
    float4 _807 = r0;
    _807.x = r0.x * cb0_m[13].y;
    r0 = _807;
    float4 _817 = r0;
    _817.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _817;
    float4 _829 = r0;
    _829.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _829;
    float4 _835 = r0;
    _835.x = exp2(-r0.x);
    r0 = _835;
    float4 _841 = r0;
    _841.x = min(r0.x, asfloat(1065353216u));
    r0 = _841;
    float4 _848 = o4;
    _848.w = (-r0.x) + asfloat(1065353216u);
    o4 = _848;
    float2 _854 = float2(asint(shader_in[1].xy));
    r0 = float4(_854.x, _854.y, r0.z, r0.w);
    float2 _860 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_860.x, _860.y, o5.z, o5.w);
    float2 _867 = float2(asint(shader_in[3].xy));
    r0 = float4(_867.x, _867.y, r0.z, r0.w);
    float2 _873 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _873.x, _873.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _882 = asfloat(v1);
    shader_in[1] = float4(_882.x, _882.y, shader_in[1].z, shader_in[1].w);
    float2 _887 = asfloat(v2);
    shader_in[2] = float4(_887.x, _887.y, shader_in[2].z, shader_in[2].w);
    float2 _892 = asfloat(v3);
    shader_in[3] = float4(_892.x, _892.y, shader_in[3].z, shader_in[3].w);
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
