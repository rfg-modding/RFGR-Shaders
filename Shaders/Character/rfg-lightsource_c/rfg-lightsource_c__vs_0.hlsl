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
static float4 o2;
static float4 o3;
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
    float4 _65 = r0;
    _65.x = shader_in[3].y + shader_in[3].x;
    r0 = _65;
    float4 _73 = r0;
    _73.x = r0.x + shader_in[3].z;
    r0 = _73;
    float4 _81 = r0;
    _81.x = r0.x + shader_in[3].w;
    r0 = _81;
    float4 _88 = r0;
    _88.x = asfloat(1065353216u) / r0.x;
    r0 = _88;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _98 = r1;
    _98.w = asfloat(1065353216u);
    r1 = _98;
    r2 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _115 = asint(r2.y);
    r3 = shader_in[3].yyyy * float4(cb4_m[_115].x, cb4_m[_115].y, cb4_m[_115].z, cb4_m[_115].w);
    int _137 = asint(r2.x);
    r3 = (shader_in[3].xxxx * float4(cb4_m[_137].x, cb4_m[_137].y, cb4_m[_137].z, cb4_m[_137].w)) + r3;
    int _156 = asint(r2.z);
    r3 = (shader_in[3].zzzz * float4(cb4_m[_156].x, cb4_m[_156].y, cb4_m[_156].z, cb4_m[_156].w)) + r3;
    int _175 = asint(r2.w);
    r3 = (shader_in[3].wwww * float4(cb4_m[_175].x, cb4_m[_175].y, cb4_m[_175].z, cb4_m[_175].w)) + r3;
    float4 _204 = r4;
    _204.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _204;
    int _213 = asint(r2.y) + 1;
    r5 = shader_in[3].yyyy * float4(cb4_m[_213].x, cb4_m[_213].y, cb4_m[_213].z, cb4_m[_213].w);
    int _232 = asint(r2.x) + 1;
    r5 = (shader_in[3].xxxx * float4(cb4_m[_232].x, cb4_m[_232].y, cb4_m[_232].z, cb4_m[_232].w)) + r5;
    int _252 = asint(r2.z) + 1;
    r5 = (shader_in[3].zzzz * float4(cb4_m[_252].x, cb4_m[_252].y, cb4_m[_252].z, cb4_m[_252].w)) + r5;
    int _272 = asint(r2.w) + 1;
    r5 = (shader_in[3].wwww * float4(cb4_m[_272].x, cb4_m[_272].y, cb4_m[_272].z, cb4_m[_272].w)) + r5;
    float4 _300 = r4;
    _300.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _300;
    int _309 = asint(r2.y) + 2;
    r6 = shader_in[3].yyyy * float4(cb4_m[_309].x, cb4_m[_309].y, cb4_m[_309].z, cb4_m[_309].w);
    int _328 = asint(r2.x) + 2;
    r6 = (shader_in[3].xxxx * float4(cb4_m[_328].x, cb4_m[_328].y, cb4_m[_328].z, cb4_m[_328].w)) + r6;
    int _348 = asint(r2.z) + 2;
    r6 = (shader_in[3].zzzz * float4(cb4_m[_348].x, cb4_m[_348].y, cb4_m[_348].z, cb4_m[_348].w)) + r6;
    int _368 = asint(r2.w) + 2;
    r2 = (shader_in[3].wwww * float4(cb4_m[_368].x, cb4_m[_368].y, cb4_m[_368].z, cb4_m[_368].w)) + r6;
    float4 _396 = r4;
    _396.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _396;
    float3 _402 = r0.xxx * r4.xyz;
    r1 = float4(_402.x, _402.y, _402.z, r1.w);
    float4 _406 = r1;
    _406.w = asfloat(1065353216u);
    r1 = _406;
    float4 _417 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _431 = r4;
    _431.x = mad(_417.w, r1.w, mad(_417.z, r1.z, mad(_417.y, r1.y, _417.x * r1.x)));
    r4 = _431;
    float4 _442 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _456 = r4;
    _456.y = mad(_442.w, r1.w, mad(_442.z, r1.z, mad(_442.y, r1.y, _442.x * r1.x)));
    r4 = _456;
    float4 _467 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _481 = r4;
    _481.z = mad(_467.w, r1.w, mad(_467.z, r1.z, mad(_467.y, r1.y, _467.x * r1.x)));
    r4 = _481;
    float4 _484 = r4;
    _484.w = asfloat(1065353216u);
    r4 = _484;
    float4 _495 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _509 = o0;
    _509.x = mad(_495.w, r4.w, mad(_495.z, r4.z, mad(_495.y, r4.y, _495.x * r4.x)));
    o0 = _509;
    float4 _520 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _534 = o0;
    _534.y = mad(_520.w, r4.w, mad(_520.z, r4.z, mad(_520.y, r4.y, _520.x * r4.x)));
    o0 = _534;
    float4 _545 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _559 = o0;
    _559.z = mad(_545.w, r4.w, mad(_545.z, r4.z, mad(_545.y, r4.y, _545.x * r4.x)));
    o0 = _559;
    float4 _570 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _584 = o0;
    _584.w = mad(_570.w, r4.w, mad(_570.z, r4.z, mad(_570.y, r4.y, _570.x * r4.x)));
    o0 = _584;
    float2 _590 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _590.x, _590.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _611 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _611.x, _611.y, _611.z);
    float4 _627 = r1;
    _627.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _627;
    float4 _642 = r1;
    _642.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _642;
    float4 _657 = r1;
    _657.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _657;
    float3 _663 = r0.xxx * r1.xyz;
    r0 = float4(_663.x, _663.y, _663.z, r0.w);
    float4 _679 = r0;
    _679.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _679;
    float4 _684 = r0;
    _684.w = rsqrt(r0.w);
    r0 = _684;
    float3 _690 = r0.www * r0.xyz;
    r0 = float4(_690.x, _690.y, _690.z, r0.w);
    float3 _700 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _712 = r1;
    _712.x = mad(_700.z, r0.xyz.z, mad(_700.y, r0.xyz.y, _700.x * r0.xyz.x));
    r1 = _712;
    float3 _721 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _733 = r1;
    _733.y = mad(_721.z, r0.xyz.z, mad(_721.y, r0.xyz.y, _721.x * r0.xyz.x));
    r1 = _733;
    float3 _742 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _754 = r1;
    _754.z = mad(_742.z, r0.xyz.z, mad(_742.y, r0.xyz.y, _742.x * r0.xyz.x));
    r1 = _754;
    float4 _769 = r0;
    _769.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _769;
    float4 _774 = r0;
    _774.x = rsqrt(r0.x);
    r0 = _774;
    float3 _780 = r0.xxx * r1.xyz;
    r0 = float4(_780.x, _780.y, _780.z, r0.w);
    o2 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o2.w);
    float4 _797 = o4;
    _797.w = clamp((r0.y * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o4 = _797;
    float4 _800 = o2;
    _800.w = asfloat(0u);
    o2 = _800;
    float3 _814 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_814.x, _814.y, _814.z, r0.w);
    float3 _828 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_828.x, _828.y, _828.z, r1.w);
    float4 _838 = r0;
    _838.w = r0.y * cb0_m[13].x;
    r0 = _838;
    float4 _845 = r1;
    _845.w = r0.w * asfloat(3216550459u);
    r1 = _845;
    float4 _850 = r1;
    _850.w = exp2(r1.w);
    r1 = _850;
    float4 _857 = r1;
    _857.w = (-r1.w) + asfloat(1065353216u);
    r1 = _857;
    float4 _864 = r0;
    _864.w = r1.w / r0.w;
    r0 = _864;
    float4 _876 = r1;
    _876.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _876;
    float4 _891 = r0;
    _891.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _891;
    float4 _896 = r0;
    _896.x = sqrt(r0.x);
    r0 = _896;
    float4 _904 = r0;
    _904.x = r0.x * cb0_m[13].y;
    r0 = _904;
    float4 _914 = r0;
    _914.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _914;
    float4 _926 = r0;
    _926.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _926;
    float4 _932 = r0;
    _932.x = exp2(-r0.x);
    r0 = _932;
    float4 _938 = r0;
    _938.x = min(r0.x, asfloat(1065353216u));
    r0 = _938;
    float4 _945 = o3;
    _945.w = (-r0.x) + asfloat(1065353216u);
    o3 = _945;
    float4 _960 = r0;
    _960.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _960;
    float4 _965 = r0;
    _965.x = rsqrt(r0.x);
    r0 = _965;
    float3 _971 = r0.xxx * r1.xyz;
    o3 = float4(_971.x, _971.y, _971.z, o3.w);
    float3 _981 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o4 = float4(_981.x, _981.y, _981.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _990 = asfloat(v1);
    shader_in[1] = float4(_990.x, _990.y, shader_in[1].z, shader_in[1].w);
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
