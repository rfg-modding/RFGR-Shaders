cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _54 = r0;
    _54.x = (-r0.w) + asfloat(1065353216u);
    r0 = _54;
    float4 _69 = r0;
    _69.x = (cb2_m[1].w * r0.x) + r0.w;
    r0 = _69;
    float4 _83 = r0;
    _83.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _83;
    float4 _93 = r0;
    _93.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _93;
    float4 _103 = r0;
    _103.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _103;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _114 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_114.x, _114.y, _114.z, o0.w);
    float4 _119 = o0;
    _119.w = r0.x;
    o0 = _119;
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
