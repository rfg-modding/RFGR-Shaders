cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float4 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _40 = r0;
    _40.w = asfloat(1065353216u);
    r0 = _40;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _51 = r1;
    _51.w = asfloat(1065353216u);
    r1 = _51;
    float4 _67 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _81 = r0;
    _81.x = mad(_67.w, r1.w, mad(_67.z, r1.z, mad(_67.y, r1.y, _67.x * r1.x)));
    r0 = _81;
    float4 _93 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _107 = r0;
    _107.y = mad(_93.w, r1.w, mad(_93.z, r1.z, mad(_93.y, r1.y, _93.x * r1.x)));
    r0 = _107;
    float4 _119 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _133 = r0;
    _133.z = mad(_119.w, r1.w, mad(_119.z, r1.z, mad(_119.y, r1.y, _119.x * r1.x)));
    r0 = _133;
    float4 _144 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _158 = o0;
    _158.x = mad(_144.w, r0.w, mad(_144.z, r0.z, mad(_144.y, r0.y, _144.x * r0.x)));
    o0 = _158;
    float4 _169 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _183 = o0;
    _183.y = mad(_169.w, r0.w, mad(_169.z, r0.z, mad(_169.y, r0.y, _169.x * r0.x)));
    o0 = _183;
    float4 _194 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _208 = o0;
    _208.z = mad(_194.w, r0.w, mad(_194.z, r0.z, mad(_194.y, r0.y, _194.x * r0.x)));
    o0 = _208;
    float4 _220 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _234 = o0;
    _234.w = mad(_220.w, r0.w, mad(_220.z, r0.z, mad(_220.y, r0.y, _220.x * r0.x)));
    o0 = _234;
    float3 _248 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_248.x, _248.y, _248.z, r1.w);
    float3 _262 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_262.x, _262.y, _262.z, r0.w);
    float4 _272 = r0;
    _272.w = r1.y * cb0_m[13].x;
    r0 = _272;
    float4 _279 = r1;
    _279.w = r0.w * asfloat(3216550459u);
    r1 = _279;
    float4 _284 = r1;
    _284.w = exp2(r1.w);
    r1 = _284;
    float4 _291 = r1;
    _291.w = (-r1.w) + asfloat(1065353216u);
    r1 = _291;
    float4 _298 = r0;
    _298.w = r1.w / r0.w;
    r0 = _298;
    float4 _310 = r1;
    _310.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _310;
    float4 _325 = r1;
    _325.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _325;
    float4 _330 = r1;
    _330.x = sqrt(r1.x);
    r1 = _330;
    float4 _338 = r1;
    _338.x = r1.x * cb0_m[13].y;
    r1 = _338;
    float4 _348 = r0;
    _348.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _348;
    float4 _360 = r0;
    _360.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _360;
    float4 _366 = r0;
    _366.w = exp2(-r0.w);
    r0 = _366;
    float4 _372 = r0;
    _372.w = min(r0.w, asfloat(1065353216u));
    r0 = _372;
    float4 _379 = o1;
    _379.w = (-r0.w) + asfloat(1065353216u);
    o1 = _379;
    float4 _394 = r0;
    _394.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _394;
    float4 _399 = r0;
    _399.w = rsqrt(r0.w);
    r0 = _399;
    float3 _405 = r0.www * r0.xyz;
    r0 = float4(_405.x, _405.y, _405.z, r0.w);
    float3 _413 = r0.xyz * asfloat(uint3(0u, 1065353216u, 0u));
    r1 = float4(_413.x, _413.y, _413.z, r1.w);
    float3 _424 = (r0.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r1.xyz);
    r1 = float4(_424.x, _424.y, _424.z, r1.w);
    float4 _438 = r0;
    _438.w = mad(r1.yz.y, r1.yz.y, r1.yz.x * r1.yz.x);
    r0 = _438;
    float4 _443 = r0;
    _443.w = rsqrt(r0.w);
    r0 = _443;
    float3 _449 = r0.www * r1.xyz;
    r1 = float4(_449.x, _449.y, _449.z, r1.w);
    float3 _456 = r0.yzx * r1.xyz;
    r2 = float4(_456.x, _456.y, _456.z, r2.w);
    float3 _468 = (r1.zxy * r0.zxy) + (-r2.xyz);
    r1 = float4(_468.x, _468.y, _468.z, r1.w);
    float4 _484 = r0;
    _484.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _484;
    float4 _489 = r0;
    _489.w = rsqrt(r0.w);
    r0 = _489;
    float3 _495 = r0.www * r1.xyz;
    r1 = float4(_495.x, _495.y, _495.z, r1.w);
    float3 _508 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_508.x, _508.y, _508.z, r2.w);
    float3 _518 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _531 = r3;
    _531.x = mad(_518.z, r2.xyz.z, mad(_518.y, r2.xyz.y, _518.x * r2.xyz.x));
    r3 = _531;
    float3 _540 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _552 = r3;
    _552.y = mad(_540.z, r2.xyz.z, mad(_540.y, r2.xyz.y, _540.x * r2.xyz.x));
    r3 = _552;
    float3 _561 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _573 = r3;
    _573.z = mad(_561.z, r2.xyz.z, mad(_561.y, r2.xyz.y, _561.x * r2.xyz.x));
    r3 = _573;
    float4 _588 = r0;
    _588.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _588;
    float4 _593 = r0;
    _593.w = rsqrt(r0.w);
    r0 = _593;
    float3 _599 = r0.www * r3.xyz;
    r2 = float4(_599.x, _599.y, _599.z, r2.w);
    float4 _615 = r0;
    _615.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _615;
    float4 _630 = r0;
    _630.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _630;
    float4 _636 = r0;
    _636.x = max(r0.x, asfloat(0u));
    r0 = _636;
    float4 _645 = r0;
    _645.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _645;
    float2 _655 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_655.x, _655.y, r1.z, r1.w);
    float4 _663 = r0;
    _663.x = (-r0.x) + asfloat(1065353216u);
    r0 = _663;
    float4 _668 = r0;
    _668.x = log2(r0.x);
    r0 = _668;
    float2 _678 = r0.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_678.x, _678.y, r0.z, r0.w);
    float2 _683 = exp2(r0.xy);
    r0 = float4(_683.x, _683.y, r0.z, r0.w);
    float2 _700 = (cb0_m[12].x.xx * float2(cb2_m[3].x, cb2_m[3].y)) + r1.xy;
    o1 = float4(_700.x, _700.y, o1.z, o1.w);
    float4 _709 = r0;
    _709.y = (-r0.x) + r0.y;
    r0 = _709;
    float4 _716 = r0;
    _716.z = cb2_m[3].z + asfloat(1008981770u);
    r0 = _716;
    float4 _722 = r0;
    _722.z = asfloat(1073741824u) / r0.z;
    r0 = _722;
    float4 _730 = r0;
    _730.z = r0.z * cb0_m[12].z;
    r0 = _730;
    float4 _736 = r0;
    _736.z = cos(r0.zzzz.z);
    r0 = _736;
    float4 _742 = r0;
    _742.z = r0.z + asfloat(1065353216u);
    r0 = _742;
    float4 _748 = r0;
    _748.z = r0.z * asfloat(1056964608u);
    r0 = _748;
    float4 _758 = o1;
    _758.z = (r0.z * r0.y) + r0.x;
    o1 = _758;
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
