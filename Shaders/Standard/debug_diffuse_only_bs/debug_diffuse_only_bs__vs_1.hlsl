cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _42 = r0;
    _42.w = asfloat(1065353216u);
    r0 = _42;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _53 = r1;
    _53.w = asfloat(1065353216u);
    r1 = _53;
    float4 _71 = r0;
    _71.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _71;
    float4 _89 = r0;
    _89.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _89;
    float4 _107 = r0;
    _107.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _107;
    float4 _123 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _137 = o0;
    _137.x = mad(_123.w, r0.w, mad(_123.z, r0.z, mad(_123.y, r0.y, _123.x * r0.x)));
    o0 = _137;
    float4 _149 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _163 = o0;
    _163.y = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    o0 = _163;
    float4 _175 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _189 = o0;
    _189.z = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    o0 = _189;
    float4 _201 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _215 = o0;
    _215.w = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    o0 = _215;
    float3 _228 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_228.x, _228.y, _228.z, r0.w);
    float3 _243 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_243.x, _243.y, _243.z, r1.w);
    float4 _261 = r2;
    _261.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _261;
    float4 _277 = r2;
    _277.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _277;
    float4 _293 = r2;
    _293.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _293;
    float4 _308 = r0;
    _308.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _308;
    float4 _313 = r0;
    _313.w = rsqrt(r0.w);
    r0 = _313;
    float3 _319 = r0.www * r2.xyz;
    r1 = float4(_319.x, _319.y, _319.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _347 = r3;
    _347.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _347;
    float4 _363 = r3;
    _363.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _363;
    float4 _379 = r3;
    _379.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _379;
    float4 _394 = r0;
    _394.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _394;
    float4 _399 = r0;
    _399.w = rsqrt(r0.w);
    r0 = _399;
    float3 _405 = r0.www * r3.xyz;
    r2 = float4(_405.x, _405.y, _405.z, r2.w);
    float3 _412 = r1.zxy * r2.yzx;
    r3 = float4(_412.x, _412.y, _412.z, r3.w);
    float3 _423 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_423.x, _423.y, _423.z, r3.w);
    float3 _430 = r2.www * r3.xyz;
    r3 = float4(_430.x, _430.y, _430.z, r3.w);
    float3 _446 = o1;
    _446.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o1 = _446;
    float3 _455 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _467 = o2;
    _467.y = mad(_455.z, r3.xyz.z, mad(_455.y, r3.xyz.y, _455.x * r3.xyz.x));
    o2 = _467;
    float3 _482 = o1;
    _482.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o1 = _482;
    float3 _491 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _503 = o2;
    _503.z = mad(_491.z, r1.xyz.z, mad(_491.y, r1.xyz.y, _491.x * r1.xyz.x));
    o2 = _503;
    float3 _518 = o1;
    _518.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o1 = _518;
    float3 _527 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _539 = o2;
    _539.x = mad(_527.z, r2.xyz.z, mad(_527.y, r2.xyz.y, _527.x * r2.xyz.x));
    o2 = _539;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
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
