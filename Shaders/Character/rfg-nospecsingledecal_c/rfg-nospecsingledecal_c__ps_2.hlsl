cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v2;

struct SPIRV_Cross_Input
{
    float2 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _51 = r0;
    _51.x = shader_in[2].x * cb2_m[1].w;
    r0 = _51;
    float4 _61 = r0;
    _61.y = shader_in[2].y * cb2_m[2].x;
    r0 = _61;
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float4 _82 = r0;
    _82.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _82;
    float4 _92 = r0;
    _92.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _92;
    float4 _102 = r0;
    _102.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _102;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float3 _113 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_113.x, _113.y, _113.z, o0.w);
    float4 _118 = o0;
    _118.w = r0.w;
    o0 = _118;
}

void frag_main()
{
    shader_in[2] = float4(v2.x, v2.y, shader_in[2].z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v2 = stage_input.v2;
    frag_main();
}
