cbuffer cb2_t : register(b2)
{
    float4 cb2_m[21] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float4 shader_in[1];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float4 _54 = r0;
    _54.y = asfloat((asfloat(1176256512u) < abs(r0.x)) ? 4294967295u : 0u);
    r0 = _54;
    float4 _65 = r0;
    _65.x = (asuint(r0.y) != 0u) ? asfloat(1065353216u) : r0.x;
    r0 = _65;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float4 _81 = r0;
    _81.y = asfloat((asfloat(1176256512u) < abs(r1.x)) ? 4294967295u : 0u);
    r0 = _81;
    float4 _91 = r0;
    _91.y = (asuint(r0.y) != 0u) ? asfloat(1065353216u) : r1.x;
    r0 = _91;
    float4 _99 = r0;
    _99.x = (-r0.y) + r0.x;
    r0 = _99;
    float4 _112 = r0;
    _112.z = cb2_m[18].x * asfloat(3210729484u);
    r0 = _112;
    float4 _117 = r0;
    _117.z = exp2(r0.z);
    r0 = _117;
    float4 _124 = r0;
    _124.z = (-r0.z) + asfloat(1065353216u);
    r0 = _124;
    float4 _134 = r0;
    _134.x = (r0.x * r0.z) + r0.y;
    r0 = _134;
    float4 _145 = r0;
    _145.y = r0.x + (-cb2_m[19].y);
    r0 = _145;
    float4 _149 = o0;
    _149.x = r0.x;
    o0 = _149;
    float4 _161 = r0;
    _161.x = (cb2_m[19].x * r0.y) + cb2_m[19].y;
    r0 = _161;
    float4 _172 = r0;
    _172.x = (cb2_m[20].y * r0.x) + asfloat(1065353216u);
    r0 = _172;
    float4 _179 = r0;
    _179.x = max(r0.x, asfloat(1036831949u));
    r0 = _179;
    float4 _188 = o0;
    _188.y = cb2_m[20].z / r0.x;
    o0 = _188;
    float2 _192 = asfloat(uint2(0u, 1065353216u));
    o0 = float4(o0.x, o0.y, _192.x, _192.y);
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
