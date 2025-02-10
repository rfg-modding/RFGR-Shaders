cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _47 = r0;
    _47.w = asfloat(1065353216u);
    r0 = _47;
    float4 _66 = r1;
    _66.x = mad(shader_in[3].w, r0.w, mad(shader_in[3].z, r0.z, mad(shader_in[3].y, r0.y, shader_in[3].x * r0.x)));
    r1 = _66;
    float4 _84 = r1;
    _84.y = mad(shader_in[4].w, r0.w, mad(shader_in[4].z, r0.z, mad(shader_in[4].y, r0.y, shader_in[4].x * r0.x)));
    r1 = _84;
    float4 _102 = r1;
    _102.z = mad(shader_in[5].w, r0.w, mad(shader_in[5].z, r0.z, mad(shader_in[5].y, r0.y, shader_in[5].x * r0.x)));
    r1 = _102;
    float4 _105 = r1;
    _105.w = asfloat(1065353216u);
    r1 = _105;
    float4 _122 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _136 = o0;
    _136.x = mad(_122.w, r1.w, mad(_122.z, r1.z, mad(_122.y, r1.y, _122.x * r1.x)));
    o0 = _136;
    float4 _148 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _162 = o0;
    _162.y = mad(_148.w, r1.w, mad(_148.z, r1.z, mad(_148.y, r1.y, _148.x * r1.x)));
    o0 = _162;
    float4 _174 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _188 = o0;
    _188.z = mad(_174.w, r1.w, mad(_174.z, r1.z, mad(_174.y, r1.y, _174.x * r1.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _213 = o0;
    _213.w = mad(_199.w, r1.w, mad(_199.z, r1.z, mad(_199.y, r1.y, _199.x * r1.x)));
    o0 = _213;
    float2 _219 = float2(asint(shader_in[1].xy));
    r0 = float4(_219.x, _219.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = shader_in[6].zyxw;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _239 = asfloat(v1);
    shader_in[1] = float4(_239.x, _239.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
