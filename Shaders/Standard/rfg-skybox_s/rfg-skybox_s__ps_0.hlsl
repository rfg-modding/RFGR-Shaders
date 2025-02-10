cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
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
    float4 _39 = r0;
    _39.x = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _39;
    float3 _47 = r0.xxx * shader_in[2].xyz;
    r0 = float4(_47.x, _47.y, _47.z, r0.w);
    float3 _70 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_70.x, _70.y, _70.z, r0.w);
    float4 _74 = r0;
    _74.w = asfloat(1065353216u);
    r0 = _74;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
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
