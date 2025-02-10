cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _68 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    r0 = float4(_68.x, _68.y, _68.z, r0.w);
    float4 _77 = r0;
    _77.z = r0.z * cb2_m[1].x;
    r0 = _77;
    float2 _85 = r0.xy * asfloat(uint2(1132462080u, 1132462080u));
    r0 = float4(_85.x, _85.y, r0.z, r0.w);
    float2 _90 = floor(r0.xy);
    r0 = float4(_90.x, _90.y, r0.z, r0.w);
    float2 _102 = (r0.xy * asfloat(uint2(1006632960u, 1006632960u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_102.x, _102.y, r0.z, r0.w);
    float2 _115 = (r0.xy * cb2_m[0].x.xx) + shader_in[1].xy;
    r0 = float4(_115.x, _115.y, r0.z, r0.w);
    float4 _123 = r0;
    _123.z = min(r0.z, asfloat(1065353216u));
    r0 = _123;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, r0.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float3 _146 = r1.xyz + (-r2.xyz);
    r0 = float4(_146.x, _146.y, r0.z, _146.z);
    float3 _156 = (r0.zzz * r0.xyw) + r2.xyz;
    o0 = float4(_156.x, _156.y, _156.z, o0.w);
    float4 _161 = o0;
    _161.w = r2.w;
    o0 = _161;
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
