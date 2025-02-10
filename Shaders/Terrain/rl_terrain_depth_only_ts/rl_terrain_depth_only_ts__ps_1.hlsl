cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};


static float v1;

struct SPIRV_Cross_Input
{
    float v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _47 = r0;
    _47.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _47;
    float4 _58 = r0;
    _58.y = asfloat((shader_in[1].x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _58;
    float4 _68 = r0;
    _68.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _68;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float3 _85 = float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z);
    o0 = float4(_85.x, _85.y, _85.z, o0.w);
    float4 _91 = o0;
    _91.w = shader_in[1].x;
    o0 = _91;
}

void frag_main()
{
    float4 _96 = shader_in[1];
    _96.x = v1;
    shader_in[1] = _96;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
