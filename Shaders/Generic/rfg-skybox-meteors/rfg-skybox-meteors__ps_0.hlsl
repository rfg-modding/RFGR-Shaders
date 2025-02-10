cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};


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
    float2 _39 = clamp(shader_in[1].yz, 0.0f.xx, 1.0f.xx);
    r0 = float4(_39.x, _39.y, r0.z, r0.w);
    float4 _49 = r0;
    _49.z = (-r0.x) + asfloat(1056964608u);
    r0 = _49;
    float4 _60 = r0;
    _60.z = ((-r0.z) * asfloat(1073741824u)) + asfloat(1065353216u);
    r0 = _60;
    float4 _67 = r0;
    _67.w = r0.x + asfloat(3204448256u);
    r0 = _67;
    float4 _76 = r0;
    _76.w = ((-r0.w) * asfloat(1073741824u)) + asfloat(1065353216u);
    r0 = _76;
    float4 _87 = r0;
    _87.x = asfloat((r0.x < asfloat(1056964608u)) ? 4294967295u : 0u);
    r0 = _87;
    float4 _95 = r0;
    _95.y = r0.y * shader_in[1].x;
    r0 = _95;
    float4 _106 = r0;
    _106.x = (asuint(r0.x) != 0u) ? r0.z : r0.w;
    r0 = _106;
    float4 _118 = r0;
    _118.z = shader_in[1].x * cb2_m[0].x;
    r0 = _118;
    float4 _125 = r0;
    _125.z = r0.x * r0.z;
    r0 = _125;
    float4 _132 = r0;
    _132.z = r0.z * asfloat(1045220557u);
    r0 = _132;
    float4 _142 = r0;
    _142.w = (r0.y * r0.x) + r0.z;
    r0 = _142;
    float3 _146 = asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_146.x, _146.y, _146.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
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
