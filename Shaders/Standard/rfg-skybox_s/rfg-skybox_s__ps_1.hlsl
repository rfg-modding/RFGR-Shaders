cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};


static float4 v2;

struct SPIRV_Cross_Input
{
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _47 = r0;
    _47.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _47;
    float4 _57 = r0;
    _57.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _57;
    float4 _67 = r0;
    _67.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _67;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float4 _82 = r0;
    _82.x = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _82;
    float3 _90 = r0.xxx * shader_in[2].xyz;
    r0 = float4(_90.x, _90.y, _90.z, r0.w);
    float3 _108 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    o0 = float4(_108.x, _108.y, _108.z, o0.w);
    float4 _112 = o0;
    _112.w = asfloat(1065353216u);
    o0 = _112;
}

void frag_main()
{
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v2 = stage_input.v2;
    frag_main();
}
