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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _61 = r1;
    _61.w = asfloat(1065353216u);
    r1 = _61;
    float4 _76 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _90 = r0;
    _90.x = mad(_76.w, r1.w, mad(_76.z, r1.z, mad(_76.y, r1.y, _76.x * r1.x)));
    r0 = _90;
    float4 _102 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _116 = r0;
    _116.y = mad(_102.w, r1.w, mad(_102.z, r1.z, mad(_102.y, r1.y, _102.x * r1.x)));
    r0 = _116;
    float4 _128 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _142 = r0;
    _142.z = mad(_128.w, r1.w, mad(_128.z, r1.z, mad(_128.y, r1.y, _128.x * r1.x)));
    r0 = _142;
    float4 _153 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _167 = o0;
    _167.x = mad(_153.w, r0.w, mad(_153.z, r0.z, mad(_153.y, r0.y, _153.x * r0.x)));
    o0 = _167;
    float4 _178 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _192 = o0;
    _192.y = mad(_178.w, r0.w, mad(_178.z, r0.z, mad(_178.y, r0.y, _178.x * r0.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _217 = o0;
    _217.z = mad(_203.w, r0.w, mad(_203.z, r0.z, mad(_203.y, r0.y, _203.x * r0.x)));
    o0 = _217;
    float4 _229 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _243 = o0;
    _243.w = mad(_229.w, r0.w, mad(_229.z, r0.z, mad(_229.y, r0.y, _229.x * r0.x)));
    o0 = _243;
    float2 _249 = float2(asint(shader_in[1].xy));
    r1 = float4(_249.x, _249.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _278 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float3 _288 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _301 = r2;
    _301.x = mad(_288.z, r1.xyz.z, mad(_288.y, r1.xyz.y, _288.x * r1.xyz.x));
    r2 = _301;
    float3 _310 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _322 = r2;
    _322.y = mad(_310.z, r1.xyz.z, mad(_310.y, r1.xyz.y, _310.x * r1.xyz.x));
    r2 = _322;
    float3 _331 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _343 = r2;
    _343.z = mad(_331.z, r1.xyz.z, mad(_331.y, r1.xyz.y, _331.x * r1.xyz.x));
    r2 = _343;
    float4 _358 = r0;
    _358.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _358;
    float4 _363 = r0;
    _363.w = rsqrt(r0.w);
    r0 = _363;
    o3 = r0.www * r2.xyz;
    o4 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o4.w);
    float3 _386 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_386.x, _386.y, _386.z, r0.w);
    float4 _390 = o4;
    _390.w = asfloat(0u);
    o4 = _390;
    float4 _399 = r0;
    _399.w = r0.y * cb0_m[13].x;
    r0 = _399;
    float4 _406 = r1;
    _406.x = r0.w * asfloat(3216550459u);
    r1 = _406;
    float4 _411 = r1;
    _411.x = exp2(r1.x);
    r1 = _411;
    float4 _418 = r1;
    _418.x = (-r1.x) + asfloat(1065353216u);
    r1 = _418;
    float4 _425 = r0;
    _425.w = r1.x / r0.w;
    r0 = _425;
    float4 _437 = r1;
    _437.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _437;
    float4 _452 = r0;
    _452.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _452;
    float4 _457 = r0;
    _457.x = sqrt(r0.x);
    r0 = _457;
    float4 _465 = r0;
    _465.x = r0.x * cb0_m[13].y;
    r0 = _465;
    float4 _475 = r0;
    _475.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _475;
    float4 _487 = r0;
    _487.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _487;
    float4 _493 = r0;
    _493.x = exp2(-r0.x);
    r0 = _493;
    float4 _499 = r0;
    _499.x = min(r0.x, asfloat(1065353216u));
    r0 = _499;
    float4 _506 = o5;
    _506.w = (-r0.x) + asfloat(1065353216u);
    o5 = _506;
    float3 _515 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o5 = float4(_515.x, _515.y, _515.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _524 = asfloat(v1);
    shader_in[1] = float4(_524.x, _524.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
