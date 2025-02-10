cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[10] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float2 v1;
static float3 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void ps_main()
{
    float4 _67 = r0;
    _67.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _67;
    float4 _77 = r0;
    _77.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _77;
    float4 _87 = r0;
    _87.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _87;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _115 = r0.xyz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r1 = float4(_115.x, _115.y, _115.z, r1.w);
    float4 _135 = r0;
    _135.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _135;
    float4 _140 = r0;
    _140.w = rsqrt(r0.w);
    r0 = _140;
    float3 _147 = r0.www * shader_in[2].xyz;
    r2 = float4(_147.x, _147.y, _147.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _166 = r4;
    _166.y = r3.y + r3.y;
    r4 = _166;
    float3 _178 = (r3.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(r3.x, _178.x, _178.y, _178.z);
    float4 _186 = r3;
    _186.x = r3.w * r3.y;
    r3 = _186;
    float4 _198 = r0;
    _198.w = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _198;
    float4 _205 = r0;
    _205.w = (-r0.w) + asfloat(1065353216u);
    r0 = _205;
    float4 _211 = r0;
    _211.w = max(r0.w, asfloat(0u));
    r0 = _211;
    float4 _216 = r4;
    _216.z = sqrt(r0.w);
    r4 = _216;
    float4 _220 = r4;
    _220.x = r3.x;
    r4 = _220;
    float3 _227 = r4.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r3 = float4(_227.x, _227.y, _227.z, r3.w);
    float3 _240 = (cb2_m[8].x.xxx * r3.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r3 = float4(_240.x, _240.y, _240.z, r3.w);
    float4 _256 = r0;
    _256.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _256;
    float4 _261 = r0;
    _261.w = rsqrt(r0.w);
    r0 = _261;
    float3 _267 = r0.www * r3.xyz;
    r3 = float4(_267.x, _267.y, _267.z, r3.w);
    float4 _286 = r0;
    _286.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _286;
    float4 _291 = r0;
    _291.w = rsqrt(r0.w);
    r0 = _291;
    float3 _298 = r0.www * shader_in[3].xyz;
    r4 = float4(_298.x, _298.y, _298.z, r4.w);
    float3 _309 = (shader_in[3].xyz * r0.www) + r2.xyz;
    r5 = float4(_309.x, _309.y, _309.z, r5.w);
    float4 _326 = r0;
    _326.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _326;
    float4 _331 = r0;
    _331.w = rsqrt(r0.w);
    r0 = _331;
    float3 _337 = r0.www * r5.xyz;
    r5 = float4(_337.x, _337.y, _337.z, r5.w);
    float4 _353 = r0;
    _353.w = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    r0 = _353;
    float4 _368 = r1;
    _368.w = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r1 = _368;
    float4 _383 = r2;
    _383.x = mad(r3.xyz.z, r5.xyz.z, mad(r3.xyz.y, r5.xyz.y, r3.xyz.x * r5.xyz.x));
    r2 = _383;
    float4 _389 = r3;
    _389.x = max(r0.w, asfloat(0u));
    r3 = _389;
    float4 _395 = r4;
    _395.y = max(r1.w, asfloat(0u));
    r4 = _395;
    float4 _401 = r1;
    _401.w = max(r2.x, asfloat(0u));
    r1 = _401;
    float4 _410 = r0;
    _410.w = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _410;
    float4 _419 = r2;
    _419.x = (r4.y * asfloat(1073741824u)) + r3.x;
    r2 = _419;
    float4 _426 = r3;
    _426.y = r2.x * asfloat(1051372203u);
    r3 = _426;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float4 _446 = r2;
    _446.w = (cb2_m[8].w * r2.z) + r0.w;
    r2 = _446;
    float4 _456 = r4;
    _456.z = (cb2_m[8].w * r2.z) + asfloat(1065353216u);
    r4 = _456;
    float4 _466 = r3;
    _466.z = clamp(r2.w / r4.z, 0.0f, 1.0f);
    r3 = _466;
    float4 _473 = r4;
    _473.x = (-r0.w) + asfloat(1065353216u);
    r4 = _473;
    float4 _485 = r0;
    _485.w = mad(r4.xy.y, r4.xy.y, r4.xy.x * r4.xy.x);
    r0 = _485;
    float4 _490 = r0;
    _490.w = sqrt(r0.w);
    r0 = _490;
    float4 _498 = r2;
    _498.w = max(cb2_m[8].y, asfloat(953267991u));
    r2 = _498;
    float4 _505 = r0;
    _505.w = r0.w / r2.w;
    r0 = _505;
    float4 _512 = r0;
    _512.w = (-r0.w) + asfloat(1065353216u);
    r0 = _512;
    float4 _518 = r0;
    _518.w = max(r0.w, asfloat(0u));
    r0 = _518;
    float4 _525 = r3;
    _525.w = r2.y * r0.w;
    r3 = _525;
    r4 = r3 * r3;
    float3 _541 = r4.yyy * float3(cb2_m[7].x, cb2_m[7].y, cb2_m[7].z);
    r3 = float4(r3.x, _541.x, _541.y, _541.z);
    float3 _562 = float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z) + (-float3(cb2_m[7].x, cb2_m[7].y, cb2_m[7].z));
    r5 = float4(_562.x, _562.y, _562.z, r5.w);
    float3 _580 = (cb2_m[8].z.xxx * r5.xyz) + float3(cb2_m[7].x, cb2_m[7].y, cb2_m[7].z);
    r5 = float4(_580.x, _580.y, _580.z, r5.w);
    float3 _597 = ((-float3(cb2_m[7].x, cb2_m[7].y, cb2_m[7].z)) * r4.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r6 = float4(_597.x, _597.y, _597.z, r6.w);
    float3 _608 = (r5.xyz * r6.xyz) + r3.yzw;
    r3 = float4(r3.x, _608.x, _608.y, _608.z);
    float3 _615 = r4.xxx * r3.yzw;
    r5 = float4(_615.x, _615.y, _615.z, r5.w);
    float3 _625 = ((-r3.yzw) * r4.xxx) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(r3.x, _625.x, _625.y, _625.z);
    float3 _642 = (float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z) * r3.yzw) + r5.xyz;
    r3 = float4(r3.x, _642.x, _642.y, _642.z);
    float3 _649 = r4.zzz * r3.yzw;
    r3 = float4(r3.x, _649.x, _649.y, _649.z);
    float3 _656 = r1.xyz * r3.yzw;
    r4 = float4(_656.x, _656.y, _656.z, r4.w);
    float3 _672 = ((-r0.xyz) * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_672.x, _672.y, _672.z, r0.w);
    float3 _682 = (r3.yzw * r0.xyz) + r1.xyz;
    r0 = float4(_682.x, _682.y, _682.z, r0.w);
    float3 _695 = r4.www * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_695.x, _695.y, _695.z, r1.w);
    float3 _708 = clamp((r4.xyz * r0.xyz) + r1.xyz, 0.0f.xxx, 1.0f.xxx);
    r0 = float4(_708.x, _708.y, _708.z, r0.w);
    float4 _717 = r0;
    _717.w = (-r1.w) + r3.x;
    r0 = _717;
    float4 _725 = r0;
    _725.w = abs(r0.w) * asfloat(1092616192u);
    r0 = _725;
    float4 _732 = r1;
    _732.x = r1.w + asfloat(3204448256u);
    r1 = _732;
    float4 _744 = r0;
    _744.w = clamp((r1.x * asfloat(1077936128u)) + (-r0.w), 0.0f, 1.0f);
    r0 = _744;
    float4 _757 = r1;
    _757.x = clamp(mad(r0.ww.y, r1.xx.y, r0.ww.x * r1.xx.x), 0.0f, 1.0f);
    r1 = _757;
    float2 _771 = (r1.ww * asfloat(uint2(1082130432u, 1120403456u))) + asfloat(uint2(3225419776u, 3266838528u));
    r3 = float4(r3.x, _771.x, _771.y, r3.w);
    float4 _780 = r0;
    _780.w = clamp(r3.z * asfloat(1041395352u), 0.0f, 1.0f);
    r0 = _780;
    float4 _787 = r0;
    _787.w = r3.x * r0.w;
    r0 = _787;
    float4 _793 = r1;
    _793.y = min(r0.w, asfloat(1065353216u));
    r1 = _793;
    float4 _798 = r3;
    _798.y = clamp(r3.y, 0.0f, 1.0f);
    r3 = _798;
    float4 _805 = r1;
    _805.z = r3.x * r3.y;
    r1 = _805;
    float3 _811 = r1.xyz * r1.xyz;
    r1 = float4(_811.x, _811.y, _811.z, r1.w);
    float3 _818 = r3.xxx * r1.xyz;
    r1 = float4(_818.x, _818.y, _818.z, r1.w);
    float3 _825 = r2.xyz * r1.xyz;
    r1 = float4(_825.x, _825.y, _825.z, r1.w);
    float3 _838 = r1.yyy * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r2 = float4(_838.x, _838.y, _838.z, r2.w);
    float3 _854 = (float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z) * r1.xxx) + r2.xyz;
    r1 = float4(_854.x, _854.y, r1.z, _854.z);
    float3 _870 = (float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z) * r1.zzz) + r1.xyw;
    r1 = float4(_870.x, _870.y, _870.z, r1.w);
    float3 _883 = (r1.xyz * cb2_m[9].x.xxx) + r0.xyz;
    r0 = float4(_883.x, _883.y, _883.z, r0.w);
    float3 _896 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_896.x, _896.y, _896.z, o0.w);
    float4 _900 = o0;
    _900.w = asfloat(1065353216u);
    o0 = _900;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
