cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r0 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    r0 = min(r0, asfloat(uint4(1107296256u, 1107296256u, 1107296256u, 1107296256u)));
    float4 _95 = r1;
    _95.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _95;
    float4 _105 = r1;
    _105.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _105;
    float4 _115 = r1;
    _115.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _115;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
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
