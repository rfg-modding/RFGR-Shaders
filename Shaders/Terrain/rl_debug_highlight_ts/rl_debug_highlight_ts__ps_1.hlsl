cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
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
    float4 _42 = r0;
    _42.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _42;
    float4 _53 = r0;
    _53.y = asfloat((shader_in[1].x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _53;
    float4 _63 = r0;
    _63.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _63;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float3 _75 = asfloat(uint3(1065353216u, 0u, 0u));
    o0 = float4(_75.x, _75.y, _75.z, o0.w);
    float4 _81 = o0;
    _81.w = shader_in[1].x;
    o0 = _81;
}

void frag_main()
{
    float4 _86 = shader_in[1];
    _86.x = v1;
    shader_in[1] = _86;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
