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
    float4 _42 = r0;
    _42.x = asfloat((shader_in[1].x < cb2_m[0].x) ? 4294967295u : 0u);
    r0 = _42;
    float4 _53 = r0;
    _53.y = asfloat((cb2_m[0].y < shader_in[1].x) ? 4294967295u : 0u);
    r0 = _53;
    float4 _63 = r0;
    _63.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _63;
    float4 _71 = o0;
    _71.x = asfloat(asuint(r0.x) & 1065353216u);
    o0 = _71;
    float3 _76 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(o0.x, _76.x, _76.y, _76.z);
}

void frag_main()
{
    float4 _82 = shader_in[1];
    _82.x = v1;
    shader_in[1] = _82;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
