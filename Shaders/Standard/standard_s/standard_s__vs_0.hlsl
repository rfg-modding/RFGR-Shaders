cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _59 = r1;
    _59.w = asfloat(1065353216u);
    r1 = _59;
    float4 _74 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _88 = r0;
    _88.x = mad(_74.w, r1.w, mad(_74.z, r1.z, mad(_74.y, r1.y, _74.x * r1.x)));
    r0 = _88;
    float4 _100 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _114 = r0;
    _114.y = mad(_100.w, r1.w, mad(_100.z, r1.z, mad(_100.y, r1.y, _100.x * r1.x)));
    r0 = _114;
    float4 _126 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _140 = r0;
    _140.z = mad(_126.w, r1.w, mad(_126.z, r1.z, mad(_126.y, r1.y, _126.x * r1.x)));
    r0 = _140;
    float4 _151 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _165 = o0;
    _165.x = mad(_151.w, r0.w, mad(_151.z, r0.z, mad(_151.y, r0.y, _151.x * r0.x)));
    o0 = _165;
    float4 _176 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _190 = o0;
    _190.y = mad(_176.w, r0.w, mad(_176.z, r0.z, mad(_176.y, r0.y, _176.x * r0.x)));
    o0 = _190;
    float4 _201 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _215 = o0;
    _215.z = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    o0 = _215;
    float4 _227 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _241 = o0;
    _241.w = mad(_227.w, r0.w, mad(_227.z, r0.z, mad(_227.y, r0.y, _227.x * r0.x)));
    o0 = _241;
    float3 _255 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_255.x, _255.y, _255.z, r0.w);
    float2 _262 = float2(asint(shader_in[1].xy));
    r1 = float4(_262.x, _262.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _287 = r0;
    _287.w = r0.y * cb0_m[13].x;
    r0 = _287;
    float4 _294 = r1;
    _294.x = r0.w * asfloat(3216550459u);
    r1 = _294;
    float4 _299 = r1;
    _299.x = exp2(r1.x);
    r1 = _299;
    float4 _306 = r1;
    _306.x = (-r1.x) + asfloat(1065353216u);
    r1 = _306;
    float4 _313 = r0;
    _313.w = r1.x / r0.w;
    r0 = _313;
    float4 _325 = r1;
    _325.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _325;
    float4 _340 = r0;
    _340.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _340;
    float4 _345 = r0;
    _345.x = sqrt(r0.x);
    r0 = _345;
    float4 _353 = r0;
    _353.x = r0.x * cb0_m[13].y;
    r0 = _353;
    float4 _363 = r0;
    _363.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _363;
    float4 _375 = r0;
    _375.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _375;
    float4 _381 = r0;
    _381.x = exp2(-r0.x);
    r0 = _381;
    float4 _387 = r0;
    _387.x = min(r0.x, asfloat(1065353216u));
    r0 = _387;
    float4 _394 = o3;
    _394.w = (-r0.x) + asfloat(1065353216u);
    o3 = _394;
    float3 _407 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_407.x, _407.y, _407.z, r0.w);
    float3 _417 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _429 = r1;
    _429.x = mad(_417.z, r0.xyz.z, mad(_417.y, r0.xyz.y, _417.x * r0.xyz.x));
    r1 = _429;
    float3 _438 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _450 = r1;
    _450.y = mad(_438.z, r0.xyz.z, mad(_438.y, r0.xyz.y, _438.x * r0.xyz.x));
    r1 = _450;
    float3 _459 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _471 = r1;
    _471.z = mad(_459.z, r0.xyz.z, mad(_459.y, r0.xyz.y, _459.x * r0.xyz.x));
    r1 = _471;
    float4 _486 = r0;
    _486.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _486;
    float4 _491 = r0;
    _491.x = rsqrt(r0.x);
    r0 = _491;
    float3 _497 = r0.xxx * r1.xyz;
    o3 = float4(_497.x, _497.y, _497.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _506 = asfloat(v1);
    shader_in[1] = float4(_506.x, _506.y, shader_in[1].z, shader_in[1].w);
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
