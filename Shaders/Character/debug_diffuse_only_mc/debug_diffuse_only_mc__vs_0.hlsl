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
static float4 v7;
static float4 v8;
static int4 v9;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
    float4 v9 : TEXCOORD9;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[10];
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
    float4 _61 = r0;
    _61.x = shader_in[8].y + shader_in[8].x;
    r0 = _61;
    float4 _69 = r0;
    _69.x = r0.x + shader_in[8].z;
    r0 = _69;
    float4 _77 = r0;
    _77.x = r0.x + shader_in[8].w;
    r0 = _77;
    float4 _84 = r0;
    _84.x = asfloat(1065353216u) / r0.x;
    r0 = _84;
    float3 _99 = (shader_in[6].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_99.x, _99.y, _99.z, r1.w);
    float4 _104 = r1;
    _104.w = asfloat(1065353216u);
    r1 = _104;
    r2 = asfloat(asint(shader_in[9]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _121 = asint(r2.y);
    r3 = shader_in[8].yyyy * float4(cb4_m[_121].x, cb4_m[_121].y, cb4_m[_121].z, cb4_m[_121].w);
    int _143 = asint(r2.x);
    r3 = (shader_in[8].xxxx * float4(cb4_m[_143].x, cb4_m[_143].y, cb4_m[_143].z, cb4_m[_143].w)) + r3;
    int _162 = asint(r2.z);
    r3 = (shader_in[8].zzzz * float4(cb4_m[_162].x, cb4_m[_162].y, cb4_m[_162].z, cb4_m[_162].w)) + r3;
    int _181 = asint(r2.w);
    r3 = (shader_in[8].wwww * float4(cb4_m[_181].x, cb4_m[_181].y, cb4_m[_181].z, cb4_m[_181].w)) + r3;
    float4 _210 = r4;
    _210.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _210;
    int _219 = asint(r2.y) + 1;
    r5 = shader_in[8].yyyy * float4(cb4_m[_219].x, cb4_m[_219].y, cb4_m[_219].z, cb4_m[_219].w);
    int _238 = asint(r2.x) + 1;
    r5 = (shader_in[8].xxxx * float4(cb4_m[_238].x, cb4_m[_238].y, cb4_m[_238].z, cb4_m[_238].w)) + r5;
    int _258 = asint(r2.z) + 1;
    r5 = (shader_in[8].zzzz * float4(cb4_m[_258].x, cb4_m[_258].y, cb4_m[_258].z, cb4_m[_258].w)) + r5;
    int _278 = asint(r2.w) + 1;
    r5 = (shader_in[8].wwww * float4(cb4_m[_278].x, cb4_m[_278].y, cb4_m[_278].z, cb4_m[_278].w)) + r5;
    float4 _306 = r4;
    _306.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _306;
    int _315 = asint(r2.y) + 2;
    r6 = shader_in[8].yyyy * float4(cb4_m[_315].x, cb4_m[_315].y, cb4_m[_315].z, cb4_m[_315].w);
    int _334 = asint(r2.x) + 2;
    r6 = (shader_in[8].xxxx * float4(cb4_m[_334].x, cb4_m[_334].y, cb4_m[_334].z, cb4_m[_334].w)) + r6;
    int _354 = asint(r2.z) + 2;
    r6 = (shader_in[8].zzzz * float4(cb4_m[_354].x, cb4_m[_354].y, cb4_m[_354].z, cb4_m[_354].w)) + r6;
    int _374 = asint(r2.w) + 2;
    r2 = (shader_in[8].wwww * float4(cb4_m[_374].x, cb4_m[_374].y, cb4_m[_374].z, cb4_m[_374].w)) + r6;
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
    float3 _604 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _604.x, _604.y, _604.z);
    float3 _614 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_614.x, _614.y, _614.z, r1.w);
    float3 _623 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _623.x, _623.y, _623.z);
    float4 _639 = r1;
    _639.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _639;
    float4 _644 = r1;
    _644.x = rsqrt(r1.x);
    r1 = _644;
    float3 _650 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _650.x, _650.y, _650.z);
    float4 _666 = r1;
    _666.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _666;
    float4 _681 = r1;
    _681.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _681;
    float4 _696 = r1;
    _696.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _696;
    float3 _702 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _702.x, _702.y, _702.z);
    float4 _718 = r1;
    _718.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _718;
    float4 _723 = r1;
    _723.x = rsqrt(r1.x);
    r1 = _723;
    float3 _729 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _729.x, _729.y, _729.z);
    float3 _739 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _751 = r1;
    _751.x = mad(_739.z, r0.yzw.z, mad(_739.y, r0.yzw.y, _739.x * r0.yzw.x));
    r1 = _751;
    float3 _760 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _772 = r1;
    _772.y = mad(_760.z, r0.yzw.z, mad(_760.y, r0.yzw.y, _760.x * r0.yzw.x));
    r1 = _772;
    float3 _781 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _793 = r1;
    _793.z = mad(_781.z, r0.yzw.z, mad(_781.y, r0.yzw.y, _781.x * r0.yzw.x));
    r1 = _793;
    float4 _808 = r0;
    _808.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _808;
    float4 _813 = r0;
    _813.y = rsqrt(r0.y);
    r0 = _813;
    float3 _819 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _819.x, _819.y, _819.z);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _844 = r3;
    _844.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _844;
    float4 _859 = r3;
    _859.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _859;
    float4 _874 = r3;
    _874.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _874;
    float3 _880 = r0.xxx * r3.xyz;
    r1 = float4(_880.x, _880.y, _880.z, r1.w);
    float4 _896 = r0;
    _896.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _896;
    float4 _901 = r0;
    _901.x = rsqrt(r0.x);
    r0 = _901;
    float3 _907 = r0.xxx * r1.xyz;
    r1 = float4(_907.x, _907.y, _907.z, r1.w);
    float3 _917 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _929 = r2;
    _929.x = mad(_917.z, r1.xyz.z, mad(_917.y, r1.xyz.y, _917.x * r1.xyz.x));
    r2 = _929;
    float3 _938 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _950 = r2;
    _950.y = mad(_938.z, r1.xyz.z, mad(_938.y, r1.xyz.y, _938.x * r1.xyz.x));
    r2 = _950;
    float3 _959 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _971 = r2;
    _971.z = mad(_959.z, r1.xyz.z, mad(_959.y, r1.xyz.y, _959.x * r1.xyz.x));
    r2 = _971;
    float4 _986 = r0;
    _986.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _986;
    float4 _991 = r0;
    _991.x = rsqrt(r0.x);
    r0 = _991;
    float3 _997 = r0.xxx * r2.xyz;
    r1 = float4(_997.x, _997.y, _997.z, r1.w);
    float3 _1004 = r0.wyz * r1.yzx;
    r2 = float4(_1004.x, _1004.y, _1004.z, r2.w);
    float3 _1015 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1015.x, _1015.y, _1015.z, r2.w);
    float3 _1025 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1037 = o1;
    _1037.z = mad(_1025.z, r0.yzw.z, mad(_1025.y, r0.yzw.y, _1025.x * r0.yzw.x));
    o1 = _1037;
    float3 _1046 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1058 = o1;
    _1058.x = mad(_1046.z, r1.xyz.z, mad(_1046.y, r1.xyz.y, _1046.x * r1.xyz.x));
    o1 = _1058;
    float3 _1064 = r1.www * r2.xyz;
    r0 = float4(_1064.x, _1064.y, _1064.z, r0.w);
    float3 _1074 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1086 = o1;
    _1086.y = mad(_1074.z, r0.xyz.z, mad(_1074.y, r0.xyz.y, _1074.x * r0.xyz.x));
    o1 = _1086;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
    shader_in[9] = asfloat(v9);
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
    v8 = stage_input.v8;
    v9 = stage_input.v9;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
