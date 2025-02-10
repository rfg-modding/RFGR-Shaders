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
    float4 _41 = r0;
    _41.w = asfloat(1065353216u);
    r0 = _41;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _51 = r1;
    _51.w = asfloat(1065353216u);
    r1 = _51;
    float4 _69 = r0;
    _69.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _69;
    float4 _87 = r0;
    _87.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _87;
    float4 _105 = r0;
    _105.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _105;
    float4 _122 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _136 = o0;
    _136.x = mad(_122.w, r0.w, mad(_122.z, r0.z, mad(_122.y, r0.y, _122.x * r0.x)));
    o0 = _136;
    float4 _148 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _162 = o0;
    _162.y = mad(_148.w, r0.w, mad(_148.z, r0.z, mad(_148.y, r0.y, _148.x * r0.x)));
    o0 = _162;
    float4 _174 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _188 = o0;
    _188.z = mad(_174.w, r0.w, mad(_174.z, r0.z, mad(_174.y, r0.y, _174.x * r0.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _213 = o0;
    _213.w = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    o0 = _213;
    o2 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o2.w);
    float4 _230 = r0;
    _230.x = asfloat((shader_in[6].w < r0.y) ? 4294967295u : 0u);
    r0 = _230;
    float4 _237 = o2;
    _237.w = asfloat(asuint(r0.x) & 1065353216u);
    o2 = _237;
    float2 _243 = float2(asint(shader_in[1].xy));
    r0 = float4(_243.x, _243.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(989855744u, 989855744u));
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _259 = asfloat(v1);
    shader_in[1] = float4(_259.x, _259.y, shader_in[1].z, shader_in[1].w);
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
