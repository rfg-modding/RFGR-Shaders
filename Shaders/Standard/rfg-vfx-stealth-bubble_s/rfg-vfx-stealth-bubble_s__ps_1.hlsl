cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _52 = r0;
    _52.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _52;
    float4 _59 = r0;
    _59.x = r0.x * asfloat(1028443341u);
    r0 = _59;
    float2 _69 = (-shader_in[1].zw) + asfloat(uint2(1065353216u, 1065353216u));
    r0 = float4(r0.x, _69.x, _69.y, r0.w);
    float4 _77 = r0;
    _77.y = r0.y * r0.y;
    r0 = _77;
    float4 _88 = r1;
    _88.z = (r0.y * r0.y) + r0.x;
    r1 = _88;
    float2 _92 = asfloat(uint2(0u, 0u));
    r1 = float4(_92.x, _92.y, r1.z, r1.w);
    float3 _100 = r0.zzz * r1.xyz;
    r0 = float4(_100.x, _100.y, _100.z, r0.w);
    float4 _104 = r0;
    _104.w = asfloat(1065353216u);
    r0 = _104;
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
