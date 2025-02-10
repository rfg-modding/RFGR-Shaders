cbuffer cb0_t : register(b0)
{
    float4 cb0_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt6s6;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _59 = r0.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u));
    r1 = float4(_59.x, _59.y, _59.z, r1.w);
    float3 _67 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _79 = r1;
    _79.x = mad(_67.z, r1.xyz.z, mad(_67.y, r1.xyz.y, _67.x * r1.xyz.x));
    r1 = _79;
    float3 _88 = (r0.xyz * asfloat(uint3(1090519040u, 1090519040u, 1090519040u))) + (-r1.xxx);
    r0 = float4(_88.x, _88.y, _88.z, r0.w);
    float3 _104 = (cb0_m[0].x.xxx * r0.xyz) + r1.xxx;
    r0 = float4(_104.x, _104.y, _104.z, r0.w);
    float3 _118 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    r0 = float4(_118.x, _118.y, _118.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt6s6, shader_in[1].xyxx.xy);
    r1 = clamp(r1, 0.0f.xxxx, 1.0f.xxxx);
    float3 _135 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _148 = r2;
    _148.x = mad(_135.z, r1.xyz.z, mad(_135.y, r1.xyz.y, _135.x * r1.xyz.x));
    r2 = _148;
    float3 _155 = r1.xyz + (-r2.xxx);
    r1 = float4(_155.x, _155.y, _155.z, r1.w);
    float3 _167 = (cb0_m[0].y.xxx * r1.xyz) + r2.xxx;
    r1 = float4(_167.x, _167.y, _167.z, r1.w);
    float3 _176 = (-r1.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_176.x, _176.y, _176.z, r1.w);
    float3 _181 = log2(r1.xyz);
    r1 = float4(_181.x, _181.y, _181.z, r1.w);
    float3 _189 = r1.xyz * asfloat(uint3(1060205080u, 1060205080u, 1060205080u));
    r1 = float4(_189.x, _189.y, _189.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float3 _205 = r1.xyz / r2.yyy;
    r1 = float4(_205.x, _205.y, _205.z, r1.w);
    float3 _216 = (r0.xyz * r1.www) + (-r1.xyz);
    r0 = float4(_216.x, _216.y, _216.z, r0.w);
    float4 _225 = r0;
    _225.w = r0.w + (-r1.w);
    r0 = _225;
    float4 _231 = r0;
    _231.w = r0.w + asfloat(1065353216u);
    r0 = _231;
    float4 _239 = o0;
    _239.w = clamp(r0.w * asfloat(1148846080u), 0.0f, 1.0f);
    o0 = _239;
    float3 _246 = r0.xyz * (-r2.yyy);
    r0 = float4(_246.x, _246.y, _246.z, r0.w);
    float3 _254 = r0.xyz * asfloat(uint3(1069066811u, 1069066811u, 1069066811u));
    r0 = float4(_254.x, _254.y, _254.z, r0.w);
    float3 _259 = exp2(r0.xyz);
    r0 = float4(_259.x, _259.y, _259.z, r0.w);
    float3 _266 = (-r0.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    o0 = float4(_266.x, _266.y, _266.z, o0.w);
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
