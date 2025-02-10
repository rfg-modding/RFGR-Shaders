cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _64 = r1;
    _64.x = shader_in[2].x * cb2_m[2].x;
    r1 = _64;
    float4 _71 = r0;
    _71.w = r0.w * r1.x;
    r0 = _71;
    float4 _84 = r1;
    _84.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _84;
    float4 _94 = r1;
    _94.z = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _94;
    float4 _104 = r1;
    _104.y = asfloat(asuint(r1.z) & asuint(r1.y));
    r1 = _104;
    if (asuint(r1.y) != 0u)
    {
        discard;
    }
    float3 _130 = (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(r1.x, _130.x, _130.y, _130.z);
    float3 _146 = (r1.xxx * r1.yzw) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_146.x, _146.y, _146.z, r1.w);
    float3 _153 = r0.xyz * r1.xyz;
    r0 = float4(_153.x, _153.y, _153.z, r0.w);
    float4 _162 = r1;
    _162.x = cb2_m[2].y * asfloat(1092616192u);
    r1 = _162;
    float3 _168 = r0.xyz * r1.xxx;
    o0 = float4(_168.x, _168.y, _168.z, o0.w);
    float4 _173 = o0;
    _173.w = r0.w;
    o0 = _173;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    float4 _182 = shader_in[2];
    _182.x = v2;
    shader_in[2] = _182;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
