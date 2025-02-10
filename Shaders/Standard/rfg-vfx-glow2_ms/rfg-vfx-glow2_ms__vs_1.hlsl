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
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float2 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _47 = r0;
    _47.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _47;
    float3 _60 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_60.x, _60.y, _60.z, r0.w);
    float4 _65 = r0;
    _65.w = asfloat(1065353216u);
    r0 = _65;
    float4 _81 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _96 = r1;
    _96.x = mad(_81.w, r0.w, mad(_81.z, r0.z, mad(_81.y, r0.y, _81.x * r0.x)));
    r1 = _96;
    float4 _108 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _122 = r1;
    _122.y = mad(_108.w, r0.w, mad(_108.z, r0.z, mad(_108.y, r0.y, _108.x * r0.x)));
    r1 = _122;
    float4 _134 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _148 = r1;
    _148.z = mad(_134.w, r0.w, mad(_134.z, r0.z, mad(_134.y, r0.y, _134.x * r0.x)));
    r1 = _148;
    float4 _151 = r1;
    _151.w = asfloat(1065353216u);
    r1 = _151;
    float4 _162 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _176 = o0;
    _176.x = mad(_162.w, r1.w, mad(_162.z, r1.z, mad(_162.y, r1.y, _162.x * r1.x)));
    o0 = _176;
    float4 _187 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _201 = o0;
    _201.y = mad(_187.w, r1.w, mad(_187.z, r1.z, mad(_187.y, r1.y, _187.x * r1.x)));
    o0 = _201;
    float4 _212 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _226 = o0;
    _226.z = mad(_212.w, r1.w, mad(_212.z, r1.z, mad(_212.y, r1.y, _212.x * r1.x)));
    o0 = _226;
    float4 _237 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _251 = o0;
    _251.w = mad(_237.w, r1.w, mad(_237.z, r1.z, mad(_237.y, r1.y, _237.x * r1.x)));
    o0 = _251;
    float2 _257 = float2(asint(shader_in[1].xy));
    r0 = float4(_257.x, _257.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _273 = asfloat(v1);
    shader_in[1] = float4(_273.x, _273.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
