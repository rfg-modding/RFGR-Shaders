cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};


static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _40 = r0;
    _40.x = (-shader_in[1].y) + asfloat(1065353216u);
    r0 = _40;
    float3 _49 = r0.xxx * asfloat(uint3(1065353216u, 0u, 0u));
    r0 = float4(_49.x, _49.y, _49.z, r0.w);
    float3 _71 = (shader_in[1].yyy * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_71.x, _71.y, _71.z, r0.w);
    float4 _77 = r0;
    _77.w = shader_in[1].x;
    r0 = _77;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
