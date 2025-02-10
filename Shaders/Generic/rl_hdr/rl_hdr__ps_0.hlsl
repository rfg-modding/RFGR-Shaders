cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4096] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

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

void ps_main()
{
    float2 _40 = asfloat(uint2(0u, 0u));
    r0 = float4(_40.x, _40.y, r0.z, r0.w);
    for (;;)
    {
        float4 _59 = r0;
        _59.z = asfloat((asint(r0.y) >= int(9u)) ? 4294967295u : 0u);
        r0 = _59;
        if (asuint(r0.z) != 0u)
        {
            break;
        }
        int _74 = asint(r0.y) + 1;
        float2 _84 = shader_in[1].xy + float2(cb2_m[_74].x, cb2_m[_74].y);
        r0 = float4(r0.x, r0.y, _84.x, _84.y);
        r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
        r2 = r1 * cb6_m[0].w.xxxx;
        float3 _116 = float3(cb2_m[17].x, cb2_m[17].y, cb2_m[17].z);
        float4 _126 = r0;
        _126.z = mad(r2.xyz.z, _116.z, mad(r2.xyz.y, _116.y, r2.xyz.x * _116.x));
        r0 = _126;
        float4 _133 = r0;
        _133.z = r0.z * asfloat(1108344832u);
        r0 = _133;
        float4 _145 = r0;
        _145.w = ((-r1.w) * cb6_m[0].w) + asfloat(1065353216u);
        r0 = _145;
        float4 _158 = r0;
        _158.w = clamp((r0.w * asfloat(1092616192u)) + asfloat(3239051264u), 0.0f, 1.0f);
        r0 = _158;
        float4 _172 = r0;
        _172.w = (cb2_m[20].w * r0.w) + cb2_m[21].x;
        r0 = _172;
        float4 _180 = r1;
        _180.x = asfloat((r2.w < asfloat(1065353216u)) ? 4294967295u : 0u);
        r1 = _180;
        float4 _192 = r0;
        _192.w = (asuint(r1.x) != 0u) ? cb2_m[20].w : r0.w;
        r0 = _192;
        float4 _199 = r0;
        _199.z = min(r0.w, r0.z);
        r0 = _199;
        float4 _207 = r0;
        _207.z = max(r0.z, cb2_m[21].y);
        r0 = _207;
        float4 _214 = r0;
        _214.z = min(r0.w, r0.z);
        r0 = _214;
        float4 _221 = r0;
        _221.x = r0.z + r0.x;
        r0 = _221;
        float4 _229 = r0;
        _229.y = asfloat(asint(r0.y) + int(1u));
        r0 = _229;
        continue;
    }
    float4 _236 = r0;
    _236.x = r0.x * asfloat(1038323257u);
    r0 = _236;
    o0 = min(r0.xxxx, asfloat(uint4(1115684864u, 1115684864u, 1115684864u, 1115684864u)));
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
