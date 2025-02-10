cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;

void ps_main()
{
    float2 _49 = float2(cb2_m[3].x, cb2_m[3].y);
    float2 _52 = asfloat(uint2(0u, 0u));
    bool2 _55 = bool2(_49.x == _52.x, _49.y == _52.y);
    float2 _60 = asfloat(uint2(_55.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _55.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(_60.x, _60.y, r0.z, r0.w);
    uint2 _65 = asuint(r0.xy);
    float2 _68 = asfloat(uint2(1065353216u, 1065353216u));
    float2 _74 = float2(cb2_m[3].x, cb2_m[3].y);
    bool2 _75 = bool2(_65.x != uint2(0u, 0u).x, _65.y != uint2(0u, 0u).y);
    float2 _76 = float2(_75.x ? _68.x : _74.x, _75.y ? _68.y : _74.y);
    r0 = float4(_76.x, _76.y, r0.z, r0.w);
    float2 _85 = r0.xy * shader_in[1].xy;
    r0 = float4(_85.x, _85.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float4 _104 = r0;
    _104.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _104;
    float4 _114 = r0;
    _114.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _114;
    float4 _124 = r0;
    _124.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _124;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float3 _135 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_135.x, _135.y, _135.z, o0.w);
    float4 _140 = o0;
    _140.w = r0.w;
    o0 = _140;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
