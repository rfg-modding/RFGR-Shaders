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
static float3 v3;
static float4 v4;
static float3 v5;
static float3 v6;
static float3 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _62 = r0;
    _62.x = shader_in[6].x * asfloat(1082130432u);
    r0 = _62;
    float3 _75 = (r0.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r0 = float4(_75.x, _75.y, _75.z, r0.w);
    float4 _80 = r0;
    _80.w = asfloat(1065353216u);
    r0 = _80;
    float4 _95 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _110 = r1;
    _110.x = mad(_95.w, r0.w, mad(_95.z, r0.z, mad(_95.y, r0.y, _95.x * r0.x)));
    r1 = _110;
    float4 _122 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _136 = r1;
    _136.y = mad(_122.w, r0.w, mad(_122.z, r0.z, mad(_122.y, r0.y, _122.x * r0.x)));
    r1 = _136;
    float4 _148 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _162 = r1;
    _162.z = mad(_148.w, r0.w, mad(_148.z, r0.z, mad(_148.y, r0.y, _148.x * r0.x)));
    r1 = _162;
    float4 _165 = r1;
    _165.w = asfloat(1065353216u);
    r1 = _165;
    float4 _176 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _190 = o0;
    _190.x = mad(_176.w, r1.w, mad(_176.z, r1.z, mad(_176.y, r1.y, _176.x * r1.x)));
    o0 = _190;
    float4 _201 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _215 = o0;
    _215.y = mad(_201.w, r1.w, mad(_201.z, r1.z, mad(_201.y, r1.y, _201.x * r1.x)));
    o0 = _215;
    float4 _226 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _240 = o0;
    _240.z = mad(_226.w, r1.w, mad(_226.z, r1.z, mad(_226.y, r1.y, _226.x * r1.x)));
    o0 = _240;
    float4 _252 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _266 = o0;
    _266.w = mad(_252.w, r1.w, mad(_252.z, r1.z, mad(_252.y, r1.y, _252.x * r1.x)));
    o0 = _266;
    float3 _279 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_279.x, _279.y, _279.z, r0.w);
    float3 _289 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_289.x, _289.y, _289.z, r2.w);
    float3 _301 = (shader_in[6].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_301.x, _301.y, _301.z, r0.w);
    float3 _311 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _323 = r2;
    _323.x = mad(_311.z, r0.xyz.z, mad(_311.y, r0.xyz.y, _311.x * r0.xyz.x));
    r2 = _323;
    float3 _332 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _344 = r2;
    _344.y = mad(_332.z, r0.xyz.z, mad(_332.y, r0.xyz.y, _332.x * r0.xyz.x));
    r2 = _344;
    float3 _353 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _365 = r2;
    _365.z = mad(_353.z, r0.xyz.z, mad(_353.y, r0.xyz.y, _353.x * r0.xyz.x));
    r2 = _365;
    float4 _380 = r0;
    _380.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _380;
    float4 _385 = r0;
    _385.x = rsqrt(r0.x);
    r0 = _385;
    float3 _391 = r0.xxx * r2.xyz;
    r0 = float4(_391.x, _391.y, _391.z, r0.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
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
    float3 _499 = r0.zxy * r2.yzx;
    r3 = float4(_499.x, _499.y, _499.z, r3.w);
    float3 _510 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_510.x, _510.y, _510.z, r3.w);
    float3 _517 = r2.www * r3.xyz;
    r3 = float4(_517.x, _517.y, _517.z, r3.w);
    float3 _531 = (-r1.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_531.x, _531.y, _531.z, r4.w);
    float3 _547 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_547.x, _547.y, _547.z, r1.w);
    float3 _563 = o1;
    _563.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _563;
    float3 _572 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _584 = o2;
    _584.y = mad(_572.z, r3.xyz.z, mad(_572.y, r3.xyz.y, _572.x * r3.xyz.x));
    o2 = _584;
    float3 _599 = o1;
    _599.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o1 = _599;
    float3 _608 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _620 = o2;
    _620.z = mad(_608.z, r0.xyz.z, mad(_608.y, r0.xyz.y, _608.x * r0.xyz.x));
    o2 = _620;
    float3 _635 = o1;
    _635.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _635;
    float3 _644 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _656 = o2;
    _656.x = mad(_644.z, r2.xyz.z, mad(_644.y, r2.xyz.y, _644.x * r2.xyz.x));
    o2 = _656;
    float4 _665 = r0;
    _665.x = r1.y * cb0_m[13].x;
    r0 = _665;
    float4 _672 = r0;
    _672.y = r0.x * asfloat(3216550459u);
    r0 = _672;
    float4 _677 = r0;
    _677.y = exp2(r0.y);
    r0 = _677;
    float4 _684 = r0;
    _684.y = (-r0.y) + asfloat(1065353216u);
    r0 = _684;
    float4 _691 = r0;
    _691.x = r0.y / r0.x;
    r0 = _691;
    float4 _703 = r0;
    _703.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _703;
    float4 _718 = r0;
    _718.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _718;
    float4 _723 = r0;
    _723.z = sqrt(r0.z);
    r0 = _723;
    float4 _731 = r0;
    _731.z = r0.z * cb0_m[13].y;
    r0 = _731;
    float4 _741 = r0;
    _741.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _741;
    float4 _753 = r0;
    _753.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _753;
    float4 _759 = r0;
    _759.x = exp2(-r0.x);
    r0 = _759;
    float4 _765 = r0;
    _765.x = min(r0.x, asfloat(1065353216u));
    r0 = _765;
    float4 _772 = o2;
    _772.w = (-r0.x) + asfloat(1065353216u);
    o2 = _772;
    float2 _779 = float2(asint(shader_in[2].xy));
    r0 = float4(_779.x, _779.y, r0.z, r0.w);
    float2 _790 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_790.x, _790.y, r0.z, r0.w);
    float2 _799 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _799.x, _799.y);
    float2 _806 = float2(asint(shader_in[1].xy));
    r0 = float4(_806.x, _806.y, r0.z, r0.w);
    float2 _812 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_812.x, _812.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _821 = asfloat(v1);
    shader_in[1] = float4(_821.x, _821.y, shader_in[1].z, shader_in[1].w);
    float2 _826 = asfloat(v2);
    shader_in[2] = float4(_826.x, _826.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
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
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
