cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};


static float v1;

struct SPIRV_Cross_Input
{
    float v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;

void ps_main()
{
    float3 _40 = float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z);
    o0 = float4(_40.x, _40.y, _40.z, o0.w);
    float4 _47 = o0;
    _47.w = shader_in[1].x;
    o0 = _47;
}

void frag_main()
{
    float4 _52 = shader_in[1];
    _52.x = v1;
    shader_in[1] = _52;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
