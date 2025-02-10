cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float3 v3;
static float3 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _47 = r0;
    _47.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _47;
    float3 _60 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_60.x, _60.y, _60.z, r0.w);
    float4 _65 = r0;
    _65.w = asfloat(1065353216u);
    r0 = _65;
    float4 _82 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _97 = r1;
    _97.x = mad(_82.w, r0.w, mad(_82.z, r0.z, mad(_82.y, r0.y, _82.x * r0.x)));
    r1 = _97;
    float4 _109 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _123 = r1;
    _123.y = mad(_109.w, r0.w, mad(_109.z, r0.z, mad(_109.y, r0.y, _109.x * r0.x)));
    r1 = _123;
    float4 _135 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _149 = r1;
    _149.z = mad(_135.w, r0.w, mad(_135.z, r0.z, mad(_135.y, r0.y, _135.x * r0.x)));
    r1 = _149;
    float4 _152 = r1;
    _152.w = asfloat(1065353216u);
    r1 = _152;
    float4 _163 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _177 = o0;
    _177.x = mad(_163.w, r1.w, mad(_163.z, r1.z, mad(_163.y, r1.y, _163.x * r1.x)));
    o0 = _177;
    float4 _188 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _202 = o0;
    _202.y = mad(_188.w, r1.w, mad(_188.z, r1.z, mad(_188.y, r1.y, _188.x * r1.x)));
    o0 = _202;
    float4 _213 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _227 = o0;
    _227.z = mad(_213.w, r1.w, mad(_213.z, r1.z, mad(_213.y, r1.y, _213.x * r1.x)));
    o0 = _227;
    float4 _238 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _252 = o0;
    _252.w = mad(_238.w, r1.w, mad(_238.z, r1.z, mad(_238.y, r1.y, _238.x * r1.x)));
    o0 = _252;
    float3 _266 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_266.x, _266.y, _266.z, r0.w);
    float4 _270 = r1;
    _270.w = asfloat(0u);
    r1 = _270;
    r1 = (-r1) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _299 = r0;
    _299.w = mad(r1.w, r1.w, mad(r1.z, r1.z, mad(r1.y, r1.y, r1.x * r1.x)));
    r0 = _299;
    float4 _304 = r0;
    _304.w = rsqrt(r0.w);
    r0 = _304;
    float3 _310 = r0.www * r1.xyz;
    r1 = float4(_310.x, _310.y, _310.z, r1.w);
    float3 _324 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_324.x, _324.y, _324.z, r2.w);
    float3 _335 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_335.x, _335.y, _335.z, r3.w);
    float3 _347 = (shader_in[4].xxx * r3.xyz) + r2.xyz;
    r2 = float4(_347.x, _347.y, _347.z, r2.w);
    float3 _357 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _369 = r3;
    _369.x = mad(_357.z, r2.xyz.z, mad(_357.y, r2.xyz.y, _357.x * r2.xyz.x));
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
    _426.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _426;
    float4 _431 = r0;
    _431.w = rsqrt(r0.w);
    r0 = _431;
    float3 _437 = r0.www * r3.xyz;
    r2 = float4(_437.x, _437.y, _437.z, r2.w);
    float4 _453 = o1;
    _453.z = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    o1 = _453;
    float4 _462 = r0;
    _462.w = r0.y * cb0_m[13].x;
    r0 = _462;
    float4 _469 = r1;
    _469.x = r0.w * asfloat(3216550459u);
    r1 = _469;
    float4 _474 = r1;
    _474.x = exp2(r1.x);
    r1 = _474;
    float4 _481 = r1;
    _481.x = (-r1.x) + asfloat(1065353216u);
    r1 = _481;
    float4 _488 = r0;
    _488.w = r1.x / r0.w;
    r0 = _488;
    float4 _500 = r1;
    _500.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _500;
    float4 _515 = r0;
    _515.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _515;
    float4 _520 = r0;
    _520.x = sqrt(r0.x);
    r0 = _520;
    float4 _528 = r0;
    _528.x = r0.x * cb0_m[13].y;
    r0 = _528;
    float4 _538 = r0;
    _538.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _538;
    float4 _550 = r0;
    _550.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _550;
    float4 _556 = r0;
    _556.x = exp2(-r0.x);
    r0 = _556;
    float4 _562 = r0;
    _562.x = min(r0.x, asfloat(1065353216u));
    r0 = _562;
    float4 _569 = o1;
    _569.w = (-r0.x) + asfloat(1065353216u);
    o1 = _569;
    float2 _576 = float2(asint(shader_in[1].xy));
    r0 = float4(_576.x, _576.y, r0.z, r0.w);
    float2 _585 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_585.x, _585.y, r0.z, r0.w);
    float4 _597 = o1;
    _597.x = (cb6_m[3].w * asfloat(1056964608u)) + r0.x;
    o1 = _597;
    float4 _601 = o1;
    _601.y = r0.y;
    o1 = _601;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _609 = asfloat(v1);
    shader_in[1] = float4(_609.x, _609.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
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
