cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float3 v4;
static float3 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _65 = r0;
    _65.x = shader_in[5].x * asfloat(1082130432u);
    r0 = _65;
    float3 _78 = (r0.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r0 = float4(_78.x, _78.y, _78.z, r0.w);
    float4 _83 = r0;
    _83.w = asfloat(1065353216u);
    r0 = _83;
    float4 _98 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _113 = r1;
    _113.x = mad(_98.w, r0.w, mad(_98.z, r0.z, mad(_98.y, r0.y, _98.x * r0.x)));
    r1 = _113;
    float4 _125 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _139 = r1;
    _139.y = mad(_125.w, r0.w, mad(_125.z, r0.z, mad(_125.y, r0.y, _125.x * r0.x)));
    r1 = _139;
    float4 _151 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _165 = r1;
    _165.z = mad(_151.w, r0.w, mad(_151.z, r0.z, mad(_151.y, r0.y, _151.x * r0.x)));
    r1 = _165;
    float4 _168 = r1;
    _168.w = asfloat(1065353216u);
    r1 = _168;
    float4 _179 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _193 = o0;
    _193.x = mad(_179.w, r1.w, mad(_179.z, r1.z, mad(_179.y, r1.y, _179.x * r1.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _218 = o0;
    _218.y = mad(_204.w, r1.w, mad(_204.z, r1.z, mad(_204.y, r1.y, _204.x * r1.x)));
    o0 = _218;
    float4 _229 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _243 = o0;
    _243.z = mad(_229.w, r1.w, mad(_229.z, r1.z, mad(_229.y, r1.y, _229.x * r1.x)));
    o0 = _243;
    float4 _255 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _269 = o0;
    _269.w = mad(_255.w, r1.w, mad(_255.z, r1.z, mad(_255.y, r1.y, _255.x * r1.x)));
    o0 = _269;
    float2 _275 = float2(asint(shader_in[1].xy));
    r0 = float4(_275.x, _275.y, r0.z, r0.w);
    float2 _287 = r0.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r0 = float4(_287.x, _287.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _308 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_308.x, _308.y, _308.z, r0.w);
    float3 _318 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_318.x, _318.y, _318.z, r2.w);
    float3 _330 = (shader_in[5].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_330.x, _330.y, _330.z, r0.w);
    float3 _340 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _352 = r2;
    _352.x = mad(_340.z, r0.xyz.z, mad(_340.y, r0.xyz.y, _340.x * r0.xyz.x));
    r2 = _352;
    float3 _361 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _373 = r2;
    _373.y = mad(_361.z, r0.xyz.z, mad(_361.y, r0.xyz.y, _361.x * r0.xyz.x));
    r2 = _373;
    float3 _382 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _394 = r2;
    _394.z = mad(_382.z, r0.xyz.z, mad(_382.y, r0.xyz.y, _382.x * r0.xyz.x));
    r2 = _394;
    float4 _409 = r0;
    _409.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _409;
    float4 _414 = r0;
    _414.x = rsqrt(r0.x);
    r0 = _414;
    float3 _420 = r0.xxx * r2.xyz;
    r0 = float4(_420.x, _420.y, _420.z, r0.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _439 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _452 = r3;
    _452.x = mad(_439.z, r2.xyz.z, mad(_439.y, r2.xyz.y, _439.x * r2.xyz.x));
    r3 = _452;
    float3 _461 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _473 = r3;
    _473.y = mad(_461.z, r2.xyz.z, mad(_461.y, r2.xyz.y, _461.x * r2.xyz.x));
    r3 = _473;
    float3 _482 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _494 = r3;
    _494.z = mad(_482.z, r2.xyz.z, mad(_482.y, r2.xyz.y, _482.x * r2.xyz.x));
    r3 = _494;
    float4 _509 = r0;
    _509.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _509;
    float4 _514 = r0;
    _514.w = rsqrt(r0.w);
    r0 = _514;
    float3 _520 = r0.www * r3.xyz;
    r2 = float4(_520.x, _520.y, _520.z, r2.w);
    float3 _527 = r0.zxy * r2.yzx;
    r3 = float4(_527.x, _527.y, _527.z, r3.w);
    float3 _538 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_538.x, _538.y, _538.z, r3.w);
    float3 _545 = r2.www * r3.xyz;
    r3 = float4(_545.x, _545.y, _545.z, r3.w);
    float3 _555 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _567 = o2;
    _567.y = mad(_555.z, r3.xyz.z, mad(_555.y, r3.xyz.y, _555.x * r3.xyz.x));
    o2 = _567;
    float3 _576 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _588 = o2;
    _588.z = mad(_576.z, r0.xyz.z, mad(_576.y, r0.xyz.y, _576.x * r0.xyz.x));
    o2 = _588;
    float3 _597 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _609 = o2;
    _609.x = mad(_597.z, r2.xyz.z, mad(_597.y, r2.xyz.y, _597.x * r2.xyz.x));
    o2 = _609;
    float3 _623 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_623.x, _623.y, _623.z, r4.w);
    float3 _638 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_638.x, _638.y, _638.z, r1.w);
    float4 _654 = r0;
    _654.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _654;
    float4 _659 = r0;
    _659.w = rsqrt(r0.w);
    r0 = _659;
    float3 _665 = r0.www * r4.xyz;
    r4 = float4(_665.x, _665.y, _665.z, r4.w);
    float3 _681 = o3;
    _681.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o3 = _681;
    float4 _685 = o4;
    _685.z = r0.y;
    o4 = _685;
    float3 _700 = o3;
    _700.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _700;
    float4 _704 = o4;
    _704.x = r2.y;
    o4 = _704;
    float3 _719 = o3;
    _719.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _719;
    float4 _723 = o4;
    _723.y = r3.y;
    o4 = _723;
    float4 _732 = r0;
    _732.x = r1.y * cb0_m[13].x;
    r0 = _732;
    float4 _739 = r0;
    _739.y = r0.x * asfloat(3216550459u);
    r0 = _739;
    float4 _744 = r0;
    _744.y = exp2(r0.y);
    r0 = _744;
    float4 _751 = r0;
    _751.y = (-r0.y) + asfloat(1065353216u);
    r0 = _751;
    float4 _758 = r0;
    _758.x = r0.y / r0.x;
    r0 = _758;
    float4 _770 = r0;
    _770.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _770;
    float4 _785 = r0;
    _785.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _785;
    float4 _790 = r0;
    _790.z = sqrt(r0.z);
    r0 = _790;
    float4 _798 = r0;
    _798.z = r0.z * cb0_m[13].y;
    r0 = _798;
    float4 _808 = r0;
    _808.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _808;
    float4 _820 = r0;
    _820.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _820;
    float4 _826 = r0;
    _826.x = exp2(-r0.x);
    r0 = _826;
    float4 _832 = r0;
    _832.x = min(r0.x, asfloat(1065353216u));
    r0 = _832;
    float4 _839 = o4;
    _839.w = (-r0.x) + asfloat(1065353216u);
    o4 = _839;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _847 = asfloat(v1);
    shader_in[1] = float4(_847.x, _847.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
