cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;

void ps_main()
{
    float4 _41 = r0;
    _41.x = min(shader_in[1].x, asfloat(1065185444u));
    r0 = _41;
    float4 _48 = r0;
    _48.x = max(r0.x, asfloat(1008981770u));
    r0 = _48;
    float4 _53 = r0;
    _53.y = shader_in[1].y;
    r0 = _53;
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float4 _78 = r0;
    _78.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _78;
    float4 _88 = r0;
    _88.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _88;
    float4 _98 = r0;
    _98.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _98;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _109 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_109.x, _109.y, _109.z, o0.w);
    float4 _114 = o0;
    _114.w = r0.x;
    o0 = _114;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
