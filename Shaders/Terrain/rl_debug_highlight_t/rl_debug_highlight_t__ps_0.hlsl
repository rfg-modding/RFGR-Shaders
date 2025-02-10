cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};


static float4 shader_in[1];
static float4 o0;

void ps_main()
{
    o0 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w) * asfloat(uint4(1065353216u, 0u, 0u, 1065353216u));
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
