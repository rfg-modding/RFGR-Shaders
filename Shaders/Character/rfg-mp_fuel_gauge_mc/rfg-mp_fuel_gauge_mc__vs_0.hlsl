cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
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
static float4 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _62 = r0;
    _62.x = shader_in[5].y + shader_in[5].x;
    r0 = _62;
    float4 _70 = r0;
    _70.x = r0.x + shader_in[5].z;
    r0 = _70;
    float4 _78 = r0;
    _78.x = r0.x + shader_in[5].w;
    r0 = _78;
    float4 _85 = r0;
    _85.x = asfloat(1065353216u) / r0.x;
    r0 = _85;
    float3 _100 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_100.x, _100.y, _100.z, r1.w);
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _120 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_120].x, cb4_m[_120].y, cb4_m[_120].z, cb4_m[_120].w);
    int _142 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_142].x, cb4_m[_142].y, cb4_m[_142].z, cb4_m[_142].w)) + r3;
    int _161 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_161].x, cb4_m[_161].y, cb4_m[_161].z, cb4_m[_161].w)) + r3;
    int _180 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_180].x, cb4_m[_180].y, cb4_m[_180].z, cb4_m[_180].w)) + r3;
    float4 _195 = r1;
    _195.w = asfloat(1065353216u);
    r1 = _195;
    float4 _211 = r3;
    _211.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r3 = _211;
    int _220 = asint(r2.y) + 1;
    r4 = shader_in[5].yyyy * float4(cb4_m[_220].x, cb4_m[_220].y, cb4_m[_220].z, cb4_m[_220].w);
    int _239 = asint(r2.x) + 1;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_239].x, cb4_m[_239].y, cb4_m[_239].z, cb4_m[_239].w)) + r4;
    int _259 = asint(r2.z) + 1;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_259].x, cb4_m[_259].y, cb4_m[_259].z, cb4_m[_259].w)) + r4;
    int _279 = asint(r2.w) + 1;
    r4 = (shader_in[5].wwww * float4(cb4_m[_279].x, cb4_m[_279].y, cb4_m[_279].z, cb4_m[_279].w)) + r4;
    float4 _307 = r3;
    _307.y = mad(r4.w, r1.w, mad(r4.z, r1.z, mad(r4.y, r1.y, r4.x * r1.x)));
    r3 = _307;
    int _316 = asint(r2.y) + 2;
    r4 = shader_in[5].yyyy * float4(cb4_m[_316].x, cb4_m[_316].y, cb4_m[_316].z, cb4_m[_316].w);
    int _334 = asint(r2.x) + 2;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_334].x, cb4_m[_334].y, cb4_m[_334].z, cb4_m[_334].w)) + r4;
    int _354 = asint(r2.z) + 2;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_354].x, cb4_m[_354].y, cb4_m[_354].z, cb4_m[_354].w)) + r4;
    int _374 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_374].x, cb4_m[_374].y, cb4_m[_374].z, cb4_m[_374].w)) + r4;
    float4 _402 = r3;
    _402.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r3 = _402;
    float3 _408 = r0.xxx * r3.xyz;
    r0 = float4(_408.x, _408.y, _408.z, r0.w);
    float4 _412 = r0;
    _412.w = asfloat(1065353216u);
    r0 = _412;
    float4 _423 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _437 = r1;
    _437.x = mad(_423.w, r0.w, mad(_423.z, r0.z, mad(_423.y, r0.y, _423.x * r0.x)));
    r1 = _437;
    float4 _448 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _462 = r1;
    _462.y = mad(_448.w, r0.w, mad(_448.z, r0.z, mad(_448.y, r0.y, _448.x * r0.x)));
    r1 = _462;
    float4 _473 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _487 = r1;
    _487.z = mad(_473.w, r0.w, mad(_473.z, r0.z, mad(_473.y, r0.y, _473.x * r0.x)));
    r1 = _487;
    float4 _490 = r1;
    _490.w = asfloat(1065353216u);
    r1 = _490;
    float4 _501 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _515 = o0;
    _515.x = mad(_501.w, r1.w, mad(_501.z, r1.z, mad(_501.y, r1.y, _501.x * r1.x)));
    o0 = _515;
    float4 _526 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _540 = o0;
    _540.y = mad(_526.w, r1.w, mad(_526.z, r1.z, mad(_526.y, r1.y, _526.x * r1.x)));
    o0 = _540;
    float4 _551 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _565 = o0;
    _565.z = mad(_551.w, r1.w, mad(_551.z, r1.z, mad(_551.y, r1.y, _551.x * r1.x)));
    o0 = _565;
    float4 _576 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _590 = o0;
    _590.w = mad(_576.w, r1.w, mad(_576.z, r1.z, mad(_576.y, r1.y, _576.x * r1.x)));
    o0 = _590;
    float3 _604 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_604.x, _604.y, _604.z, r0.w);
    o1 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
    float4 _624 = r0;
    _624.w = r0.y * cb0_m[13].x;
    r0 = _624;
    float4 _631 = r1;
    _631.x = r0.w * asfloat(3216550459u);
    r1 = _631;
    float4 _636 = r1;
    _636.x = exp2(r1.x);
    r1 = _636;
    float4 _643 = r1;
    _643.x = (-r1.x) + asfloat(1065353216u);
    r1 = _643;
    float4 _650 = r0;
    _650.w = r1.x / r0.w;
    r0 = _650;
    float4 _662 = r1;
    _662.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _662;
    float4 _677 = r0;
    _677.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _677;
    float4 _682 = r0;
    _682.x = sqrt(r0.x);
    r0 = _682;
    float4 _690 = r0;
    _690.x = r0.x * cb0_m[13].y;
    r0 = _690;
    float4 _700 = r0;
    _700.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _700;
    float4 _712 = r0;
    _712.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _712;
    float4 _718 = r0;
    _718.x = exp2(-r0.x);
    r0 = _718;
    float4 _724 = r0;
    _724.x = min(r0.x, asfloat(1065353216u));
    r0 = _724;
    float3 _731 = o2;
    _731.z = (-r0.x) + asfloat(1065353216u);
    o2 = _731;
    float4 _740 = r0;
    _740.x = cb6_m[3].x * cb2_m[1].x;
    r0 = _740;
    float4 _747 = r0;
    _747.x = r0.x * asfloat(1092616192u);
    r0 = _747;
    float2 _754 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, r0.y, _754.x, _754.y);
    float4 _758 = r0;
    _758.y = asfloat(0u);
    r0 = _758;
    float2 _769 = (r0.zw * asfloat(uint2(981467136u, 981467136u))) + r0.xy;
    o2 = float3(_769.x, _769.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _778 = asfloat(v1);
    shader_in[1] = float4(_778.x, _778.y, shader_in[1].z, shader_in[1].w);
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
