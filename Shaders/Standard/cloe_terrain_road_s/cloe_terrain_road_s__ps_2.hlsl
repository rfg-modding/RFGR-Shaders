cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[22] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt12s12;

static float2 v5;

struct SPIRV_Cross_Input
{
    float2 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;

void ps_main()
{
    float2 _46 = shader_in[5].xy + asfloat(uint2(3128950784u, 3128950784u));
    r0 = float4(_46.x, _46.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt12s12, r0.xyxx.xy);
    float4 _69 = r0;
    _69.x = r0.w + (-cb2_m[21].z);
    r0 = _69;
    float4 _79 = r0;
    _79.x = clamp(r0.x + asfloat(1065353216u), 0.0f, 1.0f);
    r0 = _79;
    float4 _94 = r0;
    _94.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _94;
    float4 _104 = r0;
    _104.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _104;
    float4 _114 = r0;
    _114.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _114;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _125 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_125.x, _125.y, _125.z, o0.w);
    float4 _130 = o0;
    _130.w = r0.x;
    o0 = _130;
}

void frag_main()
{
    shader_in[5] = float4(v5.x, v5.y, shader_in[5].z, shader_in[5].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v5 = stage_input.v5;
    frag_main();
}
