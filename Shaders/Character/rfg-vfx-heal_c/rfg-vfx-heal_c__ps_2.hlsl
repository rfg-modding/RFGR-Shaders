cbuffer cb0_t : register(b0)
{
    float4 cb0_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float4 v1;
static float2 v2;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float4 _62 = r0;
    _62.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _62;
    float4 _72 = r0;
    _72.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _72;
    float4 _82 = r0;
    _82.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _82;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].zwzz.xy);
    float2 _115 = r0.xy + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(_115.x, _115.y, r0.z, r0.w);
    float2 _121 = r1.xy + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(r0.x, r0.y, _121.x, _121.y);
    float2 _128 = r0.zw + r0.zw;
    r0 = float4(r0.x, r0.y, _128.x, _128.y);
    float2 _139 = (r0.xy * asfloat(uint2(1073741824u, 1073741824u))) + r0.zw;
    r0 = float4(_139.x, _139.y, r0.z, r0.w);
    float2 _151 = (r0.xy * asfloat(uint2(1036831949u, 1036831949u))) + shader_in[1].xy;
    r0 = float4(_151.x, _151.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float4 _168 = r0;
    _168.y = cb0_m[1].x * cb2_m[0].y;
    r0 = _168;
    float4 _172 = r0;
    _172.x = r0.z;
    r0 = _172;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    float3 _186 = r0.zzz * r1.xyz;
    r0 = float4(_186.x, _186.y, _186.z, r0.w);
    float3 _195 = r0.xyz * asfloat(uint3(1092616192u, 1092616192u, 1092616192u));
    o0 = float4(_195.x, _195.y, _195.z, o0.w);
    float4 _199 = o0;
    _199.w = asfloat(1065353216u);
    o0 = _199;
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = float4(v2.x, v2.y, shader_in[2].z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
