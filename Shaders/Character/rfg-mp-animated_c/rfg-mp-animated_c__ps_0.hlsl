cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float4 _54 = r0;
    _54.x = cb2_m[3].z + asfloat(1008981770u);
    r0 = _54;
    float4 _61 = r0;
    _61.x = asfloat(1073741824u) / r0.x;
    r0 = _61;
    float4 _70 = r0;
    _70.x = r0.x * cb0_m[1].z;
    r0 = _70;
    float4 _76 = r0;
    _76.x = cos(r0.xxxx.x);
    r0 = _76;
    float4 _83 = r0;
    _83.x = r0.x + asfloat(1065353216u);
    r0 = _83;
    float4 _90 = r0;
    _90.x = r0.x * asfloat(1056964608u);
    r0 = _90;
    r1 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r0 = (r0.xxxx * r1) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _148 = r1;
    _148.w = r1.w * shader_in[1].z;
    r1 = _148;
    r0 *= r1;
    float4 _159 = r1;
    _159.x = (-shader_in[1].w) + asfloat(1065353216u);
    r1 = _159;
    float3 _166 = r0.xyz * r1.xxx;
    r1 = float4(_166.x, _166.y, _166.z, r1.w);
    float3 _184 = (shader_in[1].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_184.x, _184.y, _184.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
