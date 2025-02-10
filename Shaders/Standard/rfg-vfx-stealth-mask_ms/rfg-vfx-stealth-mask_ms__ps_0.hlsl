cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float4 _60 = r0;
    _60.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _60;
    float4 _70 = r0;
    _70.y = (-shader_in[1].w) + asfloat(1065353216u);
    r0 = _70;
    float4 _80 = r0;
    _80.w = (r0.x * asfloat(1056293519u)) + r0.y;
    r0 = _80;
    float4 _89 = r1;
    _89.x = (-shader_in[2].z) + asfloat(1065353216u);
    r1 = _89;
    float3 _111 = (shader_in[2].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xxx;
    r0 = float4(_111.x, _111.y, _111.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
