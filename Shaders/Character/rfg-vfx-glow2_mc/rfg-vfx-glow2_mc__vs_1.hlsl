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
    int _114 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_114].x, cb4_m[_114].y, cb4_m[_114].z, cb4_m[_114].w);
    int _137 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_137].x, cb4_m[_137].y, cb4_m[_137].z, cb4_m[_137].w)) + r3;
    int _156 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_156].x, cb4_m[_156].y, cb4_m[_156].z, cb4_m[_156].w)) + r3;
    int _175 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_175].x, cb4_m[_175].y, cb4_m[_175].z, cb4_m[_175].w)) + r3;
    float4 _190 = r1;
    _190.w = asfloat(1065353216u);
    r1 = _190;
    float4 _206 = r3;
    _206.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r3 = _206;
    int _215 = asint(r2.y) + 1;
    r4 = shader_in[5].yyyy * float4(cb4_m[_215].x, cb4_m[_215].y, cb4_m[_215].z, cb4_m[_215].w);
    int _234 = asint(r2.x) + 1;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_234].x, cb4_m[_234].y, cb4_m[_234].z, cb4_m[_234].w)) + r4;
    int _254 = asint(r2.z) + 1;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_254].x, cb4_m[_254].y, cb4_m[_254].z, cb4_m[_254].w)) + r4;
    int _274 = asint(r2.w) + 1;
    r4 = (shader_in[5].wwww * float4(cb4_m[_274].x, cb4_m[_274].y, cb4_m[_274].z, cb4_m[_274].w)) + r4;
    float4 _302 = r3;
    _302.y = mad(r4.w, r1.w, mad(r4.z, r1.z, mad(r4.y, r1.y, r4.x * r1.x)));
    r3 = _302;
    int _311 = asint(r2.y) + 2;
    r4 = shader_in[5].yyyy * float4(cb4_m[_311].x, cb4_m[_311].y, cb4_m[_311].z, cb4_m[_311].w);
    int _329 = asint(r2.x) + 2;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w)) + r4;
    int _349 = asint(r2.z) + 2;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_349].x, cb4_m[_349].y, cb4_m[_349].z, cb4_m[_349].w)) + r4;
    int _369 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_369].x, cb4_m[_369].y, cb4_m[_369].z, cb4_m[_369].w)) + r4;
    float4 _397 = r3;
    _397.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r3 = _397;
    float3 _403 = r0.xxx * r3.xyz;
    r0 = float4(_403.x, _403.y, _403.z, r0.w);
    float4 _407 = r0;
    _407.w = asfloat(1065353216u);
    r0 = _407;
    float4 _418 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _432 = r1;
    _432.x = mad(_418.w, r0.w, mad(_418.z, r0.z, mad(_418.y, r0.y, _418.x * r0.x)));
    r1 = _432;
    float4 _443 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _457 = r1;
    _457.y = mad(_443.w, r0.w, mad(_443.z, r0.z, mad(_443.y, r0.y, _443.x * r0.x)));
    r1 = _457;
    float4 _468 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _482 = r1;
    _482.z = mad(_468.w, r0.w, mad(_468.z, r0.z, mad(_468.y, r0.y, _468.x * r0.x)));
    r1 = _482;
    float4 _485 = r1;
    _485.w = asfloat(1065353216u);
    r1 = _485;
    float4 _496 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _510 = o0;
    _510.x = mad(_496.w, r1.w, mad(_496.z, r1.z, mad(_496.y, r1.y, _496.x * r1.x)));
    o0 = _510;
    float4 _521 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _535 = o0;
    _535.y = mad(_521.w, r1.w, mad(_521.z, r1.z, mad(_521.y, r1.y, _521.x * r1.x)));
    o0 = _535;
    float4 _546 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _560 = o0;
    _560.z = mad(_546.w, r1.w, mad(_546.z, r1.z, mad(_546.y, r1.y, _546.x * r1.x)));
    o0 = _560;
    float4 _571 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _585 = o0;
    _585.w = mad(_571.w, r1.w, mad(_571.z, r1.z, mad(_571.y, r1.y, _571.x * r1.x)));
    o0 = _585;
    float2 _591 = float2(asint(shader_in[1].xy));
    r0 = float4(_591.x, _591.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _607 = asfloat(v1);
    shader_in[1] = float4(_607.x, _607.y, shader_in[1].z, shader_in[1].w);
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
