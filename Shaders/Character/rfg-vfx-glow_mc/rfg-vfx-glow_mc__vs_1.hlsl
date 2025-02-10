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
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v3 : TEXCOORD3;
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
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _57 = r0;
    _57.x = shader_in[5].y + shader_in[5].x;
    r0 = _57;
    float4 _65 = r0;
    _65.x = r0.x + shader_in[5].z;
    r0 = _65;
    float4 _73 = r0;
    _73.x = r0.x + shader_in[5].w;
    r0 = _73;
    float4 _80 = r0;
    _80.x = asfloat(1065353216u) / r0.x;
    r0 = _80;
    float3 _95 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_95.x, _95.y, _95.z, r1.w);
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _115 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_115].x, cb4_m[_115].y, cb4_m[_115].z, cb4_m[_115].w);
    int _138 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_138].x, cb4_m[_138].y, cb4_m[_138].z, cb4_m[_138].w)) + r3;
    int _157 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_157].x, cb4_m[_157].y, cb4_m[_157].z, cb4_m[_157].w)) + r3;
    int _176 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_176].x, cb4_m[_176].y, cb4_m[_176].z, cb4_m[_176].w)) + r3;
    float4 _191 = r1;
    _191.w = asfloat(1065353216u);
    r1 = _191;
    float4 _207 = r3;
    _207.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r3 = _207;
    int _216 = asint(r2.y) + 1;
    r4 = shader_in[5].yyyy * float4(cb4_m[_216].x, cb4_m[_216].y, cb4_m[_216].z, cb4_m[_216].w);
    int _235 = asint(r2.x) + 1;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_235].x, cb4_m[_235].y, cb4_m[_235].z, cb4_m[_235].w)) + r4;
    int _255 = asint(r2.z) + 1;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_255].x, cb4_m[_255].y, cb4_m[_255].z, cb4_m[_255].w)) + r4;
    int _275 = asint(r2.w) + 1;
    r4 = (shader_in[5].wwww * float4(cb4_m[_275].x, cb4_m[_275].y, cb4_m[_275].z, cb4_m[_275].w)) + r4;
    float4 _303 = r3;
    _303.y = mad(r4.w, r1.w, mad(r4.z, r1.z, mad(r4.y, r1.y, r4.x * r1.x)));
    r3 = _303;
    int _312 = asint(r2.y) + 2;
    r4 = shader_in[5].yyyy * float4(cb4_m[_312].x, cb4_m[_312].y, cb4_m[_312].z, cb4_m[_312].w);
    int _330 = asint(r2.x) + 2;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_330].x, cb4_m[_330].y, cb4_m[_330].z, cb4_m[_330].w)) + r4;
    int _350 = asint(r2.z) + 2;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_350].x, cb4_m[_350].y, cb4_m[_350].z, cb4_m[_350].w)) + r4;
    int _370 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_370].x, cb4_m[_370].y, cb4_m[_370].z, cb4_m[_370].w)) + r4;
    float4 _398 = r3;
    _398.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r3 = _398;
    float3 _404 = r0.xxx * r3.xyz;
    r0 = float4(_404.x, _404.y, _404.z, r0.w);
    float4 _408 = r0;
    _408.w = asfloat(1065353216u);
    r0 = _408;
    float4 _419 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _433 = r1;
    _433.x = mad(_419.w, r0.w, mad(_419.z, r0.z, mad(_419.y, r0.y, _419.x * r0.x)));
    r1 = _433;
    float4 _444 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _458 = r1;
    _458.y = mad(_444.w, r0.w, mad(_444.z, r0.z, mad(_444.y, r0.y, _444.x * r0.x)));
    r1 = _458;
    float4 _469 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _483 = r1;
    _483.z = mad(_469.w, r0.w, mad(_469.z, r0.z, mad(_469.y, r0.y, _469.x * r0.x)));
    r1 = _483;
    float4 _486 = r1;
    _486.w = asfloat(1065353216u);
    r1 = _486;
    float4 _497 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _511 = o0;
    _511.x = mad(_497.w, r1.w, mad(_497.z, r1.z, mad(_497.y, r1.y, _497.x * r1.x)));
    o0 = _511;
    float4 _522 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _536 = o0;
    _536.y = mad(_522.w, r1.w, mad(_522.z, r1.z, mad(_522.y, r1.y, _522.x * r1.x)));
    o0 = _536;
    float4 _547 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _561 = o0;
    _561.z = mad(_547.w, r1.w, mad(_547.z, r1.z, mad(_547.y, r1.y, _547.x * r1.x)));
    o0 = _561;
    float4 _572 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _586 = o0;
    _586.w = mad(_572.w, r1.w, mad(_572.z, r1.z, mad(_572.y, r1.y, _572.x * r1.x)));
    o0 = _586;
    float2 _592 = float2(asint(shader_in[1].xy));
    r0 = float4(_592.x, _592.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _618 = asfloat(v1);
    shader_in[1] = float4(_618.x, _618.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = v3;
    shader_in[5] = v5;
    shader_in[6] = asfloat(v6);
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
