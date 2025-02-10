cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
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
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float4 _101 = r0;
    _101.x = r0.x + r2.w;
    r0 = _101;
    float4 _108 = r0;
    _108.x = r1.w + r0.x;
    r0 = _108;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _123 = r0;
    _123.x = r0.x + r1.w;
    r0 = _123;
    r1 = shader_in[1].xyxy + asfloat(uint4(0u, 989855744u, 989855744u, 3137339392u));
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float4 _150 = r0;
    _150.x = r0.x + r2.w;
    r0 = _150;
    float4 _157 = r0;
    _157.x = r1.w + r0.x;
    r0 = _157;
    r1 = shader_in[1].xyxy + asfloat(uint4(989855744u, 0u, 989855744u, 989855744u));
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float4 _184 = r0;
    _184.x = r0.x + r2.w;
    r0 = _184;
    float4 _191 = r0;
    _191.x = r1.w + r0.x;
    r0 = _191;
    float4 _203 = r0;
    _203.x = r0.x * cb2_m[5].x;
    r0 = _203;
    float4 _212 = r0;
    _212.x = r0.x * cb6_m[0].w;
    r0 = _212;
    float4 _219 = o0;
    _219.w = r0.x * asfloat(1038323257u);
    o0 = _219;
    float2 _231 = shader_in[1].xy + float2(cb2_m[1].z, cb2_m[1].w);
    r0 = float4(_231.x, _231.y, r0.z, r0.w);
    float2 _242 = r0.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(_242.x, _242.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    float3 _273 = (r0.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_273.x, _273.y, _273.z, r0.w);
    float2 _286 = shader_in[1].xy + float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_286.x, _286.y, r1.z, r1.w);
    float2 _297 = r1.xy * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(_297.x, _297.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r1.xyxx.xy);
    float3 _321 = (r1.xyz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) + r0.xyz;
    r0 = float4(_321.x, _321.y, _321.z, r0.w);
    float3 _334 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    o0 = float4(_334.x, _334.y, _334.z, o0.w);
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
