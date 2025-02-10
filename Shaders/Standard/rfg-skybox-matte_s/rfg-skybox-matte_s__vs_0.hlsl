cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[7] : packoffset(c0);
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
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _47 = r0;
    _47.w = asfloat(1065353216u);
    r0 = _47;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _57 = r1;
    _57.w = asfloat(1065353216u);
    r1 = _57;
    float4 _73 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _87 = r0;
    _87.x = mad(_73.w, r1.w, mad(_73.z, r1.z, mad(_73.y, r1.y, _73.x * r1.x)));
    r0 = _87;
    float4 _99 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _113 = r0;
    _113.y = mad(_99.w, r1.w, mad(_99.z, r1.z, mad(_99.y, r1.y, _99.x * r1.x)));
    r0 = _113;
    float4 _125 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _139 = r0;
    _139.z = mad(_125.w, r1.w, mad(_125.z, r1.z, mad(_125.y, r1.y, _125.x * r1.x)));
    r0 = _139;
    float4 _150 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _164 = r1;
    _164.x = mad(_150.w, r0.w, mad(_150.z, r0.z, mad(_150.y, r0.y, _150.x * r0.x)));
    r1 = _164;
    float4 _175 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _189 = r1;
    _189.y = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    r1 = _189;
    float4 _201 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _215 = r1;
    _215.z = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    r1 = _215;
    o0 = r1.xyzz;
    float2 _223 = float2(asint(shader_in[1].xy));
    r0 = float4(_223.x, _223.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float4 _241 = r0;
    _241.y = shader_in[0].y + cb2_m[4].w;
    r0 = _241;
    r0 = float4(shader_in[0].xz.x, r0.y, shader_in[0].xz.y, r0.w);
    float3 _258 = r0.xyz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float4 _262 = r0;
    _262.w = asfloat(1065353216u);
    r0 = _262;
    float4 _273 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _287 = r1;
    _287.x = mad(_273.w, r0.w, mad(_273.z, r0.z, mad(_273.y, r0.y, _273.x * r0.x)));
    r1 = _287;
    float4 _297 = r1;
    _297.x = r1.x + (-cb0_m[11].y);
    r1 = _297;
    float4 _306 = r1;
    _306.y = r1.x + cb2_m[6].y;
    r1 = _306;
    float4 _317 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _331 = r1;
    _331.x = mad(_317.w, r0.w, mad(_317.z, r0.z, mad(_317.y, r0.y, _317.x * r0.x)));
    r1 = _331;
    float4 _342 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _356 = r1;
    _356.z = mad(_342.w, r0.w, mad(_342.z, r0.z, mad(_342.y, r0.y, _342.x * r0.x)));
    r1 = _356;
    float3 _369 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_369.x, _369.y, _369.z, r0.w);
    float4 _379 = r0;
    _379.w = r0.y * cb0_m[13].x;
    r0 = _379;
    float4 _386 = r1;
    _386.x = r0.w * asfloat(3216550459u);
    r1 = _386;
    float4 _391 = r1;
    _391.x = exp2(r1.x);
    r1 = _391;
    float4 _398 = r1;
    _398.x = (-r1.x) + asfloat(1065353216u);
    r1 = _398;
    float4 _405 = r0;
    _405.w = r1.x / r0.w;
    r0 = _405;
    float4 _417 = r1;
    _417.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _417;
    float4 _432 = r0;
    _432.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _432;
    float4 _437 = r0;
    _437.x = sqrt(r0.x);
    r0 = _437;
    float4 _445 = r0;
    _445.x = r0.x * cb0_m[13].y;
    r0 = _445;
    float4 _455 = r0;
    _455.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _455;
    float4 _467 = r0;
    _467.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _467;
    float4 _473 = r0;
    _473.x = exp2(-r0.x);
    r0 = _473;
    float4 _479 = r0;
    _479.x = min(r0.x, asfloat(1065353216u));
    r0 = _479;
    float4 _486 = o2;
    _486.w = (-r0.x) + asfloat(1065353216u);
    o2 = _486;
    float3 _499 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    o2 = float4(_499.x, _499.y, _499.z, o2.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _508 = asfloat(v1);
    shader_in[1] = float4(_508.x, _508.y, shader_in[1].z, shader_in[1].w);
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
