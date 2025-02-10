cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _64 = r0;
    _64.x = asfloat((shader_in[2].x >= r0.w) ? 4294967295u : 0u);
    r0 = _64;
    float4 _74 = r0;
    _74.y = asfloat((r0.w >= shader_in[2].y) ? 4294967295u : 0u);
    r0 = _74;
    float4 _88 = r0;
    _88.z = asfloat((r0.w >= cb2_m[3].x) ? 4294967295u : 0u);
    r0 = _88;
    float3 _97 = asfloat(asuint(r0.xyz) & uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_97.x, _97.y, _97.z, r0.w);
    float4 _105 = r0;
    _105.x = r0.y * r0.x;
    r0 = _105;
    float4 _112 = r0;
    _112.x = r0.z * r0.x;
    r0 = _112;
    float4 _120 = r0;
    _120.x = r0.x * shader_in[2].z;
    r0 = _120;
    float4 _131 = r0;
    _131.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _131;
    float4 _141 = r0;
    _141.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _141;
    float4 _151 = r0;
    _151.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _151;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _160 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_160.x, _160.y, _160.z, o0.w);
    float4 _165 = o0;
    _165.w = r0.x;
    o0 = _165;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
