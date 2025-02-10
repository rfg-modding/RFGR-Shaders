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
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _85 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _85.x, _85.y, _85.z);
    float4 _94 = r0;
    _94.y = r0.y + r0.y;
    r0 = _94;
    float4 _101 = r1;
    _101.x = r1.w * r1.y;
    r1 = _101;
    float4 _113 = r0;
    _113.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _113;
    float4 _117 = r0;
    _117.x = r1.x;
    r0 = _117;
    float4 _125 = r0;
    _125.w = (-r0.w) + asfloat(1065353216u);
    r0 = _125;
    float4 _132 = r0;
    _132.w = max(r0.w, asfloat(0u));
    r0 = _132;
    float4 _137 = r0;
    _137.z = sqrt(r0.w);
    r0 = _137;
    float3 _144 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_144.x, _144.y, _144.z, r0.w);
    float3 _160 = (cb2_m[4].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_160.x, _160.y, _160.z, r0.w);
    float4 _176 = r0;
    _176.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _176;
    float4 _181 = r0;
    _181.w = rsqrt(r0.w);
    r0 = _181;
    float3 _187 = r0.www * r0.xyz;
    r0 = float4(_187.x, _187.y, _187.z, r0.w);
    float4 _206 = r0;
    _206.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _206;
    float4 _211 = r0;
    _211.w = rsqrt(r0.w);
    r0 = _211;
    float4 _229 = r1;
    _229.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _229;
    float4 _234 = r1;
    _234.x = rsqrt(r1.x);
    r1 = _234;
    float3 _241 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float3 _252 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r2 = float4(_252.x, _252.y, _252.z, r2.w);
    float4 _272 = r0;
    _272.w = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _272;
    float4 _287 = r1;
    _287.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _287;
    float4 _292 = r1;
    _292.x = rsqrt(r1.x);
    r1 = _292;
    float3 _298 = r1.xxx * r2.xyz;
    r1 = float4(_298.x, _298.y, _298.z, r1.w);
    float4 _314 = r1;
    _314.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _314;
    float4 _330 = r0;
    _330.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _330;
    float4 _340 = r0;
    _340.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _340;
    float4 _346 = r0;
    _346.y = max(r1.x, asfloat(0u));
    r0 = _346;
    float4 _352 = r0;
    _352.z = min(r0.y, asfloat(1065353216u));
    r0 = _352;
    float4 _357 = r0;
    _357.y = log2(r0.y);
    r0 = _357;
    float4 _362 = r0;
    _362.z = log2(r0.z);
    r0 = _362;
    float4 _371 = r0;
    _371.z = r0.z * cb2_m[3].w;
    r0 = _371;
    float4 _376 = r0;
    _376.z = exp2(r0.z);
    r0 = _376;
    float4 _384 = r1;
    _384.x = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _384;
    float4 _395 = r0;
    _395.w = ((-r1.x) * r0.z) + r0.w;
    r0 = _395;
    float4 _402 = r0;
    _402.z = r0.z * r1.x;
    r0 = _402;
    r1 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[1].xyxx.xy);
    float4 _420 = r1;
    _420.w = r1.w * cb2_m[3].z;
    r1 = _420;
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[5].zwzz.xy);
    float4 _436 = r2;
    _436.w = r2.w * cb2_m[2].x;
    r2 = _436;
    float4 _444 = r3;
    _444.x = max(r1.w, r2.w);
    r3 = _444;
    float4 _454 = r0;
    _454.z = (r3.x * r0.w) + r0.z;
    r0 = _454;
    float4 _461 = r0;
    _461.w = (-r3.x) + asfloat(1065353216u);
    r0 = _461;
    float4 _467 = r0;
    _467.z = max(r0.z, asfloat(0u));
    r0 = _467;
    float4 _475 = r3;
    _475.x = (-cb2_m[2].y) + asfloat(1065353216u);
    r3 = _475;
    float4 _482 = r3;
    _482.x = r1.w * r3.x;
    r3 = _482;
    float4 _489 = r3;
    _489.x = r2.w * r3.x;
    r3 = _489;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].xyxx.xy);
    float3 _514 = ((-r4.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r1.xyz;
    r3 = float4(r3.x, _514.x, _514.y, _514.z);
    float3 _522 = r1.xyz + (-r2.xyz);
    r1 = float4(_522.x, _522.y, _522.z, r1.w);
    float3 _535 = r4.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r5 = float4(_535.x, _535.y, _535.z, r5.w);
    float3 _546 = (r1.www * r3.yzw) + r5.xyz;
    r3 = float4(r3.x, _546.x, _546.y, _546.z);
    float3 _554 = r2.xyz + (-r3.yzw);
    r2 = float4(_554.x, _554.y, _554.z, r2.w);
    float3 _564 = (r2.www * r2.xyz) + r3.yzw;
    r2 = float4(_564.x, _564.y, _564.z, r2.w);
    float3 _574 = (r3.xxx * r1.xyz) + r2.xyz;
    r1 = float4(_574.x, _574.y, _574.z, r1.w);
    float3 _581 = r0.zzz * r1.xyz;
    r2 = float4(_581.x, _581.y, _581.z, r2.w);
    float4 _590 = r0;
    _590.z = cb2_m[4].z + asfloat(925353388u);
    r0 = _590;
    float4 _597 = r0;
    _597.y = r0.y * r0.z;
    r0 = _597;
    float4 _602 = r0;
    _602.y = exp2(r0.y);
    r0 = _602;
    float4 _610 = r0;
    _610.y = r0.y * cb2_m[4].y;
    r0 = _610;
    float4 _617 = r0;
    _617.y = r0.w * r0.y;
    r0 = _617;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float3 _637 = r3.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_637.x, _637.y, _637.z, r3.w);
    float3 _644 = r0.yyy * r3.xyz;
    r0 = float4(r0.x, _644.x, _644.y, _644.z);
    float2 _657 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_657.x, _657.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float4 _672 = r1;
    _672.w = max(r3.y, asfloat(1028443341u));
    r1 = _672;
    float3 _678 = r0.yzw * r1.www;
    r0 = float4(r0.x, _678.x, _678.y, _678.z);
    float3 _688 = (r2.xyz * r3.yyy) + r0.yzw;
    r0 = float4(r0.x, _688.x, _688.y, _688.z);
    float3 _701 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _701.x, _701.y, _701.z);
    float4 _710 = r1;
    _710.w = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _710;
    float4 _719 = r1;
    _719.w = abs(r1.w) + abs(r1.w);
    r1 = _719;
    float4 _729 = r1;
    _729.w = ((-r1.w) * r1.w) + asfloat(1065353216u);
    r1 = _729;
    float4 _735 = r1;
    _735.w = max(r1.w, asfloat(0u));
    r1 = _735;
    float4 _744 = r1;
    _744.w = r1.w * cb0_m[7].y;
    r1 = _744;
    float3 _768 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_768.x, _768.y, _768.z, r2.w);
    float3 _784 = (r0.xxx * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(_784.x, _784.y, _784.z, r2.w);
    float3 _798 = (-r2.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(r3.x, _798.x, _798.y, _798.z);
    float3 _808 = (r1.www * r3.yzw) + r2.xyz;
    r2 = float4(_808.x, _808.y, _808.z, r2.w);
    float3 _815 = r3.xxx * r2.xyz;
    r2 = float4(_815.x, _815.y, _815.z, r2.w);
    float3 _825 = (r2.xyz * r1.xyz) + r0.yzw;
    r0 = float4(_825.x, _825.y, _825.z, r0.w);
    float4 _834 = r0;
    _834.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _834;
    float3 _840 = r0.xyz * r0.www;
    r0 = float4(_840.x, _840.y, _840.z, r0.w);
    float3 _857 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r4 = float4(_857.x, _857.y, _857.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _890 = gl_FragCoord;
    _890.w = 1.0f / _890.w;
    shader_in[0] = float4(_890.xy.x, _890.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
