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
static float3 v0;
static float3 v1;
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float4 o2;
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
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _81 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _95 = r0;
    _95.y = mad(_81.w, r1.w, mad(_81.z, r1.z, mad(_81.y, r1.y, _81.x * r1.x)));
    r0 = _95;
    float4 _106 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _120 = r0;
    _120.x = mad(_106.w, r1.w, mad(_106.z, r1.z, mad(_106.y, r1.y, _106.x * r1.x)));
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
    r1 = float4(_261.x, _261.y, _261.z, r1.w);
    float2 _273 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_273.x, _273.y, r0.z, r0.w);
    float2 _290 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _290.x, _290.y);
    o1 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    float4 _315 = r0;
    _315.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _315;
    float4 _320 = o2;
    _320.w = sqrt(r0.z);
    o2 = _320;
    float4 _325 = r0;
    _325.z = rsqrt(r0.z);
    r0 = _325;
    float3 _331 = r0.zzz * r1.xyz;
    r1 = float4(_331.x, _331.y, _331.z, r1.w);
    float3 _345 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_345.x, _345.y, _345.z, r2.w);
    float3 _356 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _369 = r3;
    _369.x = mad(_356.z, r2.xyz.z, mad(_356.y, r2.xyz.y, _356.x * r2.xyz.x));
    r3 = _369;
    float3 _378 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _390 = r3;
    _390.y = mad(_378.z, r2.xyz.z, mad(_378.y, r2.xyz.y, _378.x * r2.xyz.x));
    r3 = _390;
    float3 _399 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _411 = r3;
    _411.z = mad(_399.z, r2.xyz.z, mad(_399.y, r2.xyz.y, _399.x * r2.xyz.x));
    r3 = _411;
    float4 _426 = r0;
    _426.z = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _426;
    float4 _431 = r0;
    _431.z = rsqrt(r0.z);
    r0 = _431;
    float3 _437 = r0.zzz * r3.xyz;
    r2 = float4(_437.x, _437.y, _437.z, r2.w);
    float3 _444 = r2.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r3 = float4(_444.x, _444.y, _444.z, r3.w);
    float3 _455 = (r2.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r3.xyz);
    r3 = float4(_455.x, _455.y, _455.z, r3.w);
    float4 _468 = r0;
    _468.z = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _468;
    float4 _473 = r0;
    _473.z = rsqrt(r0.z);
    r0 = _473;
    float3 _479 = r0.zzz * r3.xyz;
    r3 = float4(_479.x, _479.y, _479.z, r3.w);
    float3 _487 = r2.yzx * (-r3.xyz);
    r4 = float4(_487.x, _487.y, _487.z, r4.w);
    float3 _500 = ((-r3.zxy) * r2.zxy) + (-r4.xyz);
    r4 = float4(_500.x, _500.y, _500.z, r4.w);
    float4 _516 = o2;
    _516.x = mad(r1.xyz.z, r4.xyz.z, mad(r1.xyz.y, r4.xyz.y, r1.xyz.x * r4.xyz.x));
    o2 = _516;
    float3 _525 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _537 = o3;
    _537.x = mad(_525.z, r4.xyz.z, mad(_525.y, r4.xyz.y, _525.x * r4.xyz.x));
    o3 = _537;
    float4 _552 = o2;
    _552.z = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    o2 = _552;
    float3 _561 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _573 = o3;
    _573.z = mad(_561.z, r2.xyz.z, mad(_561.y, r2.xyz.y, _561.x * r2.xyz.x));
    o3 = _573;
    float2 _579 = -r3.xz;
    float4 _586 = o2;
    _586.y = mad(r1.zy.y, _579.y, r1.zy.x * _579.x);
    o2 = _586;
    float2 _593 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _596 = -r3.xz;
    float4 _603 = o3;
    _603.y = mad(_593.y, _596.y, _593.x * _596.x);
    o3 = _603;
    float4 _610 = r0;
    _610.z = float(asint(shader_in[2].x));
    r0 = _610;
    float4 _617 = o3;
    _617.w = r0.z * asfloat(981467136u);
    o3 = _617;
    float2 _630 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(r0.x, r0.y, _630.x, _630.y);
    float2 _641 = r0.zw * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(_641.x, _641.y, o4.z, o4.w);
    float2 _655 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r0 = float4(r0.x, r0.y, _655.x, _655.y);
    float2 _666 = r0.zw * float2(cb2_m[7].x, cb2_m[7].y);
    o4 = float4(o4.x, o4.y, _666.x, _666.y);
    float2 _676 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(r0.x, r0.y, _676.x, _676.y);
    float2 _690 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_690.x, _690.y, r0.z, r0.w);
    float2 _701 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o5 = float4(o5.x, o5.y, _701.x, _701.y);
    float2 _713 = r0.zw + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_713.x, _713.y, r0.z, r0.w);
    float2 _724 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_724.x, _724.y, o5.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _739 = shader_in[2];
    _739.x = asfloat(v2);
    shader_in[2] = _739;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
