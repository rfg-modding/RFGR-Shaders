cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float2 _66 = shader_in[1].xy * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_66.x, _66.y, r0.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, r0.xyxx.xy);
    float4 _82 = r0;
    _82.x = max(r1.y, asfloat(1036831949u));
    r0 = _82;
    float4 _90 = r0;
    _90.x = (-r0.x) + asfloat(1065353216u);
    r0 = _90;
    float4 _97 = r0;
    _97.x = max(r0.x, r0.w);
    r0 = _97;
    float4 _109 = r0;
    _109.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _109;
    float4 _119 = r0;
    _119.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _119;
    float4 _129 = r0;
    _129.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _129;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _140 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_140.x, _140.y, _140.z, o0.w);
    float4 _145 = o0;
    _145.w = r0.x;
    o0 = _145;
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
