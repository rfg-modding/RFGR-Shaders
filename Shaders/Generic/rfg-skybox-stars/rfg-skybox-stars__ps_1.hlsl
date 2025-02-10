cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _48 = r0;
    _48.x = shader_in[1].z * cb2_m[0].y;
    r0 = _48;
    float4 _56 = r0;
    _56.x = r0.x * shader_in[1].w;
    r0 = _56;
    float4 _65 = r0;
    _65.x = r0.x * cb6_m[0].w;
    r0 = _65;
    float4 _72 = o0;
    _72.w = r0.x * asfloat(1094713344u);
    o0 = _72;
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _97 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    o0 = float4(_97.x, _97.y, _97.z, o0.w);
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
