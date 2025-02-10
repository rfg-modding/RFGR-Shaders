cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _52 = r0;
    _52.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _52;
    float3 _65 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_65.x, _65.y, _65.z, r0.w);
    float4 _70 = r0;
    _70.w = asfloat(1065353216u);
    r0 = _70;
    float4 _86 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _101 = r1;
    _101.x = mad(_86.w, r0.w, mad(_86.z, r0.z, mad(_86.y, r0.y, _86.x * r0.x)));
    r1 = _101;
    float4 _113 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _127 = r1;
    _127.y = mad(_113.w, r0.w, mad(_113.z, r0.z, mad(_113.y, r0.y, _113.x * r0.x)));
    r1 = _127;
    float4 _139 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _153 = r1;
    _153.z = mad(_139.w, r0.w, mad(_139.z, r0.z, mad(_139.y, r0.y, _139.x * r0.x)));
    r1 = _153;
    float4 _156 = r1;
    _156.w = asfloat(1065353216u);
    r1 = _156;
    float4 _167 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _181 = o0;
    _181.x = mad(_167.w, r1.w, mad(_167.z, r1.z, mad(_167.y, r1.y, _167.x * r1.x)));
    o0 = _181;
    float4 _192 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _206 = o0;
    _206.y = mad(_192.w, r1.w, mad(_192.z, r1.z, mad(_192.y, r1.y, _192.x * r1.x)));
    o0 = _206;
    float4 _217 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _231 = o0;
    _231.z = mad(_217.w, r1.w, mad(_217.z, r1.z, mad(_217.y, r1.y, _217.x * r1.x)));
    o0 = _231;
    float4 _242 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _256 = o0;
    _256.w = mad(_242.w, r1.w, mad(_242.z, r1.z, mad(_242.y, r1.y, _242.x * r1.x)));
    o0 = _256;
    float3 _270 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_270.x, _270.y, _270.z, r0.w);
    float4 _280 = r0;
    _280.w = r0.y * cb0_m[13].x;
    r0 = _280;
    float4 _287 = r1;
    _287.w = r0.w * asfloat(3216550459u);
    r1 = _287;
    float4 _292 = r1;
    _292.w = exp2(r1.w);
    r1 = _292;
    float4 _299 = r1;
    _299.w = (-r1.w) + asfloat(1065353216u);
    r1 = _299;
    float4 _306 = r0;
    _306.w = r1.w / r0.w;
    r0 = _306;
    float4 _318 = r1;
    _318.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _318;
    float4 _333 = r0;
    _333.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _333;
    float4 _338 = r0;
    _338.x = sqrt(r0.x);
    r0 = _338;
    float4 _346 = r0;
    _346.x = r0.x * cb0_m[13].y;
    r0 = _346;
    float4 _356 = r0;
    _356.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _356;
    float4 _368 = r0;
    _368.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _368;
    float4 _374 = r0;
    _374.x = exp2(-r0.x);
    r0 = _374;
    float4 _380 = r0;
    _380.x = min(r0.x, asfloat(1065353216u));
    r0 = _380;
    o1 = (-r0.x) + asfloat(1065353216u);
    float3 _405 = (-float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z)) + float3(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z);
    r0 = float4(_405.x, _405.y, _405.z, r0.w);
    float3 _413 = (-r0.xyz) + r1.xyz;
    r0 = float4(_413.x, _413.y, _413.z, r0.w);
    float4 _429 = r0;
    _429.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _429;
    float4 _434 = r0;
    _434.x = sqrt(r0.x);
    r0 = _434;
    float4 _441 = o2;
    _441.w = r0.x * asfloat(1056964608u);
    o2 = _441;
    float2 _448 = float2(asint(shader_in[1].xy));
    r0 = float4(_448.x, _448.y, r0.z, r0.w);
    float2 _459 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_459.x, _459.y, r0.z, r0.w);
    float2 _468 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_468.x, _468.y, o2.z, o2.w);
    float4 _474 = o2;
    _474.z = cb6_m[3].w;
    o2 = _474;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _482 = asfloat(v1);
    shader_in[1] = float4(_482.x, _482.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
