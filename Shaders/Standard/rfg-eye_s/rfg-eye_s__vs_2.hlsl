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
static float4 r4;

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
    float3 _257 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_257.x, _257.y, _257.z, r0.w);
    float2 _264 = float2(asint(shader_in[1].xy));
    r1 = float4(_264.x, _264.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _285 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_285.x, _285.y, _285.z, r1.w);
    float3 _295 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _308 = r2;
    _308.x = mad(_295.z, r1.xyz.z, mad(_295.y, r1.xyz.y, _295.x * r1.xyz.x));
    r2 = _308;
    float3 _317 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _329 = r2;
    _329.y = mad(_317.z, r1.xyz.z, mad(_317.y, r1.xyz.y, _317.x * r1.xyz.x));
    r2 = _329;
    float3 _338 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _350 = r2;
    _350.z = mad(_338.z, r1.xyz.z, mad(_338.y, r1.xyz.y, _338.x * r1.xyz.x));
    r2 = _350;
    float4 _365 = r0;
    _365.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _365;
    float4 _370 = r0;
    _370.w = rsqrt(r0.w);
    r0 = _370;
    float3 _376 = r0.www * r2.xyz;
    r1 = float4(_376.x, _376.y, _376.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _395 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _408 = r3;
    _408.x = mad(_395.z, r2.xyz.z, mad(_395.y, r2.xyz.y, _395.x * r2.xyz.x));
    r3 = _408;
    float3 _417 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _429 = r3;
    _429.y = mad(_417.z, r2.xyz.z, mad(_417.y, r2.xyz.y, _417.x * r2.xyz.x));
    r3 = _429;
    float3 _438 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _450 = r3;
    _450.z = mad(_438.z, r2.xyz.z, mad(_438.y, r2.xyz.y, _438.x * r2.xyz.x));
    r3 = _450;
    float4 _465 = r0;
    _465.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _465;
    float4 _470 = r0;
    _470.w = rsqrt(r0.w);
    r0 = _470;
    float3 _476 = r0.www * r3.xyz;
    r2 = float4(_476.x, _476.y, _476.z, r2.w);
    float3 _483 = r1.zxy * r2.yzx;
    r3 = float4(_483.x, _483.y, _483.z, r3.w);
    float3 _494 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_494.x, _494.y, _494.z, r3.w);
    float3 _501 = r2.www * r3.xyz;
    r3 = float4(_501.x, _501.y, _501.z, r3.w);
    float3 _517 = o2;
    _517.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _517;
    float3 _532 = o2;
    _532.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _532;
    float3 _547 = o2;
    _547.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _547;
    float2 _554 = float2(cb1_m[0].x, cb1_m[0].z);
    float2 _560 = float2(cb1_m[0].x, cb1_m[0].z);
    float4 _567 = r0;
    _567.x = mad(_554.y, _560.y, _554.x * _560.x);
    r0 = _567;
    float4 _572 = r0;
    _572.x = sqrt(r0.x);
    r0 = _572;
    float4 _582 = r0;
    _582.x = asfloat((asfloat(0u) < r0.x) ? 4294967295u : 0u);
    r0 = _582;
    float4 _589 = r0;
    _589.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _589;
    float2 _596 = float2(cb1_m[0].x, cb1_m[0].z);
    r4 = float4(_596.x, r4.y, _596.y, r4.w);
    float4 _601 = r4;
    _601.y = asfloat(0u);
    r4 = _601;
    float3 _614 = r4.xyz + (-float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z));
    r0 = float4(r0.x, _614.x, _614.y, _614.z);
    float3 _630 = (r0.xxx * r0.yzw) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_630.x, _630.y, _630.z, r0.w);
    float4 _646 = r0;
    _646.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _646;
    float4 _651 = r0;
    _651.w = rsqrt(r0.w);
    r0 = _651;
    float3 _657 = r0.www * r0.xyz;
    r0 = float4(_657.x, _657.y, _657.z, r0.w);
    float3 _673 = o3;
    _673.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _673;
    float3 _688 = o3;
    _688.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _688;
    float3 _703 = o3;
    _703.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _703;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _711 = asfloat(v1);
    shader_in[1] = float4(_711.x, _711.y, shader_in[1].z, shader_in[1].w);
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
