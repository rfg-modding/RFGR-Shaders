cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _52 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _62 = r0;
    _62.w = mad(r0.xyz.z, _52.z, mad(r0.xyz.y, _52.y, r0.xyz.x * _52.x));
    r0 = _62;
    float3 _69 = (-r0.www) + r0.xyz;
    r0 = float4(_69.x, _69.y, _69.z, r0.w);
    float3 _85 = (cb2_m[1].x.xxx * r0.xyz) + r0.www;
    r0 = float4(_85.x, _85.y, _85.z, r0.w);
    float3 _99 = r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    o0 = float4(_99.x, _99.y, _99.z, o0.w);
    float4 _104 = o0;
    _104.w = asfloat(1065353216u);
    o0 = _104;
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
