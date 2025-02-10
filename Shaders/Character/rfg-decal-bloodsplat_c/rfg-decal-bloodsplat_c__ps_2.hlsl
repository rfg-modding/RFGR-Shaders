cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v6 : TEXCOORD6;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].xyxx.xy);
    float4 _65 = r0;
    _65.x = clamp(shader_in[6].z / cb2_m[2].y, 0.0f, 1.0f);
    r0 = _65;
    float2 _79 = (r0.xx * asfloat(uint2(3211998003u, 3204448256u))) + asfloat(uint2(1064514355u, 1065353216u));
    r0 = float4(_79.x, _79.y, r0.z, r0.w);
    float4 _88 = r0;
    _88.y = (-r0.x) + r0.y;
    r0 = _88;
    float4 _96 = r0;
    _96.x = (-r0.x) + r0.w;
    r0 = _96;
    float4 _104 = r0;
    _104.x = clamp(r0.x / r0.y, 0.0f, 1.0f);
    r0 = _104;
    float4 _118 = r0;
    _118.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _118;
    float4 _128 = r0;
    _128.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _128;
    float4 _138 = r0;
    _138.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _138;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _148 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_148.x, _148.y, _148.z, o0.w);
    float4 _153 = o0;
    _153.w = r0.x;
    o0 = _153;
}

void frag_main()
{
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v6 = stage_input.v6;
    frag_main();
}
