cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

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
    float4 _53 = r0;
    _53.x = asfloat((asfloat(1056964608u) < cb2_m[0].y) ? 4294967295u : 0u);
    r0 = _53;
    if (asuint(r0.x) != 0u)
    {
        float4 _70 = r0;
        _70.x = shader_in[1].z + (-cb2_m[0].z);
        r0 = _70;
        float4 _80 = r0;
        _80.x = asfloat((r0.x < cb2_m[0].x) ? 4294967295u : 0u);
        r0 = _80;
        if (asuint(r0.x) != 0u)
        {
            r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
            float4 _103 = r0;
            _103.x = r0.x * asfloat(1082130432u);
            r0 = _103;
        }
        else
        {
            float4 _107 = r0;
            _107.x = asfloat(0u);
            r0 = _107;
        }
    }
    else
    {
        float4 _118 = r0;
        _118.y = shader_in[1].z + (-cb2_m[0].z);
        r0 = _118;
        float4 _128 = r0;
        _128.z = asfloat((r0.y < cb2_m[0].x) ? 4294967295u : 0u);
        r0 = _128;
        float4 _139 = r0;
        _139.y = asfloat(((-cb2_m[0].x) < r0.y) ? 4294967295u : 0u);
        r0 = _139;
        float4 _149 = r0;
        _149.y = asfloat(asuint(r0.y) & asuint(r0.z));
        r0 = _149;
        float4 _162 = r0;
        _162.x = (asuint(r0.y) != 0u) ? shader_in[1].z : cb2_m[0].z;
        r0 = _162;
    }
    float4 _172 = r0;
    _172.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _172;
    float4 _181 = r0;
    _181.z = asfloat((asfloat(0u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _181;
    float4 _191 = r0;
    _191.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _191;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float4 _204 = r0;
    _204.x = r0.x * asfloat(1048576000u);
    r0 = _204;
    float4 _209 = o0;
    _209.y = -r0.x;
    o0 = _209;
    float4 _213 = o0;
    _213.x = r0.x;
    o0 = _213;
    float2 _217 = asfloat(uint2(0u, 0u));
    o0 = float4(o0.x, o0.y, _217.x, _217.y);
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
