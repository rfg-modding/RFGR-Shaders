cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};


static float4 shader_in[1];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _40 = r0;
    _40.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _40;
    float4 _50 = r0;
    _50.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _50;
    float4 _60 = r0;
    _60.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _60;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    o0 = asfloat(uint4(1065353216u, 0u, 0u, 1065353216u));
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
