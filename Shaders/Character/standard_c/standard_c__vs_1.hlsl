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
    float3 _597 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _597.x, _597.y, _597.z);
    float4 _613 = r1;
    _613.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _613;
    float4 _628 = r1;
    _628.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _628;
    float4 _643 = r1;
    _643.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _643;
    float3 _649 = r0.xxx * r1.xyz;
    r0 = float4(_649.x, _649.y, _649.z, r0.w);
    float4 _665 = r0;
    _665.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _665;
    float4 _670 = r0;
    _670.w = rsqrt(r0.w);
    r0 = _670;
    float3 _676 = r0.www * r0.xyz;
    r0 = float4(_676.x, _676.y, _676.z, r0.w);
    float3 _686 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _698 = r1;
    _698.x = mad(_686.z, r0.xyz.z, mad(_686.y, r0.xyz.y, _686.x * r0.xyz.x));
    r1 = _698;
    float3 _707 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _719 = r1;
    _719.y = mad(_707.z, r0.xyz.z, mad(_707.y, r0.xyz.y, _707.x * r0.xyz.x));
    r1 = _719;
    float3 _728 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _740 = r1;
    _740.z = mad(_728.z, r0.xyz.z, mad(_728.y, r0.xyz.y, _728.x * r0.xyz.x));
    r1 = _740;
    float4 _755 = r0;
    _755.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _755;
    float4 _760 = r0;
    _760.x = rsqrt(r0.x);
    r0 = _760;
    o1 = r0.xxx * r1.xyz;
    float2 _771 = float2(asint(shader_in[1].xy));
    r0 = float4(_771.x, _771.y, r0.z, r0.w);
    o2 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _795 = asfloat(v1);
    shader_in[1] = float4(_795.x, _795.y, shader_in[1].z, shader_in[1].w);
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
