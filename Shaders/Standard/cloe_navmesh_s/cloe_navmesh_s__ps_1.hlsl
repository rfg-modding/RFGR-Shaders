cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};


static float v1;

struct SPIRV_Cross_Input
{
    float v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _46 = r0;
    _46.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _46;
    float4 _55 = r0;
    _55.y = asfloat((asfloat(0u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _55;
    float4 _65 = r0;
    _65.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _65;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float4 _82 = r0;
    _82.x = asfloat((shader_in[1].x < cb2_m[0].x) ? 4294967295u : 0u);
    r0 = _82;
    float4 _93 = r0;
    _93.y = asfloat((cb2_m[0].y < shader_in[1].x) ? 4294967295u : 0u);
    r0 = _93;
    float4 _103 = r0;
    _103.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _103;
    float4 _111 = o0;
    _111.x = asfloat(asuint(r0.x) & 1065353216u);
    o0 = _111;
    float3 _116 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(o0.x, _116.x, _116.y, _116.z);
}

void frag_main()
{
    float4 _122 = shader_in[1];
    _122.x = v1;
    shader_in[1] = _122;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
