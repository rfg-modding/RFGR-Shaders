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
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _56 = r0;
    _56.x = shader_in[5].y + shader_in[5].x;
    r0 = _56;
    float4 _64 = r0;
    _64.x = r0.x + shader_in[5].z;
    r0 = _64;
    float4 _72 = r0;
    _72.x = r0.x + shader_in[5].w;
    r0 = _72;
    float4 _79 = r0;
    _79.x = asfloat(1065353216u) / r0.x;
    r0 = _79;
    float3 _94 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_94.x, _94.y, _94.z, r1.w);
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _113 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_113].x, cb4_m[_113].y, cb4_m[_113].z, cb4_m[_113].w);
    int _136 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_136].x, cb4_m[_136].y, cb4_m[_136].z, cb4_m[_136].w)) + r3;
    int _155 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_155].x, cb4_m[_155].y, cb4_m[_155].z, cb4_m[_155].w)) + r3;
    int _174 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_174].x, cb4_m[_174].y, cb4_m[_174].z, cb4_m[_174].w)) + r3;
    float4 _189 = r1;
    _189.w = asfloat(1065353216u);
    r1 = _189;
    float4 _205 = r3;
    _205.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r3 = _205;
    int _214 = asint(r2.y) + 1;
    r4 = shader_in[5].yyyy * float4(cb4_m[_214].x, cb4_m[_214].y, cb4_m[_214].z, cb4_m[_214].w);
    int _233 = asint(r2.x) + 1;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_233].x, cb4_m[_233].y, cb4_m[_233].z, cb4_m[_233].w)) + r4;
    int _253 = asint(r2.z) + 1;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_253].x, cb4_m[_253].y, cb4_m[_253].z, cb4_m[_253].w)) + r4;
    int _273 = asint(r2.w) + 1;
    r4 = (shader_in[5].wwww * float4(cb4_m[_273].x, cb4_m[_273].y, cb4_m[_273].z, cb4_m[_273].w)) + r4;
    float4 _301 = r3;
    _301.y = mad(r4.w, r1.w, mad(r4.z, r1.z, mad(r4.y, r1.y, r4.x * r1.x)));
    r3 = _301;
    int _310 = asint(r2.y) + 2;
    r4 = shader_in[5].yyyy * float4(cb4_m[_310].x, cb4_m[_310].y, cb4_m[_310].z, cb4_m[_310].w);
    int _328 = asint(r2.x) + 2;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_328].x, cb4_m[_328].y, cb4_m[_328].z, cb4_m[_328].w)) + r4;
    int _348 = asint(r2.z) + 2;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_348].x, cb4_m[_348].y, cb4_m[_348].z, cb4_m[_348].w)) + r4;
    int _368 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_368].x, cb4_m[_368].y, cb4_m[_368].z, cb4_m[_368].w)) + r4;
    float4 _396 = r3;
    _396.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r3 = _396;
    float3 _402 = r0.xxx * r3.xyz;
    r0 = float4(_402.x, _402.y, _402.z, r0.w);
    float4 _406 = r0;
    _406.w = asfloat(1065353216u);
    r0 = _406;
    float4 _417 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _431 = r1;
    _431.x = mad(_417.w, r0.w, mad(_417.z, r0.z, mad(_417.y, r0.y, _417.x * r0.x)));
    r1 = _431;
    float4 _442 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _456 = r1;
    _456.y = mad(_442.w, r0.w, mad(_442.z, r0.z, mad(_442.y, r0.y, _442.x * r0.x)));
    r1 = _456;
    float4 _467 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _481 = r1;
    _481.z = mad(_467.w, r0.w, mad(_467.z, r0.z, mad(_467.y, r0.y, _467.x * r0.x)));
    r1 = _481;
    float4 _484 = r1;
    _484.w = asfloat(1065353216u);
    r1 = _484;
    float4 _495 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _509 = o0;
    _509.x = mad(_495.w, r1.w, mad(_495.z, r1.z, mad(_495.y, r1.y, _495.x * r1.x)));
    o0 = _509;
    float4 _520 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _534 = o0;
    _534.y = mad(_520.w, r1.w, mad(_520.z, r1.z, mad(_520.y, r1.y, _520.x * r1.x)));
    o0 = _534;
    float4 _545 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _559 = o0;
    _559.z = mad(_545.w, r1.w, mad(_545.z, r1.z, mad(_545.y, r1.y, _545.x * r1.x)));
    o0 = _559;
    float4 _570 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _584 = o0;
    _584.w = mad(_570.w, r1.w, mad(_570.z, r1.z, mad(_570.y, r1.y, _570.x * r1.x)));
    o0 = _584;
    float3 _598 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_598.x, _598.y, _598.z, r0.w);
    float4 _608 = r0;
    _608.w = r0.y * cb0_m[13].x;
    r0 = _608;
    float4 _615 = r1;
    _615.x = r0.w * asfloat(3216550459u);
    r1 = _615;
    float4 _620 = r1;
    _620.x = exp2(r1.x);
    r1 = _620;
    float4 _627 = r1;
    _627.x = (-r1.x) + asfloat(1065353216u);
    r1 = _627;
    float4 _634 = r0;
    _634.w = r1.x / r0.w;
    r0 = _634;
    float4 _646 = r1;
    _646.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _646;
    float4 _661 = r0;
    _661.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _661;
    float4 _666 = r0;
    _666.x = sqrt(r0.x);
    r0 = _666;
    float4 _674 = r0;
    _674.x = r0.x * cb0_m[13].y;
    r0 = _674;
    float4 _684 = r0;
    _684.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _684;
    float4 _696 = r0;
    _696.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _696;
    float4 _702 = r0;
    _702.x = exp2(-r0.x);
    r0 = _702;
    float4 _708 = r0;
    _708.x = min(r0.x, asfloat(1065353216u));
    r0 = _708;
    float3 _715 = o1;
    _715.z = (-r0.x) + asfloat(1065353216u);
    o1 = _715;
    float2 _722 = float2(asint(shader_in[1].xy));
    r0 = float4(_722.x, _722.y, r0.z, r0.w);
    float2 _731 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float3(_731.x, _731.y, o1.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _740 = asfloat(v1);
    shader_in[1] = float4(_740.x, _740.y, shader_in[1].z, shader_in[1].w);
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
