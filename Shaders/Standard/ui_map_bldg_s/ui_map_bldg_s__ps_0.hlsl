uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[2].zwzz.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    r1 *= shader_in[1];
    float4 _61 = o0;
    _61.w = r0.x * r1.w;
    o0 = _61;
    o0 = float4(r1.xyz.x, r1.xyz.y, r1.xyz.z, o0.w);
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
