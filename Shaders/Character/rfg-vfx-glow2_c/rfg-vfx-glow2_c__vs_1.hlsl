cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
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
static float4 v3;
static int4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
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
static float2 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _56 = r0;
    _56.x = shader_in[3].y + shader_in[3].x;
    r0 = _56;
    float4 _64 = r0;
    _64.x = r0.x + shader_in[3].z;
    r0 = _64;
    float4 _72 = r0;
    _72.x = r0.x + shader_in[3].w;
    r0 = _72;
    float4 _79 = r0;
    _79.x = asfloat(1065353216u) / r0.x;
    r0 = _79;
    r1 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _96 = asint(r1.y);
    r2 = shader_in[3].yyyy * float4(cb4_m[_96].x, cb4_m[_96].y, cb4_m[_96].z, cb4_m[_96].w);
    int _120 = asint(r1.x);
    r2 = (shader_in[3].xxxx * float4(cb4_m[_120].x, cb4_m[_120].y, cb4_m[_120].z, cb4_m[_120].w)) + r2;
    int _139 = asint(r1.z);
    r2 = (shader_in[3].zzzz * float4(cb4_m[_139].x, cb4_m[_139].y, cb4_m[_139].z, cb4_m[_139].w)) + r2;
    int _158 = asint(r1.w);
    r2 = (shader_in[3].wwww * float4(cb4_m[_158].x, cb4_m[_158].y, cb4_m[_158].z, cb4_m[_158].w)) + r2;
    r3 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r3.w);
    float4 _179 = r3;
    _179.w = asfloat(1065353216u);
    r3 = _179;
    float4 _195 = r2;
    _195.x = mad(r2.w, r3.w, mad(r2.z, r3.z, mad(r2.y, r3.y, r2.x * r3.x)));
    r2 = _195;
    int _204 = asint(r1.y) + 1;
    r4 = shader_in[3].yyyy * float4(cb4_m[_204].x, cb4_m[_204].y, cb4_m[_204].z, cb4_m[_204].w);
    int _223 = asint(r1.x) + 1;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_223].x, cb4_m[_223].y, cb4_m[_223].z, cb4_m[_223].w)) + r4;
    int _243 = asint(r1.z) + 1;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_243].x, cb4_m[_243].y, cb4_m[_243].z, cb4_m[_243].w)) + r4;
    int _263 = asint(r1.w) + 1;
    r4 = (shader_in[3].wwww * float4(cb4_m[_263].x, cb4_m[_263].y, cb4_m[_263].z, cb4_m[_263].w)) + r4;
    float4 _291 = r2;
    _291.y = mad(r4.w, r3.w, mad(r4.z, r3.z, mad(r4.y, r3.y, r4.x * r3.x)));
    r2 = _291;
    int _300 = asint(r1.y) + 2;
    r4 = shader_in[3].yyyy * float4(cb4_m[_300].x, cb4_m[_300].y, cb4_m[_300].z, cb4_m[_300].w);
    int _318 = asint(r1.x) + 2;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_318].x, cb4_m[_318].y, cb4_m[_318].z, cb4_m[_318].w)) + r4;
    int _338 = asint(r1.z) + 2;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_338].x, cb4_m[_338].y, cb4_m[_338].z, cb4_m[_338].w)) + r4;
    int _358 = asint(r1.w) + 2;
    r1 = (shader_in[3].wwww * float4(cb4_m[_358].x, cb4_m[_358].y, cb4_m[_358].z, cb4_m[_358].w)) + r4;
    float4 _386 = r2;
    _386.z = mad(r1.w, r3.w, mad(r1.z, r3.z, mad(r1.y, r3.y, r1.x * r3.x)));
    r2 = _386;
    float3 _392 = r0.xxx * r2.xyz;
    r0 = float4(_392.x, _392.y, _392.z, r0.w);
    float4 _396 = r0;
    _396.w = asfloat(1065353216u);
    r0 = _396;
    float4 _407 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _421 = r1;
    _421.x = mad(_407.w, r0.w, mad(_407.z, r0.z, mad(_407.y, r0.y, _407.x * r0.x)));
    r1 = _421;
    float4 _432 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _446 = r1;
    _446.y = mad(_432.w, r0.w, mad(_432.z, r0.z, mad(_432.y, r0.y, _432.x * r0.x)));
    r1 = _446;
    float4 _457 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _471 = r1;
    _471.z = mad(_457.w, r0.w, mad(_457.z, r0.z, mad(_457.y, r0.y, _457.x * r0.x)));
    r1 = _471;
    float4 _474 = r1;
    _474.w = asfloat(1065353216u);
    r1 = _474;
    float4 _485 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _499 = o0;
    _499.x = mad(_485.w, r1.w, mad(_485.z, r1.z, mad(_485.y, r1.y, _485.x * r1.x)));
    o0 = _499;
    float4 _510 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _524 = o0;
    _524.y = mad(_510.w, r1.w, mad(_510.z, r1.z, mad(_510.y, r1.y, _510.x * r1.x)));
    o0 = _524;
    float4 _535 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _549 = o0;
    _549.z = mad(_535.w, r1.w, mad(_535.z, r1.z, mad(_535.y, r1.y, _535.x * r1.x)));
    o0 = _549;
    float4 _560 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _574 = o0;
    _574.w = mad(_560.w, r1.w, mad(_560.z, r1.z, mad(_560.y, r1.y, _560.x * r1.x)));
    o0 = _574;
    float2 _580 = float2(asint(shader_in[1].xy));
    r0 = float4(_580.x, _580.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _596 = asfloat(v1);
    shader_in[1] = float4(_596.x, _596.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = v3;
    shader_in[4] = asfloat(v4);
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
