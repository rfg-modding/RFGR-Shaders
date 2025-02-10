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
static int2 v2;
static int2 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    float4 _65 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _80 = r1;
    _80.x = mad(_65.w, r0.w, mad(_65.z, r0.z, mad(_65.y, r0.y, _65.x * r0.x)));
    r1 = _80;
    float4 _92 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _106 = r1;
    _106.y = mad(_92.w, r0.w, mad(_92.z, r0.z, mad(_92.y, r0.y, _92.x * r0.x)));
    r1 = _106;
    float4 _118 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _132 = r1;
    _132.z = mad(_118.w, r0.w, mad(_118.z, r0.z, mad(_118.y, r0.y, _118.x * r0.x)));
    r1 = _132;
    float4 _135 = r1;
    _135.w = asfloat(1065353216u);
    r1 = _135;
    float4 _146 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _160 = o0;
    _160.x = mad(_146.w, r1.w, mad(_146.z, r1.z, mad(_146.y, r1.y, _146.x * r1.x)));
    o0 = _160;
    float4 _171 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _185 = o0;
    _185.y = mad(_171.w, r1.w, mad(_171.z, r1.z, mad(_171.y, r1.y, _171.x * r1.x)));
    o0 = _185;
    float4 _196 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _210 = o0;
    _210.z = mad(_196.w, r1.w, mad(_196.z, r1.z, mad(_196.y, r1.y, _196.x * r1.x)));
    o0 = _210;
    float4 _222 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _236 = o0;
    _236.w = mad(_222.w, r1.w, mad(_222.z, r1.z, mad(_222.y, r1.y, _222.x * r1.x)));
    o0 = _236;
    float2 _242 = float2(asint(shader_in[3].xy));
    r0 = float4(_242.x, _242.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float2 _256 = float2(asint(shader_in[1].xy));
    r0 = float4(_256.x, _256.y, r0.z, r0.w);
    float2 _262 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_262.x, _262.y, o2.z, o2.w);
    float2 _269 = float2(asint(shader_in[2].xy));
    r0 = float4(_269.x, _269.y, r0.z, r0.w);
    float2 _275 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _275.x, _275.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _284 = asfloat(v1);
    shader_in[1] = float4(_284.x, _284.y, shader_in[1].z, shader_in[1].w);
    float2 _289 = asfloat(v2);
    shader_in[2] = float4(_289.x, _289.y, shader_in[2].z, shader_in[2].w);
    float2 _294 = asfloat(v3);
    shader_in[3] = float4(_294.x, _294.y, shader_in[3].z, shader_in[3].w);
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
