cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
    float4 _81 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _95 = r0;
    _95.x = mad(_81.w, r1.w, mad(_81.z, r1.z, mad(_81.y, r1.y, _81.x * r1.x)));
    r0 = _95;
    float4 _107 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _121 = r0;
    _121.y = mad(_107.w, r1.w, mad(_107.z, r1.z, mad(_107.y, r1.y, _107.x * r1.x)));
    r0 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r0;
    _147.z = mad(_133.w, r1.w, mad(_133.z, r1.z, mad(_133.y, r1.y, _133.x * r1.x)));
    r0 = _147;
    float4 _158 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _172 = o0;
    _172.x = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _183 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _197 = o0;
    _197.y = mad(_183.w, r0.w, mad(_183.z, r0.z, mad(_183.y, r0.y, _183.x * r0.x)));
    o0 = _197;
    float4 _208 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _222 = o0;
    _222.z = mad(_208.w, r0.w, mad(_208.z, r0.z, mad(_208.y, r0.y, _208.x * r0.x)));
    o0 = _222;
    float4 _234 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _248 = o0;
    _248.w = mad(_234.w, r0.w, mad(_234.z, r0.z, mad(_234.y, r0.y, _234.x * r0.x)));
    o0 = _248;
    float3 _262 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_262.x, _262.y, _262.z, r0.w);
    float2 _269 = float2(asint(shader_in[1].xy));
    r1 = float4(_269.x, _269.y, r1.z, r1.w);
    float2 _280 = r1.xy * float2(cb2_m[3].x, cb2_m[3].y);
    r1 = float4(_280.x, _280.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _301 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_301.x, _301.y, _301.z, r1.w);
    float3 _311 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _324 = r2;
    _324.x = mad(_311.z, r1.xyz.z, mad(_311.y, r1.xyz.y, _311.x * r1.xyz.x));
    r2 = _324;
    float3 _333 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _345 = r2;
    _345.y = mad(_333.z, r1.xyz.z, mad(_333.y, r1.xyz.y, _333.x * r1.xyz.x));
    r2 = _345;
    float3 _354 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _366 = r2;
    _366.z = mad(_354.z, r1.xyz.z, mad(_354.y, r1.xyz.y, _354.x * r1.xyz.x));
    r2 = _366;
    float4 _381 = r0;
    _381.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _381;
    float4 _386 = r0;
    _386.w = rsqrt(r0.w);
    r0 = _386;
    float3 _392 = r0.www * r2.xyz;
    r1 = float4(_392.x, _392.y, _392.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _411 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _424 = r3;
    _424.x = mad(_411.z, r2.xyz.z, mad(_411.y, r2.xyz.y, _411.x * r2.xyz.x));
    r3 = _424;
    float3 _433 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _445 = r3;
    _445.y = mad(_433.z, r2.xyz.z, mad(_433.y, r2.xyz.y, _433.x * r2.xyz.x));
    r3 = _445;
    float3 _454 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _466 = r3;
    _466.z = mad(_454.z, r2.xyz.z, mad(_454.y, r2.xyz.y, _454.x * r2.xyz.x));
    r3 = _466;
    float4 _481 = r0;
    _481.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _481;
    float4 _486 = r0;
    _486.w = rsqrt(r0.w);
    r0 = _486;
    float3 _492 = r0.www * r3.xyz;
    r2 = float4(_492.x, _492.y, _492.z, r2.w);
    float3 _499 = r1.zxy * r2.yzx;
    r3 = float4(_499.x, _499.y, _499.z, r3.w);
    float3 _510 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_510.x, _510.y, _510.z, r3.w);
    float3 _517 = r2.www * r3.xyz;
    r3 = float4(_517.x, _517.y, _517.z, r3.w);
    float3 _527 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _539 = o2;
    _539.y = mad(_527.z, r3.xyz.z, mad(_527.y, r3.xyz.y, _527.x * r3.xyz.x));
    o2 = _539;
    float3 _548 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _560 = o2;
    _560.z = mad(_548.z, r1.xyz.z, mad(_548.y, r1.xyz.y, _548.x * r1.xyz.x));
    o2 = _560;
    float3 _569 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _581 = o2;
    _581.x = mad(_569.z, r2.xyz.z, mad(_569.y, r2.xyz.y, _569.x * r2.xyz.x));
    o2 = _581;
    float4 _596 = r0;
    _596.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _596;
    float4 _601 = r0;
    _601.w = rsqrt(r0.w);
    r0 = _601;
    float3 _607 = r0.www * r0.xyz;
    r0 = float4(_607.x, _607.y, _607.z, r0.w);
    float3 _623 = o3;
    _623.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _623;
    float3 _638 = o3;
    _638.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _638;
    float3 _653 = o3;
    _653.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _653;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _661 = asfloat(v1);
    shader_in[1] = float4(_661.x, _661.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
