cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
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
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _62 = r1;
    _62.x = cb6_m[0].w * cb2_m[2].x;
    r1 = _62;
    float4 _69 = r0;
    _69.w = r0.w * r1.x;
    r0 = _69;
    float4 _82 = r1;
    _82.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _82;
    float4 _92 = r1;
    _92.z = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _92;
    float4 _102 = r1;
    _102.y = asfloat(asuint(r1.z) & asuint(r1.y));
    r1 = _102;
    if (asuint(r1.y) != 0u)
    {
        discard;
    }
    float3 _128 = (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(r1.x, _128.x, _128.y, _128.z);
    float3 _144 = (r1.xxx * r1.yzw) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_144.x, _144.y, _144.z, r1.w);
    float3 _151 = r0.xyz * r1.xyz;
    r0 = float4(_151.x, _151.y, _151.z, r0.w);
    float4 _160 = r1;
    _160.x = cb2_m[2].y * asfloat(1092616192u);
    r1 = _160;
    float3 _166 = r0.xyz * r1.xxx;
    o0 = float4(_166.x, _166.y, _166.z, o0.w);
    float4 _171 = o0;
    _171.w = r0.w;
    o0 = _171;
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
