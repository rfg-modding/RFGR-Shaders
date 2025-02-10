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
static float4 v2;
static float4 v4;
static int4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v2 : TEXCOORD2;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _51 = r0;
    _51.x = shader_in[4].y + shader_in[4].x;
    r0 = _51;
    float4 _59 = r0;
    _59.x = r0.x + shader_in[4].z;
    r0 = _59;
    float4 _67 = r0;
    _67.x = r0.x + shader_in[4].w;
    r0 = _67;
    float4 _74 = r0;
    _74.x = asfloat(1065353216u) / r0.x;
    r0 = _74;
    float3 _89 = (shader_in[2].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_89.x, _89.y, _89.z, r1.w);
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _108 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_108].x, cb4_m[_108].y, cb4_m[_108].z, cb4_m[_108].w);
    int _131 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_131].x, cb4_m[_131].y, cb4_m[_131].z, cb4_m[_131].w)) + r3;
    int _150 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_150].x, cb4_m[_150].y, cb4_m[_150].z, cb4_m[_150].w)) + r3;
    int _169 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_169].x, cb4_m[_169].y, cb4_m[_169].z, cb4_m[_169].w)) + r3;
    float4 _184 = r1;
    _184.w = asfloat(1065353216u);
    r1 = _184;
    float4 _200 = r3;
    _200.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r3 = _200;
    int _209 = asint(r2.y) + 1;
    r4 = shader_in[4].yyyy * float4(cb4_m[_209].x, cb4_m[_209].y, cb4_m[_209].z, cb4_m[_209].w);
    int _228 = asint(r2.x) + 1;
    r4 = (shader_in[4].xxxx * float4(cb4_m[_228].x, cb4_m[_228].y, cb4_m[_228].z, cb4_m[_228].w)) + r4;
    int _248 = asint(r2.z) + 1;
    r4 = (shader_in[4].zzzz * float4(cb4_m[_248].x, cb4_m[_248].y, cb4_m[_248].z, cb4_m[_248].w)) + r4;
    int _268 = asint(r2.w) + 1;
    r4 = (shader_in[4].wwww * float4(cb4_m[_268].x, cb4_m[_268].y, cb4_m[_268].z, cb4_m[_268].w)) + r4;
    float4 _296 = r3;
    _296.y = mad(r4.w, r1.w, mad(r4.z, r1.z, mad(r4.y, r1.y, r4.x * r1.x)));
    r3 = _296;
    int _304 = asint(r2.y) + 2;
    r4 = shader_in[4].yyyy * float4(cb4_m[_304].x, cb4_m[_304].y, cb4_m[_304].z, cb4_m[_304].w);
    int _322 = asint(r2.x) + 2;
    r4 = (shader_in[4].xxxx * float4(cb4_m[_322].x, cb4_m[_322].y, cb4_m[_322].z, cb4_m[_322].w)) + r4;
    int _342 = asint(r2.z) + 2;
    r4 = (shader_in[4].zzzz * float4(cb4_m[_342].x, cb4_m[_342].y, cb4_m[_342].z, cb4_m[_342].w)) + r4;
    int _362 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_362].x, cb4_m[_362].y, cb4_m[_362].z, cb4_m[_362].w)) + r4;
    float4 _390 = r3;
    _390.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r3 = _390;
    float3 _396 = r0.xxx * r3.xyz;
    r0 = float4(_396.x, _396.y, _396.z, r0.w);
    float4 _400 = r0;
    _400.w = asfloat(1065353216u);
    r0 = _400;
    float4 _411 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _425 = r1;
    _425.x = mad(_411.w, r0.w, mad(_411.z, r0.z, mad(_411.y, r0.y, _411.x * r0.x)));
    r1 = _425;
    float4 _436 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _450 = r1;
    _450.y = mad(_436.w, r0.w, mad(_436.z, r0.z, mad(_436.y, r0.y, _436.x * r0.x)));
    r1 = _450;
    float4 _461 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _475 = r1;
    _475.z = mad(_461.w, r0.w, mad(_461.z, r0.z, mad(_461.y, r0.y, _461.x * r0.x)));
    r1 = _475;
    float4 _478 = r1;
    _478.w = asfloat(1065353216u);
    r1 = _478;
    float4 _489 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _503 = o0;
    _503.x = mad(_489.w, r1.w, mad(_489.z, r1.z, mad(_489.y, r1.y, _489.x * r1.x)));
    o0 = _503;
    float4 _514 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _528 = o0;
    _528.y = mad(_514.w, r1.w, mad(_514.z, r1.z, mad(_514.y, r1.y, _514.x * r1.x)));
    o0 = _528;
    float4 _539 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _553 = o0;
    _553.z = mad(_539.w, r1.w, mad(_539.z, r1.z, mad(_539.y, r1.y, _539.x * r1.x)));
    o0 = _553;
    float4 _565 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _579 = o0;
    _579.w = mad(_565.w, r1.w, mad(_565.z, r1.z, mad(_565.y, r1.y, _565.x * r1.x)));
    o0 = _579;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[2] = v2;
    shader_in[4] = v4;
    shader_in[5] = asfloat(v5);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v2 = stage_input.v2;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
