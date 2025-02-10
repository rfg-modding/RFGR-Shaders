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
    float4 _59 = r0;
    _59.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _59;
    float3 _72 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_72.x, _72.y, _72.z, r0.w);
    float4 _77 = r0;
    _77.w = asfloat(1065353216u);
    r0 = _77;
    float4 _92 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _107 = r1;
    _107.x = mad(_92.w, r0.w, mad(_92.z, r0.z, mad(_92.y, r0.y, _92.x * r0.x)));
    r1 = _107;
    float4 _119 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _133 = r1;
    _133.y = mad(_119.w, r0.w, mad(_119.z, r0.z, mad(_119.y, r0.y, _119.x * r0.x)));
    r1 = _133;
    float4 _145 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _159 = r1;
    _159.z = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    r1 = _159;
    float4 _162 = r1;
    _162.w = asfloat(1065353216u);
    r1 = _162;
    float4 _173 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _187 = o0;
    _187.x = mad(_173.w, r1.w, mad(_173.z, r1.z, mad(_173.y, r1.y, _173.x * r1.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _212 = o0;
    _212.y = mad(_198.w, r1.w, mad(_198.z, r1.z, mad(_198.y, r1.y, _198.x * r1.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _237 = o0;
    _237.z = mad(_223.w, r1.w, mad(_223.z, r1.z, mad(_223.y, r1.y, _223.x * r1.x)));
    o0 = _237;
    float4 _248 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _262 = o0;
    _262.w = mad(_248.w, r1.w, mad(_248.z, r1.z, mad(_248.y, r1.y, _248.x * r1.x)));
    o0 = _262;
    float2 _268 = float2(asint(shader_in[1].xy));
    r0 = float4(_268.x, _268.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _297 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_297.x, _297.y, _297.z, r0.w);
    float3 _307 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_307.x, _307.y, _307.z, r2.w);
    float3 _319 = (shader_in[4].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_319.x, _319.y, _319.z, r0.w);
    float3 _329 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _341 = r2;
    _341.x = mad(_329.z, r0.xyz.z, mad(_329.y, r0.xyz.y, _329.x * r0.xyz.x));
    r2 = _341;
    float3 _350 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _362 = r2;
    _362.y = mad(_350.z, r0.xyz.z, mad(_350.y, r0.xyz.y, _350.x * r0.xyz.x));
    r2 = _362;
    float3 _371 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _383 = r2;
    _383.z = mad(_371.z, r0.xyz.z, mad(_371.y, r0.xyz.y, _371.x * r0.xyz.x));
    r2 = _383;
    float4 _398 = r0;
    _398.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _398;
    float4 _403 = r0;
    _403.x = rsqrt(r0.x);
    r0 = _403;
    o3 = r0.xxx * r2.xyz;
    o4 = float4(r1.xyz.x, r1.xyz.y, r1.xyz.z, o4.w);
    float3 _426 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_426.x, _426.y, _426.z, r0.w);
    float4 _430 = o4;
    _430.w = asfloat(0u);
    o4 = _430;
    float4 _439 = r0;
    _439.w = r0.y * cb0_m[13].x;
    r0 = _439;
    float4 _446 = r1;
    _446.x = r0.w * asfloat(3216550459u);
    r1 = _446;
    float4 _451 = r1;
    _451.x = exp2(r1.x);
    r1 = _451;
    float4 _458 = r1;
    _458.x = (-r1.x) + asfloat(1065353216u);
    r1 = _458;
    float4 _465 = r0;
    _465.w = r1.x / r0.w;
    r0 = _465;
    float4 _477 = r1;
    _477.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _477;
    float4 _492 = r0;
    _492.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _492;
    float4 _497 = r0;
    _497.x = sqrt(r0.x);
    r0 = _497;
    float4 _505 = r0;
    _505.x = r0.x * cb0_m[13].y;
    r0 = _505;
    float4 _515 = r0;
    _515.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _515;
    float4 _527 = r0;
    _527.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _527;
    float4 _533 = r0;
    _533.x = exp2(-r0.x);
    r0 = _533;
    float4 _539 = r0;
    _539.x = min(r0.x, asfloat(1065353216u));
    r0 = _539;
    float4 _546 = o5;
    _546.w = (-r0.x) + asfloat(1065353216u);
    o5 = _546;
    float3 _555 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o5 = float4(_555.x, _555.y, _555.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _564 = asfloat(v1);
    shader_in[1] = float4(_564.x, _564.y, shader_in[1].z, shader_in[1].w);
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
