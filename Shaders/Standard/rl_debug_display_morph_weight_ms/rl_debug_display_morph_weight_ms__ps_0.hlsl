static float4 v1;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;

void ps_main()
{
    o0 = shader_in[1];
}

void frag_main()
{
    shader_in[1] = v1;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
