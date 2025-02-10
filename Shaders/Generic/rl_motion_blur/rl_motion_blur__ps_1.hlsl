cbuffer cb2_t : register(b2)
{
    float4 cb2_m[6] : packoffset(c0);
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
    float2 _50 = (-shader_in[1].xy) + float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(_50.x, _50.y, r0.z, r0.w);
    float2 _61 = r0.xy * cb2_m[5].x.xx;
    r0 = float4(r0.x, r0.y, _61.x, _61.y);
    float4 _74 = r0;
    _74.z = mad(r0.zw.y, r0.zw.y, r0.zw.x * r0.zw.x);
    r0 = _74;
    float4 _82 = r0;
    _82.z = (-r0.z) + asfloat(1065353216u);
    r0 = _82;
    float4 _88 = r0;
    _88.z = max(r0.z, asfloat(0u));
    r0 = _88;
    float4 _95 = r0;
    _95.z = r0.z * r0.z;
    r0 = _95;
    float4 _104 = r0;
    _104.z = r0.z * cb2_m[4].w;
    r0 = _104;
    float3 _109 = asfloat(uint3(0u, 0u, 0u));
    r1 = float4(_109.x, _109.y, _109.z, r1.w);
    float4 _114 = r0;
    _114.w = asfloat(0u);
    r0 = _114;
    for (;;)
    {
        float4 _130 = r1;
        _130.w = asfloat((asint(r0.w) >= int(8u)) ? 4294967295u : 0u);
        r1 = _130;
        if (asuint(r1.w) != 0u)
        {
            break;
        }
        float4 _142 = r1;
        _142.w = float(asint(r0.w));
        r1 = _142;
        float2 _148 = r0.xy * r1.ww;
        r2 = float4(_148.x, _148.y, r2.z, r2.w);
        float2 _160 = (r2.xy * r0.zz) + shader_in[1].xy;
        r2 = float4(_160.x, _160.y, r2.z, r2.w);
        r2 = tex2D(SPIRV_Cross_Combinedt0s0, r2.xyxx.xy);
        float3 _175 = r1.xyz + r2.xyz;
        r1 = float4(_175.x, _175.y, _175.z, r1.w);
        float4 _184 = r0;
        _184.w = asfloat(asint(r0.w) + int(1u));
        r0 = _184;
        continue;
    }
    float3 _191 = r1.xyz * asfloat(uint3(1040187392u, 1040187392u, 1040187392u));
    o0 = float4(_191.x, _191.y, _191.z, o0.w);
    float4 _195 = o0;
    _195.w = asfloat(0u);
    o0 = _195;
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
