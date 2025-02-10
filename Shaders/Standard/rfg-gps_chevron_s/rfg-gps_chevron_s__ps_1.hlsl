cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float2 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _58 = r0;
    _58.x = (-shader_in[2].x) + asfloat(1065353216u);
    r0 = _58;
    float4 _70 = r0;
    _70.x = asfloat((r0.x < r0.w) ? 4294967295u : 0u);
    r0 = _70;
    float4 _80 = r0;
    _80.y = asfloat((shader_in[2].y < r0.w) ? 4294967295u : 0u);
    r0 = _80;
    float4 _94 = r0;
    _94.z = asfloat((r0.w >= cb2_m[3].x) ? 4294967295u : 0u);
    r0 = _94;
    float3 _103 = asfloat(asuint(r0.xyz) & uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_103.x, _103.y, _103.z, r0.w);
    float4 _111 = r0;
    _111.x = r0.y * r0.x;
    r0 = _111;
    float4 _118 = r0;
    _118.x = r0.z * r0.x;
    r0 = _118;
    float4 _129 = r0;
    _129.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _129;
    float4 _139 = r0;
    _139.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _139;
    float4 _149 = r0;
    _149.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _149;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _158 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_158.x, _158.y, _158.z, o0.w);
    float4 _163 = o0;
    _163.w = r0.x;
    o0 = _163;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, shader_in[2].z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
