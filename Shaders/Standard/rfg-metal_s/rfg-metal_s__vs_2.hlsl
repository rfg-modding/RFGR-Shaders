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
    float4 cb2_m[3] : packoffset(c0);
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
    float2 _268 = float2(asint(shader_in[1].xy));
    r1 = float4(_268.x, _268.y, r1.z, r1.w);
    float2 _279 = r1.xy * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(_279.x, _279.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _300 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_300.x, _300.y, _300.z, r1.w);
    float3 _310 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _323 = r2;
    _323.x = mad(_310.z, r1.xyz.z, mad(_310.y, r1.xyz.y, _310.x * r1.xyz.x));
    r2 = _323;
    float3 _332 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _344 = r2;
    _344.y = mad(_332.z, r1.xyz.z, mad(_332.y, r1.xyz.y, _332.x * r1.xyz.x));
    r2 = _344;
    float3 _353 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _365 = r2;
    _365.z = mad(_353.z, r1.xyz.z, mad(_353.y, r1.xyz.y, _353.x * r1.xyz.x));
    r2 = _365;
    float4 _380 = r0;
    _380.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _380;
    float4 _385 = r0;
    _385.w = rsqrt(r0.w);
    r0 = _385;
    float3 _391 = r0.www * r2.xyz;
    r1 = float4(_391.x, _391.y, _391.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _410 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _423 = r3;
    _423.x = mad(_410.z, r2.xyz.z, mad(_410.y, r2.xyz.y, _410.x * r2.xyz.x));
    r3 = _423;
    float3 _432 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _444 = r3;
    _444.y = mad(_432.z, r2.xyz.z, mad(_432.y, r2.xyz.y, _432.x * r2.xyz.x));
    r3 = _444;
    float3 _453 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _465 = r3;
    _465.z = mad(_453.z, r2.xyz.z, mad(_453.y, r2.xyz.y, _453.x * r2.xyz.x));
    r3 = _465;
    float4 _480 = r0;
    _480.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _480;
    float4 _485 = r0;
    _485.w = rsqrt(r0.w);
    r0 = _485;
    float3 _491 = r0.www * r3.xyz;
    r2 = float4(_491.x, _491.y, _491.z, r2.w);
    float3 _498 = r1.zxy * r2.yzx;
    r3 = float4(_498.x, _498.y, _498.z, r3.w);
    float3 _509 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_509.x, _509.y, _509.z, r3.w);
    float3 _516 = r2.www * r3.xyz;
    r3 = float4(_516.x, _516.y, _516.z, r3.w);
    float3 _526 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _538 = o2;
    _538.y = mad(_526.z, r3.xyz.z, mad(_526.y, r3.xyz.y, _526.x * r3.xyz.x));
    o2 = _538;
    float3 _547 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _559 = o2;
    _559.z = mad(_547.z, r1.xyz.z, mad(_547.y, r1.xyz.y, _547.x * r1.xyz.x));
    o2 = _559;
    float3 _568 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _580 = o2;
    _580.x = mad(_568.z, r2.xyz.z, mad(_568.y, r2.xyz.y, _568.x * r2.xyz.x));
    o2 = _580;
    float4 _595 = r0;
    _595.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _595;
    float4 _600 = r0;
    _600.w = rsqrt(r0.w);
    r0 = _600;
    float3 _606 = r0.www * r0.xyz;
    r0 = float4(_606.x, _606.y, _606.z, r0.w);
    float3 _622 = o3;
    _622.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _622;
    float3 _637 = o3;
    _637.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _637;
    float3 _652 = o3;
    _652.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _652;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _660 = asfloat(v1);
    shader_in[1] = float4(_660.x, _660.y, shader_in[1].z, shader_in[1].w);
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
