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
static float4 o3;
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
    float3 _289 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_289.x, _289.y, _289.z, r0.w);
    float3 _299 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_299.x, _299.y, _299.z, r2.w);
    float3 _311 = (shader_in[4].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_311.x, _311.y, _311.z, r0.w);
    float3 _321 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _333 = r2;
    _333.x = mad(_321.z, r0.xyz.z, mad(_321.y, r0.xyz.y, _321.x * r0.xyz.x));
    r2 = _333;
    float3 _342 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _354 = r2;
    _354.y = mad(_342.z, r0.xyz.z, mad(_342.y, r0.xyz.y, _342.x * r0.xyz.x));
    r2 = _354;
    float3 _363 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _375 = r2;
    _375.z = mad(_363.z, r0.xyz.z, mad(_363.y, r0.xyz.y, _363.x * r0.xyz.x));
    r2 = _375;
    float4 _390 = r0;
    _390.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _390;
    float4 _395 = r0;
    _395.x = rsqrt(r0.x);
    r0 = _395;
    float3 _401 = r0.xxx * r2.xyz;
    r0 = float4(_401.x, _401.y, _401.z, r0.w);
    o2 = r0.xyz;
    float4 _416 = o5;
    _416.w = clamp((r0.y * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o5 = _416;
    o3 = float4(r1.xyz.x, r1.xyz.y, r1.xyz.z, o3.w);
    float3 _434 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_434.x, _434.y, _434.z, r0.w);
    float4 _438 = o3;
    _438.w = asfloat(0u);
    o3 = _438;
    float4 _447 = r0;
    _447.w = r0.y * cb0_m[13].x;
    r0 = _447;
    float4 _454 = r1;
    _454.x = r0.w * asfloat(3216550459u);
    r1 = _454;
    float4 _459 = r1;
    _459.x = exp2(r1.x);
    r1 = _459;
    float4 _466 = r1;
    _466.x = (-r1.x) + asfloat(1065353216u);
    r1 = _466;
    float4 _473 = r0;
    _473.w = r1.x / r0.w;
    r0 = _473;
    float4 _485 = r1;
    _485.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _485;
    float4 _500 = r0;
    _500.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _500;
    float4 _505 = r0;
    _505.x = sqrt(r0.x);
    r0 = _505;
    float4 _513 = r0;
    _513.x = r0.x * cb0_m[13].y;
    r0 = _513;
    float4 _523 = r0;
    _523.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _523;
    float4 _535 = r0;
    _535.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _535;
    float4 _541 = r0;
    _541.x = exp2(-r0.x);
    r0 = _541;
    float4 _547 = r0;
    _547.x = min(r0.x, asfloat(1065353216u));
    r0 = _547;
    float4 _554 = o4;
    _554.w = (-r0.x) + asfloat(1065353216u);
    o4 = _554;
    float3 _563 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o4 = float4(_563.x, _563.y, _563.z, o4.w);
    float3 _573 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o5 = float4(_573.x, _573.y, _573.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _582 = asfloat(v1);
    shader_in[1] = float4(_582.x, _582.y, shader_in[1].z, shader_in[1].w);
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
