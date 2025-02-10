cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
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
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;
static float3 v6;
static float3 v7;
static float3 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
    float3 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _66 = r0;
    _66.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _66;
    float3 _79 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_79.x, _79.y, _79.z, r0.w);
    float4 _84 = r0;
    _84.w = asfloat(1065353216u);
    r0 = _84;
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
    float2 _275 = float2(asint(shader_in[2].xy));
    r0 = float4(_275.x, _275.y, r0.z, r0.w);
    float2 _286 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_286.x, _286.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _308 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_308.x, _308.y, _308.z, r0.w);
    float3 _318 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_318.x, _318.y, _318.z, r1.w);
    float3 _329 = (shader_in[7].xxx * r1.xyz) + r0.xyz;
    r0 = float4(_329.x, _329.y, _329.z, r0.w);
    float3 _339 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _351 = r1;
    _351.x = mad(_339.z, r0.xyz.z, mad(_339.y, r0.xyz.y, _339.x * r0.xyz.x));
    r1 = _351;
    float3 _360 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _372 = r1;
    _372.y = mad(_360.z, r0.xyz.z, mad(_360.y, r0.xyz.y, _360.x * r0.xyz.x));
    r1 = _372;
    float3 _381 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _393 = r1;
    _393.z = mad(_381.z, r0.xyz.z, mad(_381.y, r0.xyz.y, _381.x * r0.xyz.x));
    r1 = _393;
    float4 _408 = r0;
    _408.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _408;
    float4 _413 = r0;
    _413.x = rsqrt(r0.x);
    r0 = _413;
    float3 _419 = r0.xxx * r1.xyz;
    r0 = float4(_419.x, _419.y, _419.z, r0.w);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _439 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _452 = r2;
    _452.x = mad(_439.z, r1.xyz.z, mad(_439.y, r1.xyz.y, _439.x * r1.xyz.x));
    r2 = _452;
    float3 _461 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _473 = r2;
    _473.y = mad(_461.z, r1.xyz.z, mad(_461.y, r1.xyz.y, _461.x * r1.xyz.x));
    r2 = _473;
    float3 _482 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _494 = r2;
    _494.z = mad(_482.z, r1.xyz.z, mad(_482.y, r1.xyz.y, _482.x * r1.xyz.x));
    r2 = _494;
    float4 _509 = r0;
    _509.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _509;
    float4 _514 = r0;
    _514.w = rsqrt(r0.w);
    r0 = _514;
    float3 _520 = r0.www * r2.xyz;
    r1 = float4(_520.x, _520.y, _520.z, r1.w);
    float3 _527 = r0.zxy * r1.yzx;
    r2 = float4(_527.x, _527.y, _527.z, r2.w);
    float3 _538 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_538.x, _538.y, _538.z, r2.w);
    float3 _548 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _560 = o2;
    _560.z = mad(_548.z, r0.xyz.z, mad(_548.y, r0.xyz.y, _548.x * r0.xyz.x));
    o2 = _560;
    float3 _569 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _581 = o2;
    _581.x = mad(_569.z, r1.xyz.z, mad(_569.y, r1.xyz.y, _569.x * r1.xyz.x));
    o2 = _581;
    float3 _587 = r1.www * r2.xyz;
    r0 = float4(_587.x, _587.y, _587.z, r0.w);
    float3 _597 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _609 = o2;
    _609.y = mad(_597.z, r0.xyz.z, mad(_597.y, r0.xyz.y, _597.x * r0.xyz.x));
    o2 = _609;
    float2 _615 = float2(asint(shader_in[1].xy));
    r0 = float4(_615.x, _615.y, r0.z, r0.w);
    float2 _621 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_621.x, _621.y, o3.z, o3.w);
    float2 _628 = float2(asint(shader_in[3].xy));
    r0 = float4(_628.x, _628.y, r0.z, r0.w);
    float2 _634 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _634.x, _634.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _643 = asfloat(v1);
    shader_in[1] = float4(_643.x, _643.y, shader_in[1].z, shader_in[1].w);
    float2 _648 = asfloat(v2);
    shader_in[2] = float4(_648.x, _648.y, shader_in[2].z, shader_in[2].w);
    float2 _653 = asfloat(v3);
    shader_in[3] = float4(_653.x, _653.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
    shader_in[8] = float4(v8.x, v8.y, v8.z, shader_in[8].w);
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
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
