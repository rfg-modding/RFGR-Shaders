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

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
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
static float4 r4;
static float4 r5;
static float4 r6;

void ps_main()
{
    float2 _75 = shader_in[4].xy * float2(cb2_m[3].x, cb2_m[3].y);
    r0 = float4(_75.x, _75.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt2s2, r0.xyxx.xy);
    float3 _97 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _97.x, _97.y, _97.z);
    float4 _106 = r0;
    _106.y = r0.y + r0.y;
    r0 = _106;
    float4 _113 = r1;
    _113.x = r1.w * r1.y;
    r1 = _113;
    float4 _125 = r0;
    _125.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _125;
    float4 _129 = r0;
    _129.x = r1.x;
    r0 = _129;
    float4 _137 = r0;
    _137.w = (-r0.w) + asfloat(1065353216u);
    r0 = _137;
    float4 _143 = r0;
    _143.w = max(r0.w, asfloat(0u));
    r0 = _143;
    float4 _148 = r0;
    _148.z = sqrt(r0.w);
    r0 = _148;
    float3 _155 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float3 _169 = (cb2_m[2].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_169.x, _169.y, _169.z, r0.w);
    float4 _185 = r0;
    _185.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _185;
    float4 _190 = r0;
    _190.w = rsqrt(r0.w);
    r0 = _190;
    float3 _196 = r0.www * r0.xyz;
    r0 = float4(_196.x, _196.y, _196.z, r0.w);
    float3 _202 = -shader_in[2].xyz;
    float4 _214 = r0;
    _214.w = mad(_202.z, r0.xyz.z, mad(_202.y, r0.xyz.y, _202.x * r0.xyz.x));
    r0 = _214;
    float4 _221 = r1;
    _221.x = r0.w + r0.w;
    r1 = _221;
    float4 _227 = r0;
    _227.w = r0.w + asfloat(1065353216u);
    r0 = _227;
    float4 _233 = r0;
    _233.w = log2(abs(r0.w));
    r0 = _233;
    float4 _240 = r0;
    _240.w = r0.w * asfloat(1083179008u);
    r0 = _240;
    float4 _245 = r0;
    _245.w = exp2(r0.w);
    r0 = _245;
    float4 _252 = r0;
    _252.w = r0.w + asfloat(925353388u);
    r0 = _252;
    float4 _258 = r0;
    _258.w = min(r0.w, asfloat(1065353216u));
    r0 = _258;
    float4 _266 = r0;
    _266.w = r0.w * cb2_m[3].w;
    r0 = _266;
    float3 _278 = (r0.xyz * (-r1.xxx)) + (-shader_in[2].xyz);
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float4 _295 = r1;
    _295.x = mad(r1.xyz.z, shader_in[3].xyz.z, mad(r1.xyz.y, shader_in[3].xyz.y, r1.xyz.x * shader_in[3].xyz.x));
    r1 = _295;
    float4 _304 = r1;
    _304.y = abs(r1.x) + abs(r1.x);
    r1 = _304;
    float4 _316 = r1;
    _316.x = clamp((r1.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r1 = _316;
    float4 _326 = r1;
    _326.y = ((-r1.y) * r1.y) + asfloat(1065353216u);
    r1 = _326;
    float4 _332 = r1;
    _332.y = max(r1.y, asfloat(0u));
    r1 = _332;
    float4 _341 = r1;
    _341.y = r1.y * cb0_m[7].y;
    r1 = _341;
    float3 _361 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_361.x, _361.y, _361.z, r2.w);
    float3 _378 = (r1.xxx * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(_378.x, r1.y, _378.y, _378.z);
    float3 _397 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r1.xzw);
    r3 = float4(_397.x, _397.y, _397.z, r3.w);
    float3 _408 = (r1.yyy * r3.xyz) + r1.xzw;
    r1 = float4(_408.x, _408.y, _408.z, r1.w);
    float2 _420 = shader_in[4].xy * float2(cb2_m[4].x, cb2_m[4].y);
    r3 = float4(_420.x, _420.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt3s3, r3.xyxx.xy);
    float3 _441 = r3.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_441.x, _441.y, _441.z, r3.w);
    float3 _448 = r0.www * r3.xyz;
    r3 = float4(_448.x, _448.y, _448.z, r3.w);
    float3 _455 = r1.xyz * r3.xyz;
    r1 = float4(_455.x, _455.y, _455.z, r1.w);
    float3 _464 = r1.xyz * cb0_m[7].z.xxx;
    r1 = float4(_464.x, _464.y, _464.z, r1.w);
    float4 _481 = r0;
    _481.w = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _481;
    float4 _490 = r1;
    _490.w = abs(r0.w) + abs(r0.w);
    r1 = _490;
    float4 _499 = r0;
    _499.w = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _499;
    float3 _514 = (r0.www * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(_514.x, _514.y, _514.z, r2.w);
    float4 _525 = r0;
    _525.w = ((-r1.w) * r1.w) + asfloat(1065353216u);
    r0 = _525;
    float4 _531 = r0;
    _531.w = max(r0.w, asfloat(0u));
    r0 = _531;
    float4 _539 = r0;
    _539.w = r0.w * cb0_m[7].y;
    r0 = _539;
    float3 _557 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r2.xyz);
    r4 = float4(_557.x, _557.y, _557.z, r4.w);
    float3 _568 = (r0.www * r4.xyz) + r2.xyz;
    r2 = float4(_568.x, _568.y, _568.z, r2.w);
    float3 _577 = (-r2.xyz) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r4 = float4(_577.x, _577.y, _577.z, r4.w);
    float3 _589 = (cb2_m[3].z.xxx * r4.xyz) + r2.xyz;
    r2 = float4(_589.x, _589.y, _589.z, r2.w);
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].zwzz.xy);
    float4 _606 = r0;
    _606.w = r4.w * cb2_m[2].x;
    r0 = _606;
    r5 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _627 = r5.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r6 = float4(_627.x, _627.y, _627.z, r6.w);
    float3 _645 = ((-r5.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r4.xyz;
    r4 = float4(_645.x, _645.y, _645.z, r4.w);
    float3 _655 = (r0.www * r4.xyz) + r6.xyz;
    r4 = float4(_655.x, _655.y, _655.z, r4.w);
    float3 _665 = (r4.xyz * r2.xyz) + r1.xyz;
    r1 = float4(_665.x, _665.y, _665.z, r1.w);
    float2 _678 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_678.x, _678.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _692 = r1.xyz * r2.xxx;
    r1 = float4(_692.x, _692.y, _692.z, r1.w);
    float4 _710 = r0;
    _710.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _710;
    float4 _715 = r0;
    _715.w = rsqrt(r0.w);
    r0 = _715;
    float3 _726 = (shader_in[1].xyz * r0.www) + shader_in[2].xyz;
    r2 = float4(_726.x, r2.y, _726.y, _726.z);
    float3 _734 = r0.www * shader_in[1].xyz;
    r6 = float4(_734.x, _734.y, _734.z, r6.w);
    float4 _750 = r0;
    _750.w = mad(r0.xyz.z, r6.xyz.z, mad(r0.xyz.y, r6.xyz.y, r0.xyz.x * r6.xyz.x));
    r0 = _750;
    float4 _765 = r1;
    _765.w = mad(r2.xzw.z, r2.xzw.z, mad(r2.xzw.y, r2.xzw.y, r2.xzw.x * r2.xzw.x));
    r1 = _765;
    float4 _770 = r1;
    _770.w = rsqrt(r1.w);
    r1 = _770;
    float3 _776 = r1.www * r2.xzw;
    r2 = float4(_776.x, r2.y, _776.y, _776.z);
    float4 _793 = r0;
    _793.x = clamp(mad(r0.xyz.z, r2.xzw.z, mad(r0.xyz.y, r2.xzw.y, r0.xyz.x * r2.xzw.x)), 0.0f, 1.0f);
    r0 = _793;
    float4 _799 = r0;
    _799.x = r0.x + asfloat(925353388u);
    r0 = _799;
    float4 _804 = r0;
    _804.x = log2(r0.x);
    r0 = _804;
    float4 _812 = r0;
    _812.x = r0.x * cb2_m[4].z;
    r0 = _812;
    float4 _817 = r0;
    _817.x = exp2(r0.x);
    r0 = _817;
    float4 _827 = r0;
    _827.y = asfloat((asfloat(0u) >= r0.w) ? 4294967295u : 0u);
    r0 = _827;
    float4 _832 = r0;
    _832.w = clamp(r0.w, 0.0f, 1.0f);
    r0 = _832;
    float4 _839 = r0;
    _839.z = r2.y * r0.w;
    r0 = _839;
    float4 _846 = r0;
    _846.w = max(r2.y, asfloat(1028443341u));
    r0 = _846;
    float4 _855 = r0;
    _855.y = (asuint(r0.y) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _855;
    float4 _862 = r0;
    _862.x = r0.y * r0.x;
    r0 = _862;
    float4 _869 = r0;
    _869.x = r0.w * r0.x;
    r0 = _869;
    float3 _875 = r3.xyz * r0.xxx;
    r0 = float4(_875.x, _875.y, r0.z, _875.z);
    float3 _885 = (r0.zzz * r4.xyz) + r0.xyw;
    r0 = float4(_885.x, _885.y, _885.z, r0.w);
    float3 _901 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_901.x, _901.y, _901.z, r0.w);
    float4 _910 = r0;
    _910.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _910;
    float3 _916 = r0.xyz * r0.www;
    r0 = float4(_916.x, _916.y, _916.z, r0.w);
    float3 _933 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r5 = float4(_933.x, _933.y, _933.z, r5.w);
    o0 = r5 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _962 = gl_FragCoord;
    _962.w = 1.0f / _962.w;
    shader_in[0] = float4(_962.xy.x, _962.xy.y, shader_in[0].z, shader_in[0].w);
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
