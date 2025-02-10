cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _42 = r0;
    _42.w = asfloat(1065353216u);
    r0 = _42;
    float4 _58 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _73 = r1;
    _73.x = mad(_58.w, r0.w, mad(_58.z, r0.z, mad(_58.y, r0.y, _58.x * r0.x)));
    r1 = _73;
    float4 _85 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _99 = r1;
    _99.y = mad(_85.w, r0.w, mad(_85.z, r0.z, mad(_85.y, r0.y, _85.x * r0.x)));
    r1 = _99;
    float4 _111 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _125 = r1;
    _125.z = mad(_111.w, r0.w, mad(_111.z, r0.z, mad(_111.y, r0.y, _111.x * r0.x)));
    r1 = _125;
    float4 _128 = r1;
    _128.w = asfloat(1065353216u);
    r1 = _128;
    float4 _139 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _153 = o0;
    _153.x = mad(_139.w, r1.w, mad(_139.z, r1.z, mad(_139.y, r1.y, _139.x * r1.x)));
    o0 = _153;
    float4 _164 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _178 = o0;
    _178.y = mad(_164.w, r1.w, mad(_164.z, r1.z, mad(_164.y, r1.y, _164.x * r1.x)));
    o0 = _178;
    float4 _189 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _203 = o0;
    _203.z = mad(_189.w, r1.w, mad(_189.z, r1.z, mad(_189.y, r1.y, _189.x * r1.x)));
    o0 = _203;
    float4 _215 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _229 = o0;
    _229.w = mad(_215.w, r1.w, mad(_215.z, r1.z, mad(_215.y, r1.y, _215.x * r1.x)));
    o0 = _229;
    o1 = (shader_in[1].xxxx * asfloat(uint4(1082130432u, 3229614080u, 0u, 0u))) + asfloat(uint4(0u, 1082130432u, 0u, 1065353216u));
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
