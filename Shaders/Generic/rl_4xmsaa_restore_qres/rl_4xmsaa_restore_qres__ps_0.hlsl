static float4 shader_in[2];
static float4 o0;
static float4 o1;

void ps_main()
{
    o0 = asfloat(uint4(0u, 0u, 0u, 0u));
    o1 = asfloat(uint4(0u, 0u, 0u, 0u));
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
