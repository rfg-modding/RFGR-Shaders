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
static float4 r1;

void ps_main()
{
    float4 _39 = r0;
    _39.x = (-shader_in[1].x) + asfloat(1065353216u);
    r0 = _39;
    r1 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w) * asfloat(uint4(1058642330u, 1058306785u, 1057300152u, 1065353216u));
    float3 _71 = r0.xxx * r1.xyz;
    r0 = float4(_71.x, _71.y, _71.z, r0.w);
    float4 _80 = o0;
    _80.w = r1.w * cb6_m[0].w;
    o0 = _80;
    float3 _97 = (shader_in[1].xxx * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_97.x, _97.y, _97.z, r0.w);
    float3 _110 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    o0 = float4(_110.x, _110.y, _110.z, o0.w);
}

void frag_main()
{
    float4 _116 = shader_in[1];
    _116.x = v1;
    shader_in[1] = _116;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
