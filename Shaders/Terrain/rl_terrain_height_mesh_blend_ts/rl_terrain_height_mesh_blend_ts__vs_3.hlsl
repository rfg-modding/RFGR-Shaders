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
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float3 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _80 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _94 = r0;
    _94.y = mad(_80.w, r1.w, mad(_80.z, r1.z, mad(_80.y, r1.y, _80.x * r1.x)));
    r0 = _94;
    float4 _105 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _119 = r0;
    _119.x = mad(_105.w, r1.w, mad(_105.z, r1.z, mad(_105.y, r1.y, _105.x * r1.x)));
    r0 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r0;
    _145.z = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r0 = _145;
    float4 _156 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _170 = o0;
    _170.x = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _195 = o0;
    _195.y = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _220 = o0;
    _220.z = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float4 _232 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _246 = o0;
    _246.w = mad(_232.w, r0.w, mad(_232.z, r0.z, mad(_232.y, r0.y, _232.x * r0.x)));
    o0 = _246;
    float3 _260 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_260.x, _260.y, _260.z, r1.w);
    float3 _274 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r2 = float4(_274.x, _274.y, _274.z, r2.w);
    float2 _288 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_288.x, _288.y, r0.z, r0.w);
    float4 _304 = r0;
    _304.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _304;
    float4 _309 = o1;
    _309.w = sqrt(r0.z);
    o1 = _309;
    float3 _322 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_322.x, _322.y, _322.z, r1.w);
    float3 _332 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _345 = r3;
    _345.x = mad(_332.z, r1.xyz.z, mad(_332.y, r1.xyz.y, _332.x * r1.xyz.x));
    r3 = _345;
    float3 _354 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _366 = r3;
    _366.y = mad(_354.z, r1.xyz.z, mad(_354.y, r1.xyz.y, _354.x * r1.xyz.x));
    r3 = _366;
    float3 _375 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _387 = r3;
    _387.z = mad(_375.z, r1.xyz.z, mad(_375.y, r1.xyz.y, _375.x * r1.xyz.x));
    r3 = _387;
    float4 _402 = r0;
    _402.z = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _402;
    float4 _407 = r0;
    _407.z = rsqrt(r0.z);
    r0 = _407;
    float3 _413 = r0.zzz * r3.xyz;
    r1 = float4(_413.x, _413.y, _413.z, r1.w);
    float3 _420 = r1.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r3 = float4(_420.x, _420.y, _420.z, r3.w);
    float3 _431 = (r1.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r3.xyz);
    r3 = float4(_431.x, _431.y, _431.z, r3.w);
    float4 _444 = r0;
    _444.z = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _444;
    float4 _449 = r0;
    _449.z = rsqrt(r0.z);
    r0 = _449;
    float3 _455 = r0.zzz * r3.xyz;
    r3 = float4(_455.x, _455.y, _455.z, r3.w);
    float3 _463 = r1.yzx * (-r3.xyz);
    r4 = float4(_463.x, _463.y, _463.z, r4.w);
    float3 _476 = ((-r3.zxy) * r1.zxy) + (-r4.xyz);
    r4 = float4(_476.x, _476.y, _476.z, r4.w);
    float4 _481 = o1;
    _481.x = r4.y;
    o1 = _481;
    float3 _490 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _502 = o2;
    _502.x = mad(_490.z, r4.xyz.z, mad(_490.y, r4.xyz.y, _490.x * r4.xyz.x));
    o2 = _502;
    float4 _507 = o1;
    _507.y = -r3.z;
    o1 = _507;
    float2 _514 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _517 = -r3.xz;
    float4 _524 = o2;
    _524.y = mad(_514.y, _517.y, _514.x * _517.x);
    o2 = _524;
    float4 _528 = o1;
    _528.z = r1.y;
    o1 = _528;
    float3 _537 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _549 = o2;
    _549.z = mad(_537.z, r1.xyz.z, mad(_537.y, r1.xyz.y, _537.x * r1.xyz.x));
    o2 = _549;
    float4 _558 = r0;
    _558.z = r2.y * cb0_m[13].x;
    r0 = _558;
    float4 _565 = r0;
    _565.w = r0.z * asfloat(3216550459u);
    r0 = _565;
    float4 _570 = r0;
    _570.w = exp2(r0.w);
    r0 = _570;
    float4 _577 = r0;
    _577.w = (-r0.w) + asfloat(1065353216u);
    r0 = _577;
    float4 _584 = r0;
    _584.z = r0.w / r0.z;
    r0 = _584;
    float4 _596 = r0;
    _596.w = asfloat((asfloat(1008981770u) < abs(r2.y)) ? 4294967295u : 0u);
    r0 = _596;
    float4 _611 = r1;
    _611.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _611;
    float4 _616 = r1;
    _616.x = sqrt(r1.x);
    r1 = _616;
    float4 _624 = r1;
    _624.x = r1.x * cb0_m[13].y;
    r1 = _624;
    float4 _634 = r0;
    _634.z = (asuint(r0.w) != 0u) ? r0.z : asfloat(1065353216u);
    r0 = _634;
    float4 _646 = r0;
    _646.z = (r0.z * r1.x) + (-cb0_m[13].w);
    r0 = _646;
    float4 _652 = r0;
    _652.z = exp2(-r0.z);
    r0 = _652;
    float4 _658 = r0;
    _658.z = min(r0.z, asfloat(1065353216u));
    r0 = _658;
    float4 _665 = o2;
    _665.w = (-r0.z) + asfloat(1065353216u);
    o2 = _665;
    float2 _681 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(r0.x, r0.y, _681.x, _681.y);
    float2 _692 = r0.zw * float2(cb2_m[4].x, cb2_m[4].y);
    o3 = float4(_692.x, _692.y, o3.z, o3.w);
    float2 _706 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r0 = float4(r0.x, r0.y, _706.x, _706.y);
    float2 _717 = r0.zw * float2(cb2_m[7].x, cb2_m[7].y);
    o3 = float4(o3.x, o3.y, _717.x, _717.y);
    float2 _727 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(r0.x, r0.y, _727.x, _727.y);
    float2 _739 = r0.zw + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(r0.x, r0.y, _739.x, _739.y);
    float2 _751 = (r0.zw * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_751.x, _751.y, o4.z, o4.w);
    float2 _765 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(r0.x, r0.y, _765.x, _765.y);
    float2 _779 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(_779.x, _779.y, r0.z, r0.w);
    float2 _790 = r0.xy * float2(cb2_m[6].x, cb2_m[6].y);
    o5 = float3(_790.x, _790.y, o5.z);
    float2 _801 = r0.zw * float2(cb2_m[5].x, cb2_m[5].y);
    o4 = float4(o4.x, o4.y, _801.x, _801.y);
    float4 _809 = r0;
    _809.x = float(asint(shader_in[2].x));
    r0 = _809;
    float3 _815 = o5;
    _815.z = r0.x * asfloat(981467136u);
    o5 = _815;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _829 = shader_in[2];
    _829.x = asfloat(v2);
    shader_in[2] = _829;
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
