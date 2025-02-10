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
static int2 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
    float4 _80 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _94 = r0;
    _94.x = mad(_80.w, r1.w, mad(_80.z, r1.z, mad(_80.y, r1.y, _80.x * r1.x)));
    r0 = _94;
    float4 _106 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _120 = r0;
    _120.y = mad(_106.w, r1.w, mad(_106.z, r1.z, mad(_106.y, r1.y, _106.x * r1.x)));
    r0 = _120;
    float4 _132 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _146 = r0;
    _146.z = mad(_132.w, r1.w, mad(_132.z, r1.z, mad(_132.y, r1.y, _132.x * r1.x)));
    r0 = _146;
    float4 _157 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _171 = o0;
    _171.x = mad(_157.w, r0.w, mad(_157.z, r0.z, mad(_157.y, r0.y, _157.x * r0.x)));
    o0 = _171;
    float4 _182 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _196 = o0;
    _196.y = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _221 = o0;
    _221.z = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float4 _233 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _247 = o0;
    _247.w = mad(_233.w, r0.w, mad(_233.z, r0.z, mad(_233.y, r0.y, _233.x * r0.x)));
    o0 = _247;
    float3 _261 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_261.x, _261.y, _261.z, r0.w);
    float3 _275 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_275.x, _275.y, _275.z, r1.w);
    float3 _285 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _298 = r2;
    _298.x = mad(_285.z, r1.xyz.z, mad(_285.y, r1.xyz.y, _285.x * r1.xyz.x));
    r2 = _298;
    float3 _307 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _319 = r2;
    _319.y = mad(_307.z, r1.xyz.z, mad(_307.y, r1.xyz.y, _307.x * r1.xyz.x));
    r2 = _319;
    float3 _328 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _340 = r2;
    _340.z = mad(_328.z, r1.xyz.z, mad(_328.y, r1.xyz.y, _328.x * r1.xyz.x));
    r2 = _340;
    float4 _355 = r0;
    _355.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _355;
    float4 _360 = r0;
    _360.w = rsqrt(r0.w);
    r0 = _360;
    float3 _366 = r0.www * r2.xyz;
    r1 = float4(_366.x, _366.y, _366.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _385 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _398 = r3;
    _398.x = mad(_385.z, r2.xyz.z, mad(_385.y, r2.xyz.y, _385.x * r2.xyz.x));
    r3 = _398;
    float3 _407 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _419 = r3;
    _419.y = mad(_407.z, r2.xyz.z, mad(_407.y, r2.xyz.y, _407.x * r2.xyz.x));
    r3 = _419;
    float3 _428 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _440 = r3;
    _440.z = mad(_428.z, r2.xyz.z, mad(_428.y, r2.xyz.y, _428.x * r2.xyz.x));
    r3 = _440;
    float4 _455 = r0;
    _455.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _455;
    float4 _460 = r0;
    _460.w = rsqrt(r0.w);
    r0 = _460;
    float3 _466 = r0.www * r3.xyz;
    r2 = float4(_466.x, _466.y, _466.z, r2.w);
    float3 _473 = r1.zxy * r2.yzx;
    r3 = float4(_473.x, _473.y, _473.z, r3.w);
    float3 _484 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_484.x, _484.y, _484.z, r3.w);
    float3 _491 = r2.www * r3.xyz;
    r3 = float4(_491.x, _491.y, _491.z, r3.w);
    float3 _501 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _513 = o1;
    _513.y = mad(_501.z, r3.xyz.z, mad(_501.y, r3.xyz.y, _501.x * r3.xyz.x));
    o1 = _513;
    float3 _522 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _534 = o1;
    _534.z = mad(_522.z, r1.xyz.z, mad(_522.y, r1.xyz.y, _522.x * r1.xyz.x));
    o1 = _534;
    float3 _543 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _555 = o1;
    _555.x = mad(_543.z, r2.xyz.z, mad(_543.y, r2.xyz.y, _543.x * r2.xyz.x));
    o1 = _555;
    float4 _570 = r0;
    _570.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _570;
    float4 _575 = r0;
    _575.w = rsqrt(r0.w);
    r0 = _575;
    float3 _581 = r0.www * r0.xyz;
    r0 = float4(_581.x, _581.y, _581.z, r0.w);
    float3 _597 = o2;
    _597.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _597;
    float3 _612 = o2;
    _612.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _612;
    float3 _627 = o2;
    _627.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _627;
    float2 _634 = float2(asint(shader_in[1].xy));
    r0 = float4(_634.x, _634.y, r0.z, r0.w);
    float2 _645 = r0.xy * float2(cb2_m[3].x, cb2_m[3].y);
    r0 = float4(_645.x, _645.y, r0.z, r0.w);
    float2 _654 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_654.x, _654.y, o3.z, o3.w);
    float2 _662 = float2(asint(shader_in[4].xy));
    r0 = float4(_662.x, _662.y, r0.z, r0.w);
    float2 _668 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _668.x, _668.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _677 = asfloat(v1);
    shader_in[1] = float4(_677.x, _677.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _688 = asfloat(v4);
    shader_in[4] = float4(_688.x, _688.y, shader_in[4].z, shader_in[4].w);
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
