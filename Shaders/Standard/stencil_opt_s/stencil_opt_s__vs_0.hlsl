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
    float4 _137 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _151 = r0;
    _151.x = mad(_137.w, r1.w, mad(_137.z, r1.z, mad(_137.y, r1.y, _137.x * r1.x)));
    r0 = _151;
    float4 _163 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _177 = r0;
    _177.y = mad(_163.w, r1.w, mad(_163.z, r1.z, mad(_163.y, r1.y, _163.x * r1.x)));
    r0 = _177;
    float4 _184 = o0;
    _184.z = min(r0.y, r0.x);
    o0 = _184;
    float4 _188 = o0;
    _188.w = r0.y;
    o0 = _188;
    float4 _199 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _213 = o0;
    _213.x = mad(_199.w, r1.w, mad(_199.z, r1.z, mad(_199.y, r1.y, _199.x * r1.x)));
    o0 = _213;
    float4 _224 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _238 = o0;
    _238.y = mad(_224.w, r1.w, mad(_224.z, r1.z, mad(_224.y, r1.y, _224.x * r1.x)));
    o0 = _238;
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
