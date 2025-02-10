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

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float3 _65 = float3(cb2_m[2].w, cb2_m[2].x, cb2_m[2].y);
    float3 _68 = asfloat(uint3(0u, 0u, 0u));
    bool3 _71 = bool3(_65.x == _68.x, _65.y == _68.y, _65.z == _68.z);
    float3 _76 = asfloat(uint3(_71.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _71.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _71.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r0 = float4(_76.x, _76.y, _76.z, r0.w);
    uint3 _81 = asuint(r0.xyz);
    float3 _84 = asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    float3 _92 = float3(cb2_m[2].w, cb2_m[2].x, cb2_m[2].y);
    bool3 _93 = bool3(_81.x != uint3(0u, 0u, 0u).x, _81.y != uint3(0u, 0u, 0u).y, _81.z != uint3(0u, 0u, 0u).z);
    float3 _94 = float3(_93.x ? _84.x : _92.x, _93.y ? _84.y : _92.y, _93.z ? _84.z : _92.z);
    r0 = float4(_94.x, _94.y, _94.z, r0.w);
    float4 _106 = r1;
    _106.x = asfloat((cb2_m[3].x == asfloat(0u)) ? 4294967295u : 0u);
    r1 = _106;
    float4 _117 = r0;
    _117.w = (asuint(r1.x) != 0u) ? asfloat(1065353216u) : cb2_m[3].x;
    r0 = _117;
    r0 = r0.xwyz * shader_in[1].xyxy;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    float3 _152 = r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_152.x, _152.y, _152.z, r0.w);
    float3 _164 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _164.x, _164.y, _164.z);
    float4 _173 = r1;
    _173.y = r1.y + r1.y;
    r1 = _173;
    float4 _180 = r2;
    _180.x = r2.w * r2.y;
    r2 = _180;
    float4 _192 = r0;
    _192.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r0 = _192;
    float4 _196 = r1;
    _196.x = r2.x;
    r1 = _196;
    float4 _203 = r0;
    _203.w = (-r0.w) + asfloat(1065353216u);
    r0 = _203;
    float4 _209 = r0;
    _209.w = max(r0.w, asfloat(0u));
    r0 = _209;
    float4 _214 = r1;
    _214.z = sqrt(r0.w);
    r1 = _214;
    float3 _221 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_221.x, _221.y, _221.z, r1.w);
    float3 _233 = (cb2_m[2].z.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_233.x, _233.y, _233.z, r1.w);
    float4 _249 = r0;
    _249.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _249;
    float4 _254 = r0;
    _254.w = rsqrt(r0.w);
    r0 = _254;
    float3 _260 = r0.www * r1.xyz;
    r1 = float4(_260.x, _260.y, _260.z, r1.w);
    float4 _278 = r0;
    _278.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _278;
    float4 _283 = r1;
    _283.w = rsqrt(r0.w);
    r1 = _283;
    float4 _288 = r0;
    _288.w = sqrt(r0.w);
    r0 = _288;
    float4 _304 = r0;
    _304.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _304;
    float3 _315 = (shader_in[2].xyz * r1.www) + shader_in[3].xyz;
    r2 = float4(_315.x, _315.y, _315.z, r2.w);
    float3 _323 = r1.www * shader_in[2].xyz;
    r3 = float4(_323.x, _323.y, _323.z, r3.w);
    float4 _340 = r1;
    _340.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _340;
    float4 _345 = r1;
    _345.w = rsqrt(r1.w);
    r1 = _345;
    float3 _351 = r1.www * r2.xyz;
    r2 = float4(_351.x, _351.y, _351.z, r2.w);
    float4 _368 = r1;
    _368.w = clamp(mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r1 = _368;
    float4 _375 = r1;
    _375.w = r1.w + asfloat(925353388u);
    r1 = _375;
    float4 _380 = r1;
    _380.w = log2(r1.w);
    r1 = _380;
    float4 _389 = r1;
    _389.w = r1.w * cb2_m[4].y;
    r1 = _389;
    float4 _394 = r1;
    _394.w = exp2(r1.w);
    r1 = _394;
    float4 _409 = r2;
    _409.x = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    r2 = _409;
    float3 _414 = -shader_in[3].xyz;
    float4 _426 = r1;
    _426.x = mad(_414.z, r1.xyz.z, mad(_414.y, r1.xyz.y, _414.x * r1.xyz.x));
    r1 = _426;
    float4 _432 = r1;
    _432.x = r1.x + asfloat(1065353216u);
    r1 = _432;
    float4 _438 = r1;
    _438.x = log2(abs(r1.x));
    r1 = _438;
    float4 _445 = r1;
    _445.x = r1.x * asfloat(1083179008u);
    r1 = _445;
    float4 _450 = r1;
    _450.x = exp2(r1.x);
    r1 = _450;
    float4 _456 = r1;
    _456.x = r1.x + asfloat(925353388u);
    r1 = _456;
    float4 _462 = r1;
    _462.x = min(r1.x, asfloat(1065353216u));
    r1 = _462;
    float4 _470 = r1;
    _470.x = r1.x * cb2_m[3].z;
    r1 = _470;
    float3 _474 = -r3.xyz;
    float4 _487 = r1;
    _487.y = mad(_474.z, shader_in[4].xyz.z, mad(_474.y, shader_in[4].xyz.y, _474.x * shader_in[4].xyz.x));
    r1 = _487;
    float4 _495 = r1;
    _495.y = min(r1.y, cb1_m[2].x);
    r1 = _495;
    float4 _504 = r1;
    _504.y = r1.y + (-cb1_m[2].y);
    r1 = _504;
    float4 _510 = r1;
    _510.y = max(r1.y, asfloat(0u));
    r1 = _510;
    float4 _518 = r1;
    _518.y = r1.y * cb1_m[2].z;
    r1 = _518;
    float4 _526 = r1;
    _526.z = asfloat((asfloat(0u) >= r2.x) ? 4294967295u : 0u);
    r1 = _526;
    float4 _531 = r2;
    _531.x = clamp(r2.x, 0.0f, 1.0f);
    r2 = _531;
    float4 _540 = r1;
    _540.z = (asuint(r1.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r1 = _540;
    float4 _547 = r1;
    _547.z = r1.z * r1.w;
    r1 = _547;
    float4 _556 = r1;
    _556.w = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _556;
    float4 _566 = r1;
    _566.y = (asuint(r1.w) != 0u) ? r1.y : asfloat(1065353216u);
    r1 = _566;
    float4 _573 = r0;
    _573.w = r0.w * r1.y;
    r0 = _573;
    float4 _580 = r1;
    _580.y = max(r0.w, asfloat(1028443341u));
    r1 = _580;
    float4 _587 = r0;
    _587.w = r0.w * r2.x;
    r0 = _587;
    float4 _594 = r1;
    _594.y = r1.y * r1.z;
    r1 = _594;
    float4 _603 = r2;
    _603.x = shader_in[1].x * cb2_m[3].w;
    r2 = _603;
    float4 _612 = r2;
    _612.y = shader_in[1].y * cb2_m[4].x;
    r2 = _612;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, r2.xyxx.xy);
    float3 _631 = r2.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_631.x, _631.y, _631.z, r2.w);
    float3 _638 = r1.xxx * r2.xyz;
    r1 = float4(_638.x, r1.y, _638.y, _638.z);
    float3 _645 = r1.xzw * r1.yyy;
    r1 = float4(_645.x, _645.y, _645.z, r1.w);
    float3 _655 = (r0.www * r0.xyz) + r1.xyz;
    r0 = float4(_655.x, _655.y, _655.z, r0.w);
    float3 _668 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_668.x, _668.y, _668.z, r0.w);
    float4 _677 = r0;
    _677.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _677;
    float3 _683 = r0.xyz * r0.www;
    r0 = float4(_683.x, _683.y, _683.z, r0.w);
    float4 _687 = r0;
    _687.w = asfloat(1065353216u);
    r0 = _687;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
