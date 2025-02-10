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
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static int4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
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
    float4 _55 = r0;
    _55.x = shader_in[4].y + shader_in[4].x;
    r0 = _55;
    float4 _63 = r0;
    _63.x = r0.x + shader_in[4].z;
    r0 = _63;
    float4 _71 = r0;
    _71.x = r0.x + shader_in[4].w;
    r0 = _71;
    float4 _78 = r0;
    _78.x = asfloat(1065353216u) / r0.x;
    r0 = _78;
    float3 _93 = (shader_in[2].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_93.x, _93.y, _93.z, r1.w);
    float4 _98 = r1;
    _98.w = asfloat(1065353216u);
    r1 = _98;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _115 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_115].x, cb4_m[_115].y, cb4_m[_115].z, cb4_m[_115].w);
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
    int _309 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_309].x, cb4_m[_309].y, cb4_m[_309].z, cb4_m[_309].w);
    int _328 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_328].x, cb4_m[_328].y, cb4_m[_328].z, cb4_m[_328].w)) + r6;
    int _348 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_348].x, cb4_m[_348].y, cb4_m[_348].z, cb4_m[_348].w)) + r6;
    int _368 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_368].x, cb4_m[_368].y, cb4_m[_368].z, cb4_m[_368].w)) + r6;
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
    float4 _571 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _585 = o0;
    _585.w = mad(_571.w, r4.w, mad(_571.z, r4.z, mad(_571.y, r4.y, _571.x * r4.x)));
    o0 = _585;
    float3 _597 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _597.x, _597.y, _597.z);
    float3 _606 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_606.x, _606.y, _606.z, r1.w);
    float3 _615 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _615.x, _615.y, _615.z);
    float4 _631 = r1;
    _631.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _631;
    float4 _636 = r1;
    _636.x = rsqrt(r1.x);
    r1 = _636;
    float3 _642 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _642.x, _642.y, _642.z);
    float4 _658 = r1;
    _658.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _658;
    float4 _673 = r1;
    _673.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _673;
    float4 _688 = r1;
    _688.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _688;
    float3 _694 = r0.xxx * r1.xyz;
    r0 = float4(_694.x, _694.y, _694.z, r0.w);
    float4 _710 = r0;
    _710.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _710;
    float4 _715 = r0;
    _715.w = rsqrt(r0.w);
    r0 = _715;
    float3 _721 = r0.www * r0.xyz;
    r0 = float4(_721.x, _721.y, _721.z, r0.w);
    float3 _731 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _743 = r1;
    _743.x = mad(_731.z, r0.xyz.z, mad(_731.y, r0.xyz.y, _731.x * r0.xyz.x));
    r1 = _743;
    float3 _752 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _764 = r1;
    _764.y = mad(_752.z, r0.xyz.z, mad(_752.y, r0.xyz.y, _752.x * r0.xyz.x));
    r1 = _764;
    float3 _773 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _785 = r1;
    _785.z = mad(_773.z, r0.xyz.z, mad(_773.y, r0.xyz.y, _773.x * r0.xyz.x));
    r1 = _785;
    float4 _800 = r0;
    _800.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _800;
    float4 _805 = r0;
    _805.x = rsqrt(r0.x);
    r0 = _805;
    float3 _811 = r0.xxx * r1.xyz;
    r0 = float4(_811.x, _811.y, _811.z, r0.w);
    float3 _826 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_826.x, _826.y, _826.z, r1.w);
    float3 _840 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r2 = float4(_840.x, _840.y, _840.z, r2.w);
    float4 _856 = r0;
    _856.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _856;
    float4 _861 = r0;
    _861.w = sqrt(r0.w);
    r0 = _861;
    float4 _871 = r0;
    _871.w = r0.w + (-cb0_m[13].x);
    r0 = _871;
    float4 _882 = r0;
    _882.w = clamp(r0.w / cb0_m[13].y, 0.0f, 1.0f);
    r0 = _882;
    float3 _889 = o1;
    _889.z = (-r0.w) + asfloat(1065353216u);
    o1 = _889;
    float4 _904 = r0;
    _904.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _904;
    float4 _909 = r0;
    _909.w = rsqrt(r0.w);
    r0 = _909;
    float3 _915 = r0.www * r1.xyz;
    r1 = float4(_915.x, _915.y, _915.z, r1.w);
    float4 _931 = r0;
    _931.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _931;
    float3 _936 = o1;
    _936.x = abs(r0.x);
    o1 = _936;
    float3 _940 = o1;
    _940.y = asfloat(1056964608u);
    o1 = _940;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
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
