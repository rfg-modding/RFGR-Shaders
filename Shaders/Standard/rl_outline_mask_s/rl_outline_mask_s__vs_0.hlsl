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

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _40 = r0;
    _40.w = asfloat(1065353216u);
    r0 = _40;
    float4 _56 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _71 = r1;
    _71.x = mad(_56.w, r0.w, mad(_56.z, r0.z, mad(_56.y, r0.y, _56.x * r0.x)));
    r1 = _71;
    float4 _83 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _97 = r1;
    _97.y = mad(_83.w, r0.w, mad(_83.z, r0.z, mad(_83.y, r0.y, _83.x * r0.x)));
    r1 = _97;
    float4 _109 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _123 = r1;
    _123.z = mad(_109.w, r0.w, mad(_109.z, r0.z, mad(_109.y, r0.y, _109.x * r0.x)));
    r1 = _123;
    float4 _126 = r1;
    _126.w = asfloat(1065353216u);
    r1 = _126;
    float4 _137 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _151 = o0;
    _151.x = mad(_137.w, r1.w, mad(_137.z, r1.z, mad(_137.y, r1.y, _137.x * r1.x)));
    o0 = _151;
    float4 _162 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _176 = o0;
    _176.y = mad(_162.w, r1.w, mad(_162.z, r1.z, mad(_162.y, r1.y, _162.x * r1.x)));
    o0 = _176;
    float4 _187 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _201 = o0;
    _201.z = mad(_187.w, r1.w, mad(_187.z, r1.z, mad(_187.y, r1.y, _187.x * r1.x)));
    o0 = _201;
    float4 _213 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _227 = o0;
    _227.w = mad(_213.w, r1.w, mad(_213.z, r1.z, mad(_213.y, r1.y, _213.x * r1.x)));
    o0 = _227;
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
