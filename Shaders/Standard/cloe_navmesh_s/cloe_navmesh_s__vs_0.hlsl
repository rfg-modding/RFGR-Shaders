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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[1];
static float4 o0;
static float2 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _43 = r0;
    _43.w = asfloat(1065353216u);
    r0 = _43;
    float4 _59 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _74 = r1;
    _74.x = mad(_59.w, r0.w, mad(_59.z, r0.z, mad(_59.y, r0.y, _59.x * r0.x)));
    r1 = _74;
    float4 _86 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _100 = r1;
    _100.z = mad(_86.w, r0.w, mad(_86.z, r0.z, mad(_86.y, r0.y, _86.x * r0.x)));
    r1 = _100;
    float4 _112 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _126 = r1;
    _126.y = mad(_112.w, r0.w, mad(_112.z, r0.z, mad(_112.y, r0.y, _112.x * r0.x)));
    r1 = _126;
    float4 _129 = r1;
    _129.w = asfloat(1065353216u);
    r1 = _129;
    float4 _140 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _154 = o0;
    _154.x = mad(_140.w, r1.w, mad(_140.z, r1.z, mad(_140.y, r1.y, _140.x * r1.x)));
    o0 = _154;
    float4 _165 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _179 = o0;
    _179.y = mad(_165.w, r1.w, mad(_165.z, r1.z, mad(_165.y, r1.y, _165.x * r1.x)));
    o0 = _179;
    float4 _190 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _204 = o0;
    _204.z = mad(_190.w, r1.w, mad(_190.z, r1.z, mad(_190.y, r1.y, _190.x * r1.x)));
    o0 = _204;
    float4 _216 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _230 = o0;
    _230.w = mad(_216.w, r1.w, mad(_216.z, r1.z, mad(_216.y, r1.y, _216.x * r1.x)));
    o0 = _230;
    float2 _234 = o1;
    _234.x = r1.y;
    o1 = _234;
    float2 _237 = o1;
    _237.y = asfloat(0u);
    o1 = _237;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
