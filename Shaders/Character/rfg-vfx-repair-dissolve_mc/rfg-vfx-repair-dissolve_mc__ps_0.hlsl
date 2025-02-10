cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2Dlod(SPIRV_Cross_Combinedt0s0, float4(shader_in[1].xyxx.xy, 0.0, asfloat(0u)));
    float3 _62 = (r0.xxx * asfloat(uint3(1036831949u, 1036831949u, 1036831949u))) + shader_in[1].zxy;
    r0 = float4(_62.x, _62.y, _62.z, r0.w);
    float4 _74 = r0;
    _74.w = cb2_m[1].z + asfloat(1065353216u);
    r0 = _74;
    float4 _85 = r1;
    _85.x = (-r0.w) + (-cb2_m[1].z);
    r1 = _85;
    float4 _95 = r0;
    _95.x = (r0.x * r1.x) + r0.w;
    r0 = _95;
    r1 = tex2Dlod(SPIRV_Cross_Combinedt0s0, float4(r0.yzyy.xy, 0.0, asfloat(0u)));
    float4 _111 = r0;
    _111.x = (-r0.x) + r1.x;
    r0 = _111;
    float4 _122 = r0;
    _122.w = clamp(r0.x / cb2_m[1].z, 0.0f, 1.0f);
    r0 = _122;
    float3 _129 = (-r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_129.x, _129.y, _129.z, r0.w);
    r0 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _151 = r1;
    _151.x = (-shader_in[1].w) + asfloat(1065353216u);
    r1 = _151;
    float3 _157 = r0.xyz * r1.xxx;
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
