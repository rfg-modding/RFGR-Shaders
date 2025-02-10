cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float4 shader_in[1];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float3 _40 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float3 _55 = float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z);
    float4 _66 = r0;
    _66.x = mad(_40.z, _55.z, mad(_40.y, _55.y, _40.x * _55.x));
    r0 = _66;
    float3 _79 = (-r0.xxx) + float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z);
    r0 = float4(r0.x, _79.x, _79.y, _79.z);
    float3 _91 = (cb0_m[0].x.xxx * r0.yzw) + r0.xxx;
    r0 = float4(_91.x, _91.y, _91.z, r0.w);
    float3 _104 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    r0 = float4(_104.x, _104.y, _104.z, r0.w);
    float3 _112 = r0.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u));
    r0 = float4(_112.x, _112.y, _112.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float3 _132 = r0.xyz * (-r1.yyy);
    r0 = float4(_132.x, _132.y, _132.z, r0.w);
    float3 _140 = r0.xyz * asfloat(uint3(1069066811u, 1069066811u, 1069066811u));
    r0 = float4(_140.x, _140.y, _140.z, r0.w);
    float3 _145 = exp2(r0.xyz);
    r0 = float4(_145.x, _145.y, _145.z, r0.w);
    float3 _154 = (-r0.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    o0 = float4(_154.x, _154.y, _154.z, o0.w);
    float4 _158 = o0;
    _158.w = asfloat(0u);
    o0 = _158;
}

void frag_main()
{
    ps_main();
}

void main()
{
    frag_main();
}
