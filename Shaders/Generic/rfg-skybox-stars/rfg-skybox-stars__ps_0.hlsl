cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
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
    float4 _38 = r0;
    _38.x = clamp(shader_in[1].x, 0.0f, 1.0f);
    r0 = _38;
    float4 _49 = r0;
    _49.x = r0.x * cb2_m[0].y;
    r0 = _49;
    float4 _56 = r0;
    _56.x = r0.x * asfloat(1094713344u);
    r0 = _56;
    float4 _64 = r0;
    _64.y = max(shader_in[1].y, asfloat(0u));
    r0 = _64;
    float4 _71 = r0;
    _71.y = min(r0.y, asfloat(1073741824u));
    r0 = _71;
    float4 _78 = r0;
    _78.w = r0.y * r0.x;
    r0 = _78;
    float3 _84 = asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_84.x, _84.y, _84.z, r0.w);
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
