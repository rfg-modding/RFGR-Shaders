cbuffer cb2_t : register(b2)
{
    float4 cb2_m[14] : packoffset(c0);
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
static float4 r2;

void ps_main()
{
    r0 = shader_in[1].xyxy + float4(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z, cb2_m[5].w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float3 _80 = r1.xyz * cb2_m[1].y.xxx;
    r1 = float4(_80.x, _80.y, _80.z, r1.w);
    float3 _92 = (r0.xyz * cb2_m[1].x.xxx) + r1.xyz;
    r0 = float4(_92.x, _92.y, _92.z, r0.w);
    r1 = shader_in[1].xyxy + float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float3 _134 = (r2.xyz * cb2_m[1].z.xxx) + r0.xyz;
    r0 = float4(_134.x, _134.y, _134.z, r0.w);
    float3 _146 = (r1.xyz * cb2_m[1].w.xxx) + r0.xyz;
    r0 = float4(_146.x, _146.y, _146.z, r0.w);
    r1 = shader_in[1].xyxy + float4(cb2_m[7].x, cb2_m[7].y, cb2_m[7].z, cb2_m[7].w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float3 _188 = (r2.xyz * cb2_m[2].x.xxx) + r0.xyz;
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float3 _200 = (r1.xyz * cb2_m[2].y.xxx) + r0.xyz;
    r0 = float4(_200.x, _200.y, _200.z, r0.w);
    r1 = shader_in[1].xyxy + float4(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z, cb2_m[8].w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float3 _241 = (r2.xyz * cb2_m[2].z.xxx) + r0.xyz;
    r0 = float4(_241.x, _241.y, _241.z, r0.w);
    float3 _253 = (r1.xyz * cb2_m[2].w.xxx) + r0.xyz;
    r0 = float4(_253.x, _253.y, _253.z, r0.w);
    float3 _263 = r0.xyz * cb2_m[13].x.xxx;
    r0 = float4(_263.x, _263.y, _263.z, r0.w);
    float3 _277 = (r0.xyz * cb2_m[0].x.xxx) + cb2_m[0].y.xxx;
    r0 = float4(_277.x, _277.y, _277.z, r0.w);
    float4 _290 = r0;
    _290.w = asfloat((r0.x >= cb2_m[0].z) ? 4294967295u : 0u);
    r0 = _290;
    float4 _298 = r0;
    _298.w = asfloat(asuint(r0.w) & 1065353216u);
    r0 = _298;
    float3 _304 = r0.xyz * r0.www;
    o0 = float4(_304.x, _304.y, _304.z, o0.w);
    float4 _308 = o0;
    _308.w = asfloat(1065353216u);
    o0 = _308;
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
