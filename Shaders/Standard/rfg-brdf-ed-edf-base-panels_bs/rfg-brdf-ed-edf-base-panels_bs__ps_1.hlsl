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
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
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
static float4 r6;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
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
    float3 _161 = (cb2_m[7].y.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    float4 _212 = r1;
    _212.x = rsqrt(r0.w);
    r1 = _212;
    float4 _217 = r0;
    _217.w = sqrt(r0.w);
    r0 = _217;
    float4 _234 = r0;
    _234.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _234;
    float3 _241 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float4 _257 = r1;
    _257.w = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r1 = _257;
    float4 _267 = r2;
    _267.x = (r1.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r2 = _267;
    float4 _273 = r1;
    _273.w = max(r1.w, asfloat(0u));
    r1 = _273;
    float4 _280 = r2;
    _280.x = r2.x * r2.x;
    r2 = _280;
    float4 _287 = r2;
    _287.x = r2.x * r2.x;
    r2 = _287;
    float4 _294 = r2;
    _294.y = r2.x * r2.x;
    r2 = _294;
    float3 _307 = r2.xxx * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_307.x, r2.y, _307.y, _307.z);
    float4 _315 = r2;
    _315.y = r2.y * r2.y;
    r2 = _315;
    float3 _330 = (r2.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xzw;
    r2 = float4(_330.x, _330.y, _330.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].xyxx.xy);
    float3 _352 = r3.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r4 = float4(_352.x, _352.y, _352.z, r4.w);
    r5 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[1].xyxx.xy);
    float3 _379 = ((-r3.xyz) * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) + r5.xyz;
    r3 = float4(_379.x, _379.y, _379.z, r3.w);
    float4 _388 = r2;
    _388.w = r5.w * cb2_m[7].x;
    r2 = _388;
    float3 _397 = (r2.www * r3.xyz) + r4.xyz;
    r3 = float4(_397.x, _397.y, _397.z, r3.w);
    r4 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[5].zwzz.xy);
    float3 _413 = (-r3.xyz) + r4.xyz;
    r6 = float4(_413.x, _413.y, _413.z, r6.w);
    float4 _424 = r3;
    _424.w = r4.w * cb2_m[6].x;
    r3 = _424;
    float3 _433 = (r3.www * r6.xyz) + r3.xyz;
    r3 = float4(_433.x, _433.y, _433.z, r3.w);
    float4 _442 = r6;
    _442.x = (-cb2_m[6].y) + asfloat(1065353216u);
    r6 = _442;
    float4 _449 = r6;
    _449.x = r2.w * r6.x;
    r6 = _449;
    float4 _458 = r2;
    _458.w = (r2.w * r3.w) + asfloat(1065353216u);
    r2 = _458;
    float4 _465 = r3;
    _465.w = r3.w * r6.x;
    r3 = _465;
    float4 _477 = r2;
    _477.w = ((-r5.w) * cb2_m[7].x) + r2.w;
    r2 = _477;
    float3 _484 = (-r4.xyz) + r5.xyz;
    r4 = float4(_484.x, _484.y, _484.z, r4.w);
    float4 _497 = r2;
    _497.w = ((-r4.w) * cb2_m[6].x) + r2.w;
    r2 = _497;
    float3 _506 = (r3.www * r4.xyz) + r3.xyz;
    r3 = float4(_506.x, _506.y, _506.z, r3.w);
    float3 _513 = r2.xyz * r3.xyz;
    r2 = float4(_513.x, _513.y, _513.z, r2.w);
    float3 _518 = -r1.xyz;
    float4 _532 = r3;
    _532.x = mad(_518.z, shader_in[4].xyz.z, mad(_518.y, shader_in[4].xyz.y, _518.x * shader_in[4].xyz.x));
    r3 = _532;
    float4 _540 = r3;
    _540.x = min(r3.x, cb1_m[2].x);
    r3 = _540;
    float4 _549 = r3;
    _549.x = r3.x + (-cb1_m[2].y);
    r3 = _549;
    float4 _555 = r3;
    _555.x = max(r3.x, asfloat(0u));
    r3 = _555;
    float4 _563 = r3;
    _563.x = r3.x * cb1_m[2].z;
    r3 = _563;
    float4 _574 = r3;
    _574.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r3 = _574;
    float4 _584 = r3;
    _584.x = (asuint(r3.y) != 0u) ? r3.x : asfloat(1065353216u);
    r3 = _584;
    float4 _591 = r0;
    _591.w = r0.w * r3.x;
    r0 = _591;
    float3 _597 = r0.www * r2.xyz;
    r2 = float4(_597.x, _597.y, _597.z, r2.w);
    float4 _616 = r3;
    _616.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r3 = _616;
    float4 _621 = r3;
    _621.x = rsqrt(r3.x);
    r3 = _621;
    float3 _631 = (shader_in[3].xyz * r3.xxx) + r1.xyz;
    r1 = float4(_631.x, _631.y, _631.z, r1.w);
    float4 _647 = r3;
    _647.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r3 = _647;
    float4 _652 = r3;
    _652.x = rsqrt(r3.x);
    r3 = _652;
    float3 _658 = r1.xyz * r3.xxx;
    r1 = float4(_658.x, _658.y, _658.z, r1.w);
    float4 _674 = r0;
    _674.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _674;
    float4 _680 = r0;
    _680.x = max(r0.x, asfloat(0u));
    r0 = _680;
    float4 _685 = r0;
    _685.x = log2(r0.x);
    r0 = _685;
    float3 _694 = r0.xxx * asfloat(uint3(1115684864u, 1107296256u, 1098907648u));
    r0 = float4(_694.x, _694.y, _694.z, r0.w);
    float3 _699 = exp2(r0.xyz);
    r0 = float4(_699.x, _699.y, _699.z, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float3 _714 = r0.xyz * r3.xyz;
    r0 = float4(_714.x, _714.y, _714.z, r0.w);
    float3 _724 = clamp(r0.xyz + r0.xyz, 0.0f.xxx, 1.0f.xxx);
    r0 = float4(_724.x, _724.y, _724.z, r0.w);
    float3 _737 = r0.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r1 = float4(_737.x, _737.y, _737.z, r1.w);
    float3 _753 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r0.xxx) + r1.xyz;
    r1 = float4(_753.x, _753.y, _753.z, r1.w);
    float3 _769 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r0.zzz) + r1.xyz;
    r0 = float4(_769.x, _769.y, _769.z, r0.w);
    float3 _778 = r0.xyz * cb2_m[7].z.xxx;
    r0 = float4(_778.x, _778.y, _778.z, r0.w);
    float3 _785 = r1.www * r0.xyz;
    r0 = float4(_785.x, _785.y, _785.z, r0.w);
    float3 _792 = r2.www * r0.xyz;
    r0 = float4(_792.x, _792.y, _792.z, r0.w);
    float3 _799 = r0.www * r0.xyz;
    r0 = float4(_799.x, _799.y, _799.z, r0.w);
    float2 _811 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_811.x, _811.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float4 _826 = r0;
    _826.w = max(r1.y, asfloat(1028443341u));
    r0 = _826;
    float3 _832 = r0.www * r0.xyz;
    r0 = float4(_832.x, _832.y, _832.z, r0.w);
    float3 _842 = (r2.xyz * r1.yyy) + r0.xyz;
    r0 = float4(_842.x, _842.y, _842.z, r0.w);
    float3 _855 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_855.x, _855.y, _855.z, r0.w);
    float4 _864 = r0;
    _864.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _864;
    float3 _870 = r0.xyz * r0.www;
    r0 = float4(_870.x, _870.y, _870.z, r0.w);
    float4 _874 = r0;
    _874.w = asfloat(1065353216u);
    r0 = _874;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _906 = gl_FragCoord;
    _906.w = 1.0f / _906.w;
    shader_in[0] = float4(_906.xy.x, _906.xy.y, shader_in[0].z, shader_in[0].w);
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
