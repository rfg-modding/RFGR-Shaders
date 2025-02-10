cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _86 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _86.x, _86.y, _86.z);
    float4 _95 = r0;
    _95.y = r0.y + r0.y;
    r0 = _95;
    float4 _102 = r1;
    _102.x = r1.w * r1.y;
    r1 = _102;
    float4 _114 = r0;
    _114.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _114;
    float4 _118 = r0;
    _118.x = r1.x;
    r0 = _118;
    float4 _126 = r0;
    _126.w = (-r0.w) + asfloat(1065353216u);
    r0 = _126;
    float4 _133 = r0;
    _133.w = max(r0.w, asfloat(0u));
    r0 = _133;
    float4 _138 = r0;
    _138.z = sqrt(r0.w);
    r0 = _138;
    float3 _145 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_145.x, _145.y, _145.z, r0.w);
    float3 _161 = (cb2_m[1].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_161.x, _161.y, _161.z, r0.w);
    float4 _177 = r0;
    _177.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _177;
    float4 _182 = r0;
    _182.w = rsqrt(r0.w);
    r0 = _182;
    float3 _188 = r0.www * r0.xyz;
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float4 _207 = r0;
    _207.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _207;
    float4 _212 = r0;
    _212.w = rsqrt(r0.w);
    r0 = _212;
    float3 _219 = r0.www * shader_in[2].xyz;
    r1 = float4(_219.x, _219.y, _219.z, r1.w);
    float4 _238 = r0;
    _238.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _238;
    float4 _243 = r0;
    _243.w = rsqrt(r0.w);
    r0 = _243;
    float3 _253 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r2 = float4(_253.x, _253.y, _253.z, r2.w);
    float4 _270 = r1;
    _270.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r1 = _270;
    float3 _277 = r0.www * shader_in[3].xyz;
    r1 = float4(r1.x, _277.x, _277.y, _277.z);
    float4 _293 = r0;
    _293.w = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r0 = _293;
    float4 _299 = r0;
    _299.w = max(r0.w, asfloat(0u));
    r0 = _299;
    float4 _307 = r3;
    _307.y = (-r0.w) + asfloat(1065353216u);
    r3 = _307;
    float4 _322 = r0;
    _322.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _322;
    float4 _327 = r0;
    _327.w = rsqrt(r0.w);
    r0 = _327;
    float3 _333 = r0.www * r2.xyz;
    r1 = float4(r1.x, _333.x, _333.y, _333.z);
    float4 _349 = r0;
    _349.w = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r0 = _349;
    float4 _366 = r0;
    _366.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _366;
    float4 _378 = r0;
    _378.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _378;
    float4 _384 = r0;
    _384.y = max(r0.w, asfloat(0u));
    r0 = _384;
    float4 _391 = r2;
    _391.y = (-r0.y) + asfloat(1065353216u);
    r2 = _391;
    float4 _397 = r2;
    _397.x = max(r1.x, asfloat(0u));
    r2 = _397;
    float4 _405 = r3;
    _405.x = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r3 = _405;
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, r3.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt4s4, r2.xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[1].xyxx.xy);
    float3 _433 = r2.xyz * r3.xyz;
    r0 = float4(r0.x, _433.x, _433.y, _433.z);
    float3 _440 = r1.xyz * r3.xyz;
    r1 = float4(_440.x, _440.y, _440.z, r1.w);
    float4 _448 = r0;
    _448.y = max(r0.z, r0.y);
    r0 = _448;
    float4 _455 = r0;
    _455.y = max(r0.w, r0.y);
    r0 = _455;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _469 = r0.yyy * r2.xyz;
    r0 = float4(r0.x, _469.x, _469.y, _469.z);
    float3 _478 = r0.yzw * cb2_m[2].y.xxx;
    r0 = float4(r0.x, _478.x, _478.y, _478.z);
    float2 _491 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_491.x, _491.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _506 = r1;
    _506.w = max(r2.y, asfloat(1028443341u));
    r1 = _506;
    float3 _512 = r0.yzw * r1.www;
    r0 = float4(r0.x, _512.x, _512.y, _512.z);
    float4 _520 = r1;
    _520.x = max(r1.y, r1.x);
    r1 = _520;
    float4 _527 = r1;
    _527.x = max(r1.z, r1.x);
    r1 = _527;
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _547 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(r1.x, _547.x, _547.y, _547.z);
    float3 _554 = r1.yzw * r1.xxx;
    r3 = float4(_554.x, _554.y, _554.z, r3.w);
    float3 _564 = (r3.xyz * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _564.x, _564.y, _564.z);
    float3 _577 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _577.x, _577.y, _577.z);
    float4 _586 = r1;
    _586.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _586;
    float4 _595 = r1;
    _595.x = abs(r1.x) + abs(r1.x);
    r1 = _595;
    float4 _605 = r1;
    _605.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _605;
    float4 _611 = r1;
    _611.x = max(r1.x, asfloat(0u));
    r1 = _611;
    float4 _620 = r1;
    _620.x = r1.x * cb0_m[7].y;
    r1 = _620;
    float3 _644 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(r2.x, _644.x, _644.y, _644.z);
    float3 _660 = (r0.xxx * r2.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(r2.x, _660.x, _660.y, _660.z);
    float3 _674 = (-r2.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(_674.x, _674.y, _674.z, r3.w);
    float3 _684 = (r1.xxx * r3.xyz) + r2.yzw;
    r2 = float4(r2.x, _684.x, _684.y, _684.z);
    float3 _691 = r2.xxx * r2.yzw;
    r3 = float4(_691.x, _691.y, _691.z, r3.w);
    float3 _703 = ((-r2.yzw) * r2.xxx) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r2 = float4(_703.x, _703.y, _703.z, r2.w);
    float4 _711 = r0;
    _711.x = (-r3.w) + asfloat(1065353216u);
    r0 = _711;
    float4 _723 = r4;
    _723.w = (cb2_m[1].w * r0.x) + r3.w;
    r4 = _723;
    float4 _731 = r0;
    _731.x = r0.x * cb2_m[2].x;
    r0 = _731;
    float3 _740 = (r0.xxx * r2.xyz) + r3.xyz;
    r2 = float4(_740.x, _740.y, _740.z, r2.w);
    float3 _750 = (r2.xyz * r1.yzw) + r0.yzw;
    r0 = float4(_750.x, _750.y, _750.z, r0.w);
    float4 _759 = r0;
    _759.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _759;
    float3 _765 = r0.xyz * r0.www;
    r0 = float4(_765.x, _765.y, _765.z, r0.w);
    float3 _782 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r4 = float4(_782.x, _782.y, _782.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _813 = gl_FragCoord;
    _813.w = 1.0f / _813.w;
    shader_in[0] = float4(_813.xy.x, _813.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
