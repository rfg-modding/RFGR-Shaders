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
static int2 v0;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
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
    float2 _37 = float2(asint(shader_in[0].xy));
    r0 = float4(_37.x, _37.y, r0.z, r0.w);
    float4 _46 = r0;
    _46.y = r0.y + asfloat(1191182336u);
    r0 = _46;
    float4 _54 = r1;
    _54.y = r0.x * asfloat(1015021568u);
    r1 = _54;
    float4 _61 = r0;
    _61.x = r0.y * asfloat(998244352u);
    r0 = _61;
    float4 _66 = r1;
    _66.z = trunc(r0.x);
    r1 = _66;
    float4 _77 = r1;
    _77.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _77;
    float4 _81 = r1;
    _81.w = asfloat(1065353216u);
    r1 = _81;
    float4 _97 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _111 = r0;
    _111.x = mad(_97.w, r1.w, mad(_97.z, r1.z, mad(_97.y, r1.y, _97.x * r1.x)));
    r0 = _111;
    float4 _123 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _137 = r0;
    _137.y = mad(_123.w, r1.w, mad(_123.z, r1.z, mad(_123.y, r1.y, _123.x * r1.x)));
    r0 = _137;
    float4 _149 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _163 = r0;
    _163.z = mad(_149.w, r1.w, mad(_149.z, r1.z, mad(_149.y, r1.y, _149.x * r1.x)));
    r0 = _163;
    float4 _166 = r0;
    _166.w = asfloat(1065353216u);
    r0 = _166;
    float4 _177 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _191 = o0;
    _191.x = mad(_177.w, r0.w, mad(_177.z, r0.z, mad(_177.y, r0.y, _177.x * r0.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _216 = o0;
    _216.y = mad(_202.w, r0.w, mad(_202.z, r0.z, mad(_202.y, r0.y, _202.x * r0.x)));
    o0 = _216;
    float4 _227 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _241 = o0;
    _241.z = mad(_227.w, r0.w, mad(_227.z, r0.z, mad(_227.y, r0.y, _227.x * r0.x)));
    o0 = _241;
    float4 _253 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _267 = o0;
    _267.w = mad(_253.w, r0.w, mad(_253.z, r0.z, mad(_253.y, r0.y, _253.x * r0.x)));
    o0 = _267;
}

void vert_main()
{
    float2 _271 = asfloat(v0);
    shader_in[0] = float4(_271.x, _271.y, shader_in[0].z, shader_in[0].w);
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
