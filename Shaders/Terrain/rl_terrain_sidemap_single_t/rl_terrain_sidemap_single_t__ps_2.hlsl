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
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

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
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float4 _65 = r0;
    _65.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _65;
    float4 _77 = r0;
    _77.y = asfloat((shader_in[3].w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _77;
    float4 _87 = r0;
    _87.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _87;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float4 _104 = r0;
    _104.x = abs(shader_in[3].z) + abs(shader_in[3].x);
    r0 = _104;
    float4 _113 = r0;
    _113.x = abs(shader_in[3].x) / r0.x;
    r0 = _113;
    float4 _120 = r0;
    _120.x = r0.x + asfloat(3202770534u);
    r0 = _120;
    float4 _130 = r0;
    _130.x = clamp(r0.x * asfloat(1092616192u), 0.0f, 1.0f);
    r0 = _130;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].zwzz.xy);
    r2 = (-r1) + r2;
    r1 = (r0.xxxx * r2) + r1;
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _181 = (r2.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _181.x, _181.y, _181.z);
    float4 _189 = r2;
    _189.x = r2.w * r2.z;
    r2 = _189;
    float4 _201 = r0;
    _201.y = mad(r2.xy.y, r2.xy.y, r2.xy.x * r2.xy.x);
    r0 = _201;
    float4 _209 = r0;
    _209.y = (-r0.y) + asfloat(1065353216u);
    r0 = _209;
    float4 _215 = r0;
    _215.y = max(r0.y, asfloat(0u));
    r0 = _215;
    float4 _220 = r2;
    _220.z = sqrt(r0.y);
    r2 = _220;
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].zwzz.xy);
    float3 _236 = (r3.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(r3.x, _236.x, _236.y, _236.z);
    float4 _244 = r3;
    _244.x = r3.w * r3.z;
    r3 = _244;
    float4 _256 = r0;
    _256.y = mad(r3.xy.y, r3.xy.y, r3.xy.x * r3.xy.x);
    r0 = _256;
    float4 _263 = r0;
    _263.y = (-r0.y) + asfloat(1065353216u);
    r0 = _263;
    float4 _269 = r0;
    _269.y = max(r0.y, asfloat(0u));
    r0 = _269;
    float4 _274 = r3;
    _274.z = sqrt(r0.y);
    r3 = _274;
    float3 _281 = (-r2.xyz) + r3.xyz;
    r0 = float4(r0.x, _281.x, _281.y, _281.z);
    float3 _291 = (r0.xxx * r0.yzw) + r2.xyz;
    r0 = float4(_291.x, _291.y, _291.z, r0.w);
    float3 _305 = r1.xyz * float3(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z);
    r1 = float4(_305.x, _305.y, _305.z, r1.w);
    float4 _323 = r0;
    _323.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _323;
    float4 _328 = r0;
    _328.w = rsqrt(r0.w);
    r0 = _328;
    float3 _335 = r0.www * shader_in[1].xyz;
    r2 = float4(_335.x, _335.y, _335.z, r2.w);
    float4 _352 = r2;
    _352.x = clamp(mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r2 = _352;
    float4 _370 = r2;
    _370.y = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r2 = _370;
    float4 _375 = r2;
    _375.y = rsqrt(r2.y);
    r2 = _375;
    float3 _382 = r2.yyy * shader_in[2].xyz;
    r2 = float4(r2.x, _382.x, _382.y, _382.z);
    float3 _393 = (shader_in[1].xyz * r0.www) + r2.yzw;
    r3 = float4(_393.x, _393.y, _393.z, r3.w);
    float4 _409 = r0;
    _409.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _409;
    float4 _414 = r0;
    _414.w = rsqrt(r0.w);
    r0 = _414;
    float3 _420 = r0.www * r3.xyz;
    r3 = float4(_420.x, _420.y, _420.z, r3.w);
    float3 _425 = -r2.yzw;
    float4 _437 = r0;
    _437.w = mad(_425.z, r0.xyz.z, mad(_425.y, r0.xyz.y, _425.x * r0.xyz.x));
    r0 = _437;
    float4 _443 = r0;
    _443.w = r0.w + asfloat(1065353216u);
    r0 = _443;
    float4 _448 = r0;
    _448.w = log2(r0.w);
    r0 = _448;
    float4 _455 = r0;
    _455.w = r0.w * asfloat(1083179008u);
    r0 = _455;
    float4 _460 = r0;
    _460.w = exp2(r0.w);
    r0 = _460;
    float4 _466 = r0;
    _466.w = min(r0.w, asfloat(1065353216u));
    r0 = _466;
    float4 _482 = r0;
    _482.x = clamp(mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x)), 0.0f, 1.0f);
    r0 = _482;
    float4 _489 = r0;
    _489.x = r0.x + asfloat(925353388u);
    r0 = _489;
    float4 _496 = r0;
    _496.y = (-r1.w) + asfloat(1065353216u);
    r0 = _496;
    float4 _503 = r0;
    _503.x = r0.y * r0.x;
    r0 = _503;
    float4 _510 = r0;
    _510.x = r0.w * r0.x;
    r0 = _510;
    float4 _517 = r0;
    _517.x = r0.x * asfloat(1148846080u);
    r0 = _517;
    float3 _526 = (r1.xyz * r2.xxx) + r0.xxx;
    r0 = float4(_526.x, _526.y, _526.z, r0.w);
    float3 _539 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_539.x, _539.y, _539.z, o0.w);
    float4 _545 = o0;
    _545.w = shader_in[3].w;
    o0 = _545;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
