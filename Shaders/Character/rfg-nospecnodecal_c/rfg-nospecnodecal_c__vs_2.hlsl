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
    _65.x = shader_in[4].y + shader_in[4].x;
    r0 = _65;
    float4 _73 = r0;
    _73.x = r0.x + shader_in[4].z;
    r0 = _73;
    float4 _81 = r0;
    _81.x = r0.x + shader_in[4].w;
    r0 = _81;
    float4 _88 = r0;
    _88.x = asfloat(1065353216u) / r0.x;
    r0 = _88;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _98 = r1;
    _98.w = asfloat(1065353216u);
    r1 = _98;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _115 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_115].x, cb4_m[_115].y, cb4_m[_115].z, cb4_m[_115].w);
    int _137 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_137].x, cb4_m[_137].y, cb4_m[_137].z, cb4_m[_137].w)) + r3;
    int _156 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_156].x, cb4_m[_156].y, cb4_m[_156].z, cb4_m[_156].w)) + r3;
    int _175 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_175].x, cb4_m[_175].y, cb4_m[_175].z, cb4_m[_175].w)) + r3;
    float4 _204 = r4;
    _204.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _204;
    int _213 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_213].x, cb4_m[_213].y, cb4_m[_213].z, cb4_m[_213].w);
    int _232 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_232].x, cb4_m[_232].y, cb4_m[_232].z, cb4_m[_232].w)) + r5;
    int _252 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_252].x, cb4_m[_252].y, cb4_m[_252].z, cb4_m[_252].w)) + r5;
    int _272 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_272].x, cb4_m[_272].y, cb4_m[_272].z, cb4_m[_272].w)) + r5;
    float4 _300 = r4;
    _300.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _300;
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
    float2 _591 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _591.x, _591.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _612 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _612.x, _612.y, _612.z);
    float4 _628 = r1;
    _628.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _628;
    float4 _643 = r1;
    _643.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _643;
    float4 _658 = r1;
    _658.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _658;
    float3 _664 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _664.x, _664.y, _664.z);
    float4 _680 = r1;
    _680.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _680;
    float4 _685 = r1;
    _685.x = rsqrt(r1.x);
    r1 = _685;
    float3 _691 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _691.x, _691.y, _691.z);
    float3 _701 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _713 = r1;
    _713.x = mad(_701.z, r0.yzw.z, mad(_701.y, r0.yzw.y, _701.x * r0.yzw.x));
    r1 = _713;
    float3 _722 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _734 = r1;
    _734.y = mad(_722.z, r0.yzw.z, mad(_722.y, r0.yzw.y, _722.x * r0.yzw.x));
    r1 = _734;
    float3 _743 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _755 = r1;
    _755.z = mad(_743.z, r0.yzw.z, mad(_743.y, r0.yzw.y, _743.x * r0.yzw.x));
    r1 = _755;
    float4 _770 = r0;
    _770.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _770;
    float4 _775 = r0;
    _775.y = rsqrt(r0.y);
    r0 = _775;
    float3 _781 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _781.x, _781.y, _781.z);
    r1 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _805 = r3;
    _805.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _805;
    float4 _820 = r3;
    _820.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _820;
    float4 _835 = r3;
    _835.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _835;
    float3 _841 = r0.xxx * r3.xyz;
    r1 = float4(_841.x, _841.y, _841.z, r1.w);
    float4 _857 = r0;
    _857.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _857;
    float4 _862 = r0;
    _862.x = rsqrt(r0.x);
    r0 = _862;
    float3 _868 = r0.xxx * r1.xyz;
    r1 = float4(_868.x, _868.y, _868.z, r1.w);
    float3 _878 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _890 = r2;
    _890.x = mad(_878.z, r1.xyz.z, mad(_878.y, r1.xyz.y, _878.x * r1.xyz.x));
    r2 = _890;
    float3 _899 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _911 = r2;
    _911.y = mad(_899.z, r1.xyz.z, mad(_899.y, r1.xyz.y, _899.x * r1.xyz.x));
    r2 = _911;
    float3 _920 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _932 = r2;
    _932.z = mad(_920.z, r1.xyz.z, mad(_920.y, r1.xyz.y, _920.x * r1.xyz.x));
    r2 = _932;
    float4 _947 = r0;
    _947.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _947;
    float4 _952 = r0;
    _952.x = rsqrt(r0.x);
    r0 = _952;
    float3 _958 = r0.xxx * r2.xyz;
    r1 = float4(_958.x, _958.y, _958.z, r1.w);
    float3 _965 = r0.wyz * r1.yzx;
    r2 = float4(_965.x, _965.y, _965.z, r2.w);
    float3 _976 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_976.x, _976.y, _976.z, r2.w);
    float3 _986 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _998 = o2;
    _998.z = mad(_986.z, r0.yzw.z, mad(_986.y, r0.yzw.y, _986.x * r0.yzw.x));
    o2 = _998;
    float3 _1007 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1019 = o2;
    _1019.x = mad(_1007.z, r1.xyz.z, mad(_1007.y, r1.xyz.y, _1007.x * r1.xyz.x));
    o2 = _1019;
    float3 _1025 = r1.www * r2.xyz;
    r0 = float4(_1025.x, _1025.y, _1025.z, r0.w);
    float3 _1035 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1047 = o2;
    _1047.y = mad(_1035.z, r0.xyz.z, mad(_1035.y, r0.xyz.y, _1035.x * r0.xyz.x));
    o2 = _1047;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1055 = asfloat(v1);
    shader_in[1] = float4(_1055.x, _1055.y, shader_in[1].z, shader_in[1].w);
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
