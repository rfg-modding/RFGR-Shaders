cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float3 _63 = (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_63.x, _63.y, _63.z, r0.w);
    float4 _75 = r0;
    _75.w = shader_in[1].x * cb2_m[2].x;
    r0 = _75;
    float3 _90 = (r0.www * r0.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_90.x, _90.y, _90.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float3 _108 = r0.xyz * r1.xyz;
    r0 = float4(_108.x, _108.y, _108.z, r0.w);
    float4 _116 = r1;
    _116.w = r0.w * r1.w;
    r1 = _116;
    float4 _124 = r0;
    _124.w = cb2_m[2].y * asfloat(1092616192u);
    r0 = _124;
    float3 _130 = r0.www * r0.xyz;
    r0 = float4(_130.x, _130.y, _130.z, r0.w);
    float4 _140 = r0;
    _140.w = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _140;
    float3 _146 = r0.xyz * r0.www;
    r1 = float4(_146.x, _146.y, _146.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    float4 _164 = shader_in[1];
    _164.x = v1;
    shader_in[1] = _164;
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
