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
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
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
    float3 _156 = (cb2_m[4].y.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _202.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _202;
    float4 _207 = r0;
    _207.w = rsqrt(r0.w);
    r0 = _207;
    float4 _225 = r1;
    _225.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _225;
    float4 _230 = r1;
    _230.y = rsqrt(r1.x);
    r1 = _230;
    float4 _235 = r1;
    _235.x = sqrt(r1.x);
    r1 = _235;
    float4 _251 = r1;
    _251.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _251;
    float3 _258 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _258.x, _258.y, _258.z);
    float3 _269 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_269.x, _269.y, _269.z, r2.w);
    float4 _286 = r0;
    _286.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _286;
    float4 _291 = r0;
    _291.w = rsqrt(r0.w);
    r0 = _291;
    float3 _297 = r0.www * r2.xyz;
    r2 = float4(_297.x, _297.y, _297.z, r2.w);
    float4 _314 = r0;
    _314.w = clamp(mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r0 = _314;
    float4 _330 = r0;
    _330.x = clamp(mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x)), 0.0f, 1.0f);
    r0 = _330;
    float3 _334 = -r1.yzw;
    float4 _347 = r0;
    _347.y = mad(_334.z, shader_in[4].xyz.z, mad(_334.y, shader_in[4].xyz.y, _334.x * shader_in[4].xyz.x));
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
    float4 _384 = r0;
    _384.z = log2(r0.w);
    r0 = _384;
    float2 _394 = r0.zz * float2(cb2_m[4].w, cb2_m[4].x);
    r2 = float4(_394.x, _394.y, r2.z, r2.w);
    float4 _403 = r2;
    _403.z = r0.z * cb2_m[3].z;
    r2 = _403;
    float3 _407 = exp2(r2.zxy);
    r1 = float4(r1.x, _407.x, _407.y, _407.z);
    float4 _419 = r0;
    _419.z = (r1.y * r0.x) + (-r0.x);
    r0 = _419;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _437 = r0;
    _437.x = (r2.w * r0.z) + r0.x;
    r0 = _437;
    float4 _448 = r0;
    _448.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _448;
    float4 _458 = r0;
    _458.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _458;
    float4 _465 = r0;
    _465.y = r0.y * r1.x;
    r0 = _465;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _486 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_486.x, _486.y, _486.z, r3.w);
    float3 _493 = r0.yyy * r3.xyz;
    r3 = float4(_493.x, _493.y, _493.z, r3.w);
    float3 _500 = r0.xxx * r3.xyz;
    r0 = float4(_500.x, r0.y, _500.y, _500.z);
    float4 _509 = r1;
    _509.x = r1.w * cb2_m[3].w;
    r1 = _509;
    float4 _517 = r1;
    _517.y = r1.z * cb2_m[4].z;
    r1 = _517;
    float3 _529 = r1.yyy * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(r1.x, _529.x, _529.y, _529.z);
    float3 _546 = (r1.xxx * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r1.yzw);
    r3 = float4(_546.x, _546.y, _546.z, r3.w);
    float3 _556 = (r2.www * r3.xyz) + r1.yzw;
    r1 = float4(_556.x, _556.y, _556.z, r1.w);
    float3 _563 = r2.xyz * r1.xyz;
    r1 = float4(_563.x, _563.y, _563.z, r1.w);
    float3 _570 = r0.yyy * r1.xyz;
    r1 = float4(_570.x, _570.y, _570.z, r1.w);
    float2 _583 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_583.x, _583.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _598 = r0;
    _598.y = max(r2.y, asfloat(1028443341u));
    r0 = _598;
    float3 _604 = r0.yyy * r1.xyz;
    r1 = float4(_604.x, _604.y, _604.z, r1.w);
    float3 _614 = (r0.xzw * r2.yyy) + r1.xyz;
    r0 = float4(_614.x, _614.y, _614.z, r0.w);
    float3 _627 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_627.x, _627.y, _627.z, r0.w);
    float4 _636 = r0;
    _636.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _636;
    float3 _642 = r0.xyz * r0.www;
    r0 = float4(_642.x, _642.y, _642.z, r0.w);
    float4 _646 = r0;
    _646.w = asfloat(1065353216u);
    r0 = _646;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _676 = gl_FragCoord;
    _676.w = 1.0f / _676.w;
    shader_in[0] = float4(_676.xy.x, _676.xy.y, shader_in[0].z, shader_in[0].w);
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
