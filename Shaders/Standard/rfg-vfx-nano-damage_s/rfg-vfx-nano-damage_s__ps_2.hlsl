cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
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
    float4 _51 = r0;
    _51.y = (-shader_in[1].z) + asfloat(1065353216u);
    r0 = _51;
    float4 _58 = r0;
    _58.y = r0.y + r0.y;
    r0 = _58;
    float4 _68 = r0;
    _68.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _68;
    float4 _78 = r0;
    _78.x = (r0.x * asfloat(1036831949u)) + r0.y;
    r0 = _78;
    float4 _87 = r0;
    _87.x = r0.x + (-shader_in[1].w);
    r0 = _87;
    float4 _94 = r0;
    _94.x = min(abs(r0.x), asfloat(1065353216u));
    r0 = _94;
    float4 _99 = r0;
    _99.x = log2(r0.x);
    r0 = _99;
    float4 _106 = r0;
    _106.x = r0.x * asfloat(1112014848u);
    r0 = _106;
    float4 _111 = r0;
    _111.x = exp2(r0.x);
    r0 = _111;
    float4 _118 = r0;
    _118.y = (-r0.x) + asfloat(1065353216u);
    r0 = _118;
    float4 _125 = r0;
    _125.x = min(r0.x, r0.y);
    r0 = _125;
    float4 _132 = r0;
    _132.x = r0.x * asfloat(1092616192u);
    r0 = _132;
    float4 _138 = r0;
    _138.x = min(r0.x, asfloat(1065353216u));
    r0 = _138;
    r0 = r0.xxxx * asfloat(uint4(1092616192u, 1090519040u, 0u, 1065353216u));
    float4 _163 = r1;
    _163.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _163;
    float4 _173 = r1;
    _173.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _173;
    float4 _183 = r1;
    _183.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _183;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
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
