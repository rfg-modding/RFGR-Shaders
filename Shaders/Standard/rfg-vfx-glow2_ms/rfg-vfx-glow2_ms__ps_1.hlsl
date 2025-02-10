cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float3 _61 = (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_61.x, _61.y, _61.z, r0.w);
    float4 _73 = r0;
    _73.w = cb6_m[0].w * cb2_m[2].x;
    r0 = _73;
    float3 _88 = (r0.www * r0.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_88.x, _88.y, _88.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _106 = r0.xyz * r1.xyz;
    r0 = float4(_106.x, _106.y, _106.z, r0.w);
    float4 _114 = r1;
    _114.w = r0.w * r1.w;
    r1 = _114;
    float4 _122 = r0;
    _122.w = cb2_m[2].y * asfloat(1092616192u);
    r0 = _122;
    float3 _128 = r0.www * r0.xyz;
    r0 = float4(_128.x, _128.y, _128.z, r0.w);
    float4 _138 = r0;
    _138.w = (-shader_in[1].z) + asfloat(1065353216u);
    r0 = _138;
    float3 _144 = r0.xyz * r0.www;
    r1 = float4(_144.x, _144.y, _144.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
