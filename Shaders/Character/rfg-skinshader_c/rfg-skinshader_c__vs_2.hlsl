cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static int4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
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
static float2 o1;
static float3 o2;
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
    float4 _66 = r0;
    _66.x = shader_in[4].y + shader_in[4].x;
    r0 = _66;
    float4 _74 = r0;
    _74.x = r0.x + shader_in[4].z;
    r0 = _74;
    float4 _82 = r0;
    _82.x = r0.x + shader_in[4].w;
    r0 = _82;
    float4 _89 = r0;
    _89.x = asfloat(1065353216u) / r0.x;
    r0 = _89;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _99 = r1;
    _99.w = asfloat(1065353216u);
    r1 = _99;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _116 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_116].x, cb4_m[_116].y, cb4_m[_116].z, cb4_m[_116].w);
    int _138 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_138].x, cb4_m[_138].y, cb4_m[_138].z, cb4_m[_138].w)) + r3;
    int _157 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_157].x, cb4_m[_157].y, cb4_m[_157].z, cb4_m[_157].w)) + r3;
    int _176 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_176].x, cb4_m[_176].y, cb4_m[_176].z, cb4_m[_176].w)) + r3;
    float4 _205 = r4;
    _205.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _205;
    int _214 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_214].x, cb4_m[_214].y, cb4_m[_214].z, cb4_m[_214].w);
    int _233 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_233].x, cb4_m[_233].y, cb4_m[_233].z, cb4_m[_233].w)) + r5;
    int _253 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_253].x, cb4_m[_253].y, cb4_m[_253].z, cb4_m[_253].w)) + r5;
    int _273 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_273].x, cb4_m[_273].y, cb4_m[_273].z, cb4_m[_273].w)) + r5;
    float4 _301 = r4;
    _301.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _301;
    int _310 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_310].x, cb4_m[_310].y, cb4_m[_310].z, cb4_m[_310].w);
    int _329 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w)) + r6;
    int _349 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_349].x, cb4_m[_349].y, cb4_m[_349].z, cb4_m[_349].w)) + r6;
    int _369 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_369].x, cb4_m[_369].y, cb4_m[_369].z, cb4_m[_369].w)) + r6;
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
    float4 _572 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _586 = o0;
    _586.w = mad(_572.w, r4.w, mad(_572.z, r4.z, mad(_572.y, r4.y, _572.x * r4.x)));
    o0 = _586;
    float3 _600 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _600.x, _600.y, _600.z);
    float2 _607 = float2(asint(shader_in[1].xy));
    r1 = float4(_607.x, _607.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _628 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_628.x, _628.y, _628.z, r1.w);
    float4 _644 = r4;
    _644.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _644;
    float4 _659 = r4;
    _659.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _659;
    float4 _674 = r4;
    _674.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _674;
    float3 _680 = r0.xxx * r4.xyz;
    r1 = float4(_680.x, _680.y, _680.z, r1.w);
    float4 _696 = r1;
    _696.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _696;
    float4 _701 = r1;
    _701.w = rsqrt(r1.w);
    r1 = _701;
    float3 _707 = r1.www * r1.xyz;
    r1 = float4(_707.x, _707.y, _707.z, r1.w);
    float3 _717 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _729 = r4;
    _729.x = mad(_717.z, r1.xyz.z, mad(_717.y, r1.xyz.y, _717.x * r1.xyz.x));
    r4 = _729;
    float3 _738 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _750 = r4;
    _750.y = mad(_738.z, r1.xyz.z, mad(_738.y, r1.xyz.y, _738.x * r1.xyz.x));
    r4 = _750;
    float3 _759 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _771 = r4;
    _771.z = mad(_759.z, r1.xyz.z, mad(_759.y, r1.xyz.y, _759.x * r1.xyz.x));
    r4 = _771;
    float4 _786 = r1;
    _786.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _786;
    float4 _791 = r1;
    _791.x = rsqrt(r1.x);
    r1 = _791;
    float3 _797 = r1.xxx * r4.xyz;
    r1 = float4(_797.x, _797.y, _797.z, r1.w);
    r4 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _821 = r3;
    _821.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _821;
    float4 _836 = r3;
    _836.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _836;
    float4 _851 = r3;
    _851.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _851;
    float3 _857 = r0.xxx * r3.xyz;
    r2 = float4(_857.x, _857.y, _857.z, r2.w);
    float4 _873 = r0;
    _873.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _873;
    float4 _878 = r0;
    _878.x = rsqrt(r0.x);
    r0 = _878;
    float3 _884 = r0.xxx * r2.xyz;
    r2 = float4(_884.x, _884.y, _884.z, r2.w);
    float3 _894 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _906 = r3;
    _906.x = mad(_894.z, r2.xyz.z, mad(_894.y, r2.xyz.y, _894.x * r2.xyz.x));
    r3 = _906;
    float3 _915 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _927 = r3;
    _927.y = mad(_915.z, r2.xyz.z, mad(_915.y, r2.xyz.y, _915.x * r2.xyz.x));
    r3 = _927;
    float3 _936 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _948 = r3;
    _948.z = mad(_936.z, r2.xyz.z, mad(_936.y, r2.xyz.y, _936.x * r2.xyz.x));
    r3 = _948;
    float4 _963 = r0;
    _963.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _963;
    float4 _968 = r0;
    _968.x = rsqrt(r0.x);
    r0 = _968;
    float3 _974 = r0.xxx * r3.xyz;
    r2 = float4(_974.x, _974.y, _974.z, r2.w);
    float3 _981 = r1.zxy * r2.yzx;
    r3 = float4(_981.x, _981.y, _981.z, r3.w);
    float3 _992 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_992.x, _992.y, _992.z, r3.w);
    float3 _999 = r4.www * r3.xyz;
    r3 = float4(_999.x, _999.y, _999.z, r3.w);
    float3 _1009 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1021 = o2;
    _1021.y = mad(_1009.z, r3.xyz.z, mad(_1009.y, r3.xyz.y, _1009.x * r3.xyz.x));
    o2 = _1021;
    float3 _1036 = o3;
    _1036.y = mad(r0.yzw.z, r3.xyz.z, mad(r0.yzw.y, r3.xyz.y, r0.yzw.x * r3.xyz.x));
    o3 = _1036;
    float3 _1045 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1057 = o2;
    _1057.z = mad(_1045.z, r1.xyz.z, mad(_1045.y, r1.xyz.y, _1045.x * r1.xyz.x));
    o2 = _1057;
    float3 _1072 = o3;
    _1072.z = mad(r0.yzw.z, r1.xyz.z, mad(r0.yzw.y, r1.xyz.y, r0.yzw.x * r1.xyz.x));
    o3 = _1072;
    float3 _1087 = o3;
    _1087.x = mad(r0.yzw.z, r2.xyz.z, mad(r0.yzw.y, r2.xyz.y, r0.yzw.x * r2.xyz.x));
    o3 = _1087;
    float3 _1096 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1108 = o2;
    _1108.x = mad(_1096.z, r2.xyz.z, mad(_1096.y, r2.xyz.y, _1096.x * r2.xyz.x));
    o2 = _1108;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1116 = asfloat(v1);
    shader_in[1] = float4(_1116.x, _1116.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
