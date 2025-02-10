cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;

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
static float4 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    float4 _64 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _79 = r1;
    _79.x = mad(_64.w, r0.w, mad(_64.z, r0.z, mad(_64.y, r0.y, _64.x * r0.x)));
    r1 = _79;
    float4 _91 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _105 = r1;
    _105.z = mad(_91.w, r0.w, mad(_91.z, r0.z, mad(_91.y, r0.y, _91.x * r0.x)));
    r1 = _105;
    float4 _117 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _131 = r1;
    _131.y = mad(_117.w, r0.w, mad(_117.z, r0.z, mad(_117.y, r0.y, _117.x * r0.x)));
    r1 = _131;
    float4 _134 = r1;
    _134.w = asfloat(1065353216u);
    r1 = _134;
    float4 _145 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _159 = o0;
    _159.x = mad(_145.w, r1.w, mad(_145.z, r1.z, mad(_145.y, r1.y, _145.x * r1.x)));
    o0 = _159;
    float4 _170 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _184 = o0;
    _184.y = mad(_170.w, r1.w, mad(_170.z, r1.z, mad(_170.y, r1.y, _170.x * r1.x)));
    o0 = _184;
    float4 _195 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _209 = o0;
    _209.z = mad(_195.w, r1.w, mad(_195.z, r1.z, mad(_195.y, r1.y, _195.x * r1.x)));
    o0 = _209;
    float4 _221 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _235 = o0;
    _235.w = mad(_221.w, r1.w, mad(_221.z, r1.z, mad(_221.y, r1.y, _221.x * r1.x)));
    o0 = _235;
    float4 _243 = o1;
    _243.z = r1.y / cb2_m[0].w;
    o1 = _243;
    float2 _250 = float2(asint(shader_in[1].xy));
    r0 = float4(_250.x, _250.y, r0.z, r0.w);
    float2 _259 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_259.x, _259.y, o1.z, o1.w);
    float4 _263 = o1;
    _263.w = asfloat(0u);
    o1 = _263;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _271 = asfloat(v1);
    shader_in[1] = float4(_271.x, _271.y, shader_in[1].z, shader_in[1].w);
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
