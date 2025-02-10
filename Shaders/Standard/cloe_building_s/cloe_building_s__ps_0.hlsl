cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _48 = r0;
    _48.x = asfloat((asfloat(1056964608u) < cb2_m[0].y) ? 4294967295u : 0u);
    r0 = _48;
    if (asuint(r0.x) != 0u)
    {
        float4 _66 = r0;
        _66.x = shader_in[1].z + (-cb2_m[0].z);
        r0 = _66;
        float4 _76 = r0;
        _76.x = asfloat((r0.x < cb2_m[0].x) ? 4294967295u : 0u);
        r0 = _76;
        if (asuint(r0.x) != 0u)
        {
            r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
            float4 _99 = r0;
            _99.x = r0.x * asfloat(1082130432u);
            r0 = _99;
        }
        else
        {
            float4 _103 = r0;
            _103.x = asfloat(0u);
            r0 = _103;
        }
    }
    else
    {
        float4 _114 = r0;
        _114.y = shader_in[1].z + (-cb2_m[0].z);
        r0 = _114;
        float4 _124 = r0;
        _124.z = asfloat((r0.y < cb2_m[0].x) ? 4294967295u : 0u);
        r0 = _124;
        float4 _135 = r0;
        _135.y = asfloat(((-cb2_m[0].x) < r0.y) ? 4294967295u : 0u);
        r0 = _135;
        float4 _145 = r0;
        _145.y = asfloat(asuint(r0.y) & asuint(r0.z));
        r0 = _145;
        float4 _158 = r0;
        _158.x = (asuint(r0.y) != 0u) ? shader_in[1].z : cb2_m[0].z;
        r0 = _158;
    }
    float4 _165 = r0;
    _165.x = r0.x * asfloat(1048576000u);
    r0 = _165;
    float4 _170 = o0;
    _170.y = -r0.x;
    o0 = _170;
    float4 _174 = o0;
    _174.x = r0.x;
    o0 = _174;
    float2 _178 = asfloat(uint2(0u, 0u));
    o0 = float4(o0.x, o0.y, _178.x, _178.y);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
