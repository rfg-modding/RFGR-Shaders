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
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _78 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _78.x, _78.y, _78.z);
    float4 _87 = r0;
    _87.y = r0.y + r0.y;
    r0 = _87;
    float4 _94 = r1;
    _94.x = r1.w * r1.y;
    r1 = _94;
    float4 _106 = r0;
    _106.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _106;
    float4 _110 = r0;
    _110.x = r1.x;
    r0 = _110;
    float4 _118 = r0;
    _118.w = (-r0.w) + asfloat(1065353216u);
    r0 = _118;
    float4 _125 = r0;
    _125.w = max(r0.w, asfloat(0u));
    r0 = _125;
    float4 _130 = r0;
    _130.z = sqrt(r0.w);
    r0 = _130;
    float3 _137 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_137.x, _137.y, _137.z, r0.w);
    float3 _154 = (cb2_m[4].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_154.x, _154.y, _154.z, r0.w);
    float4 _170 = r0;
    _170.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _170;
    float4 _175 = r0;
    _175.w = rsqrt(r0.w);
    r0 = _175;
    float3 _181 = r0.www * r0.xyz;
    r0 = float4(_181.x, _181.y, _181.z, r0.w);
    float4 _200 = r0;
    _200.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _200;
    float4 _205 = r0;
    _205.w = rsqrt(r0.w);
    r0 = _205;
    float3 _212 = r0.www * shader_in[3].xyz;
    r1 = float4(_212.x, _212.y, _212.z, r1.w);
    float4 _228 = r0;
    _228.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _228;
    float4 _234 = r0;
    _234.w = max(r0.w, asfloat(0u));
    r0 = _234;
    float4 _241 = r0;
    _241.w = (-r0.w) + asfloat(1065353216u);
    r0 = _241;
    float4 _248 = r0;
    _248.w = r0.w * r0.w;
    r0 = _248;
    float4 _266 = r1;
    _266.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _266;
    float4 _271 = r1;
    _271.x = rsqrt(r1.x);
    r1 = _271;
    float3 _278 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float4 _294 = r1;
    _294.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r1 = _294;
    float4 _310 = r0;
    _310.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _310;
    float4 _322 = r0;
    _322.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _322;
    float4 _330 = r0;
    _330.y = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _330;
    float4 _337 = r0;
    _337.y = (-r0.y) + asfloat(1065353216u);
    r0 = _337;
    float4 _347 = r0;
    _347.y = (r0.y * r0.y) + r0.w;
    r0 = _347;
    float4 _354 = r0;
    _354.y = r0.y + r0.y;
    r0 = _354;
    float4 _359 = r0;
    _359.y = sqrt(r0.y);
    r0 = _359;
    float4 _366 = r0;
    _366.y = (-r0.y) + asfloat(1065353216u);
    r0 = _366;
    float4 _372 = r0;
    _372.y = max(r0.y, asfloat(0u));
    r0 = _372;
    float4 _377 = r0;
    _377.y = log2(r0.y);
    r0 = _377;
    float4 _384 = r0;
    _384.y = r0.y * asfloat(1074580685u);
    r0 = _384;
    float4 _389 = r0;
    _389.y = exp2(r0.y);
    r0 = _389;
    float3 _401 = r0.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _401.x, _401.y, _401.z);
    float4 _407 = r1;
    _407.y = clamp(r1.x, 0.0f, 1.0f);
    r1 = _407;
    float4 _414 = r1;
    _414.x = r1.x * asfloat(1084227584u);
    r1 = _414;
    float4 _419 = r1;
    _419.x = clamp(r1.x, 0.0f, 1.0f);
    r1 = _419;
    float4 _424 = r1;
    _424.x = log2(r1.x);
    r1 = _424;
    float4 _430 = r1;
    _430.x = r1.x * asfloat(1074580685u);
    r1 = _430;
    float4 _435 = r1;
    _435.x = exp2(r1.x);
    r1 = _435;
    float4 _440 = r1;
    _440.y = log2(r1.y);
    r1 = _440;
    float4 _446 = r1;
    _446.y = r1.y * asfloat(1074580685u);
    r1 = _446;
    float4 _451 = r1;
    _451.y = exp2(r1.y);
    r1 = _451;
    float3 _463 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_463.x, _463.y, _463.z, r2.w);
    float3 _481 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(r1.x, _481.x, _481.y, _481.z);
    float3 _491 = (r0.yzw * r1.yzw) + r2.xyz;
    r0 = float4(r0.x, _491.x, _491.y, _491.z);
    float3 _504 = r1.xxx * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(r1.x, _504.x, _504.y, _504.z);
    float3 _520 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r1.xxx) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r2 = float4(_520.x, _520.y, _520.z, r2.w);
    float3 _530 = (r0.yzw * r2.xyz) + r1.yzw;
    r0 = float4(r0.x, _530.x, _530.y, _530.z);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _551 = r1.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_551.x, _551.y, _551.z, r2.w);
    float3 _558 = r0.yzw * r2.xyz;
    r0 = float4(r0.x, _558.x, _558.y, _558.z);
    float2 _572 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_572.x, _572.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float3 _587 = r0.yzw * r3.yyy;
    r0 = float4(r0.x, _587.x, _587.y, _587.z);
    float3 _600 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _600.x, _600.y, _600.z);
    float4 _609 = r2;
    _609.w = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r2 = _609;
    float4 _618 = r2;
    _618.w = abs(r2.w) + abs(r2.w);
    r2 = _618;
    float4 _628 = r2;
    _628.w = ((-r2.w) * r2.w) + asfloat(1065353216u);
    r2 = _628;
    float4 _634 = r2;
    _634.w = max(r2.w, asfloat(0u));
    r2 = _634;
    float4 _643 = r2;
    _643.w = r2.w * cb0_m[7].y;
    r2 = _643;
    float3 _667 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r3 = float4(r3.x, _667.x, _667.y, _667.z);
    float3 _683 = (r0.xxx * r3.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r3 = float4(r3.x, _683.x, _683.y, _683.z);
    float3 _697 = (-r3.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r4 = float4(_697.x, _697.y, _697.z, r4.w);
    float3 _708 = (r2.www * r4.xyz) + r3.yzw;
    r3 = float4(r3.x, _708.x, _708.y, _708.z);
    float3 _715 = r3.xxx * r3.yzw;
    r3 = float4(_715.x, _715.y, _715.z, r3.w);
    float3 _725 = (r3.xyz * r2.xyz) + r0.yzw;
    r0 = float4(_725.x, _725.y, _725.z, r0.w);
    float4 _734 = r0;
    _734.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _734;
    float3 _740 = r0.xyz * r0.www;
    r0 = float4(_740.x, _740.y, _740.z, r0.w);
    float3 _757 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_757.x, _757.y, _757.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _788 = gl_FragCoord;
    _788.w = 1.0f / _788.w;
    shader_in[0] = float4(_788.xy.x, _788.xy.y, shader_in[0].z, shader_in[0].w);
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
