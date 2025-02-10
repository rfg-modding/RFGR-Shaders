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

void ps_main()
{
    float4 _50 = r0;
    _50.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _50;
    float4 _60 = r0;
    _60.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _60;
    float4 _70 = r0;
    _70.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _70;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _94 = r0;
    _94.y = (-shader_in[1].z) + asfloat(1065353216u);
    r0 = _94;
    float4 _101 = r0;
    _101.y = r0.y * r0.y;
    r0 = _101;
    float4 _111 = r0;
    _111.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _111;
    float4 _118 = r0;
    _118.x = r0.x * asfloat(1028443341u);
    r0 = _118;
    float4 _128 = o0;
    _128.z = (r0.y * r0.y) + r0.x;
    o0 = _128;
    float3 _132 = asfloat(uint3(0u, 0u, 1065353216u));
    o0 = float4(_132.x, _132.y, o0.z, _132.z);
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
