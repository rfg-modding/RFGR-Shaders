cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float4 _65 = r0;
    _65.x = clamp(shader_in[5].z / cb2_m[3].x, 0.0f, 1.0f);
    r0 = _65;
    float4 _75 = r0;
    _75.y = r0.x + (-cb2_m[2].x);
    r0 = _75;
    float2 _89 = (-float2(cb2_m[2].x, cb2_m[2].y)) + asfloat(uint2(1065353216u, 1065353216u));
    r1 = float4(_89.x, _89.y, r1.z, r1.w);
    float4 _98 = r0;
    _98.y = r0.y / r1.x;
    r0 = _98;
    float4 _109 = r0;
    _109.y = (r0.y * r1.y) + cb2_m[2].y;
    r0 = _109;
    float4 _121 = r0;
    _121.z = asfloat((r0.x < cb2_m[2].x) ? 4294967295u : 0u);
    r0 = _121;
    float2 _133 = r0.xx + (-float2(cb2_m[1].z, cb2_m[1].x));
    r1 = float4(_133.x, _133.y, r1.z, r1.w);
    float2 _150 = (-float2(cb2_m[1].z, cb2_m[1].w)) + float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(r1.x, r1.y, _150.x, _150.y);
    float4 _158 = r1;
    _158.x = r1.x / r1.z;
    r1 = _158;
    float4 _169 = r1;
    _169.x = (r1.x * r1.w) + cb2_m[1].w;
    r1 = _169;
    float4 _180 = r0;
    _180.y = (asuint(r0.z) != 0u) ? r1.x : r0.y;
    r0 = _180;
    float2 _189 = float2(cb2_m[1].z, cb2_m[1].x);
    bool2 _191 = bool2(r0.xx.x < _189.x, r0.xx.y < _189.y);
    float2 _195 = asfloat(uint2(_191.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _191.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r1 = float4(_195.x, r1.y, _195.y, r1.w);
    float2 _211 = (-float2(cb2_m[1].x, cb2_m[1].y)) + float2(cb2_m[1].z, cb2_m[1].w);
    r2 = float4(_211.x, _211.y, r2.z, r2.w);
    float4 _220 = r0;
    _220.z = r1.y / r2.x;
    r0 = _220;
    float4 _231 = r0;
    _231.z = (r0.z * r2.y) + cb2_m[1].y;
    r0 = _231;
    float4 _242 = r0;
    _242.y = (asuint(r1.x) != 0u) ? r0.z : r0.y;
    r0 = _242;
    float4 _250 = r0;
    _250.x = r0.x / cb2_m[1].x;
    r0 = _250;
    float4 _260 = r0;
    _260.z = cb2_m[1].y + (-cb2_m[2].z);
    r0 = _260;
    float4 _271 = r0;
    _271.x = (r0.x * r0.z) + cb2_m[2].z;
    r0 = _271;
    float4 _282 = r0;
    _282.x = (asuint(r1.z) != 0u) ? r0.x : r0.y;
    r0 = _282;
    float2 _294 = (r0.xx * asfloat(uint2(3211998003u, 3204448256u))) + asfloat(uint2(1064514355u, 1065353216u));
    r0 = float4(_294.x, _294.y, r0.z, r0.w);
    float4 _303 = r0;
    _303.y = (-r0.x) + r0.y;
    r0 = _303;
    float4 _315 = r0;
    _315.x = (r0.w * shader_in[5].x) + (-r0.x);
    r0 = _315;
    float4 _323 = r0;
    _323.x = clamp(r0.x / r0.y, 0.0f, 1.0f);
    r0 = _323;
    float4 _333 = r0;
    _333.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _333;
    float4 _343 = r0;
    _343.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _343;
    float4 _353 = r0;
    _353.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _353;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _363 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_363.x, _363.y, _363.z, o0.w);
    float4 _368 = o0;
    _368.w = r0.x;
    o0 = _368;
}

void frag_main()
{
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v5 = stage_input.v5;
    frag_main();
}
