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
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r0 = min(r0, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    float2 _54 = r0.zw * r0.xy;
    r0 = float4(_54.x, _54.y, r0.z, r0.w);
    float3 _73 = r0.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_73.x, _73.y, _73.z, r1.w);
    float3 _97 = ((-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) * r0.xxx) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_97.x, r0.y, _97.y, _97.z);
    float3 _107 = (r0.yyy * r0.xzw) + r1.xyz;
    o0 = float4(_107.x, _107.y, _107.z, o0.w);
    float4 _111 = o0;
    _111.w = asfloat(1065353216u);
    o0 = _111;
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
