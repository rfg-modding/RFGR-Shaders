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
    float4 _43 = r0;
    _43.x = (-shader_in[2].z) + asfloat(1065353216u);
    r0 = _43;
    float4 _50 = r0;
    _50.x = r0.x + r0.x;
    r0 = _50;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float4 _71 = r0;
    _71.y = (r1.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _71;
    float4 _81 = r0;
    _81.x = (r0.y * asfloat(1036831949u)) + r0.x;
    r0 = _81;
    float4 _90 = r0;
    _90.x = r0.x + (-shader_in[2].w);
    r0 = _90;
    float4 _97 = r0;
    _97.x = min(abs(r0.x), asfloat(1065353216u));
    r0 = _97;
    float4 _102 = r0;
    _102.x = log2(r0.x);
    r0 = _102;
    float4 _109 = r0;
    _109.x = r0.x * asfloat(1112014848u);
    r0 = _109;
    float4 _114 = r0;
    _114.x = exp2(r0.x);
    r0 = _114;
    float4 _121 = r0;
    _121.y = (-r0.x) + asfloat(1065353216u);
    r0 = _121;
    float4 _128 = r0;
    _128.x = min(r0.x, r0.y);
    r0 = _128;
    float4 _135 = r0;
    _135.x = r0.x * asfloat(1092616192u);
    r0 = _135;
    float4 _141 = r0;
    _141.x = min(r0.x, asfloat(1065353216u));
    r0 = _141;
    r0 = r0.xxxx * asfloat(uint4(1092616192u, 1090519040u, 0u, 1065353216u));
    float4 _158 = r1;
    _158.x = (-shader_in[1].x) + asfloat(1065353216u);
    r1 = _158;
    float3 _165 = r0.xyz * r1.xxx;
    r0 = float4(_165.x, _165.y, _165.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    float4 _188 = shader_in[1];
    _188.x = v1;
    shader_in[1] = _188;
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
