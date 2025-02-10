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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;
static float4 v6;
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
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
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _73 = r0;
    _73.x = shader_in[6].y + shader_in[6].x;
    r0 = _73;
    float4 _81 = r0;
    _81.x = r0.x + shader_in[6].z;
    r0 = _81;
    float4 _89 = r0;
    _89.x = r0.x + shader_in[6].w;
    r0 = _89;
    float4 _96 = r0;
    _96.x = asfloat(1065353216u) / r0.x;
    r0 = _96;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _106 = r1;
    _106.w = asfloat(1065353216u);
    r1 = _106;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _123 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_123].x, cb4_m[_123].y, cb4_m[_123].z, cb4_m[_123].w);
    int _144 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_144].x, cb4_m[_144].y, cb4_m[_144].z, cb4_m[_144].w)) + r3;
    int _163 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_163].x, cb4_m[_163].y, cb4_m[_163].z, cb4_m[_163].w)) + r3;
    int _182 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_182].x, cb4_m[_182].y, cb4_m[_182].z, cb4_m[_182].w)) + r3;
    float4 _211 = r4;
    _211.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _211;
    int _220 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_220].x, cb4_m[_220].y, cb4_m[_220].z, cb4_m[_220].w);
    int _239 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_239].x, cb4_m[_239].y, cb4_m[_239].z, cb4_m[_239].w)) + r5;
    int _259 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_259].x, cb4_m[_259].y, cb4_m[_259].z, cb4_m[_259].w)) + r5;
    int _279 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_279].x, cb4_m[_279].y, cb4_m[_279].z, cb4_m[_279].w)) + r5;
    float4 _307 = r4;
    _307.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _307;
    int _316 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_316].x, cb4_m[_316].y, cb4_m[_316].z, cb4_m[_316].w);
    int _335 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_335].x, cb4_m[_335].y, cb4_m[_335].z, cb4_m[_335].w)) + r6;
    int _355 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_355].x, cb4_m[_355].y, cb4_m[_355].z, cb4_m[_355].w)) + r6;
    int _375 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_375].x, cb4_m[_375].y, cb4_m[_375].z, cb4_m[_375].w)) + r6;
    float4 _403 = r4;
    _403.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _403;
    float3 _409 = r0.xxx * r4.xyz;
    r1 = float4(_409.x, _409.y, _409.z, r1.w);
    float4 _413 = r1;
    _413.w = asfloat(1065353216u);
    r1 = _413;
    float4 _424 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _438 = r4;
    _438.x = mad(_424.w, r1.w, mad(_424.z, r1.z, mad(_424.y, r1.y, _424.x * r1.x)));
    r4 = _438;
    float4 _449 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _463 = r4;
    _463.y = mad(_449.w, r1.w, mad(_449.z, r1.z, mad(_449.y, r1.y, _449.x * r1.x)));
    r4 = _463;
    float4 _474 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _488 = r4;
    _488.z = mad(_474.w, r1.w, mad(_474.z, r1.z, mad(_474.y, r1.y, _474.x * r1.x)));
    r4 = _488;
    float4 _491 = r4;
    _491.w = asfloat(1065353216u);
    r4 = _491;
    float4 _502 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _516 = o0;
    _516.x = mad(_502.w, r4.w, mad(_502.z, r4.z, mad(_502.y, r4.y, _502.x * r4.x)));
    o0 = _516;
    float4 _527 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _541 = o0;
    _541.y = mad(_527.w, r4.w, mad(_527.z, r4.z, mad(_527.y, r4.y, _527.x * r4.x)));
    o0 = _541;
    float4 _552 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _566 = o0;
    _566.z = mad(_552.w, r4.w, mad(_552.z, r4.z, mad(_552.y, r4.y, _552.x * r4.x)));
    o0 = _566;
    float4 _578 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _592 = o0;
    _592.w = mad(_578.w, r4.w, mad(_578.z, r4.z, mad(_578.y, r4.y, _578.x * r4.x)));
    o0 = _592;
    float2 _598 = float2(asint(shader_in[2].xy));
    r0 = float4(r0.x, _598.x, _598.y, r0.w);
    float2 _609 = r0.yz * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(r0.x, _609.x, _609.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _631 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _631.x, _631.y, _631.z);
    float4 _647 = r1;
    _647.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _647;
    float4 _662 = r1;
    _662.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _662;
    float4 _677 = r1;
    _677.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _677;
    float3 _683 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _683.x, _683.y, _683.z);
    float4 _699 = r1;
    _699.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _699;
    float4 _704 = r1;
    _704.x = rsqrt(r1.x);
    r1 = _704;
    float3 _710 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _710.x, _710.y, _710.z);
    float3 _720 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _732 = r1;
    _732.x = mad(_720.z, r0.yzw.z, mad(_720.y, r0.yzw.y, _720.x * r0.yzw.x));
    r1 = _732;
    float3 _741 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _753 = r1;
    _753.y = mad(_741.z, r0.yzw.z, mad(_741.y, r0.yzw.y, _741.x * r0.yzw.x));
    r1 = _753;
    float3 _762 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _774 = r1;
    _774.z = mad(_762.z, r0.yzw.z, mad(_762.y, r0.yzw.y, _762.x * r0.yzw.x));
    r1 = _774;
    float4 _789 = r0;
    _789.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _789;
    float4 _794 = r0;
    _794.y = rsqrt(r0.y);
    r0 = _794;
    float3 _800 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _800.x, _800.y, _800.z);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _825 = r3;
    _825.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _825;
    float4 _840 = r3;
    _840.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _840;
    float4 _855 = r3;
    _855.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _855;
    float3 _861 = r0.xxx * r3.xyz;
    r1 = float4(_861.x, _861.y, _861.z, r1.w);
    float4 _877 = r0;
    _877.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _877;
    float4 _882 = r0;
    _882.x = rsqrt(r0.x);
    r0 = _882;
    float3 _888 = r0.xxx * r1.xyz;
    r1 = float4(_888.x, _888.y, _888.z, r1.w);
    float3 _898 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _910 = r2;
    _910.x = mad(_898.z, r1.xyz.z, mad(_898.y, r1.xyz.y, _898.x * r1.xyz.x));
    r2 = _910;
    float3 _919 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _931 = r2;
    _931.y = mad(_919.z, r1.xyz.z, mad(_919.y, r1.xyz.y, _919.x * r1.xyz.x));
    r2 = _931;
    float3 _940 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _952 = r2;
    _952.z = mad(_940.z, r1.xyz.z, mad(_940.y, r1.xyz.y, _940.x * r1.xyz.x));
    r2 = _952;
    float4 _967 = r0;
    _967.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _967;
    float4 _972 = r0;
    _972.x = rsqrt(r0.x);
    r0 = _972;
    float3 _978 = r0.xxx * r2.xyz;
    r1 = float4(_978.x, _978.y, _978.z, r1.w);
    float3 _985 = r0.wyz * r1.yzx;
    r2 = float4(_985.x, _985.y, _985.z, r2.w);
    float3 _996 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_996.x, _996.y, _996.z, r2.w);
    float3 _1006 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1018 = o2;
    _1018.z = mad(_1006.z, r0.yzw.z, mad(_1006.y, r0.yzw.y, _1006.x * r0.yzw.x));
    o2 = _1018;
    float3 _1027 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1039 = o2;
    _1039.x = mad(_1027.z, r1.xyz.z, mad(_1027.y, r1.xyz.y, _1027.x * r1.xyz.x));
    o2 = _1039;
    float3 _1045 = r1.www * r2.xyz;
    r0 = float4(_1045.x, _1045.y, _1045.z, r0.w);
    float3 _1055 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1067 = o2;
    _1067.y = mad(_1055.z, r0.xyz.z, mad(_1055.y, r0.xyz.y, _1055.x * r0.xyz.x));
    o2 = _1067;
    float2 _1073 = float2(asint(shader_in[1].xy));
    r0 = float4(_1073.x, _1073.y, r0.z, r0.w);
    float2 _1079 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_1079.x, _1079.y, o3.z, o3.w);
    float2 _1086 = float2(asint(shader_in[3].xy));
    r0 = float4(_1086.x, _1086.y, r0.z, r0.w);
    float2 _1092 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _1092.x, _1092.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1101 = asfloat(v1);
    shader_in[1] = float4(_1101.x, _1101.y, shader_in[1].z, shader_in[1].w);
    float2 _1106 = asfloat(v2);
    shader_in[2] = float4(_1106.x, _1106.y, shader_in[2].z, shader_in[2].w);
    float2 _1111 = asfloat(v3);
    shader_in[3] = float4(_1111.x, _1111.y, shader_in[3].z, shader_in[3].w);
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
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
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
