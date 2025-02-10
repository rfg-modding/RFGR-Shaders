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
static int v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _44 = r0;
    _44.w = asfloat(1065353216u);
    r0 = _44;
    float4 _60 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _75 = r1;
    _75.x = mad(_60.w, r0.w, mad(_60.z, r0.z, mad(_60.y, r0.y, _60.x * r0.x)));
    r1 = _75;
    float4 _87 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _101 = r1;
    _101.y = mad(_87.w, r0.w, mad(_87.z, r0.z, mad(_87.y, r0.y, _87.x * r0.x)));
    r1 = _101;
    float4 _113 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _127 = r1;
    _127.z = mad(_113.w, r0.w, mad(_113.z, r0.z, mad(_113.y, r0.y, _113.x * r0.x)));
    r1 = _127;
    float4 _130 = r1;
    _130.w = asfloat(1065353216u);
    r1 = _130;
    float4 _141 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _155 = o0;
    _155.x = mad(_141.w, r1.w, mad(_141.z, r1.z, mad(_141.y, r1.y, _141.x * r1.x)));
    o0 = _155;
    float4 _166 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _180 = o0;
    _180.y = mad(_166.w, r1.w, mad(_166.z, r1.z, mad(_166.y, r1.y, _166.x * r1.x)));
    o0 = _180;
    float4 _191 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _205 = o0;
    _205.z = mad(_191.w, r1.w, mad(_191.z, r1.z, mad(_191.y, r1.y, _191.x * r1.x)));
    o0 = _205;
    float4 _217 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _231 = o0;
    _231.w = mad(_217.w, r1.w, mad(_217.z, r1.z, mad(_217.y, r1.y, _217.x * r1.x)));
    o0 = _231;
    float4 _238 = r0;
    _238.x = float(asint(shader_in[1].x));
    r0 = _238;
    o1 = r0.x * asfloat(981467136u);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float4 _253 = shader_in[1];
    _253.x = asfloat(v1);
    shader_in[1] = _253;
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
