cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
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
static float4 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _46 = r0;
    _46.w = asfloat(1065353216u);
    r0 = _46;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _56 = r1;
    _56.w = asfloat(1065353216u);
    r1 = _56;
    float4 _72 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _86 = r0;
    _86.x = mad(_72.w, r1.w, mad(_72.z, r1.z, mad(_72.y, r1.y, _72.x * r1.x)));
    r0 = _86;
    float4 _98 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _112 = r0;
    _112.y = mad(_98.w, r1.w, mad(_98.z, r1.z, mad(_98.y, r1.y, _98.x * r1.x)));
    r0 = _112;
    float4 _124 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _138 = r0;
    _138.z = mad(_124.w, r1.w, mad(_124.z, r1.z, mad(_124.y, r1.y, _124.x * r1.x)));
    r0 = _138;
    float4 _149 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _163 = o0;
    _163.x = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    o0 = _163;
    float4 _174 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _188 = o0;
    _188.y = mad(_174.w, r0.w, mad(_174.z, r0.z, mad(_174.y, r0.y, _174.x * r0.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _213 = o0;
    _213.z = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    o0 = _213;
    float4 _225 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _239 = o0;
    _239.w = mad(_225.w, r0.w, mad(_225.z, r0.z, mad(_225.y, r0.y, _225.x * r0.x)));
    o0 = _239;
    float3 _253 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_253.x, _253.y, _253.z, r0.w);
    float4 _263 = r0;
    _263.w = r0.y * cb0_m[13].x;
    r0 = _263;
    float4 _270 = r1;
    _270.x = r0.w * asfloat(3216550459u);
    r1 = _270;
    float4 _275 = r1;
    _275.x = exp2(r1.x);
    r1 = _275;
    float4 _282 = r1;
    _282.x = (-r1.x) + asfloat(1065353216u);
    r1 = _282;
    float4 _289 = r0;
    _289.w = r1.x / r0.w;
    r0 = _289;
    float4 _301 = r1;
    _301.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _301;
    float4 _316 = r0;
    _316.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _316;
    float4 _321 = r0;
    _321.x = sqrt(r0.x);
    r0 = _321;
    float4 _331 = r0;
    _331.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _331;
    float4 _339 = r0;
    _339.z = r0.x * cb0_m[13].y;
    r0 = _339;
    float2 _362 = clamp((r0.xx * float2(cb6_m[3].x, cb6_m[3].z)) + float2(cb6_m[3].y, cb6_m[3].w), 0.0f.xx, 1.0f.xx);
    o2 = float4(o2.x, o2.y, _362.x, _362.y);
    float4 _375 = r0;
    _375.x = (r0.y * r0.z) + (-cb0_m[13].w);
    r0 = _375;
    float4 _381 = r0;
    _381.x = exp2(-r0.x);
    r0 = _381;
    float4 _387 = r0;
    _387.x = min(r0.x, asfloat(1065353216u));
    r0 = _387;
    float4 _394 = o1;
    _394.w = (-r0.x) + asfloat(1065353216u);
    o1 = _394;
    float3 _407 = shader_in[2].zyx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    o1 = float4(_407.x, _407.y, _407.z, o1.w);
    float2 _414 = float2(asint(shader_in[1].xy));
    r0 = float4(_414.x, _414.y, r0.z, r0.w);
    float2 _423 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_423.x, _423.y, o2.z, o2.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _432 = asfloat(v1);
    shader_in[1] = float4(_432.x, _432.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
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
