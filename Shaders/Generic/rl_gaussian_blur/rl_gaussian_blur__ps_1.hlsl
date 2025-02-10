cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4096] : packoffset(c0);
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
static float4 r2;

void ps_main()
{
    r0 = asfloat(uint4(0u, 0u, 0u, 0u));
    float4 _44 = r1;
    _44.x = asfloat(0u);
    r1 = _44;
    for (;;)
    {
        float4 _61 = r1;
        _61.y = asfloat((asint(r1.x) >= int(13u)) ? 4294967295u : 0u);
        r1 = _61;
        if (asuint(r1.y) != 0u)
        {
            break;
        }
        int _75 = asint(r1.x);
        float2 _85 = shader_in[1].xy + float2(cb2_m[_75].x, cb2_m[_75].y);
        r1 = float4(r1.x, _85.x, _85.y, r1.w);
        r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.yzyy.xy);
        r0 = (r2 * cb2_m[asint(r1.x)].w.xxxx) + r0;
        float4 _115 = r1;
        _115.x = asfloat(asint(r1.x) + int(1u));
        r1 = _115;
        continue;
    }
    float4 _119 = o0;
    _119.w = r0.w;
    o0 = _119;
    float3 _133 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    o0 = float4(_133.x, _133.y, _133.z, o0.w);
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
