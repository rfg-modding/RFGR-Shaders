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
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
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
    float3 _156 = (cb2_m[4].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    float4 _311 = r1;
    _311.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _311;
    float4 _328 = r0;
    _328.x = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _328;
    float4 _338 = r0;
    _338.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _338;
    float4 _343 = r0;
    _343.y = log2(r1.x);
    r0 = _343;
    float4 _352 = r1;
    _352.x = r0.y * cb2_m[5].x;
    r1 = _352;
    float4 _360 = r1;
    _360.y = r0.y * cb2_m[4].y;
    r1 = _360;
    float4 _369 = r1;
    _369.z = r0.y * cb2_m[3].w;
    r1 = _369;
    float3 _373 = exp2(r1.zxy);
    r1 = float4(_373.x, _373.y, _373.z, r1.w);
    float2 _384 = r1.yz * float2(cb2_m[4].w, cb2_m[4].x);
    r0 = float4(r0.x, _384.x, _384.y, r0.w);
    float4 _393 = r1;
    _393.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _393;
    float4 _404 = r1;
    _404.x = (r1.x * r1.y) + (-r0.w);
    r1 = _404;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float4 _422 = r1;
    _422.x = (r2.w * r1.x) + r0.w;
    r1 = _422;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _443 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(r1.x, _443.x, _443.y, _443.z);
    float3 _450 = r1.yzw * r1.xxx;
    r3 = float4(_450.x, _450.y, _450.z, r3.w);
    r4 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float3 _470 = (r0.www * r4.xyz) + (-r3.xyz);
    r4 = float4(_470.x, _470.y, _470.z, r4.w);
    float4 _479 = r0;
    _479.w = r4.w * cb2_m[3].z;
    r0 = _479;
    float4 _490 = r1;
    _490.x = ((-r4.w) * cb2_m[3].z) + asfloat(1065353216u);
    r1 = _490;
    float3 _499 = (r0.www * r4.xyz) + r3.xyz;
    r3 = float4(_499.x, _499.y, _499.z, r3.w);
    float3 _512 = r0.yyy * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r4 = float4(_512.x, _512.y, _512.z, r4.w);
    float3 _529 = (r0.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r4.xyz);
    r0 = float4(r0.x, _529.x, _529.y, _529.z);
    float3 _539 = (r2.www * r0.yzw) + r4.xyz;
    r0 = float4(r0.x, _539.x, _539.y, _539.z);
    float3 _546 = r2.xyz * r0.yzw;
    r0 = float4(r0.x, _546.x, _546.y, _546.z);
    float3 _553 = r1.xxx * r0.yzw;
    r0 = float4(r0.x, _553.x, _553.y, _553.z);
    float2 _566 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_566.x, _566.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _581 = r1;
    _581.x = max(r2.y, asfloat(1028443341u));
    r1 = _581;
    float3 _587 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _587.x, _587.y, _587.z);
    float3 _597 = (r3.xyz * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _597.x, _597.y, _597.z);
    float3 _610 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _610.x, _610.y, _610.z);
    float4 _619 = r1;
    _619.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _619;
    float4 _628 = r1;
    _628.x = abs(r1.x) + abs(r1.x);
    r1 = _628;
    float4 _638 = r1;
    _638.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _638;
    float4 _644 = r1;
    _644.x = max(r1.x, asfloat(0u));
    r1 = _644;
    float4 _653 = r1;
    _653.x = r1.x * cb0_m[7].y;
    r1 = _653;
    float3 _677 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(r2.x, _677.x, _677.y, _677.z);
    float3 _693 = (r0.xxx * r2.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(r2.x, _693.x, _693.y, _693.z);
    float3 _707 = (-r2.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(_707.x, _707.y, _707.z, r3.w);
    float3 _717 = (r1.xxx * r3.xyz) + r2.yzw;
    r2 = float4(r2.x, _717.x, _717.y, _717.z);
    float3 _724 = r2.xxx * r2.yzw;
    r2 = float4(_724.x, _724.y, _724.z, r2.w);
    float3 _734 = (r2.xyz * r1.yzw) + r0.yzw;
    r0 = float4(_734.x, _734.y, _734.z, r0.w);
    float4 _743 = r0;
    _743.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _743;
    float3 _749 = r0.xyz * r0.www;
    r0 = float4(_749.x, _749.y, _749.z, r0.w);
    float3 _766 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_766.x, _766.y, _766.z, r0.w);
    float4 _770 = r0;
    _770.w = asfloat(1065353216u);
    r0 = _770;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _798 = gl_FragCoord;
    _798.w = 1.0f / _798.w;
    shader_in[0] = float4(_798.xy.x, _798.xy.y, shader_in[0].z, shader_in[0].w);
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
