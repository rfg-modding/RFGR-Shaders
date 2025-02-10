static float4 shader_in[3];
static float4 o0;

void ps_main()
{
    o0 = asfloat(uint4(0u, 0u, 0u, 1065353216u));
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
