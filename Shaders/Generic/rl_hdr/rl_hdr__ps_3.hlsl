cbuffer cb2_t : register(b2)
{
    float4 cb2_m[19] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _63 = (-r0.yyy) * r1.xyz;
    r0 = float4(_63.x, _63.y, _63.z, r0.w);
    float4 _68 = o0;
    _68.w = r1.w;
    o0 = _68;
    float3 _76 = r0.xyz * asfloat(uint3(1069066811u, 1069066811u, 1069066811u));
    r0 = float4(_76.x, _76.y, _76.z, r0.w);
    float3 _81 = exp2(r0.xyz);
    r0 = float4(_81.x, _81.y, _81.z, r0.w);
    float3 _90 = (-r0.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_90.x, _90.y, _90.z, r0.w);
    float3 _108 = float3(cb2_m[17].x, cb2_m[17].y, cb2_m[17].z);
    float4 _118 = r0;
    _118.w = mad(r0.xyz.z, _108.z, mad(r0.xyz.y, _108.y, r0.xyz.x * _108.x));
    r0 = _118;
    float4 _129 = r0;
    _129.w = r0.w + (-cb2_m[18].w);
    r0 = _129;
    float4 _135 = r0;
    _135.w = max(r0.w, asfloat(0u));
    r0 = _135;
    float4 _143 = r0;
    _143.w = r0.w * cb2_m[18].z;
    r0 = _143;
    float3 _149 = r0.www * r0.xyz;
    o0 = float4(_149.x, _149.y, _149.z, o0.w);
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
