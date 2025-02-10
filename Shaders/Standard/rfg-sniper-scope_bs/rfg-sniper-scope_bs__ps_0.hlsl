cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
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
    float3 _49 = shader_in[1].xxx * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z);
    r0 = float4(_49.x, _49.y, _49.z, r0.w);
    float3 _63 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    o0 = float4(_63.x, _63.y, _63.z, o0.w);
    float4 _67 = o0;
    _67.w = asfloat(0u);
    o0 = _67;
}

void frag_main()
{
    float4 _72 = shader_in[1];
    _72.x = v1;
    shader_in[1] = _72;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
