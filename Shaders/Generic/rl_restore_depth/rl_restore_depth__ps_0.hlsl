uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float gl_FragDepth;
static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float gl_FragDepth : DEPTH;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;

void ps_main()
{
    o0 = asfloat(uint4(0u, 0u, 0u, 0u));
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    gl_FragDepth = r0.x;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_FragDepth = gl_FragDepth;
    return stage_output;
}
