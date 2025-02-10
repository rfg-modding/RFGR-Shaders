cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;
static float2 v2;
static float2 v3;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float2 _48 = shader_in[1].xy / shader_in[1].ww;
    r0 = float4(_48.x, _48.y, r0.z, r0.w);
    float2 _58 = r0.xy + asfloat(uint2(1065353216u, 1065353216u));
    r0 = float4(_58.x, _58.y, r0.z, r0.w);
    float2 _69 = shader_in[3].xx * asfloat(uint2(1041865114u, 1050253722u));
    r0 = float4(r0.x, r0.y, _69.x, _69.y);
    float2 _80 = (r0.xy * asfloat(uint2(1056964608u, 1056964608u))) + r0.zz;
    r0 = float4(r0.x, _80.x, _80.y, r0.w);
    float3 _91 = r0.xyz * asfloat(uint3(1056964608u, 1084227584u, 1077936128u));
    r0 = float4(_91.x, _91.y, _91.z, r0.w);
    float4 _99 = r0;
    _99.x = clamp(r0.x, 0.0f, 1.0f);
    r0 = _99;
    float4 _104 = r0;
    _104.w = floor(r0.w);
    r0 = _104;
    float4 _116 = r0;
    _116.w = clamp((shader_in[3].x * asfloat(1050253722u)) + (-r0.w), 0.0f, 1.0f);
    r0 = _116;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.yzyy.xy);
    float4 _134 = r0;
    _134.y = shader_in[2].y * asfloat(1017370378u);
    r0 = _134;
    float4 _143 = r0;
    _143.y = (r1.x * asfloat(1017370378u)) + r0.y;
    r0 = _143;
    float4 _150 = r0;
    _150.x = r0.y + r0.x;
    r0 = _150;
    float4 _158 = r0;
    _158.x = (-r0.x) + r0.w;
    r0 = _158;
    float4 _168 = r0;
    _168.y = ((-r0.x) * asfloat(1073741824u)) + asfloat(1065353216u);
    r0 = _168;
    float4 _178 = r0;
    _178.x = ((-abs(r0.x)) * asfloat(1073741824u)) + asfloat(1065353216u);
    r0 = _178;
    float2 _185 = max(r0.xy, asfloat(uint2(0u, 0u)));
    r0 = float4(_185.x, _185.y, r0.z, r0.w);
    float4 _191 = r0;
    _191.x = log2(r0.x);
    r0 = _191;
    float4 _198 = r0;
    _198.x = r0.x * asfloat(1120403456u);
    r0 = _198;
    float4 _203 = r0;
    _203.x = exp2(r0.x);
    r0 = _203;
    float4 _208 = r0;
    _208.y = log2(r0.y);
    r0 = _208;
    float4 _215 = r0;
    _215.y = r0.y * asfloat(1128792064u);
    r0 = _215;
    float4 _220 = r0;
    _220.y = exp2(r0.y);
    r0 = _220;
    float4 _226 = r0;
    _226.y = min(r0.y, asfloat(1065353216u));
    r0 = _226;
    float4 _234 = r0;
    _234.x = (-r0.y) + r0.x;
    r0 = _234;
    float4 _240 = r0;
    _240.x = max(r0.x, asfloat(0u));
    r0 = _240;
    float4 _247 = r0;
    _247.y = r0.x * r0.x;
    r0 = _247;
    float3 _269 = (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_269.x, _269.y, _269.z, r1.w);
    float3 _285 = (r0.yyy * r1.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _285.x, _285.y, _285.z);
    float3 _292 = r0.yzw * r0.xxx;
    r0 = float4(_292.x, _292.y, _292.z, r0.w);
    float4 _301 = r0;
    _301.w = (-shader_in[3].y) + asfloat(1065353216u);
    r0 = _301;
    float3 _307 = r0.xyz * r0.www;
    r0 = float4(_307.x, _307.y, _307.z, r0.w);
    float4 _311 = r0;
    _311.w = asfloat(1065353216u);
    r0 = _311;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = float4(v2.x, v2.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, shader_in[3].z, shader_in[3].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
