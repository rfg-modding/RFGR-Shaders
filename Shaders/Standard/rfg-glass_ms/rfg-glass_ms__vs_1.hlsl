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
static float3 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    float4 _64 = r1;
    _64.x = shader_in[4].x * asfloat(1082130432u);
    r1 = _64;
    float3 _77 = (r1.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r1 = float4(_77.x, _77.y, _77.z, r1.w);
    float4 _81 = r1;
    _81.w = asfloat(1065353216u);
    r1 = _81;
    float4 _96 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _110 = r0;
    _110.x = mad(_96.w, r1.w, mad(_96.z, r1.z, mad(_96.y, r1.y, _96.x * r1.x)));
    r0 = _110;
    float4 _122 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _136 = r0;
    _136.y = mad(_122.w, r1.w, mad(_122.z, r1.z, mad(_122.y, r1.y, _122.x * r1.x)));
    r0 = _136;
    float4 _148 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _162 = r0;
    _162.z = mad(_148.w, r1.w, mad(_148.z, r1.z, mad(_148.y, r1.y, _148.x * r1.x)));
    r0 = _162;
    float4 _173 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _187 = o0;
    _187.x = mad(_173.w, r0.w, mad(_173.z, r0.z, mad(_173.y, r0.y, _173.x * r0.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _212 = o0;
    _212.y = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _237 = o0;
    _237.z = mad(_223.w, r0.w, mad(_223.z, r0.z, mad(_223.y, r0.y, _223.x * r0.x)));
    o0 = _237;
    float4 _248 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _262 = o0;
    _262.w = mad(_248.w, r0.w, mad(_248.z, r0.z, mad(_248.y, r0.y, _248.x * r0.x)));
    o0 = _262;
    float2 _268 = float2(asint(shader_in[1].xy));
    r1 = float4(_268.x, _268.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _302 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float3 _316 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_316.x, _316.y, _316.z, r0.w);
    float4 _332 = r0;
    _332.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _332;
    float4 _337 = r0;
    _337.w = rsqrt(r0.w);
    r0 = _337;
    o3 = r0.www * r1.xyz;
    float3 _355 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_355.x, _355.y, _355.z, r1.w);
    float3 _365 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_365.x, _365.y, _365.z, r2.w);
    float3 _377 = (shader_in[4].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_377.x, _377.y, _377.z, r1.w);
    float3 _387 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _399 = r2;
    _399.x = mad(_387.z, r1.xyz.z, mad(_387.y, r1.xyz.y, _387.x * r1.xyz.x));
    r2 = _399;
    float3 _408 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _420 = r2;
    _420.y = mad(_408.z, r1.xyz.z, mad(_408.y, r1.xyz.y, _408.x * r1.xyz.x));
    r2 = _420;
    float3 _429 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _441 = r2;
    _441.z = mad(_429.z, r1.xyz.z, mad(_429.y, r1.xyz.y, _429.x * r1.xyz.x));
    r2 = _441;
    float4 _456 = r0;
    _456.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _456;
    float4 _461 = r0;
    _461.w = rsqrt(r0.w);
    r0 = _461;
    o4 = r0.www * r2.xyz;
    float4 _475 = r0;
    _475.w = r0.y * cb0_m[13].x;
    r0 = _475;
    float4 _482 = r1;
    _482.x = r0.w * asfloat(3216550459u);
    r1 = _482;
    float4 _487 = r1;
    _487.x = exp2(r1.x);
    r1 = _487;
    float4 _494 = r1;
    _494.x = (-r1.x) + asfloat(1065353216u);
    r1 = _494;
    float4 _501 = r0;
    _501.w = r1.x / r0.w;
    r0 = _501;
    float4 _513 = r1;
    _513.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _513;
    float4 _528 = r0;
    _528.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _528;
    float4 _533 = r0;
    _533.x = sqrt(r0.x);
    r0 = _533;
    float4 _541 = r0;
    _541.x = r0.x * cb0_m[13].y;
    r0 = _541;
    float4 _551 = r0;
    _551.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _551;
    float4 _563 = r0;
    _563.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _563;
    float4 _569 = r0;
    _569.x = exp2(-r0.x);
    r0 = _569;
    float4 _575 = r0;
    _575.x = min(r0.x, asfloat(1065353216u));
    r0 = _575;
    float4 _582 = o5;
    _582.w = (-r0.x) + asfloat(1065353216u);
    o5 = _582;
    float3 _591 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o5 = float4(_591.x, _591.y, _591.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _600 = asfloat(v1);
    shader_in[1] = float4(_600.x, _600.y, shader_in[1].z, shader_in[1].w);
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
