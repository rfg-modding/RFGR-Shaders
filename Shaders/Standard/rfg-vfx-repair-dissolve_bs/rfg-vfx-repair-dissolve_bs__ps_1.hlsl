cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
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
    float3 _61 = (r0.xxx * asfloat(uint3(1036831949u, 1036831949u, 1036831949u))) + shader_in[1].zxy;
    r0 = float4(_61.x, _61.y, _61.z, r0.w);
    r1 = tex2Dlod(SPIRV_Cross_Combinedt0s0, float4(r0.yzyy.xy, 0.0, asfloat(0u)));
    float4 _82 = r0;
    _82.y = cb2_m[1].z + asfloat(1065353216u);
    r0 = _82;
    float4 _92 = r0;
    _92.z = (-r0.y) + (-cb2_m[1].z);
    r0 = _92;
    float4 _102 = r0;
    _102.x = (r0.x * r0.z) + r0.y;
    r0 = _102;
    float4 _110 = r0;
    _110.x = (-r0.x) + r1.x;
    r0 = _110;
    float4 _121 = r0;
    _121.w = clamp(r0.x / cb2_m[1].z, 0.0f, 1.0f);
    r0 = _121;
    float3 _128 = (-r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_128.x, _128.y, _128.z, r0.w);
    r0 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _155 = r1;
    _155.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _155;
    float4 _165 = r1;
    _165.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _165;
    float4 _175 = r1;
    _175.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _175;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    float4 _189 = r1;
    _189.x = (-shader_in[1].w) + asfloat(1065353216u);
    r1 = _189;
    float3 _195 = r0.xyz * r1.xxx;
    o0 = float4(_195.x, _195.y, _195.z, o0.w);
    float4 _200 = o0;
    _200.w = r0.w;
    o0 = _200;
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
