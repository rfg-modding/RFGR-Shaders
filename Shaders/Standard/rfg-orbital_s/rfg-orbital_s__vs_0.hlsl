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
static float2 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _38 = r0;
    _38.w = asfloat(1065353216u);
    r0 = _38;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _49 = r1;
    _49.w = asfloat(1065353216u);
    r1 = _49;
    float4 _65 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _79 = r0;
    _79.x = mad(_65.w, r1.w, mad(_65.z, r1.z, mad(_65.y, r1.y, _65.x * r1.x)));
    r0 = _79;
    float4 _91 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _105 = r0;
    _105.y = mad(_91.w, r1.w, mad(_91.z, r1.z, mad(_91.y, r1.y, _91.x * r1.x)));
    r0 = _105;
    float4 _117 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _131 = r0;
    _131.z = mad(_117.w, r1.w, mad(_117.z, r1.z, mad(_117.y, r1.y, _117.x * r1.x)));
    r0 = _131;
    float4 _142 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _156 = r1;
    _156.x = mad(_142.w, r0.w, mad(_142.z, r0.z, mad(_142.y, r0.y, _142.x * r0.x)));
    r1 = _156;
    float4 _167 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _181 = r1;
    _181.y = mad(_167.w, r0.w, mad(_167.z, r0.z, mad(_167.y, r0.y, _167.x * r0.x)));
    r1 = _181;
    float4 _193 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _207 = r1;
    _207.z = mad(_193.w, r0.w, mad(_193.z, r0.z, mad(_193.y, r0.y, _193.x * r0.x)));
    r1 = _207;
    o0 = r1.xyzz;
    o1 = shader_in[1].xy;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
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
