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

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _46 = r0;
    _46.w = asfloat(1065353216u);
    r0 = _46;
    float4 _62 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _77 = r1;
    _77.x = mad(_62.w, r0.w, mad(_62.z, r0.z, mad(_62.y, r0.y, _62.x * r0.x)));
    r1 = _77;
    float4 _89 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _103 = r1;
    _103.y = mad(_89.w, r0.w, mad(_89.z, r0.z, mad(_89.y, r0.y, _89.x * r0.x)));
    r1 = _103;
    float4 _115 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _129 = r1;
    _129.z = mad(_115.w, r0.w, mad(_115.z, r0.z, mad(_115.y, r0.y, _115.x * r0.x)));
    r1 = _129;
    float4 _132 = r1;
    _132.w = asfloat(1065353216u);
    r1 = _132;
    float4 _143 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _157 = o0;
    _157.x = mad(_143.w, r1.w, mad(_143.z, r1.z, mad(_143.y, r1.y, _143.x * r1.x)));
    o0 = _157;
    float4 _168 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _182 = o0;
    _182.y = mad(_168.w, r1.w, mad(_168.z, r1.z, mad(_168.y, r1.y, _168.x * r1.x)));
    o0 = _182;
    float4 _193 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _207 = o0;
    _207.z = mad(_193.w, r1.w, mad(_193.z, r1.z, mad(_193.y, r1.y, _193.x * r1.x)));
    o0 = _207;
    float4 _219 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _233 = o0;
    _233.w = mad(_219.w, r1.w, mad(_219.z, r1.z, mad(_219.y, r1.y, _219.x * r1.x)));
    o0 = _233;
    float2 _239 = float2(asint(shader_in[1].xy));
    r0 = float4(_239.x, _239.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _255 = asfloat(v1);
    shader_in[1] = float4(_255.x, _255.y, shader_in[1].z, shader_in[1].w);
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
