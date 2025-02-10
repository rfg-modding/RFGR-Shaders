cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;

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
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _59 = r0;
    _59.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _59;
    float4 _69 = r0;
    _69.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _69;
    float4 _79 = r0;
    _79.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _79;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float3 _90 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_90.x, _90.y, _90.z, o0.w);
    float4 _95 = o0;
    _95.w = r0.w;
    o0 = _95;
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
