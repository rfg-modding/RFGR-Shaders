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
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
    float4 _67 = r0;
    _67.x = shader_in[5].y + shader_in[5].x;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[5].z;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[5].w;
    r0 = _83;
    float4 _90 = r0;
    _90.x = asfloat(1065353216u) / r0.x;
    r0 = _90;
    float3 _105 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_105.x, _105.y, _105.z, r1.w);
    float4 _110 = r1;
    _110.w = asfloat(1065353216u);
    r1 = _110;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _127 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_127].x, cb4_m[_127].y, cb4_m[_127].z, cb4_m[_127].w);
    int _149 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_149].x, cb4_m[_149].y, cb4_m[_149].z, cb4_m[_149].w)) + r3;
    int _168 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_168].x, cb4_m[_168].y, cb4_m[_168].z, cb4_m[_168].w)) + r3;
    int _187 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_187].x, cb4_m[_187].y, cb4_m[_187].z, cb4_m[_187].w)) + r3;
    float4 _216 = r4;
    _216.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _216;
    int _225 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_225].x, cb4_m[_225].y, cb4_m[_225].z, cb4_m[_225].w);
    int _244 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_244].x, cb4_m[_244].y, cb4_m[_244].z, cb4_m[_244].w)) + r5;
    int _264 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_264].x, cb4_m[_264].y, cb4_m[_264].z, cb4_m[_264].w)) + r5;
    int _284 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_284].x, cb4_m[_284].y, cb4_m[_284].z, cb4_m[_284].w)) + r5;
    float4 _312 = r4;
    _312.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _312;
    int _321 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_321].x, cb4_m[_321].y, cb4_m[_321].z, cb4_m[_321].w);
    int _340 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_340].x, cb4_m[_340].y, cb4_m[_340].z, cb4_m[_340].w)) + r6;
    int _360 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_360].x, cb4_m[_360].y, cb4_m[_360].z, cb4_m[_360].w)) + r6;
    int _380 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_380].x, cb4_m[_380].y, cb4_m[_380].z, cb4_m[_380].w)) + r6;
    float4 _408 = r4;
    _408.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _408;
    float3 _414 = r0.xxx * r4.xyz;
    r1 = float4(_414.x, _414.y, _414.z, r1.w);
    float4 _418 = r1;
    _418.w = asfloat(1065353216u);
    r1 = _418;
    float4 _429 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _443 = r4;
    _443.x = mad(_429.w, r1.w, mad(_429.z, r1.z, mad(_429.y, r1.y, _429.x * r1.x)));
    r4 = _443;
    float4 _454 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _468 = r4;
    _468.y = mad(_454.w, r1.w, mad(_454.z, r1.z, mad(_454.y, r1.y, _454.x * r1.x)));
    r4 = _468;
    float4 _479 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _493 = r4;
    _493.z = mad(_479.w, r1.w, mad(_479.z, r1.z, mad(_479.y, r1.y, _479.x * r1.x)));
    r4 = _493;
    float4 _496 = r4;
    _496.w = asfloat(1065353216u);
    r4 = _496;
    float4 _507 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _521 = o0;
    _521.x = mad(_507.w, r4.w, mad(_507.z, r4.z, mad(_507.y, r4.y, _507.x * r4.x)));
    o0 = _521;
    float4 _532 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _546 = o0;
    _546.y = mad(_532.w, r4.w, mad(_532.z, r4.z, mad(_532.y, r4.y, _532.x * r4.x)));
    o0 = _546;
    float4 _557 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _571 = o0;
    _571.z = mad(_557.w, r4.w, mad(_557.z, r4.z, mad(_557.y, r4.y, _557.x * r4.x)));
    o0 = _571;
    float4 _582 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _596 = o0;
    _596.w = mad(_582.w, r4.w, mad(_582.z, r4.z, mad(_582.y, r4.y, _582.x * r4.x)));
    o0 = _596;
    float3 _610 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(r0.x, _610.x, _610.y, _610.z);
    float2 _617 = float2(asint(shader_in[1].xy));
    r1 = float4(_617.x, _617.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _645 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_645.x, _645.y, _645.z, r1.w);
    float3 _655 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_655.x, _655.y, _655.z, r4.w);
    float3 _664 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_664.x, _664.y, _664.z, r1.w);
    float4 _680 = r1;
    _680.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _680;
    float4 _685 = r1;
    _685.w = rsqrt(r1.w);
    r1 = _685;
    float3 _691 = r1.www * r1.xyz;
    r1 = float4(_691.x, _691.y, _691.z, r1.w);
    float4 _707 = r3;
    _707.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _707;
    float4 _722 = r3;
    _722.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _722;
    float4 _737 = r3;
    _737.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _737;
    float3 _743 = r0.xxx * r3.xyz;
    r1 = float4(_743.x, _743.y, _743.z, r1.w);
    float4 _759 = r0;
    _759.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _759;
    float4 _764 = r0;
    _764.x = rsqrt(r0.x);
    r0 = _764;
    float3 _770 = r0.xxx * r1.xyz;
    r1 = float4(_770.x, _770.y, _770.z, r1.w);
    float3 _780 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _792 = r2;
    _792.x = mad(_780.z, r1.xyz.z, mad(_780.y, r1.xyz.y, _780.x * r1.xyz.x));
    r2 = _792;
    float3 _801 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _813 = r2;
    _813.y = mad(_801.z, r1.xyz.z, mad(_801.y, r1.xyz.y, _801.x * r1.xyz.x));
    r2 = _813;
    float3 _822 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _834 = r2;
    _834.z = mad(_822.z, r1.xyz.z, mad(_822.y, r1.xyz.y, _822.x * r1.xyz.x));
    r2 = _834;
    float4 _849 = r0;
    _849.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _849;
    float4 _854 = r0;
    _854.x = rsqrt(r0.x);
    r0 = _854;
    float3 _860 = r0.xxx * r2.xyz;
    o3 = float4(_860.x, _860.y, _860.z, o3.w);
    float4 _870 = r0;
    _870.x = r0.z * cb0_m[13].x;
    r0 = _870;
    float4 _877 = r1;
    _877.x = r0.x * asfloat(3216550459u);
    r1 = _877;
    float4 _882 = r1;
    _882.x = exp2(r1.x);
    r1 = _882;
    float4 _889 = r1;
    _889.x = (-r1.x) + asfloat(1065353216u);
    r1 = _889;
    float4 _896 = r0;
    _896.x = r1.x / r0.x;
    r0 = _896;
    float4 _908 = r1;
    _908.x = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _908;
    float4 _923 = r0;
    _923.y = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _923;
    float4 _928 = r0;
    _928.y = sqrt(r0.y);
    r0 = _928;
    float4 _936 = r0;
    _936.y = r0.y * cb0_m[13].y;
    r0 = _936;
    float4 _946 = r0;
    _946.x = (asuint(r1.x) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _946;
    float4 _958 = r0;
    _958.x = (r0.x * r0.y) + (-cb0_m[13].w);
    r0 = _958;
    float4 _964 = r0;
    _964.x = exp2(-r0.x);
    r0 = _964;
    float4 _970 = r0;
    _970.x = min(r0.x, asfloat(1065353216u));
    r0 = _970;
    float4 _977 = o3;
    _977.w = (-r0.x) + asfloat(1065353216u);
    o3 = _977;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _985 = asfloat(v1);
    shader_in[1] = float4(_985.x, _985.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
