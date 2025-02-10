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
    float4 cb2_m[8] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
static float4 r4;

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
    float3 _157 = (cb2_m[6].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    float4 _329 = r0;
    _329.x = mad(r1.yzw.z, r0.xyz.z, mad(r1.yzw.y, r0.xyz.y, r1.yzw.x * r0.xyz.x));
    r0 = _329;
    float3 _333 = -r1.yzw;
    float4 _347 = r0;
    _347.y = mad(_333.z, shader_in[3].xyz.z, mad(_333.y, shader_in[3].xyz.y, _333.x * shader_in[3].xyz.x));
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
    float4 _390 = r0;
    _390.z = log2(r0.z);
    r0 = _390;
    float3 _399 = r0.zzz * asfloat(uint3(1115684864u, 1107296256u, 1098907648u));
    r1 = float4(r1.x, _399.x, _399.y, _399.z);
    float3 _404 = exp2(r1.yzw);
    r1 = float4(r1.x, _404.x, _404.y, _404.z);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _419 = r1.yzw * r2.xyz;
    r1 = float4(r1.x, _419.x, _419.y, _419.z);
    float3 _429 = clamp(r1.yzw + r1.yzw, 0.0f.xxx, 1.0f.xxx);
    r1 = float4(r1.x, _429.x, _429.y, _429.z);
    float3 _442 = r1.zzz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_442.x, _442.y, _442.z, r2.w);
    float3 _458 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.yyy) + r2.xyz;
    r2 = float4(_458.x, _458.y, _458.z, r2.w);
    float3 _474 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r1.www) + r2.xyz;
    r1 = float4(r1.x, _474.x, _474.y, _474.z);
    float3 _484 = r1.yzw * cb2_m[7].x.xxx;
    r1 = float4(r1.x, _484.x, _484.y, _484.z);
    float4 _491 = r0;
    _491.z = max(r0.x, asfloat(0u));
    r0 = _491;
    float4 _500 = r0;
    _500.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _500;
    float4 _507 = r0;
    _507.x = r0.x * r0.x;
    r0 = _507;
    float4 _514 = r0;
    _514.x = r0.x * r0.x;
    r0 = _514;
    float3 _520 = r0.zzz * r1.yzw;
    r1 = float4(r1.x, _520.x, _520.y, _520.z);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _540 = r0;
    _540.z = ((-r2.w) * cb2_m[6].z) + asfloat(1065353216u);
    r0 = _540;
    float3 _546 = r0.zzz * r1.yzw;
    r1 = float4(r1.x, _546.x, _546.y, _546.z);
    float4 _558 = r0;
    _558.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _558;
    float4 _568 = r0;
    _568.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _568;
    float4 _575 = r0;
    _575.y = r0.y * r1.x;
    r0 = _575;
    float3 _581 = r0.yyy * r1.yzw;
    r1 = float4(_581.x, _581.y, _581.z, r1.w);
    float2 _593 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(r0.x, r0.y, _593.x, _593.y);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r0.zwzz.xy);
    float4 _609 = r0;
    _609.z = max(r3.y, asfloat(1028443341u));
    r0 = _609;
    float3 _615 = r0.zzz * r1.xyz;
    r1 = float4(_615.x, _615.y, _615.z, r1.w);
    float4 _624 = r0;
    _624.z = r2.w * cb2_m[6].z;
    r0 = _624;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _650 = ((-r4.xyz) * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) + r2.xyz;
    r2 = float4(_650.x, _650.y, _650.z, r2.w);
    float3 _663 = r4.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r3 = float4(_663.x, r3.y, _663.y, _663.z);
    float3 _673 = (r0.zzz * r2.xyz) + r3.xzw;
    r2 = float4(_673.x, _673.y, _673.z, r2.w);
    float4 _681 = r0;
    _681.z = r0.x * r0.x;
    r0 = _681;
    float3 _693 = r0.xxx * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_693.x, r3.y, _693.y, _693.z);
    float4 _701 = r0;
    _701.x = r0.z * r0.z;
    r0 = _701;
    float3 _716 = (r0.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xzw;
    r0 = float4(_716.x, r0.y, _716.y, _716.z);
    float3 _723 = r2.xyz * r0.xzw;
    r0 = float4(_723.x, r0.y, _723.y, _723.z);
    float3 _730 = r0.yyy * r0.xzw;
    r0 = float4(_730.x, _730.y, _730.z, r0.w);
    float3 _740 = (r0.xyz * r3.yyy) + r1.xyz;
    r0 = float4(_740.x, _740.y, _740.z, r0.w);
    float3 _753 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_753.x, _753.y, _753.z, r0.w);
    float4 _762 = r0;
    _762.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _762;
    float3 _768 = r0.xyz * r0.www;
    r0 = float4(_768.x, _768.y, _768.z, r0.w);
    float4 _772 = r0;
    _772.w = asfloat(1065353216u);
    r0 = _772;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _800 = gl_FragCoord;
    _800.w = 1.0f / _800.w;
    shader_in[0] = float4(_800.xy.x, _800.xy.y, shader_in[0].z, shader_in[0].w);
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
