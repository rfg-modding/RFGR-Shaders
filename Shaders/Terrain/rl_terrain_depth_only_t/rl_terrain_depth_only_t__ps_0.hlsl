cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};


static float4 shader_in[1];
static float4 o0;

void ps_main()
{
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
