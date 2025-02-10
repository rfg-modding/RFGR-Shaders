cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

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
    r0 = shader_in[1].xyxy + asfloat(uint4(3137339392u, 3137339392u, 3137339392u, 0u));
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    float4 _72 = r0;
    _72.x = r0.w + r1.w;
    r0 = _72;
    r1 = shader_in[1].xyxy + asfloat(uint4(3137339392u, 989855744u, 0u, 3137339392u));
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    float4 _94 = r0;
    _94.x = r0.x + r2.w;
    r0 = _94;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float4 _108 = r0;
    _108.x = r0.x + r1.w;
    r0 = _108;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _123 = r0;
    _123.x = r0.x + r1.w;
    r0 = _123;
    r1 = shader_in[1].xyxy + asfloat(uint4(0u, 989855744u, 989855744u, 3137339392u));
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    float4 _143 = r0;
    _143.x = r0.x + r2.w;
    r0 = _143;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float4 _157 = r0;
    _157.x = r0.x + r1.w;
    r0 = _157;
    r1 = shader_in[1].xyxy + asfloat(uint4(989855744u, 0u, 989855744u, 989855744u));
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    float4 _177 = r0;
    _177.x = r0.x + r2.w;
    r0 = _177;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float4 _191 = r0;
    _191.x = r0.x + r1.w;
    r0 = _191;
    float4 _203 = r0;
    _203.x = r0.x * cb2_m[5].x;
    r0 = _203;
    float4 _210 = r0;
    _210.x = r0.x * asfloat(1038323257u);
    r0 = _210;
    float4 _223 = r0;
    _223.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _223;
    float4 _233 = r0;
    _233.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _233;
    float4 _243 = r0;
    _243.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _243;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float2 _261 = shader_in[1].xy + float2(cb2_m[1].z, cb2_m[1].w);
    r0 = float4(r0.x, _261.x, _261.y, r0.w);
    float2 _272 = r0.yz * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(r0.x, _272.x, _272.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    float2 _292 = shader_in[1].xy + float2(cb2_m[2].z, cb2_m[2].w);
    r0 = float4(r0.x, _292.x, _292.y, r0.w);
    float2 _303 = r0.yz * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(r0.x, _303.x, _303.y, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    float3 _334 = (r1.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _334.x, _334.y, _334.z);
    float3 _351 = (r2.xyz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) + r0.yzw;
    o0 = float4(_351.x, _351.y, _351.z, o0.w);
    float4 _356 = o0;
    _356.w = r0.x;
    o0 = _356;
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
