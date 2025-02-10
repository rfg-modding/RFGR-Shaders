cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float3 o1;
static float2 o2;
static float3 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    float4 _70 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _85 = r1;
    _85.x = mad(_70.w, r0.w, mad(_70.z, r0.z, mad(_70.y, r0.y, _70.x * r0.x)));
    r1 = _85;
    float4 _97 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _111 = r1;
    _111.y = mad(_97.w, r0.w, mad(_97.z, r0.z, mad(_97.y, r0.y, _97.x * r0.x)));
    r1 = _111;
    float4 _123 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _137 = r1;
    _137.z = mad(_123.w, r0.w, mad(_123.z, r0.z, mad(_123.y, r0.y, _123.x * r0.x)));
    r1 = _137;
    float4 _140 = r1;
    _140.w = asfloat(1065353216u);
    r1 = _140;
    float4 _151 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _165 = o0;
    _165.x = mad(_151.w, r1.w, mad(_151.z, r1.z, mad(_151.y, r1.y, _151.x * r1.x)));
    o0 = _165;
    float4 _176 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _190 = o0;
    _190.y = mad(_176.w, r1.w, mad(_176.z, r1.z, mad(_176.y, r1.y, _176.x * r1.x)));
    o0 = _190;
    float4 _201 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _215 = o0;
    _215.z = mad(_201.w, r1.w, mad(_201.z, r1.z, mad(_201.y, r1.y, _201.x * r1.x)));
    o0 = _215;
    float4 _227 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _241 = o0;
    _241.w = mad(_227.w, r1.w, mad(_227.z, r1.z, mad(_227.y, r1.y, _227.x * r1.x)));
    o0 = _241;
    float3 _254 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_254.x, _254.y, _254.z, r0.w);
    float3 _264 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _276 = r1;
    _276.x = mad(_264.z, r0.xyz.z, mad(_264.y, r0.xyz.y, _264.x * r0.xyz.x));
    r1 = _276;
    float3 _285 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _297 = r1;
    _297.y = mad(_285.z, r0.xyz.z, mad(_285.y, r0.xyz.y, _285.x * r0.xyz.x));
    r1 = _297;
    float3 _306 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _318 = r1;
    _318.z = mad(_306.z, r0.xyz.z, mad(_306.y, r0.xyz.y, _306.x * r0.xyz.x));
    r1 = _318;
    float4 _333 = r0;
    _333.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _333;
    float4 _338 = r0;
    _338.x = rsqrt(r0.x);
    r0 = _338;
    o1 = r0.xxx * r1.xyz;
    float2 _349 = float2(asint(shader_in[1].xy));
    r0 = float4(_349.x, _349.y, r0.z, r0.w);
    o2 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _373 = asfloat(v1);
    shader_in[1] = float4(_373.x, _373.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
