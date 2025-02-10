cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4096] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = asfloat(uint4(0u, 0u, 0u, 0u));
    float4 _46 = r1;
    _46.x = asfloat(0u);
    r1 = _46;
    for (;;)
    {
        float4 _63 = r1;
        _63.y = asfloat((asint(r1.x) >= int(16u)) ? 4294967295u : 0u);
        r1 = _63;
        if (asuint(r1.y) != 0u)
        {
            break;
        }
        int _77 = asint(r1.x);
        float2 _87 = shader_in[1].xy + float2(cb2_m[_77].x, cb2_m[_77].y);
        r1 = float4(r1.x, _87.x, _87.y, r1.w);
        r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.yzyy.xy);
        r3 = tex2D(SPIRV_Cross_Combinedt1s1, r1.yzyy.xy);
        r0 = (r2 * r3) + r0;
        float4 _118 = r1;
        _118.x = asfloat(asint(r1.x) + int(1u));
        r1 = _118;
        continue;
    }
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    o0 = r0 * asfloat(uint4(1031798784u, 1031798784u, 1031798784u, 1031798784u));
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
