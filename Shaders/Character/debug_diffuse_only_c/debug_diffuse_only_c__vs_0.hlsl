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
static float3 v4;
static float4 v5;
static float4 v6;
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _59 = r0;
    _59.x = shader_in[6].y + shader_in[6].x;
    r0 = _59;
    float4 _67 = r0;
    _67.x = r0.x + shader_in[6].z;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[6].w;
    r0 = _75;
    float4 _82 = r0;
    _82.x = asfloat(1065353216u) / r0.x;
    r0 = _82;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _92 = r1;
    _92.w = asfloat(1065353216u);
    r1 = _92;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _109 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_109].x, cb4_m[_109].y, cb4_m[_109].z, cb4_m[_109].w);
    int _131 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_131].x, cb4_m[_131].y, cb4_m[_131].z, cb4_m[_131].w)) + r3;
    int _150 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_150].x, cb4_m[_150].y, cb4_m[_150].z, cb4_m[_150].w)) + r3;
    int _169 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_169].x, cb4_m[_169].y, cb4_m[_169].z, cb4_m[_169].w)) + r3;
    float4 _198 = r4;
    _198.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _198;
    int _207 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_207].x, cb4_m[_207].y, cb4_m[_207].z, cb4_m[_207].w);
    int _226 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_226].x, cb4_m[_226].y, cb4_m[_226].z, cb4_m[_226].w)) + r5;
    int _246 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_246].x, cb4_m[_246].y, cb4_m[_246].z, cb4_m[_246].w)) + r5;
    int _266 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_266].x, cb4_m[_266].y, cb4_m[_266].z, cb4_m[_266].w)) + r5;
    float4 _294 = r4;
    _294.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _294;
    int _303 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_303].x, cb4_m[_303].y, cb4_m[_303].z, cb4_m[_303].w);
    int _322 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_322].x, cb4_m[_322].y, cb4_m[_322].z, cb4_m[_322].w)) + r6;
    int _342 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_342].x, cb4_m[_342].y, cb4_m[_342].z, cb4_m[_342].w)) + r6;
    int _362 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_362].x, cb4_m[_362].y, cb4_m[_362].z, cb4_m[_362].w)) + r6;
    float4 _390 = r4;
    _390.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _390;
    float3 _396 = r0.xxx * r4.xyz;
    r1 = float4(_396.x, _396.y, _396.z, r1.w);
    float4 _400 = r1;
    _400.w = asfloat(1065353216u);
    r1 = _400;
    float4 _411 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _425 = r4;
    _425.x = mad(_411.w, r1.w, mad(_411.z, r1.z, mad(_411.y, r1.y, _411.x * r1.x)));
    r4 = _425;
    float4 _436 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _450 = r4;
    _450.y = mad(_436.w, r1.w, mad(_436.z, r1.z, mad(_436.y, r1.y, _436.x * r1.x)));
    r4 = _450;
    float4 _461 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _475 = r4;
    _475.z = mad(_461.w, r1.w, mad(_461.z, r1.z, mad(_461.y, r1.y, _461.x * r1.x)));
    r4 = _475;
    float4 _478 = r4;
    _478.w = asfloat(1065353216u);
    r4 = _478;
    float4 _489 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _503 = o0;
    _503.x = mad(_489.w, r4.w, mad(_489.z, r4.z, mad(_489.y, r4.y, _489.x * r4.x)));
    o0 = _503;
    float4 _514 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _528 = o0;
    _528.y = mad(_514.w, r4.w, mad(_514.z, r4.z, mad(_514.y, r4.y, _514.x * r4.x)));
    o0 = _528;
    float4 _539 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _553 = o0;
    _553.z = mad(_539.w, r4.w, mad(_539.z, r4.z, mad(_539.y, r4.y, _539.x * r4.x)));
    o0 = _553;
    float4 _565 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _579 = o0;
    _579.w = mad(_565.w, r4.w, mad(_565.z, r4.z, mad(_565.y, r4.y, _565.x * r4.x)));
    o0 = _579;
    float3 _593 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _593.x, _593.y, _593.z);
    float4 _609 = r1;
    _609.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _609;
    float4 _624 = r1;
    _624.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _624;
    float4 _639 = r1;
    _639.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _639;
    float3 _645 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _645.x, _645.y, _645.z);
    float4 _661 = r1;
    _661.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _661;
    float4 _666 = r1;
    _666.x = rsqrt(r1.x);
    r1 = _666;
    float3 _672 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _672.x, _672.y, _672.z);
    float3 _682 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _694 = r1;
    _694.x = mad(_682.z, r0.yzw.z, mad(_682.y, r0.yzw.y, _682.x * r0.yzw.x));
    r1 = _694;
    float3 _703 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _715 = r1;
    _715.y = mad(_703.z, r0.yzw.z, mad(_703.y, r0.yzw.y, _703.x * r0.yzw.x));
    r1 = _715;
    float3 _724 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _736 = r1;
    _736.z = mad(_724.z, r0.yzw.z, mad(_724.y, r0.yzw.y, _724.x * r0.yzw.x));
    r1 = _736;
    float4 _751 = r0;
    _751.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _751;
    float4 _756 = r0;
    _756.y = rsqrt(r0.y);
    r0 = _756;
    float3 _762 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _762.x, _762.y, _762.z);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _787 = r3;
    _787.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _787;
    float4 _802 = r3;
    _802.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _802;
    float4 _817 = r3;
    _817.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _817;
    float3 _823 = r0.xxx * r3.xyz;
    r1 = float4(_823.x, _823.y, _823.z, r1.w);
    float4 _839 = r0;
    _839.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _839;
    float4 _844 = r0;
    _844.x = rsqrt(r0.x);
    r0 = _844;
    float3 _850 = r0.xxx * r1.xyz;
    r1 = float4(_850.x, _850.y, _850.z, r1.w);
    float3 _860 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _872 = r2;
    _872.x = mad(_860.z, r1.xyz.z, mad(_860.y, r1.xyz.y, _860.x * r1.xyz.x));
    r2 = _872;
    float3 _881 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _893 = r2;
    _893.y = mad(_881.z, r1.xyz.z, mad(_881.y, r1.xyz.y, _881.x * r1.xyz.x));
    r2 = _893;
    float3 _902 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _914 = r2;
    _914.z = mad(_902.z, r1.xyz.z, mad(_902.y, r1.xyz.y, _902.x * r1.xyz.x));
    r2 = _914;
    float4 _929 = r0;
    _929.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _929;
    float4 _934 = r0;
    _934.x = rsqrt(r0.x);
    r0 = _934;
    float3 _940 = r0.xxx * r2.xyz;
    r1 = float4(_940.x, _940.y, _940.z, r1.w);
    float3 _947 = r0.wyz * r1.yzx;
    r2 = float4(_947.x, _947.y, _947.z, r2.w);
    float3 _958 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_958.x, _958.y, _958.z, r2.w);
    float3 _968 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _980 = o1;
    _980.z = mad(_968.z, r0.yzw.z, mad(_968.y, r0.yzw.y, _968.x * r0.yzw.x));
    o1 = _980;
    float3 _989 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1001 = o1;
    _1001.x = mad(_989.z, r1.xyz.z, mad(_989.y, r1.xyz.y, _989.x * r1.xyz.x));
    o1 = _1001;
    float3 _1007 = r1.www * r2.xyz;
    r0 = float4(_1007.x, _1007.y, _1007.z, r0.w);
    float3 _1017 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1029 = o1;
    _1029.y = mad(_1017.z, r0.xyz.z, mad(_1017.y, r0.xyz.y, _1017.x * r0.xyz.x));
    o1 = _1029;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = asfloat(v7);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
