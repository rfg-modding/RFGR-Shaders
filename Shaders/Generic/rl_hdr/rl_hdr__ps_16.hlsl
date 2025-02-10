cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4096] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt7s7;
uniform sampler2D SPIRV_Cross_Combinedt8s8;

static float4 v1;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
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
    float4 _42 = r1;
    _42.x = asfloat(0u);
    r1 = _42;
    for (;;)
    {
        float4 _59 = r1;
        _59.y = asfloat((asint(r1.x) >= int(16u)) ? 4294967295u : 0u);
        r1 = _59;
        if (asuint(r1.y) != 0u)
        {
            break;
        }
        int _75 = asint(r1.x) + 1;
        float2 _86 = shader_in[1].xy + float2(cb2_m[_75].x, cb2_m[_75].y);
        r1 = float4(r1.x, _86.x, _86.y, r1.w);
        r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.yzyy.xy);
        r3 = tex2D(SPIRV_Cross_Combinedt7s7, r1.yzyy.xy);
        r0 = (r2 * r3) + r0;
        float4 _117 = r1;
        _117.x = asfloat(asint(r1.x) + int(1u));
        r1 = _117;
        continue;
    }
    r0 *= asfloat(uint4(1031798784u, 1031798784u, 1031798784u, 1031798784u));
    r1 = tex2D(SPIRV_Cross_Combinedt8s8, shader_in[1].zwzz.xy);
    o0 = r0 * r1.xxxx;
}

void frag_main()
{
    shader_in[1] = v1;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
