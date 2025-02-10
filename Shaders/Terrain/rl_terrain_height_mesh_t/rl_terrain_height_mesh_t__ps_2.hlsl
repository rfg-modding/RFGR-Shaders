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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt8s8;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt6s6;
uniform sampler2D SPIRV_Cross_Combinedt7s7;

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
};

static float4 shader_in[6];
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
    float4 _82 = r0;
    _82.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _82;
    float4 _92 = r0;
    _92.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _92;
    float4 _102 = r0;
    _102.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _102;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt8s8, shader_in[5].xyxx.xy);
    float3 _126 = (-r0.zyx) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_126.x, _126.y, _126.z, r1.w);
    float4 _135 = r0;
    _135.w = r1.y * r1.z;
    r0 = _135;
    float4 _143 = r2;
    _143.x = r1.x * r0.w;
    r2 = _143;
    float4 _150 = r2;
    _150.y = r0.z * r0.w;
    r2 = _150;
    float4 _157 = r2;
    _157.z = r0.y * r1.z;
    r2 = _157;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _177 = (r1.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _177.x, _177.y, _177.z);
    float4 _185 = r1;
    _185.x = r1.w * r1.z;
    r1 = _185;
    float4 _197 = r0;
    _197.y = mad(r1.xy.y, r1.xy.y, r1.xy.x * r1.xy.x);
    r0 = _197;
    float4 _204 = r0;
    _204.y = (-r0.y) + asfloat(1065353216u);
    r0 = _204;
    float4 _210 = r0;
    _210.y = max(r0.y, asfloat(0u));
    r0 = _210;
    float4 _215 = r1;
    _215.z = sqrt(r0.y);
    r1 = _215;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    float3 _231 = (r3.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(r3.x, _231.x, _231.y, _231.z);
    float4 _239 = r3;
    _239.x = r3.w * r3.z;
    r3 = _239;
    float4 _251 = r0;
    _251.y = mad(r3.xy.y, r3.xy.y, r3.xy.x * r3.xy.x);
    r0 = _251;
    float4 _258 = r0;
    _258.y = (-r0.y) + asfloat(1065353216u);
    r0 = _258;
    float4 _264 = r0;
    _264.y = max(r0.y, asfloat(0u));
    r0 = _264;
    float4 _269 = r3;
    _269.z = sqrt(r0.y);
    r3 = _269;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _285 = (r4.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(r4.x, _285.x, _285.y, _285.z);
    float4 _293 = r4;
    _293.x = r4.w * r4.z;
    r4 = _293;
    float4 _305 = r0;
    _305.y = mad(r4.xy.y, r4.xy.y, r4.xy.x * r4.xy.x);
    r0 = _305;
    float4 _312 = r0;
    _312.y = (-r0.y) + asfloat(1065353216u);
    r0 = _312;
    float4 _318 = r0;
    _318.y = max(r0.y, asfloat(0u));
    r0 = _318;
    float4 _323 = r4;
    _323.z = sqrt(r0.y);
    r4 = _323;
    r5 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float3 _339 = (r5.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r5 = float4(r5.x, _339.x, _339.y, _339.z);
    float4 _347 = r5;
    _347.x = r5.w * r5.z;
    r5 = _347;
    float4 _359 = r0;
    _359.y = mad(r5.xy.y, r5.xy.y, r5.xy.x * r5.xy.x);
    r0 = _359;
    float4 _366 = r0;
    _366.y = (-r0.y) + asfloat(1065353216u);
    r0 = _366;
    float4 _372 = r0;
    _372.y = max(r0.y, asfloat(0u));
    r0 = _372;
    float4 _377 = r5;
    _377.z = sqrt(r0.y);
    r5 = _377;
    float3 _383 = r2.yyy * r3.xyz;
    r0 = float4(r0.x, _383.x, _383.y, _383.z);
    float3 _393 = (r1.xyz * r2.xxx) + r0.yzw;
    r0 = float4(r0.x, _393.x, _393.y, _393.z);
    float3 _403 = (r4.xyz * r2.zzz) + r0.yzw;
    r0 = float4(r0.x, _403.x, _403.y, _403.z);
    float3 _413 = (r5.xyz * r0.xxx) + r0.yzw;
    r0 = float4(r0.x, _413.x, _413.y, _413.z);
    float4 _429 = r1;
    _429.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _429;
    float4 _434 = r1;
    _434.x = rsqrt(r1.x);
    r1 = _434;
    float3 _440 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _440.x, _440.y, _440.z);
    float4 _459 = r1;
    _459.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _459;
    float4 _464 = r1;
    _464.x = rsqrt(r1.x);
    r1 = _464;
    float3 _471 = r1.xxx * shader_in[2].xyz;
    r1 = float4(r1.x, _471.x, _471.y, _471.z);
    r3 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[4].xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[5].zwzz.xy);
    r5 = tex2D(SPIRV_Cross_Combinedt6s6, shader_in[1].xyxx.xy);
    r6 = tex2D(SPIRV_Cross_Combinedt7s7, shader_in[4].zwzz.xy);
    float3 _517 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_517.x, _517.y, _517.z, r3.w);
    float3 _530 = r4.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_530.x, _530.y, _530.z, r4.w);
    float3 _537 = r2.yyy * r4.xyz;
    r4 = float4(_537.x, _537.y, _537.z, r4.w);
    float3 _547 = (r3.xyz * r2.xxx) + r4.xyz;
    r3 = float4(_547.x, _547.y, _547.z, r3.w);
    float3 _560 = r5.xyz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r4 = float4(_560.x, _560.y, _560.z, r4.w);
    float3 _570 = (r4.xyz * r2.zzz) + r3.xyz;
    r3 = float4(_570.x, _570.y, _570.z, r3.w);
    float3 _584 = r6.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r4 = float4(_584.x, _584.y, _584.z, r4.w);
    float3 _594 = (r4.xyz * r0.xxx) + r3.xyz;
    r3 = float4(_594.x, _594.y, _594.z, r3.w);
    float4 _599 = r6;
    _599.x = r3.w;
    r6 = _599;
    float4 _603 = r6;
    _603.y = r4.w;
    r6 = _603;
    float4 _607 = r6;
    _607.z = r5.w;
    r6 = _607;
    float4 _611 = r2;
    _611.w = r0.x;
    r2 = _611;
    float4 _627 = r0;
    _627.x = mad(r6.w, r2.w, mad(r6.z, r2.z, mad(r6.y, r2.y, r6.x * r2.x)));
    r0 = _627;
    float4 _645 = r1;
    _645.y = clamp(mad(r0.yzw.z, r1.yzw.z, mad(r0.yzw.y, r1.yzw.y, r0.yzw.x * r1.yzw.x)), 0.0f, 1.0f);
    r1 = _645;
    float4 _662 = r1;
    _662.z = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _662;
    float4 _667 = r1;
    _667.z = rsqrt(r1.z);
    r1 = _667;
    float3 _674 = r1.zzz * shader_in[3].xyz;
    r2 = float4(_674.x, _674.y, _674.z, r2.w);
    float3 _685 = (shader_in[2].xyz * r1.xxx) + r2.xyz;
    r1 = float4(_685.x, r1.y, _685.y, _685.z);
    float4 _701 = r2;
    _701.w = mad(r1.xzw.z, r1.xzw.z, mad(r1.xzw.y, r1.xzw.y, r1.xzw.x * r1.xzw.x));
    r2 = _701;
    float4 _706 = r2;
    _706.w = rsqrt(r2.w);
    r2 = _706;
    float3 _712 = r1.xzw * r2.www;
    r1 = float4(_712.x, r1.y, _712.y, _712.z);
    float3 _717 = -r2.xyz;
    float4 _729 = r2;
    _729.x = mad(_717.z, r0.yzw.z, mad(_717.y, r0.yzw.y, _717.x * r0.yzw.x));
    r2 = _729;
    float4 _735 = r2;
    _735.x = r2.x + asfloat(1065353216u);
    r2 = _735;
    float4 _740 = r2;
    _740.x = log2(r2.x);
    r2 = _740;
    float4 _747 = r2;
    _747.x = r2.x * asfloat(1083179008u);
    r2 = _747;
    float4 _752 = r2;
    _752.x = exp2(r2.x);
    r2 = _752;
    float4 _758 = r2;
    _758.x = min(r2.x, asfloat(1065353216u));
    r2 = _758;
    float4 _774 = r0;
    _774.y = clamp(mad(r0.yzw.z, r1.xzw.z, mad(r0.yzw.y, r1.xzw.y, r0.yzw.x * r1.xzw.x)), 0.0f, 1.0f);
    r0 = _774;
    float4 _781 = r0;
    _781.y = r0.y + asfloat(925353388u);
    r0 = _781;
    float4 _788 = r0;
    _788.x = (-r0.x) + asfloat(1065353216u);
    r0 = _788;
    float4 _795 = r0;
    _795.x = r0.x * r0.y;
    r0 = _795;
    float4 _802 = r0;
    _802.x = r2.x * r0.x;
    r0 = _802;
    float4 _809 = r0;
    _809.x = r0.x * asfloat(1148846080u);
    r0 = _809;
    float3 _818 = (r3.xyz * r1.yyy) + r0.xxx;
    r0 = float4(_818.x, _818.y, _818.z, r0.w);
    float3 _831 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_831.x, _831.y, _831.z, o0.w);
    float4 _835 = o0;
    _835.w = asfloat(1065353216u);
    o0 = _835;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
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
