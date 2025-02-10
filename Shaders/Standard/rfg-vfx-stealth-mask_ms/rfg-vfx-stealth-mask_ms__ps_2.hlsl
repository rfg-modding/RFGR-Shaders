cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _54 = r0;
    _54.y = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _54;
    float4 _64 = r0;
    _64.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _64;
    float4 _74 = r0;
    _74.x = (r0.x * asfloat(1056293519u)) + r0.y;
    r0 = _74;
    float4 _91 = r0;
    _91.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _91;
    float4 _101 = r0;
    _101.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _101;
    float4 _111 = r0;
    _111.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _111;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _122 = asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    o0 = float4(_122.x, _122.y, _122.z, o0.w);
    float4 _127 = o0;
    _127.w = r0.x;
    o0 = _127;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
