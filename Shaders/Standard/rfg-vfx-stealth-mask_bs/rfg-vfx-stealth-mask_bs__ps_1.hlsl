cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float4 _55 = r0;
    _55.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _55;
    float4 _65 = r0;
    _65.y = (-shader_in[1].w) + asfloat(1065353216u);
    r0 = _65;
    float4 _75 = r0;
    _75.w = (r0.x * asfloat(1056293519u)) + r0.y;
    r0 = _75;
    float3 _84 = (-shader_in[2].zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_84.x, _84.y, _84.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
