cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};


static float4 shader_in[1];
static float4 o0;

void ps_main()
{
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
