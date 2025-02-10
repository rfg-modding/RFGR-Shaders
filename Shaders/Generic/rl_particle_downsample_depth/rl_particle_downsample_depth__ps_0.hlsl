cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4096] : packoffset(c0);
};

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
static float4 r1;

void ps_main()
{
    float2 _37 = asfloat(uint2(0u, 0u));
    r0 = float4(_37.x, _37.y, r0.z, r0.w);
    for (;;)
    {
        float4 _56 = r0;
        _56.z = asfloat((asint(r0.y) >= int(16u)) ? 4294967295u : 0u);
        r0 = _56;
        if (asuint(r0.z) != 0u)
        {
            break;
        }
        int _70 = asint(r0.y);
        float2 _81 = shader_in[1].xy + float2(cb2_m[_70].x, cb2_m[_70].y);
        r0 = float4(r0.x, r0.y, _81.x, _81.y);
        r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
        float4 _99 = r0;
        _99.z = (-r1.x) + asfloat(1065353216u);
        r0 = _99;
        float4 _106 = r0;
        _106.x = max(r0.z, r0.x);
        r0 = _106;
        float4 _114 = r0;
        _114.y = asfloat(asint(r0.y) + int(1u));
        r0 = _114;
        continue;
    }
    gl_FragDepth = (-r0.x) + asfloat(1065353216u);
    o0 = asfloat(uint4(0u, 0u, 0u, 0u));
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
