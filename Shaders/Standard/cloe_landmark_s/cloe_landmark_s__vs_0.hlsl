cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
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

static float4 shader_in[5];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 r0;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
    float4 _67 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _81 = o0;
    _81.x = mad(_67.w, r0.w, mad(_67.z, r0.z, mad(_67.y, r0.y, _67.x * r0.x)));
    o0 = _81;
    float4 _93 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _107 = o0;
    _107.y = mad(_93.w, r0.w, mad(_93.z, r0.z, mad(_93.y, r0.y, _93.x * r0.x)));
    o0 = _107;
    float4 _119 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _133 = o0;
    _133.z = mad(_119.w, r0.w, mad(_119.z, r0.z, mad(_119.y, r0.y, _119.x * r0.x)));
    o0 = _133;
    float4 _145 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _159 = o0;
    _159.w = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    o0 = _159;
    float4 _167 = r0;
    _167.x = asfloat(1056964608u) / cb2_m[0].x;
    r0 = _167;
    o1 = r0.xx + shader_in[1].xy;
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
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
