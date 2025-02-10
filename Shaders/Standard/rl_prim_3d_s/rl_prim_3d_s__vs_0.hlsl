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
static float4 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float4 o1;
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
    float4 _86 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _100 = r1;
    _100.y = mad(_86.w, r0.w, mad(_86.z, r0.z, mad(_86.y, r0.y, _86.x * r0.x)));
    r1 = _100;
    float4 _112 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _126 = r1;
    _126.z = mad(_112.w, r0.w, mad(_112.z, r0.z, mad(_112.y, r0.y, _112.x * r0.x)));
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
    o1 = shader_in[1].zyxw;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
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
