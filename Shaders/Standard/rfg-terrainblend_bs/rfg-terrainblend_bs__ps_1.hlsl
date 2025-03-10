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

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float3 v1;
static float3 v2;
static float2 v3;
static float4 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float3 _77 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _77.x, _77.y, _77.z);
    float4 _86 = r0;
    _86.y = r0.y + r0.y;
    r0 = _86;
    float4 _93 = r1;
    _93.x = r1.w * r1.y;
    r1 = _93;
    float4 _105 = r0;
    _105.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _105;
    float4 _109 = r0;
    _109.x = r1.x;
    r0 = _109;
    float4 _117 = r0;
    _117.w = (-r0.w) + asfloat(1065353216u);
    r0 = _117;
    float4 _124 = r0;
    _124.w = max(r0.w, asfloat(0u));
    r0 = _124;
    float4 _129 = r0;
    _129.z = sqrt(r0.w);
    r0 = _129;
    float3 _136 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_136.x, _136.y, _136.z, r0.w);
    float3 _152 = (cb2_m[2].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_152.x, _152.y, _152.z, r0.w);
    float4 _168 = r0;
    _168.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _168;
    float4 _173 = r0;
    _173.w = rsqrt(r0.w);
    r0 = _173;
    float3 _179 = r0.www * r0.xyz;
    r0 = float4(_179.x, _179.y, _179.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[3].xyxx.xy);
    float3 _196 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _196.x, _196.y, _196.z);
    float4 _205 = r1;
    _205.y = r1.y + r1.y;
    r1 = _205;
    float4 _212 = r2;
    _212.x = r2.w * r2.y;
    r2 = _212;
    float4 _224 = r0;
    _224.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r0 = _224;
    float4 _228 = r1;
    _228.x = r2.x;
    r1 = _228;
    float4 _235 = r0;
    _235.w = (-r0.w) + asfloat(1065353216u);
    r0 = _235;
    float4 _241 = r0;
    _241.w = max(r0.w, asfloat(0u));
    r0 = _241;
    float4 _246 = r1;
    _246.z = sqrt(r0.w);
    r1 = _246;
    float3 _251 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_251.x, _251.y, _251.z, r1.w);
    float3 _262 = (cb2_m[2].y.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_262.x, _262.y, _262.z, r1.w);
    float4 _278 = r0;
    _278.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _278;
    float4 _283 = r0;
    _283.w = rsqrt(r0.w);
    r0 = _283;
    float3 _293 = (r1.xyz * r0.www) + (-r0.xyz);
    r1 = float4(_293.x, _293.y, _293.z, r1.w);
    float4 _302 = r0;
    _302.w = clamp(shader_in[5].z, 0.0f, 1.0f);
    r0 = _302;
    float3 _311 = (r0.www * r1.xyz) + r0.xyz;
    r0 = float4(_311.x, _311.y, _311.z, r0.w);
    float4 _330 = r1;
    _330.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _330;
    float4 _335 = r1;
    _335.y = rsqrt(r1.x);
    r1 = _335;
    float4 _340 = r1;
    _340.x = sqrt(r1.x);
    r1 = _340;
    float4 _354 = r1;
    _354.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _354;
    float3 _365 = (shader_in[1].xyz * r1.yyy) + shader_in[2].xyz;
    r2 = float4(_365.x, _365.y, _365.z, r2.w);
    float3 _373 = r1.yyy * shader_in[1].xyz;
    r1 = float4(r1.x, _373.x, _373.y, _373.z);
    float4 _389 = r2;
    _389.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r2 = _389;
    float4 _394 = r2;
    _394.w = rsqrt(r2.w);
    r2 = _394;
    float3 _400 = r2.www * r2.xyz;
    r2 = float4(_400.x, _400.y, _400.z, r2.w);
    float4 _417 = r2;
    _417.x = clamp(mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r2 = _417;
    float4 _424 = r2;
    _424.x = r2.x + asfloat(925353388u);
    r2 = _424;
    float4 _429 = r2;
    _429.x = log2(r2.x);
    r2 = _429;
    float4 _437 = r2;
    _437.x = r2.x * cb2_m[3].x;
    r2 = _437;
    float4 _442 = r2;
    _442.x = exp2(r2.x);
    r2 = _442;
    float4 _457 = r2;
    _457.y = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r2 = _457;
    float3 _462 = -shader_in[2].xyz;
    float4 _474 = r0;
    _474.x = mad(_462.z, r0.xyz.z, mad(_462.y, r0.xyz.y, _462.x * r0.xyz.x));
    r0 = _474;
    float4 _480 = r0;
    _480.x = r0.x + asfloat(1065353216u);
    r0 = _480;
    float4 _486 = r0;
    _486.x = log2(abs(r0.x));
    r0 = _486;
    float4 _493 = r0;
    _493.x = r0.x * asfloat(1083179008u);
    r0 = _493;
    float4 _498 = r0;
    _498.x = exp2(r0.x);
    r0 = _498;
    float4 _504 = r0;
    _504.x = r0.x + asfloat(925353388u);
    r0 = _504;
    float4 _510 = r0;
    _510.x = min(r0.x, asfloat(1065353216u));
    r0 = _510;
    float4 _519 = r0;
    _519.x = r0.x * cb2_m[2].z;
    r0 = _519;
    float3 _523 = -r1.yzw;
    float4 _537 = r0;
    _537.y = mad(_523.z, shader_in[4].xyz.z, mad(_523.y, shader_in[4].xyz.y, _523.x * shader_in[4].xyz.x));
    r0 = _537;
    float4 _545 = r0;
    _545.y = min(r0.y, cb1_m[2].x);
    r0 = _545;
    float4 _554 = r0;
    _554.y = r0.y + (-cb1_m[2].y);
    r0 = _554;
    float4 _560 = r0;
    _560.y = max(r0.y, asfloat(0u));
    r0 = _560;
    float4 _568 = r0;
    _568.y = r0.y * cb1_m[2].z;
    r0 = _568;
    float4 _578 = r0;
    _578.z = asfloat((asfloat(0u) >= r2.y) ? 4294967295u : 0u);
    r0 = _578;
    float4 _583 = r2;
    _583.y = clamp(r2.y, 0.0f, 1.0f);
    r2 = _583;
    float4 _592 = r0;
    _592.z = (asuint(r0.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _592;
    float4 _599 = r0;
    _599.z = r0.z * r2.x;
    r0 = _599;
    float4 _608 = r1;
    _608.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _608;
    float4 _618 = r0;
    _618.y = (asuint(r1.y) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _618;
    float4 _625 = r0;
    _625.y = r0.y * r1.x;
    r0 = _625;
    float4 _632 = r1;
    _632.x = max(r0.y, asfloat(1028443341u));
    r1 = _632;
    float4 _639 = r0;
    _639.y = r0.y * r2.y;
    r0 = _639;
    float4 _646 = r0;
    _646.z = r0.z * r1.x;
    r0 = _646;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float4 _661 = r0;
    _661.x = r0.x * r1.w;
    r0 = _661;
    float3 _673 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_673.x, _673.y, _673.z, r1.w);
    float4 _681 = r0;
    _681.x = r0.x * r0.z;
    r0 = _681;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[3].xyxx.xy);
    float3 _705 = (r2.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r1.xyz);
    r2 = float4(_705.x, _705.y, _705.z, r2.w);
    float3 _715 = (r0.www * r2.xyz) + r1.xyz;
    r1 = float4(_715.x, _715.y, _715.z, r1.w);
    float3 _725 = (r0.yyy * r1.xyz) + r0.xxx;
    r0 = float4(_725.x, _725.y, _725.z, r0.w);
    float3 _738 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_738.x, _738.y, _738.z, r0.w);
    float4 _747 = r0;
    _747.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _747;
    float3 _753 = r0.xyz * r0.www;
    r0 = float4(_753.x, _753.y, _753.z, r0.w);
    float4 _757 = r0;
    _757.w = asfloat(1065353216u);
    r0 = _757;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
