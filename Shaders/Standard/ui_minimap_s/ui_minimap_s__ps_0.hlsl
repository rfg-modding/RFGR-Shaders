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
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _46 = r0.xyz * r0.xyz;
    r1 = float4(_46.x, _46.y, _46.z, r1.w);
    float3 _54 = r0.xyz * r1.xyz;
    r0 = float4(_54.x, _54.y, _54.z, r0.w);
    r1 = sqrt(r0);
    r1 = (-r0) + r1;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    r3 = (r2 * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    r1 = (r3 * r1) + r0;
    r4 = ((-r0) * r0) + r0;
    r0 = (r3 * r4) + r0;
    r1 = (-r0) + r1;
    float4 _109 = r2;
    _109.x = r2.y + r2.x;
    r2 = _109;
    float4 _116 = r2;
    _116.x = r2.z + r2.x;
    r2 = _116;
    float4 _128 = r2;
    _128.x = asfloat((r2.x >= asfloat(1069547520u)) ? 4294967295u : 0u);
    r2 = _128;
    float4 _136 = r2;
    _136.x = asfloat(asuint(r2.x) & 1065353216u);
    r2 = _136;
    o0 = (r2.xxxx * r1) + r0;
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
