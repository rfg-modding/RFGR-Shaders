cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _39 = r0;
    _39.w = asfloat(1065353216u);
    r0 = _39;
    float4 _58 = r1;
    _58.x = mad(shader_in[2].w, r0.w, mad(shader_in[2].z, r0.z, mad(shader_in[2].y, r0.y, shader_in[2].x * r0.x)));
    r1 = _58;
    float4 _76 = r1;
    _76.y = mad(shader_in[3].w, r0.w, mad(shader_in[3].z, r0.z, mad(shader_in[3].y, r0.y, shader_in[3].x * r0.x)));
    r1 = _76;
    float4 _94 = r1;
    _94.z = mad(shader_in[4].w, r0.w, mad(shader_in[4].z, r0.z, mad(shader_in[4].y, r0.y, shader_in[4].x * r0.x)));
    r1 = _94;
    float4 _97 = r1;
    _97.w = asfloat(1065353216u);
    r1 = _97;
    float4 _114 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _128 = o0;
    _128.x = mad(_114.w, r1.w, mad(_114.z, r1.z, mad(_114.y, r1.y, _114.x * r1.x)));
    o0 = _128;
    float4 _140 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _154 = o0;
    _154.y = mad(_140.w, r1.w, mad(_140.z, r1.z, mad(_140.y, r1.y, _140.x * r1.x)));
    o0 = _154;
    float4 _165 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _179 = o0;
    _179.z = mad(_165.w, r1.w, mad(_165.z, r1.z, mad(_165.y, r1.y, _165.x * r1.x)));
    o0 = _179;
    float4 _190 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _204 = o0;
    _204.w = mad(_190.w, r1.w, mad(_190.z, r1.z, mad(_190.y, r1.y, _190.x * r1.x)));
    o0 = _204;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
