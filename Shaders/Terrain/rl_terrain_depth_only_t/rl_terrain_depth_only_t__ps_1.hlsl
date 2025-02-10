cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};


static float4 shader_in[1];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _45 = r0;
    _45.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _45;
    float4 _58 = r0;
    _58.y = asfloat((cb0_m[4].w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _58;
    float4 _68 = r0;
    _68.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _68;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    o0 = float4(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z, cb0_m[4].w);
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
