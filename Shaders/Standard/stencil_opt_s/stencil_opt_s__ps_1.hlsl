cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};


static float4 shader_in[1];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _44 = r0;
    _44.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _44;
    float4 _56 = r0;
    _56.y = asfloat((cb2_m[0].w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _56;
    float4 _66 = r0;
    _66.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _66;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    o0 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
