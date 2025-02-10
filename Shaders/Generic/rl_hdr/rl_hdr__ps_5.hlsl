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
    float3 _116 = r1.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u));
    r0 = float4(r0.x, _116.x, _116.y, _116.z);
    float3 _131 = (r0.yzw * r0.xxx) + (-cb2_m[18].w.xxx);
    r0 = float4(_131.x, _131.y, _131.z, r0.w);
    float3 _138 = max(r0.xyz, asfloat(uint3(0u, 0u, 0u)));
    r0 = float4(_138.x, _138.y, _138.z, r0.w);
    float3 _148 = r0.xyz + cb2_m[18].z.xxx;
    r2 = float4(_148.x, _148.y, _148.z, r2.w);
    float3 _156 = r0.xyz / r2.xyz;
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[1].xyxx.xy);
    float3 _171 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _183 = r0;
    _183.w = mad(_171.z, r2.xyz.z, mad(_171.y, r2.xyz.y, _171.x * r2.xyz.x));
    r0 = _183;
    float3 _190 = (-r0.www) + r2.xyz;
    r2 = float4(_190.x, _190.y, _190.z, r2.w);
    float3 _202 = (cb0_m[0].y.xxx * r2.xyz) + r0.www;
    r2 = float4(_202.x, _202.y, _202.z, r2.w);
    float3 _212 = (r0.xyz * r2.www) + r2.xyz;
    r1 = float4(_212.x, _212.y, _212.z, r1.w);
    o0 = r1 * cb6_m[0].w.xxxx;
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
