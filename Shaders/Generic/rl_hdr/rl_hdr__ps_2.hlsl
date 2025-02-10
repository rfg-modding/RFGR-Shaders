cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4096] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float2 _33 = asfloat(uint2(0u, 0u));
    r0 = float4(_33.x, _33.y, r0.z, r0.w);
    for (;;)
    {
        float4 _52 = r0;
        _52.z = asfloat((asint(r0.y) >= int(16u)) ? 4294967295u : 0u);
        r0 = _52;
        if (asuint(r0.z) != 0u)
        {
            break;
        }
        int _67 = asint(r0.y) + 1;
        float2 _78 = asfloat(uint2(1056964608u, 1056964608u)) + float2(cb2_m[_67].x, cb2_m[_67].y);
        r1 = float4(_78.x, _78.y, r1.z, r1.w);
        r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
        float4 _95 = r0;
        _95.x = r0.x + r1.x;
        r0 = _95;
        float4 _103 = r0;
        _103.y = asfloat(asint(r0.y) + int(1u));
        r0 = _103;
        continue;
    }
    o0 = r0.xxxx * asfloat(uint4(1031798784u, 1031798784u, 1031798784u, 1031798784u));
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
