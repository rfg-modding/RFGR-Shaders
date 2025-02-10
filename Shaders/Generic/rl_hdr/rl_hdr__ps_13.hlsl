cbuffer cb0_t : register(b0)
{
    float4 cb0_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[21] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt3s3;

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
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float4 _69 = r0;
    _69.x = r0.x + (-cb2_m[19].y);
    r0 = _69;
    float4 _81 = r0;
    _81.x = (cb2_m[19].x * r0.x) + cb2_m[19].y;
    r0 = _81;
    float4 _88 = r0;
    _88.x = r0.x + asfloat(981668463u);
    r0 = _88;
    float4 _97 = r0;
    _97.x = cb2_m[20].x / r0.x;
    r0 = _97;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r1 *= cb6_m[0].w.xxxx;
    float3 _123 = r1.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u));
    r0 = float4(r0.x, _123.x, _123.y, _123.z);
    float3 _130 = r0.xxx * r0.yzw;
    r0 = float4(_130.x, _130.y, _130.z, r0.w);
    float3 _137 = asfloat(uint3(1050253722u, 1050253722u, 1050253722u));
    float4 _147 = r0;
    _147.w = mad(r0.xyz.z, _137.z, mad(r0.xyz.y, _137.y, r0.xyz.x * _137.x));
    r0 = _147;
    float4 _157 = r2;
    _157.x = (-r0.w) + cb2_m[0].x;
    r2 = _157;
    float4 _171 = r2;
    _171.x = (cb2_m[0].z * abs(r2.x)) + cb2_m[0].w;
    r2 = _171;
    float4 _183 = r2;
    _183.y = asfloat((r0.w < cb2_m[0].x) ? 4294967295u : 0u);
    r2 = _183;
    float4 _191 = r2;
    _191.z = r0.w * cb2_m[0].y;
    r2 = _191;
    float4 _197 = r0;
    _197.w = r0.w + asfloat(981668463u);
    r0 = _197;
    float4 _208 = r2;
    _208.x = (asuint(r2.y) != 0u) ? r2.z : r2.x;
    r2 = _208;
    float3 _214 = r0.xyz * r2.xxx;
    r0 = float4(_214.x, _214.y, _214.z, r0.w);
    float3 _221 = r0.xyz / r0.www;
    r0 = float4(_221.x, _221.y, _221.z, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[1].xyxx.xy);
    r3 = r2 * cb6_m[0].w.xxxx;
    float3 _242 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _254 = r0;
    _254.w = mad(_242.z, r3.xyz.z, mad(_242.y, r3.xyz.y, _242.x * r3.xyz.x));
    r0 = _254;
    float3 _266 = (r2.xyz * cb6_m[0].w.xxx) + (-r0.www);
    r2 = float4(_266.x, _266.y, _266.z, r2.w);
    float3 _278 = (cb0_m[0].y.xxx * r2.xyz) + r0.www;
    r2 = float4(_278.x, _278.y, _278.z, r2.w);
    float3 _288 = (r0.xyz * r3.www) + r2.xyz;
    r0 = float4(_288.x, _288.y, _288.z, r0.w);
    float3 _296 = r0.xyz * asfloat(uint3(1040187392u, 1040187392u, 1040187392u));
    r1 = float4(_296.x, _296.y, _296.z, r1.w);
    r0 = max(r1, asfloat(uint4(0u, 0u, 0u, 0u)));
    o0 = r0 * cb6_m[0].w.xxxx;
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
