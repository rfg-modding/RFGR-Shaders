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
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _81 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _81.x, _81.y, _81.z);
    float4 _90 = r0;
    _90.y = r0.y + r0.y;
    r0 = _90;
    float4 _97 = r1;
    _97.x = r1.w * r1.y;
    r1 = _97;
    float4 _109 = r0;
    _109.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _109;
    float4 _113 = r0;
    _113.x = r1.x;
    r0 = _113;
    float4 _121 = r0;
    _121.w = (-r0.w) + asfloat(1065353216u);
    r0 = _121;
    float4 _128 = r0;
    _128.w = max(r0.w, asfloat(0u));
    r0 = _128;
    float4 _133 = r0;
    _133.z = sqrt(r0.w);
    r0 = _133;
    float3 _140 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_140.x, _140.y, _140.z, r0.w);
    float3 _156 = (cb2_m[3].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float4 _172 = r0;
    _172.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _172;
    float4 _177 = r0;
    _177.w = rsqrt(r0.w);
    r0 = _177;
    float3 _183 = r0.www * r0.xyz;
    r0 = float4(_183.x, _183.y, _183.z, r0.w);
    float4 _202 = r0;
    _202.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _202;
    float4 _207 = r0;
    _207.w = rsqrt(r0.w);
    r0 = _207;
    float4 _225 = r1;
    _225.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _225;
    float4 _230 = r1;
    _230.x = rsqrt(r1.x);
    r1 = _230;
    float3 _237 = r1.xxx * shader_in[1].xyz;
    r1 = float4(_237.x, _237.y, _237.z, r1.w);
    float3 _248 = (shader_in[2].xyz * r0.www) + r1.xyz;
    r2 = float4(_248.x, _248.y, _248.z, r2.w);
    float4 _268 = r0;
    _268.w = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _268;
    float4 _283 = r1;
    _283.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _283;
    float4 _288 = r1;
    _288.x = rsqrt(r1.x);
    r1 = _288;
    float3 _294 = r1.xxx * r2.xyz;
    r1 = float4(_294.x, _294.y, _294.z, r1.w);
    float4 _310 = r1;
    _310.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _310;
    float4 _326 = r0;
    _326.x = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _326;
    float4 _336 = r0;
    _336.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _336;
    float4 _342 = r0;
    _342.y = max(r1.x, asfloat(0u));
    r0 = _342;
    float4 _348 = r0;
    _348.z = min(r0.y, asfloat(1065353216u));
    r0 = _348;
    float4 _353 = r0;
    _353.y = log2(r0.y);
    r0 = _353;
    float4 _358 = r0;
    _358.z = log2(r0.z);
    r0 = _358;
    float4 _367 = r0;
    _367.z = r0.z * cb2_m[2].w;
    r0 = _367;
    float4 _372 = r0;
    _372.z = exp2(r0.z);
    r0 = _372;
    float4 _380 = r1;
    _380.x = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _380;
    float4 _391 = r0;
    _391.w = ((-r1.x) * r0.z) + r0.w;
    r0 = _391;
    float4 _398 = r0;
    _398.z = r0.z * r1.x;
    r0 = _398;
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _415 = r2;
    _415.x = r1.w * cb2_m[2].z;
    r2 = _415;
    float4 _425 = r0;
    _425.z = (r2.x * r0.w) + r0.z;
    r0 = _425;
    float4 _431 = r0;
    _431.z = max(r0.z, asfloat(0u));
    r0 = _431;
    float4 _442 = r0;
    _442.w = ((-r1.w) * cb2_m[2].z) + asfloat(1065353216u);
    r0 = _442;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _467 = ((-r3.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r1.xyz;
    r1 = float4(_467.x, _467.y, _467.z, r1.w);
    float3 _480 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(r2.x, _480.x, _480.y, _480.z);
    float3 _490 = (r2.xxx * r1.xyz) + r2.yzw;
    r1 = float4(_490.x, _490.y, _490.z, r1.w);
    float3 _497 = r0.zzz * r1.xyz;
    r2 = float4(_497.x, _497.y, _497.z, r2.w);
    float4 _506 = r0;
    _506.z = cb2_m[3].z + asfloat(925353388u);
    r0 = _506;
    float4 _513 = r0;
    _513.y = r0.y * r0.z;
    r0 = _513;
    float4 _518 = r0;
    _518.y = exp2(r0.y);
    r0 = _518;
    float4 _526 = r0;
    _526.y = r0.y * cb2_m[3].y;
    r0 = _526;
    float4 _533 = r0;
    _533.y = r0.w * r0.y;
    r0 = _533;
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _554 = r4.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_554.x, _554.y, _554.z, r4.w);
    float3 _561 = r0.yyy * r4.xyz;
    r0 = float4(r0.x, _561.x, _561.y, _561.z);
    float2 _574 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r4 = float4(_574.x, _574.y, r4.z, r4.w);
    r4 = tex2D(SPIRV_Cross_Combinedt15s15, r4.xyxx.xy);
    float4 _589 = r1;
    _589.w = max(r4.y, asfloat(1028443341u));
    r1 = _589;
    float3 _595 = r0.yzw * r1.www;
    r0 = float4(r0.x, _595.x, _595.y, _595.z);
    float3 _605 = (r2.xyz * r4.yyy) + r0.yzw;
    r0 = float4(r0.x, _605.x, _605.y, _605.z);
    float3 _618 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _618.x, _618.y, _618.z);
    float4 _627 = r1;
    _627.w = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _627;
    float4 _636 = r1;
    _636.w = abs(r1.w) + abs(r1.w);
    r1 = _636;
    float4 _646 = r1;
    _646.w = ((-r1.w) * r1.w) + asfloat(1065353216u);
    r1 = _646;
    float4 _652 = r1;
    _652.w = max(r1.w, asfloat(0u));
    r1 = _652;
    float4 _661 = r1;
    _661.w = r1.w * cb0_m[7].y;
    r1 = _661;
    float3 _685 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_685.x, _685.y, _685.z, r2.w);
    float3 _701 = (r0.xxx * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(_701.x, _701.y, _701.z, r2.w);
    float3 _715 = (-r2.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r4 = float4(r4.x, _715.x, _715.y, _715.z);
    float3 _725 = (r1.www * r4.yzw) + r2.xyz;
    r2 = float4(_725.x, _725.y, _725.z, r2.w);
    float3 _732 = r4.xxx * r2.xyz;
    r2 = float4(_732.x, _732.y, _732.z, r2.w);
    float3 _742 = (r2.xyz * r1.xyz) + r0.yzw;
    r0 = float4(_742.x, _742.y, _742.z, r0.w);
    float4 _751 = r0;
    _751.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _751;
    float3 _757 = r0.xyz * r0.www;
    r0 = float4(_757.x, _757.y, _757.z, r0.w);
    float3 _774 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_774.x, _774.y, _774.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _803 = gl_FragCoord;
    _803.w = 1.0f / _803.w;
    shader_in[0] = float4(_803.xy.x, _803.xy.y, shader_in[0].z, shader_in[0].w);
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
