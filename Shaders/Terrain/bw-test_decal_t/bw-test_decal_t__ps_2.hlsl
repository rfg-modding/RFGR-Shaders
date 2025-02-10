cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v5;

struct SPIRV_Cross_Input
{
    float2 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float4 _60 = r0;
    _60.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _60;
    float4 _70 = r0;
    _70.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _70;
    float4 _80 = r0;
    _80.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _80;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float3 _91 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_91.x, _91.y, _91.z, o0.w);
    float4 _96 = o0;
    _96.w = r0.w;
    o0 = _96;
}

void frag_main()
{
    shader_in[5] = float4(v5.x, v5.y, shader_in[5].z, shader_in[5].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v5 = stage_input.v5;
    frag_main();
}
