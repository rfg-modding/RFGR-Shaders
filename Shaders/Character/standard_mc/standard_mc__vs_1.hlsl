cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
static float3 o1;
static float2 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _67 = r0;
    _67.x = shader_in[5].y + shader_in[5].x;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[5].z;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[5].w;
    r0 = _83;
    float4 _90 = r0;
    _90.x = asfloat(1065353216u) / r0.x;
    r0 = _90;
    float3 _105 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_105.x, _105.y, _105.z, r1.w);
    float4 _110 = r1;
    _110.w = asfloat(1065353216u);
    r1 = _110;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _127 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_127].x, cb4_m[_127].y, cb4_m[_127].z, cb4_m[_127].w);
    int _149 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_149].x, cb4_m[_149].y, cb4_m[_149].z, cb4_m[_149].w)) + r3;
    int _168 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_168].x, cb4_m[_168].y, cb4_m[_168].z, cb4_m[_168].w)) + r3;
    int _187 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_187].x, cb4_m[_187].y, cb4_m[_187].z, cb4_m[_187].w)) + r3;
    float4 _216 = r4;
    _216.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _216;
    int _225 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_225].x, cb4_m[_225].y, cb4_m[_225].z, cb4_m[_225].w);
    int _244 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_244].x, cb4_m[_244].y, cb4_m[_244].z, cb4_m[_244].w)) + r5;
    int _264 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_264].x, cb4_m[_264].y, cb4_m[_264].z, cb4_m[_264].w)) + r5;
    int _284 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_284].x, cb4_m[_284].y, cb4_m[_284].z, cb4_m[_284].w)) + r5;
    float4 _312 = r4;
    _312.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _312;
    int _321 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_321].x, cb4_m[_321].y, cb4_m[_321].z, cb4_m[_321].w);
    int _340 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_340].x, cb4_m[_340].y, cb4_m[_340].z, cb4_m[_340].w)) + r6;
    int _360 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_360].x, cb4_m[_360].y, cb4_m[_360].z, cb4_m[_360].w)) + r6;
    int _380 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_380].x, cb4_m[_380].y, cb4_m[_380].z, cb4_m[_380].w)) + r6;
    float4 _408 = r4;
    _408.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _408;
    float3 _414 = r0.xxx * r4.xyz;
    r1 = float4(_414.x, _414.y, _414.z, r1.w);
    float4 _418 = r1;
    _418.w = asfloat(1065353216u);
    r1 = _418;
    float4 _429 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _443 = r4;
    _443.x = mad(_429.w, r1.w, mad(_429.z, r1.z, mad(_429.y, r1.y, _429.x * r1.x)));
    r4 = _443;
    float4 _454 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _468 = r4;
    _468.y = mad(_454.w, r1.w, mad(_454.z, r1.z, mad(_454.y, r1.y, _454.x * r1.x)));
    r4 = _468;
    float4 _479 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _493 = r4;
    _493.z = mad(_479.w, r1.w, mad(_479.z, r1.z, mad(_479.y, r1.y, _479.x * r1.x)));
    r4 = _493;
    float4 _496 = r4;
    _496.w = asfloat(1065353216u);
    r4 = _496;
    float4 _507 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _521 = o0;
    _521.x = mad(_507.w, r4.w, mad(_507.z, r4.z, mad(_507.y, r4.y, _507.x * r4.x)));
    o0 = _521;
    float4 _532 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _546 = o0;
    _546.y = mad(_532.w, r4.w, mad(_532.z, r4.z, mad(_532.y, r4.y, _532.x * r4.x)));
    o0 = _546;
    float4 _557 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _571 = o0;
    _571.z = mad(_557.w, r4.w, mad(_557.z, r4.z, mad(_557.y, r4.y, _557.x * r4.x)));
    o0 = _571;
    float4 _582 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _596 = o0;
    _596.w = mad(_582.w, r4.w, mad(_582.z, r4.z, mad(_582.y, r4.y, _582.x * r4.x)));
    o0 = _596;
    float3 _608 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _608.x, _608.y, _608.z);
    float3 _618 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_618.x, _618.y, _618.z, r1.w);
    float3 _627 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _627.x, _627.y, _627.z);
    float4 _643 = r1;
    _643.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _643;
    float4 _648 = r1;
    _648.x = rsqrt(r1.x);
    r1 = _648;
    float3 _654 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _654.x, _654.y, _654.z);
    float4 _670 = r1;
    _670.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _670;
    float4 _685 = r1;
    _685.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _685;
    float4 _700 = r1;
    _700.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _700;
    float3 _706 = r0.xxx * r1.xyz;
    r0 = float4(_706.x, _706.y, _706.z, r0.w);
    float4 _722 = r0;
    _722.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _722;
    float4 _727 = r0;
    _727.w = rsqrt(r0.w);
    r0 = _727;
    float3 _733 = r0.www * r0.xyz;
    r0 = float4(_733.x, _733.y, _733.z, r0.w);
    float3 _743 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _755 = r1;
    _755.x = mad(_743.z, r0.xyz.z, mad(_743.y, r0.xyz.y, _743.x * r0.xyz.x));
    r1 = _755;
    float3 _764 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _776 = r1;
    _776.y = mad(_764.z, r0.xyz.z, mad(_764.y, r0.xyz.y, _764.x * r0.xyz.x));
    r1 = _776;
    float3 _785 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _797 = r1;
    _797.z = mad(_785.z, r0.xyz.z, mad(_785.y, r0.xyz.y, _785.x * r0.xyz.x));
    r1 = _797;
    float4 _812 = r0;
    _812.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _812;
    float4 _817 = r0;
    _817.x = rsqrt(r0.x);
    r0 = _817;
    o1 = r0.xxx * r1.xyz;
    float2 _828 = float2(asint(shader_in[1].xy));
    r0 = float4(_828.x, _828.y, r0.z, r0.w);
    o2 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _852 = asfloat(v1);
    shader_in[1] = float4(_852.x, _852.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
