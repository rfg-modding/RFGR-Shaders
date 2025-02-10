cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r0 *= shader_in[2];
    float4 _67 = r1;
    _67.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _67;
    float4 _77 = r1;
    _77.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _77;
    float4 _87 = r1;
    _87.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _87;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
