cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
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
static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _41 = r0;
    _41.w = asfloat(1065353216u);
    r0 = _41;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _52 = r1;
    _52.w = asfloat(1065353216u);
    r1 = _52;
    float4 _68 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _82 = r0;
    _82.x = mad(_68.w, r1.w, mad(_68.z, r1.z, mad(_68.y, r1.y, _68.x * r1.x)));
    r0 = _82;
    float4 _94 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _108 = r0;
    _108.y = mad(_94.w, r1.w, mad(_94.z, r1.z, mad(_94.y, r1.y, _94.x * r1.x)));
    r0 = _108;
    float4 _120 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _134 = r0;
    _134.z = mad(_120.w, r1.w, mad(_120.z, r1.z, mad(_120.y, r1.y, _120.x * r1.x)));
    r0 = _134;
    float4 _145 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _159 = o0;
    _159.x = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    o0 = _159;
    float4 _170 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _184 = o0;
    _184.y = mad(_170.w, r0.w, mad(_170.z, r0.z, mad(_170.y, r0.y, _170.x * r0.x)));
    o0 = _184;
    float4 _195 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _209 = o0;
    _209.z = mad(_195.w, r0.w, mad(_195.z, r0.z, mad(_195.y, r0.y, _195.x * r0.x)));
    o0 = _209;
    float4 _221 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _235 = o0;
    _235.w = mad(_221.w, r0.w, mad(_221.z, r0.z, mad(_221.y, r0.y, _221.x * r0.x)));
    o0 = _235;
    float3 _249 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_249.x, _249.y, _249.z, r0.w);
    float4 _265 = r0;
    _265.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _265;
    float4 _270 = r0;
    _270.w = rsqrt(r0.w);
    r0 = _270;
    float3 _276 = r0.www * r0.xyz;
    r0 = float4(_276.x, _276.y, _276.z, r0.w);
    float3 _284 = r0.xyz * asfloat(uint3(0u, 1065353216u, 0u));
    r1 = float4(_284.x, _284.y, _284.z, r1.w);
    float3 _295 = (r0.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r1.xyz);
    r1 = float4(_295.x, _295.y, _295.z, r1.w);
    float4 _309 = r0;
    _309.w = mad(r1.yz.y, r1.yz.y, r1.yz.x * r1.yz.x);
    r0 = _309;
    float4 _314 = r0;
    _314.w = rsqrt(r0.w);
    r0 = _314;
    float3 _320 = r0.www * r1.xyz;
    r1 = float4(_320.x, _320.y, _320.z, r1.w);
    float3 _327 = r0.yzx * r1.xyz;
    r2 = float4(_327.x, _327.y, _327.z, r2.w);
    float3 _339 = (r1.zxy * r0.zxy) + (-r2.xyz);
    r1 = float4(_339.x, _339.y, _339.z, r1.w);
    float4 _355 = r0;
    _355.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _355;
    float4 _360 = r0;
    _360.w = rsqrt(r0.w);
    r0 = _360;
    float3 _366 = r0.www * r1.xyz;
    r1 = float4(_366.x, _366.y, _366.z, r1.w);
    float3 _379 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_379.x, _379.y, _379.z, r2.w);
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
    float4 _486 = r0;
    _486.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _486;
    float4 _501 = r0;
    _501.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _501;
    float4 _507 = r0;
    _507.x = max(r0.x, asfloat(0u));
    r0 = _507;
    float4 _516 = r0;
    _516.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _516;
    float2 _526 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_526.x, _526.y, r1.z, r1.w);
    float4 _534 = r0;
    _534.x = (-r0.x) + asfloat(1065353216u);
    r0 = _534;
    float4 _539 = r0;
    _539.x = log2(r0.x);
    r0 = _539;
    float2 _549 = r0.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_549.x, _549.y, r0.z, r0.w);
    float2 _554 = exp2(r0.xy);
    r0 = float4(_554.x, _554.y, r0.z, r0.w);
    float2 _571 = (cb0_m[12].x.xx * float2(cb2_m[3].x, cb2_m[3].y)) + r1.xy;
    o1 = float3(_571.x, _571.y, o1.z);
    float4 _580 = r0;
    _580.y = (-r0.x) + r0.y;
    r0 = _580;
    float4 _588 = r0;
    _588.z = cb2_m[3].z + asfloat(1008981770u);
    r0 = _588;
    float4 _594 = r0;
    _594.z = asfloat(1073741824u) / r0.z;
    r0 = _594;
    float4 _602 = r0;
    _602.z = r0.z * cb0_m[12].z;
    r0 = _602;
    float4 _608 = r0;
    _608.z = cos(r0.zzzz.z);
    r0 = _608;
    float4 _614 = r0;
    _614.z = r0.z + asfloat(1065353216u);
    r0 = _614;
    float4 _620 = r0;
    _620.z = r0.z * asfloat(1056964608u);
    r0 = _620;
    float3 _630 = o1;
    _630.z = (r0.z * r0.y) + r0.x;
    o1 = _630;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
