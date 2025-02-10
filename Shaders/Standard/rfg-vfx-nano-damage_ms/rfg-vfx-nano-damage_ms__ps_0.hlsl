cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float4 _48 = r0;
    _48.x = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _48;
    float4 _55 = r0;
    _55.x = r0.x + r0.x;
    r0 = _55;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float4 _76 = r0;
    _76.y = (r1.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _76;
    float4 _86 = r0;
    _86.x = (r0.y * asfloat(1036831949u)) + r0.x;
    r0 = _86;
    float4 _95 = r0;
    _95.x = r0.x + (-shader_in[2].w);
    r0 = _95;
    float4 _102 = r0;
    _102.x = min(abs(r0.x), asfloat(1065353216u));
    r0 = _102;
    float4 _107 = r0;
    _107.x = log2(r0.x);
    r0 = _107;
    float4 _114 = r0;
    _114.x = r0.x * asfloat(1112014848u);
    r0 = _114;
    float4 _119 = r0;
    _119.x = exp2(r0.x);
    r0 = _119;
    float4 _126 = r0;
    _126.y = (-r0.x) + asfloat(1065353216u);
    r0 = _126;
    float4 _133 = r0;
    _133.x = min(r0.x, r0.y);
    r0 = _133;
    float4 _140 = r0;
    _140.x = r0.x * asfloat(1092616192u);
    r0 = _140;
    float4 _146 = r0;
    _146.x = min(r0.x, asfloat(1065353216u));
    r0 = _146;
    r0 = r0.xxxx * asfloat(uint4(1092616192u, 1090519040u, 0u, 1065353216u));
    float4 _163 = r1;
    _163.x = (-shader_in[1].x) + asfloat(1065353216u);
    r1 = _163;
    float3 _170 = r0.xyz * r1.xxx;
    r1 = float4(_170.x, _170.y, _170.z, r1.w);
    float3 _192 = (shader_in[1].xxx * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_192.x, _192.y, _192.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    float4 _211 = shader_in[1];
    _211.x = v1;
    shader_in[1] = _211;
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
