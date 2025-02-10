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
    float4 cb6_m[4] : packoffset(c0);
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
static float4 o2;
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
    int _97 = asint(r1.y);
    r2 = shader_in[3].yyyy * float4(cb4_m[_97].x, cb4_m[_97].y, cb4_m[_97].z, cb4_m[_97].w);
    int _121 = asint(r1.x);
    r2 = (shader_in[3].xxxx * float4(cb4_m[_121].x, cb4_m[_121].y, cb4_m[_121].z, cb4_m[_121].w)) + r2;
    int _140 = asint(r1.z);
    r2 = (shader_in[3].zzzz * float4(cb4_m[_140].x, cb4_m[_140].y, cb4_m[_140].z, cb4_m[_140].w)) + r2;
    int _159 = asint(r1.w);
    r2 = (shader_in[3].wwww * float4(cb4_m[_159].x, cb4_m[_159].y, cb4_m[_159].z, cb4_m[_159].w)) + r2;
    r3 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r3.w);
    float4 _180 = r3;
    _180.w = asfloat(1065353216u);
    r3 = _180;
    float4 _196 = r2;
    _196.x = mad(r2.w, r3.w, mad(r2.z, r3.z, mad(r2.y, r3.y, r2.x * r3.x)));
    r2 = _196;
    int _205 = asint(r1.y) + 1;
    r4 = shader_in[3].yyyy * float4(cb4_m[_205].x, cb4_m[_205].y, cb4_m[_205].z, cb4_m[_205].w);
    int _224 = asint(r1.x) + 1;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_224].x, cb4_m[_224].y, cb4_m[_224].z, cb4_m[_224].w)) + r4;
    int _244 = asint(r1.z) + 1;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_244].x, cb4_m[_244].y, cb4_m[_244].z, cb4_m[_244].w)) + r4;
    int _264 = asint(r1.w) + 1;
    r4 = (shader_in[3].wwww * float4(cb4_m[_264].x, cb4_m[_264].y, cb4_m[_264].z, cb4_m[_264].w)) + r4;
    float4 _292 = r2;
    _292.y = mad(r4.w, r3.w, mad(r4.z, r3.z, mad(r4.y, r3.y, r4.x * r3.x)));
    r2 = _292;
    int _301 = asint(r1.y) + 2;
    r4 = shader_in[3].yyyy * float4(cb4_m[_301].x, cb4_m[_301].y, cb4_m[_301].z, cb4_m[_301].w);
    int _319 = asint(r1.x) + 2;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_319].x, cb4_m[_319].y, cb4_m[_319].z, cb4_m[_319].w)) + r4;
    int _339 = asint(r1.z) + 2;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_339].x, cb4_m[_339].y, cb4_m[_339].z, cb4_m[_339].w)) + r4;
    int _359 = asint(r1.w) + 2;
    r1 = (shader_in[3].wwww * float4(cb4_m[_359].x, cb4_m[_359].y, cb4_m[_359].z, cb4_m[_359].w)) + r4;
    float4 _387 = r2;
    _387.z = mad(r1.w, r3.w, mad(r1.z, r3.z, mad(r1.y, r3.y, r1.x * r3.x)));
    r2 = _387;
    float3 _393 = r0.xxx * r2.xyz;
    r0 = float4(_393.x, _393.y, _393.z, r0.w);
    float4 _397 = r0;
    _397.w = asfloat(1065353216u);
    r0 = _397;
    float4 _408 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _422 = r1;
    _422.x = mad(_408.w, r0.w, mad(_408.z, r0.z, mad(_408.y, r0.y, _408.x * r0.x)));
    r1 = _422;
    float4 _433 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _447 = r1;
    _447.y = mad(_433.w, r0.w, mad(_433.z, r0.z, mad(_433.y, r0.y, _433.x * r0.x)));
    r1 = _447;
    float4 _458 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _472 = r1;
    _472.z = mad(_458.w, r0.w, mad(_458.z, r0.z, mad(_458.y, r0.y, _458.x * r0.x)));
    r1 = _472;
    float4 _475 = r1;
    _475.w = asfloat(1065353216u);
    r1 = _475;
    float4 _486 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _500 = o0;
    _500.x = mad(_486.w, r1.w, mad(_486.z, r1.z, mad(_486.y, r1.y, _486.x * r1.x)));
    o0 = _500;
    float4 _511 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _525 = o0;
    _525.y = mad(_511.w, r1.w, mad(_511.z, r1.z, mad(_511.y, r1.y, _511.x * r1.x)));
    o0 = _525;
    float4 _536 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _550 = o0;
    _550.z = mad(_536.w, r1.w, mad(_536.z, r1.z, mad(_536.y, r1.y, _536.x * r1.x)));
    o0 = _550;
    float4 _561 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _575 = o0;
    _575.w = mad(_561.w, r1.w, mad(_561.z, r1.z, mad(_561.y, r1.y, _561.x * r1.x)));
    o0 = _575;
    float2 _581 = float2(asint(shader_in[1].xy));
    r0 = float4(_581.x, _581.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _607 = asfloat(v1);
    shader_in[1] = float4(_607.x, _607.y, shader_in[1].z, shader_in[1].w);
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
