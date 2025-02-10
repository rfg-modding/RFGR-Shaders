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
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
    float3 _157 = (cb2_m[7].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _203.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _203;
    float4 _208 = r0;
    _208.w = rsqrt(r0.w);
    r0 = _208;
    float4 _226 = r1;
    _226.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
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
    float3 _259 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _259.x, _259.y, _259.z);
    float3 _270 = (shader_in[3].xyz * r0.www) + r1.yzw;
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
    _347.y = mad(_333.z, shader_in[4].xyz.z, mad(_333.y, shader_in[4].xyz.y, _333.x * shader_in[4].xyz.x));
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
    float4 _378 = r0;
    _378.y = r0.y * cb1_m[2].z;
    r0 = _378;
    float4 _384 = r0;
    _384.z = max(r0.w, asfloat(0u));
    r0 = _384;
    float4 _392 = r0;
    _392.z = (-r0.z) + asfloat(1064011039u);
    r0 = _392;
    float4 _400 = r0;
    _400.z = clamp(r0.z * asfloat(3244593737u), 0.0f, 1.0f);
    r0 = _400;
    float4 _406 = r0;
    _406.w = max(r0.x, asfloat(0u));
    r0 = _406;
    float2 _419 = (r0.xx * asfloat(uint2(1056964608u, 1056964608u))) + asfloat(uint2(3196059648u, 1048576000u));
    r1 = float4(r1.x, _419.x, _419.y, r1.w);
    float2 _431 = clamp(r1.yz * asfloat(uint2(1082130432u, 1068149419u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(r1.x, _431.x, _431.y, r1.w);
    float2 _436 = log2(r1.yz);
    r1 = float4(r1.x, _436.x, _436.y, r1.w);
    float2 _444 = r1.yz * asfloat(uint2(1074580685u, 1074580685u));
    r1 = float4(r1.x, _444.x, _444.y, r1.w);
    float2 _449 = exp2(r1.yz);
    r1 = float4(r1.x, _449.x, _449.y, r1.w);
    float4 _461 = r0;
    _461.x = asfloat((asfloat(964689920u) < r0.w) ? 4294967295u : 0u);
    r0 = _461;
    float4 _468 = r0;
    _468.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _468;
    float4 _475 = r0;
    _475.x = r0.x * r0.z;
    r0 = _475;
    float4 _480 = r0;
    _480.x = log2(r0.x);
    r0 = _480;
    float4 _486 = r0;
    _486.x = r0.x * asfloat(1074580685u);
    r0 = _486;
    float4 _491 = r0;
    _491.x = exp2(r0.x);
    r0 = _491;
    float4 _500 = r0;
    _500.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _500;
    float4 _510 = r0;
    _510.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _510;
    float4 _517 = r0;
    _517.y = r0.y * r1.x;
    r0 = _517;
    float4 _524 = r0;
    _524.x = r0.y * r0.x;
    r0 = _524;
    float2 _530 = r0.yy * r1.yz;
    r0 = float4(r0.x, _530.x, _530.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _545 = r0.xxx * r1.xyz;
    r1 = float4(_545.x, _545.y, _545.z, r1.w);
    float3 _558 = r1.xxx * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_558.x, _558.y, _558.z, r2.w);
    float3 _571 = r1.yyy * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_571.x, _571.y, _571.z, r3.w);
    float3 _589 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_589.x, _589.y, r1.z, _589.z);
    float3 _599 = (r2.xyz * r1.xyw) + r3.xyz;
    r1 = float4(_599.x, _599.y, r1.z, _599.z);
    float3 _613 = r1.zzz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r2 = float4(_613.x, _613.y, _613.z, r2.w);
    float3 _629 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r1.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_629.x, _629.y, _629.z, r3.w);
    float3 _639 = (r1.xyw * r3.xyz) + r2.xyz;
    r1 = float4(_639.x, _639.y, _639.z, r1.w);
    float3 _648 = r1.xyz * cb2_m[7].w.xxx;
    r1 = float4(_648.x, _648.y, _648.z, r1.w);
    float2 _661 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(_661.x, r0.y, r0.z, _661.y);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r0.xwxx.xy);
    float4 _676 = r0;
    _676.x = max(r2.y, asfloat(1028443341u));
    r0 = _676;
    float3 _682 = r0.xxx * r1.xyz;
    r1 = float4(_682.x, _682.y, _682.z, r1.w);
    float3 _695 = r0.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_695.x, _695.y, r0.z, _695.z);
    float3 _708 = r0.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_708.x, r2.y, _708.y, _708.z);
    float3 _724 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_724.x, _724.y, _724.z, r3.w);
    float3 _734 = (r0.xyw * r3.xyz) + r2.xzw;
    r0 = float4(_734.x, _734.y, _734.z, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _755 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r2 = float4(_755.x, r2.y, _755.y, _755.z);
    float3 _762 = r0.xyz * r2.xzw;
    r0 = float4(_762.x, _762.y, _762.z, r0.w);
    float3 _772 = (r0.xyz * r2.yyy) + r1.xyz;
    r0 = float4(_772.x, _772.y, _772.z, r0.w);
    float3 _785 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_785.x, _785.y, _785.z, r0.w);
    float4 _794 = r0;
    _794.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _794;
    float3 _800 = r0.xyz * r0.www;
    r3 = float4(_800.x, _800.y, _800.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _831 = gl_FragCoord;
    _831.w = 1.0f / _831.w;
    shader_in[0] = float4(_831.xy.x, _831.xy.y, shader_in[0].z, shader_in[0].w);
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
