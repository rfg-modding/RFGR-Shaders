cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 v2;

struct SPIRV_Cross_Input
{
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[2].zwzz.xy);
    float3 _64 = trunc(float3(cb2_m[1].z, cb2_m[1].y, cb2_m[1].x));
    r1 = float4(_64.x, _64.y, _64.z, r1.w);
    float4 _81 = r0;
    _81.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _81;
    float2 _93 = shader_in[2].zw + float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, _93.x, _93.y, r0.w);
    float2 _102 = r0.yz + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(r0.x, _102.x, _102.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, r0.yzyy.xy);
    float2 _118 = trunc(float2(cb2_m[2].y, cb2_m[2].x));
    r2 = float4(_118.x, _118.y, r2.z, r2.w);
    float4 _127 = r2;
    _127.z = trunc(cb2_m[1].w);
    r2 = _127;
    float4 _142 = r0;
    _142.y = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _142;
    float2 _149 = min(r0.xy, asfloat(uint2(1065353216u, 1065353216u)));
    r0 = float4(_149.x, _149.y, r0.z, r0.w);
    float4 _157 = r0;
    _157.x = r0.x + r0.y;
    r0 = _157;
    float4 _163 = r0;
    _163.x = min(r0.x, asfloat(1065353216u));
    r0 = _163;
    float4 _175 = r0;
    _175.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _175;
    float4 _185 = r0;
    _185.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _185;
    float4 _195 = r0;
    _195.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _195;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _205 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_205.x, _205.y, _205.z, o0.w);
    float4 _210 = o0;
    _210.w = r0.x;
    o0 = _210;
}

void frag_main()
{
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v2 = stage_input.v2;
    frag_main();
}
