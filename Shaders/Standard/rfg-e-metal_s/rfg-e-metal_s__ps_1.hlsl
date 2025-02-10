cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[3] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _82 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _82.x, _82.y, _82.z);
    float4 _91 = r0;
    _91.y = r0.y + r0.y;
    r0 = _91;
    float4 _98 = r1;
    _98.x = r1.w * r1.y;
    r1 = _98;
    float4 _110 = r0;
    _110.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _110;
    float4 _114 = r0;
    _114.x = r1.x;
    r0 = _114;
    float4 _122 = r0;
    _122.w = (-r0.w) + asfloat(1065353216u);
    r0 = _122;
    float4 _129 = r0;
    _129.w = max(r0.w, asfloat(0u));
    r0 = _129;
    float4 _134 = r0;
    _134.z = sqrt(r0.w);
    r0 = _134;
    float3 _141 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_141.x, _141.y, _141.z, r0.w);
    float3 _157 = (cb2_m[3].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float4 _173 = r0;
    _173.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _173;
    float4 _178 = r0;
    _178.w = rsqrt(r0.w);
    r0 = _178;
    float3 _184 = r0.www * r0.xyz;
    r0 = float4(_184.x, _184.y, _184.z, r0.w);
    float4 _203 = r0;
    _203.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _203;
    float4 _208 = r0;
    _208.w = rsqrt(r0.w);
    r0 = _208;
    float4 _226 = r1;
    _226.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _226;
    float4 _231 = r1;
    _231.y = rsqrt(r1.x);
    r1 = _231;
    float4 _236 = r1;
    _236.x = sqrt(r1.x);
    r1 = _236;
    float4 _252 = r1;
    _252.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _252;
    float3 _259 = r1.yyy * shader_in[1].xyz;
    r1 = float4(r1.x, _259.x, _259.y, _259.z);
    float3 _270 = (shader_in[2].xyz * r0.www) + r1.yzw;
    r2 = float4(_270.x, _270.y, _270.z, r2.w);
    float4 _287 = r0;
    _287.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _287;
    float4 _292 = r0;
    _292.w = rsqrt(r0.w);
    r0 = _292;
    float3 _298 = r0.www * r2.xyz;
    r2 = float4(_298.x, _298.y, _298.z, r2.w);
    float4 _314 = r0;
    _314.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _314;
    float4 _330 = r0;
    _330.x = clamp(mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x)), 0.0f, 1.0f);
    r0 = _330;
    float3 _334 = -r1.yzw;
    float4 _347 = r0;
    _347.y = mad(_334.z, shader_in[3].xyz.z, mad(_334.y, shader_in[3].xyz.y, _334.x * shader_in[3].xyz.x));
    r0 = _347;
    float4 _355 = r0;
    _355.y = min(r0.y, cb1_m[2].x);
    r0 = _355;
    float4 _364 = r0;
    _364.y = r0.y + (-cb1_m[2].y);
    r0 = _364;
    float4 _370 = r0;
    _370.y = max(r0.y, asfloat(0u));
    r0 = _370;
    float4 _379 = r0;
    _379.y = r0.y * cb1_m[2].z;
    r0 = _379;
    float4 _385 = r0;
    _385.z = max(r0.w, asfloat(0u));
    r0 = _385;
    float4 _391 = r0;
    _391.w = min(r0.z, asfloat(1065353216u));
    r0 = _391;
    float4 _396 = r0;
    _396.z = log2(r0.z);
    r0 = _396;
    float4 _401 = r0;
    _401.w = log2(r0.w);
    r0 = _401;
    float4 _409 = r0;
    _409.w = r0.w * cb2_m[2].w;
    r0 = _409;
    float4 _414 = r0;
    _414.w = exp2(r0.w);
    r0 = _414;
    float4 _423 = r1;
    _423.y = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _423;
    float4 _434 = r0;
    _434.x = ((-r1.y) * r0.w) + r0.x;
    r0 = _434;
    float4 _441 = r0;
    _441.w = r0.w * r1.y;
    r0 = _441;
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _457 = r1;
    _457.y = r2.w * cb2_m[2].z;
    r1 = _457;
    float4 _467 = r0;
    _467.x = (r1.y * r0.x) + r0.w;
    r0 = _467;
    float4 _473 = r0;
    _473.x = max(r0.x, asfloat(0u));
    r0 = _473;
    float4 _484 = r0;
    _484.w = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _484;
    float4 _494 = r0;
    _494.y = (asuint(r0.w) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _494;
    float4 _501 = r0;
    _501.y = r0.y * r1.x;
    r0 = _501;
    float4 _508 = r0;
    _508.x = r0.y * r0.x;
    r0 = _508;
    float4 _519 = r0;
    _519.w = ((-r2.w) * cb2_m[2].z) + asfloat(1065353216u);
    r0 = _519;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _544 = ((-r3.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xyz;
    r1 = float4(_544.x, r1.y, _544.y, _544.z);
    float3 _557 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_557.x, _557.y, _557.z, r2.w);
    float3 _567 = (r1.yyy * r1.xzw) + r2.xyz;
    r1 = float4(_567.x, _567.y, _567.z, r1.w);
    float3 _574 = r0.xxx * r1.xyz;
    r1 = float4(_574.x, _574.y, _574.z, r1.w);
    float4 _583 = r0;
    _583.x = cb2_m[3].z + asfloat(925353388u);
    r0 = _583;
    float4 _590 = r0;
    _590.x = r0.z * r0.x;
    r0 = _590;
    float4 _595 = r0;
    _595.x = exp2(r0.x);
    r0 = _595;
    float4 _603 = r0;
    _603.x = r0.x * cb2_m[3].y;
    r0 = _603;
    float4 _610 = r0;
    _610.x = r0.w * r0.x;
    r0 = _610;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _630 = r2.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_630.x, _630.y, _630.z, r2.w);
    float3 _637 = r0.xxx * r2.xyz;
    r0 = float4(_637.x, r0.y, _637.y, _637.z);
    float3 _644 = r0.yyy * r0.xzw;
    r0 = float4(_644.x, _644.y, _644.z, r0.w);
    float2 _657 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_657.x, _657.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _672 = r0;
    _672.w = max(r2.y, asfloat(1028443341u));
    r0 = _672;
    float3 _678 = r0.www * r0.xyz;
    r0 = float4(_678.x, _678.y, _678.z, r0.w);
    float3 _688 = (r1.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_688.x, _688.y, _688.z, r0.w);
    float3 _701 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_701.x, _701.y, _701.z, r0.w);
    float4 _710 = r0;
    _710.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _710;
    float3 _716 = r0.xyz * r0.www;
    r3 = float4(_716.x, _716.y, _716.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _745 = gl_FragCoord;
    _745.w = 1.0f / _745.w;
    shader_in[0] = float4(_745.xy.x, _745.xy.y, shader_in[0].z, shader_in[0].w);
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
