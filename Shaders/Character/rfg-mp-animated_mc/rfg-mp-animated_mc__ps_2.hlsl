cbuffer cb0_t : register(b0)
{
    float4 cb0_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
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
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _60 = r0;
    _60.w = r0.w * shader_in[1].z;
    r0 = _60;
    float4 _73 = r1;
    _73.x = cb2_m[3].z + asfloat(1008981770u);
    r1 = _73;
    float4 _80 = r1;
    _80.x = asfloat(1073741824u) / r1.x;
    r1 = _80;
    float4 _88 = r1;
    _88.x = r1.x * cb0_m[1].z;
    r1 = _88;
    float4 _94 = r1;
    _94.x = cos(r1.xxxx.x);
    r1 = _94;
    float4 _101 = r1;
    _101.x = r1.x + asfloat(1065353216u);
    r1 = _101;
    float4 _108 = r1;
    _108.x = r1.x * asfloat(1056964608u);
    r1 = _108;
    r2 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r1 = (r1.xxxx * r2) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r0 *= r1;
    float4 _164 = r1;
    _164.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _164;
    float4 _174 = r1;
    _174.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _174;
    float4 _184 = r1;
    _184.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _184;
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
