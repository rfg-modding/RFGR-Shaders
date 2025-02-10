cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
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
static float4 o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _39 = r0;
    _39.w = asfloat(1065353216u);
    r0 = _39;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _49 = r1;
    _49.w = asfloat(1065353216u);
    r1 = _49;
    float4 _66 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _80 = r0;
    _80.x = mad(_66.w, r1.w, mad(_66.z, r1.z, mad(_66.y, r1.y, _66.x * r1.x)));
    r0 = _80;
    float4 _92 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _106 = r0;
    _106.y = mad(_92.w, r1.w, mad(_92.z, r1.z, mad(_92.y, r1.y, _92.x * r1.x)));
    r0 = _106;
    float4 _118 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _132 = r0;
    _132.z = mad(_118.w, r1.w, mad(_118.z, r1.z, mad(_118.y, r1.y, _118.x * r1.x)));
    r0 = _132;
    float4 _143 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _157 = o0;
    _157.x = mad(_143.w, r0.w, mad(_143.z, r0.z, mad(_143.y, r0.y, _143.x * r0.x)));
    o0 = _157;
    float4 _168 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _182 = o0;
    _182.y = mad(_168.w, r0.w, mad(_168.z, r0.z, mad(_168.y, r0.y, _168.x * r0.x)));
    o0 = _182;
    float4 _193 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _207 = o0;
    _207.z = mad(_193.w, r0.w, mad(_193.z, r0.z, mad(_193.y, r0.y, _193.x * r0.x)));
    o0 = _207;
    float4 _219 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _233 = o0;
    _233.w = mad(_219.w, r0.w, mad(_219.z, r0.z, mad(_219.y, r0.y, _219.x * r0.x)));
    o0 = _233;
    float3 _247 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_247.x, _247.y, _247.z, r1.w);
    float4 _257 = r1;
    _257.w = r1.y * cb0_m[13].x;
    r1 = _257;
    float4 _265 = r2;
    _265.x = r1.w * asfloat(3216550459u);
    r2 = _265;
    float4 _270 = r2;
    _270.x = exp2(r2.x);
    r2 = _270;
    float4 _277 = r2;
    _277.x = (-r2.x) + asfloat(1065353216u);
    r2 = _277;
    float4 _284 = r1;
    _284.w = r2.x / r1.w;
    r1 = _284;
    float4 _296 = r2;
    _296.x = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r2 = _296;
    float4 _311 = r1;
    _311.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _311;
    float4 _316 = r1;
    _316.x = sqrt(r1.x);
    r1 = _316;
    float4 _324 = r1;
    _324.x = r1.x * cb0_m[13].y;
    r1 = _324;
    float4 _334 = r1;
    _334.y = (asuint(r2.x) != 0u) ? r1.w : asfloat(1065353216u);
    r1 = _334;
    float4 _346 = r1;
    _346.x = (r1.y * r1.x) + (-cb0_m[13].w);
    r1 = _346;
    float4 _352 = r1;
    _352.x = exp2(-r1.x);
    r1 = _352;
    float4 _358 = r1;
    _358.x = min(r1.x, asfloat(1065353216u));
    r1 = _358;
    float4 _365 = o1;
    _365.w = (-r1.x) + asfloat(1065353216u);
    o1 = _365;
    float4 _368 = r0;
    _368.w = asfloat(0u);
    r0 = _368;
    r0 = (-r0) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _397 = r0;
    _397.w = mad(r0.w, r0.w, mad(r0.z, r0.z, mad(r0.y, r0.y, r0.x * r0.x)));
    r0 = _397;
    float4 _402 = r0;
    _402.w = rsqrt(r0.w);
    r0 = _402;
    float3 _408 = r0.www * r0.xyz;
    r0 = float4(_408.x, _408.y, _408.z, r0.w);
    float3 _422 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_422.x, _422.y, _422.z, r1.w);
    float3 _432 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _444 = r2;
    _444.x = mad(_432.z, r1.xyz.z, mad(_432.y, r1.xyz.y, _432.x * r1.xyz.x));
    r2 = _444;
    float3 _453 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _465 = r2;
    _465.y = mad(_453.z, r1.xyz.z, mad(_453.y, r1.xyz.y, _453.x * r1.xyz.x));
    r2 = _465;
    float3 _474 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _486 = r2;
    _486.z = mad(_474.z, r1.xyz.z, mad(_474.y, r1.xyz.y, _474.x * r1.xyz.x));
    r2 = _486;
    float4 _501 = r0;
    _501.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _501;
    float4 _506 = r0;
    _506.w = rsqrt(r0.w);
    r0 = _506;
    float3 _512 = r0.www * r2.xyz;
    r1 = float4(_512.x, _512.y, _512.z, r1.w);
    float4 _528 = o1;
    _528.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o1 = _528;
    float2 _535 = float2(asint(shader_in[1].xy));
    r0 = float4(_535.x, _535.y, r0.z, r0.w);
    float2 _544 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_544.x, _544.y, r0.z, r0.w);
    float4 _556 = o1;
    _556.x = (cb6_m[3].w * asfloat(1056964608u)) + r0.x;
    o1 = _556;
    float4 _560 = o1;
    _560.y = r0.y;
    o1 = _560;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _568 = asfloat(v1);
    shader_in[1] = float4(_568.x, _568.y, shader_in[1].z, shader_in[1].w);
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
