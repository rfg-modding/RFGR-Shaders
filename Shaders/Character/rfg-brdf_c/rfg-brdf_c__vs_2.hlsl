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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
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
    float4 _71 = r0;
    _71.x = shader_in[4].y + shader_in[4].x;
    r0 = _71;
    float4 _79 = r0;
    _79.x = r0.x + shader_in[4].z;
    r0 = _79;
    float4 _87 = r0;
    _87.x = r0.x + shader_in[4].w;
    r0 = _87;
    float4 _94 = r0;
    _94.x = asfloat(1065353216u) / r0.x;
    r0 = _94;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _104 = r1;
    _104.w = asfloat(1065353216u);
    r1 = _104;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _121 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_121].x, cb4_m[_121].y, cb4_m[_121].z, cb4_m[_121].w);
    int _143 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_143].x, cb4_m[_143].y, cb4_m[_143].z, cb4_m[_143].w)) + r3;
    int _162 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_162].x, cb4_m[_162].y, cb4_m[_162].z, cb4_m[_162].w)) + r3;
    int _181 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_181].x, cb4_m[_181].y, cb4_m[_181].z, cb4_m[_181].w)) + r3;
    float4 _210 = r4;
    _210.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _210;
    int _219 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_219].x, cb4_m[_219].y, cb4_m[_219].z, cb4_m[_219].w);
    int _238 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_238].x, cb4_m[_238].y, cb4_m[_238].z, cb4_m[_238].w)) + r5;
    int _258 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_258].x, cb4_m[_258].y, cb4_m[_258].z, cb4_m[_258].w)) + r5;
    int _278 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_278].x, cb4_m[_278].y, cb4_m[_278].z, cb4_m[_278].w)) + r5;
    float4 _306 = r4;
    _306.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _306;
    int _315 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_315].x, cb4_m[_315].y, cb4_m[_315].z, cb4_m[_315].w);
    int _334 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_334].x, cb4_m[_334].y, cb4_m[_334].z, cb4_m[_334].w)) + r6;
    int _354 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_354].x, cb4_m[_354].y, cb4_m[_354].z, cb4_m[_354].w)) + r6;
    int _374 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_374].x, cb4_m[_374].y, cb4_m[_374].z, cb4_m[_374].w)) + r6;
    float4 _402 = r4;
    _402.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _402;
    float3 _408 = r0.xxx * r4.xyz;
    r1 = float4(_408.x, _408.y, _408.z, r1.w);
    float4 _412 = r1;
    _412.w = asfloat(1065353216u);
    r1 = _412;
    float4 _423 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _437 = r4;
    _437.x = mad(_423.w, r1.w, mad(_423.z, r1.z, mad(_423.y, r1.y, _423.x * r1.x)));
    r4 = _437;
    float4 _448 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _462 = r4;
    _462.y = mad(_448.w, r1.w, mad(_448.z, r1.z, mad(_448.y, r1.y, _448.x * r1.x)));
    r4 = _462;
    float4 _473 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _487 = r4;
    _487.z = mad(_473.w, r1.w, mad(_473.z, r1.z, mad(_473.y, r1.y, _473.x * r1.x)));
    r4 = _487;
    float4 _490 = r4;
    _490.w = asfloat(1065353216u);
    r4 = _490;
    float4 _501 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _515 = o0;
    _515.x = mad(_501.w, r4.w, mad(_501.z, r4.z, mad(_501.y, r4.y, _501.x * r4.x)));
    o0 = _515;
    float4 _526 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _540 = o0;
    _540.y = mad(_526.w, r4.w, mad(_526.z, r4.z, mad(_526.y, r4.y, _526.x * r4.x)));
    o0 = _540;
    float4 _551 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _565 = o0;
    _565.z = mad(_551.w, r4.w, mad(_551.z, r4.z, mad(_551.y, r4.y, _551.x * r4.x)));
    o0 = _565;
    float4 _577 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _591 = o0;
    _591.w = mad(_577.w, r4.w, mad(_577.z, r4.z, mad(_577.y, r4.y, _577.x * r4.x)));
    o0 = _591;
    float3 _605 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _605.x, _605.y, _605.z);
    float2 _612 = float2(asint(shader_in[1].xy));
    r1 = float4(_612.x, _612.y, r1.z, r1.w);
    float2 _624 = r1.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r1 = float4(_624.x, _624.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _645 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_645.x, _645.y, _645.z, r1.w);
    float4 _661 = r4;
    _661.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _661;
    float4 _676 = r4;
    _676.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _676;
    float4 _691 = r4;
    _691.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _691;
    float3 _697 = r0.xxx * r4.xyz;
    r1 = float4(_697.x, _697.y, _697.z, r1.w);
    float4 _713 = r1;
    _713.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _713;
    float4 _718 = r1;
    _718.w = rsqrt(r1.w);
    r1 = _718;
    float3 _724 = r1.www * r1.xyz;
    r1 = float4(_724.x, _724.y, _724.z, r1.w);
    float3 _734 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _746 = r4;
    _746.x = mad(_734.z, r1.xyz.z, mad(_734.y, r1.xyz.y, _734.x * r1.xyz.x));
    r4 = _746;
    float3 _755 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _767 = r4;
    _767.y = mad(_755.z, r1.xyz.z, mad(_755.y, r1.xyz.y, _755.x * r1.xyz.x));
    r4 = _767;
    float3 _776 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _788 = r4;
    _788.z = mad(_776.z, r1.xyz.z, mad(_776.y, r1.xyz.y, _776.x * r1.xyz.x));
    r4 = _788;
    float4 _803 = r1;
    _803.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _803;
    float4 _808 = r1;
    _808.x = rsqrt(r1.x);
    r1 = _808;
    float3 _814 = r1.xxx * r4.xyz;
    r1 = float4(_814.x, _814.y, _814.z, r1.w);
    r4 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _838 = r3;
    _838.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _838;
    float4 _853 = r3;
    _853.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _853;
    float4 _868 = r3;
    _868.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _868;
    float3 _874 = r0.xxx * r3.xyz;
    r2 = float4(_874.x, _874.y, _874.z, r2.w);
    float4 _890 = r0;
    _890.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _890;
    float4 _895 = r0;
    _895.x = rsqrt(r0.x);
    r0 = _895;
    float3 _901 = r0.xxx * r2.xyz;
    r2 = float4(_901.x, _901.y, _901.z, r2.w);
    float3 _911 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _923 = r3;
    _923.x = mad(_911.z, r2.xyz.z, mad(_911.y, r2.xyz.y, _911.x * r2.xyz.x));
    r3 = _923;
    float3 _932 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _944 = r3;
    _944.y = mad(_932.z, r2.xyz.z, mad(_932.y, r2.xyz.y, _932.x * r2.xyz.x));
    r3 = _944;
    float3 _953 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _965 = r3;
    _965.z = mad(_953.z, r2.xyz.z, mad(_953.y, r2.xyz.y, _953.x * r2.xyz.x));
    r3 = _965;
    float4 _980 = r0;
    _980.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _980;
    float4 _985 = r0;
    _985.x = rsqrt(r0.x);
    r0 = _985;
    float3 _991 = r0.xxx * r3.xyz;
    r2 = float4(_991.x, _991.y, _991.z, r2.w);
    float3 _998 = r1.zxy * r2.yzx;
    r3 = float4(_998.x, _998.y, _998.z, r3.w);
    float3 _1009 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1009.x, _1009.y, _1009.z, r3.w);
    float3 _1016 = r4.www * r3.xyz;
    r3 = float4(_1016.x, _1016.y, _1016.z, r3.w);
    float3 _1026 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1038 = o2;
    _1038.y = mad(_1026.z, r3.xyz.z, mad(_1026.y, r3.xyz.y, _1026.x * r3.xyz.x));
    o2 = _1038;
    float3 _1047 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1059 = o2;
    _1059.z = mad(_1047.z, r1.xyz.z, mad(_1047.y, r1.xyz.y, _1047.x * r1.xyz.x));
    o2 = _1059;
    float3 _1068 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1080 = o2;
    _1080.x = mad(_1068.z, r2.xyz.z, mad(_1068.y, r2.xyz.y, _1068.x * r2.xyz.x));
    o2 = _1080;
    float4 _1095 = r0;
    _1095.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1095;
    float4 _1100 = r0;
    _1100.x = rsqrt(r0.x);
    r0 = _1100;
    float3 _1106 = r0.xxx * r0.yzw;
    r0 = float4(_1106.x, _1106.y, _1106.z, r0.w);
    float3 _1122 = o3;
    _1122.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1122;
    float3 _1137 = o3;
    _1137.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1137;
    float3 _1152 = o3;
    _1152.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1152;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1160 = asfloat(v1);
    shader_in[1] = float4(_1160.x, _1160.y, shader_in[1].z, shader_in[1].w);
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
