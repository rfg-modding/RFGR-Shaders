cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static int4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _66 = r0;
    _66.x = shader_in[3].y + shader_in[3].x;
    r0 = _66;
    float4 _74 = r0;
    _74.x = r0.x + shader_in[3].z;
    r0 = _74;
    float4 _82 = r0;
    _82.x = r0.x + shader_in[3].w;
    r0 = _82;
    float4 _89 = r0;
    _89.x = asfloat(1065353216u) / r0.x;
    r0 = _89;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _99 = r1;
    _99.w = asfloat(1065353216u);
    r1 = _99;
    r2 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _116 = asint(r2.y);
    r3 = shader_in[3].yyyy * float4(cb4_m[_116].x, cb4_m[_116].y, cb4_m[_116].z, cb4_m[_116].w);
    int _138 = asint(r2.x);
    r3 = (shader_in[3].xxxx * float4(cb4_m[_138].x, cb4_m[_138].y, cb4_m[_138].z, cb4_m[_138].w)) + r3;
    int _157 = asint(r2.z);
    r3 = (shader_in[3].zzzz * float4(cb4_m[_157].x, cb4_m[_157].y, cb4_m[_157].z, cb4_m[_157].w)) + r3;
    int _176 = asint(r2.w);
    r3 = (shader_in[3].wwww * float4(cb4_m[_176].x, cb4_m[_176].y, cb4_m[_176].z, cb4_m[_176].w)) + r3;
    float4 _205 = r4;
    _205.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _205;
    int _214 = asint(r2.y) + 1;
    r5 = shader_in[3].yyyy * float4(cb4_m[_214].x, cb4_m[_214].y, cb4_m[_214].z, cb4_m[_214].w);
    int _233 = asint(r2.x) + 1;
    r5 = (shader_in[3].xxxx * float4(cb4_m[_233].x, cb4_m[_233].y, cb4_m[_233].z, cb4_m[_233].w)) + r5;
    int _253 = asint(r2.z) + 1;
    r5 = (shader_in[3].zzzz * float4(cb4_m[_253].x, cb4_m[_253].y, cb4_m[_253].z, cb4_m[_253].w)) + r5;
    int _273 = asint(r2.w) + 1;
    r5 = (shader_in[3].wwww * float4(cb4_m[_273].x, cb4_m[_273].y, cb4_m[_273].z, cb4_m[_273].w)) + r5;
    float4 _301 = r4;
    _301.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _301;
    int _310 = asint(r2.y) + 2;
    r6 = shader_in[3].yyyy * float4(cb4_m[_310].x, cb4_m[_310].y, cb4_m[_310].z, cb4_m[_310].w);
    int _329 = asint(r2.x) + 2;
    r6 = (shader_in[3].xxxx * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w)) + r6;
    int _349 = asint(r2.z) + 2;
    r6 = (shader_in[3].zzzz * float4(cb4_m[_349].x, cb4_m[_349].y, cb4_m[_349].z, cb4_m[_349].w)) + r6;
    int _369 = asint(r2.w) + 2;
    r2 = (shader_in[3].wwww * float4(cb4_m[_369].x, cb4_m[_369].y, cb4_m[_369].z, cb4_m[_369].w)) + r6;
    float4 _397 = r4;
    _397.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _397;
    float3 _403 = r0.xxx * r4.xyz;
    r1 = float4(_403.x, _403.y, _403.z, r1.w);
    float4 _407 = r1;
    _407.w = asfloat(1065353216u);
    r1 = _407;
    float4 _418 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _432 = r4;
    _432.x = mad(_418.w, r1.w, mad(_418.z, r1.z, mad(_418.y, r1.y, _418.x * r1.x)));
    r4 = _432;
    float4 _443 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _457 = r4;
    _457.y = mad(_443.w, r1.w, mad(_443.z, r1.z, mad(_443.y, r1.y, _443.x * r1.x)));
    r4 = _457;
    float4 _468 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _482 = r4;
    _482.z = mad(_468.w, r1.w, mad(_468.z, r1.z, mad(_468.y, r1.y, _468.x * r1.x)));
    r4 = _482;
    float4 _485 = r4;
    _485.w = asfloat(1065353216u);
    r4 = _485;
    float4 _496 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _510 = o0;
    _510.x = mad(_496.w, r4.w, mad(_496.z, r4.z, mad(_496.y, r4.y, _496.x * r4.x)));
    o0 = _510;
    float4 _521 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _535 = o0;
    _535.y = mad(_521.w, r4.w, mad(_521.z, r4.z, mad(_521.y, r4.y, _521.x * r4.x)));
    o0 = _535;
    float4 _546 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _560 = o0;
    _560.z = mad(_546.w, r4.w, mad(_546.z, r4.z, mad(_546.y, r4.y, _546.x * r4.x)));
    o0 = _560;
    float4 _571 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _585 = o0;
    _585.w = mad(_571.w, r4.w, mad(_571.z, r4.z, mad(_571.y, r4.y, _571.x * r4.x)));
    o0 = _585;
    float2 _591 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _591.x, _591.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _621 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _621.x, _621.y, _621.z);
    float3 _635 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_635.x, _635.y, _635.z, r1.w);
    float4 _651 = r1;
    _651.w = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _651;
    float4 _656 = r1;
    _656.w = rsqrt(r1.w);
    r1 = _656;
    o3 = r0.yzw * r1.www;
    float3 _674 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _674.x, _674.y, _674.z);
    float4 _690 = r3;
    _690.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r3 = _690;
    float4 _705 = r3;
    _705.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r3 = _705;
    float4 _720 = r3;
    _720.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r3 = _720;
    float3 _726 = r0.xxx * r3.xyz;
    r0 = float4(_726.x, _726.y, _726.z, r0.w);
    float4 _742 = r0;
    _742.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _742;
    float4 _747 = r0;
    _747.w = rsqrt(r0.w);
    r0 = _747;
    float3 _753 = r0.www * r0.xyz;
    r0 = float4(_753.x, _753.y, _753.z, r0.w);
    float3 _763 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _775 = r2;
    _775.x = mad(_763.z, r0.xyz.z, mad(_763.y, r0.xyz.y, _763.x * r0.xyz.x));
    r2 = _775;
    float3 _784 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _796 = r2;
    _796.y = mad(_784.z, r0.xyz.z, mad(_784.y, r0.xyz.y, _784.x * r0.xyz.x));
    r2 = _796;
    float3 _805 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _817 = r2;
    _817.z = mad(_805.z, r0.xyz.z, mad(_805.y, r0.xyz.y, _805.x * r0.xyz.x));
    r2 = _817;
    float4 _832 = r0;
    _832.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _832;
    float4 _837 = r0;
    _837.x = rsqrt(r0.x);
    r0 = _837;
    float3 _843 = r0.xxx * r2.xyz;
    o4 = float4(_843.x, _843.y, _843.z, o4.w);
    float4 _853 = r0;
    _853.x = r1.y * cb0_m[13].x;
    r0 = _853;
    float4 _860 = r0;
    _860.y = r0.x * asfloat(3216550459u);
    r0 = _860;
    float4 _865 = r0;
    _865.y = exp2(r0.y);
    r0 = _865;
    float4 _872 = r0;
    _872.y = (-r0.y) + asfloat(1065353216u);
    r0 = _872;
    float4 _879 = r0;
    _879.x = r0.y / r0.x;
    r0 = _879;
    float4 _891 = r0;
    _891.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _891;
    float4 _906 = r0;
    _906.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _906;
    float4 _911 = r0;
    _911.z = sqrt(r0.z);
    r0 = _911;
    float4 _919 = r0;
    _919.z = r0.z * cb0_m[13].y;
    r0 = _919;
    float4 _929 = r0;
    _929.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _929;
    float4 _941 = r0;
    _941.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _941;
    float4 _947 = r0;
    _947.x = exp2(-r0.x);
    r0 = _947;
    float4 _953 = r0;
    _953.x = min(r0.x, asfloat(1065353216u));
    r0 = _953;
    float4 _960 = o4;
    _960.w = (-r0.x) + asfloat(1065353216u);
    o4 = _960;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _968 = asfloat(v1);
    shader_in[1] = float4(_968.x, _968.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
