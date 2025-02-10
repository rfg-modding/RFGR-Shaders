cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r0 *= asfloat(uint4(1053609165u, 1053609165u, 1053609165u, 1053609165u));
    float4 _63 = r1;
    _63.x = min(shader_in[1].z, cb6_m[0].w);
    r1 = _63;
    r0 *= r1.xxxx;
    float4 _81 = r1;
    _81.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _81;
    float4 _91 = r1;
    _91.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _91;
    float4 _101 = r1;
    _101.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _101;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
