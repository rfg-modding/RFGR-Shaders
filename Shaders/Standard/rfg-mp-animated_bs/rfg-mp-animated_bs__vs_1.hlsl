cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
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
static float4 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
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
    float4 _69 = r0;
    _69.x = mad(shader_in[2].w, r1.w, mad(shader_in[2].z, r1.z, mad(shader_in[2].y, r1.y, shader_in[2].x * r1.x)));
    r0 = _69;
    float4 _87 = r0;
    _87.y = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _87;
    float4 _105 = r0;
    _105.z = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _105;
    float4 _122 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _136 = o0;
    _136.x = mad(_122.w, r0.w, mad(_122.z, r0.z, mad(_122.y, r0.y, _122.x * r0.x)));
    o0 = _136;
    float4 _148 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _162 = o0;
    _162.y = mad(_148.w, r0.w, mad(_148.z, r0.z, mad(_148.y, r0.y, _148.x * r0.x)));
    o0 = _162;
    float4 _173 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _187 = o0;
    _187.z = mad(_173.w, r0.w, mad(_173.z, r0.z, mad(_173.y, r0.y, _173.x * r0.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _212 = o0;
    _212.w = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float3 _226 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_226.x, _226.y, _226.z, r0.w);
    float4 _242 = r0;
    _242.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _242;
    float4 _247 = r0;
    _247.w = rsqrt(r0.w);
    r0 = _247;
    float3 _253 = r0.www * r0.xyz;
    r0 = float4(_253.x, _253.y, _253.z, r0.w);
    float3 _261 = r0.xyz * asfloat(uint3(0u, 1065353216u, 0u));
    r1 = float4(_261.x, _261.y, _261.z, r1.w);
    float3 _272 = (r0.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r1.xyz);
    r1 = float4(_272.x, _272.y, _272.z, r1.w);
    float4 _286 = r0;
    _286.w = mad(r1.yz.y, r1.yz.y, r1.yz.x * r1.yz.x);
    r0 = _286;
    float4 _291 = r0;
    _291.w = rsqrt(r0.w);
    r0 = _291;
    float3 _297 = r0.www * r1.xyz;
    r1 = float4(_297.x, _297.y, _297.z, r1.w);
    float3 _304 = r0.yzx * r1.xyz;
    r2 = float4(_304.x, _304.y, _304.z, r2.w);
    float3 _316 = (r1.zxy * r0.zxy) + (-r2.xyz);
    r1 = float4(_316.x, _316.y, _316.z, r1.w);
    float4 _332 = r0;
    _332.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _332;
    float4 _337 = r0;
    _337.w = rsqrt(r0.w);
    r0 = _337;
    float3 _343 = r0.www * r1.xyz;
    r1 = float4(_343.x, _343.y, _343.z, r1.w);
    float3 _356 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_356.x, _356.y, _356.z, r2.w);
    float4 _374 = r3;
    _374.x = mad(shader_in[2].xyz.z, r2.xyz.z, mad(shader_in[2].xyz.y, r2.xyz.y, shader_in[2].xyz.x * r2.xyz.x));
    r3 = _374;
    float4 _390 = r3;
    _390.y = mad(shader_in[3].xyz.z, r2.xyz.z, mad(shader_in[3].xyz.y, r2.xyz.y, shader_in[3].xyz.x * r2.xyz.x));
    r3 = _390;
    float4 _406 = r3;
    _406.z = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _406;
    float4 _421 = r0;
    _421.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _421;
    float4 _426 = r0;
    _426.w = rsqrt(r0.w);
    r0 = _426;
    float3 _432 = r0.www * r3.xyz;
    r2 = float4(_432.x, _432.y, _432.z, r2.w);
    float4 _448 = r0;
    _448.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _448;
    float4 _463 = r0;
    _463.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _463;
    float4 _469 = r0;
    _469.x = max(r0.x, asfloat(0u));
    r0 = _469;
    float4 _478 = r0;
    _478.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _478;
    float2 _488 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_488.x, _488.y, r1.z, r1.w);
    float4 _496 = r0;
    _496.x = (-r0.x) + asfloat(1065353216u);
    r0 = _496;
    float4 _501 = r0;
    _501.x = log2(r0.x);
    r0 = _501;
    float2 _511 = r0.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_511.x, _511.y, r0.z, r0.w);
    float2 _516 = exp2(r0.xy);
    r0 = float4(_516.x, _516.y, r0.z, r0.w);
    float2 _533 = (cb0_m[12].x.xx * float2(cb2_m[3].x, cb2_m[3].y)) + r1.xy;
    o1 = float3(_533.x, _533.y, o1.z);
    float4 _542 = r0;
    _542.y = (-r0.x) + r0.y;
    r0 = _542;
    float4 _550 = r0;
    _550.z = cb2_m[3].z + asfloat(1008981770u);
    r0 = _550;
    float4 _556 = r0;
    _556.z = asfloat(1073741824u) / r0.z;
    r0 = _556;
    float4 _564 = r0;
    _564.z = r0.z * cb0_m[12].z;
    r0 = _564;
    float4 _570 = r0;
    _570.z = cos(r0.zzzz.z);
    r0 = _570;
    float4 _576 = r0;
    _576.z = r0.z + asfloat(1065353216u);
    r0 = _576;
    float4 _582 = r0;
    _582.z = r0.z * asfloat(1056964608u);
    r0 = _582;
    float3 _592 = o1;
    _592.z = (r0.z * r0.y) + r0.x;
    o1 = _592;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
