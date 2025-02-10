cbuffer cb0_t : register(b0)
{
    float4 cb0_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float4 _63 = r0;
    _63.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _63;
    float4 _73 = r0;
    _73.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _73;
    float4 _83 = r0;
    _83.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _83;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _120 = r0;
    _120.w = clamp(mad(shader_in[2].xyz.z, shader_in[3].xyz.z, mad(shader_in[2].xyz.y, shader_in[3].xyz.y, shader_in[2].xyz.x * shader_in[3].xyz.x)), 0.0f, 1.0f);
    r0 = _120;
    float4 _131 = r1;
    _131.x = cb0_m[1].w * cb2_m[1].x;
    r1 = _131;
    float3 _143 = r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_143.x, _143.y, _143.z, r0.w);
    float3 _150 = r1.xxx * r0.xyz;
    r0 = float4(_150.x, _150.y, _150.z, r0.w);
    float3 _157 = r0.www * r0.xyz;
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float3 _166 = r0.xyz * asfloat(uint3(1092616192u, 1092616192u, 1092616192u));
    r0 = float4(_166.x, _166.y, _166.z, r0.w);
    float4 _175 = r0;
    _175.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _175;
    float3 _181 = r0.xyz * r0.www;
    o0 = float4(_181.x, _181.y, _181.z, o0.w);
    float4 _185 = o0;
    _185.w = asfloat(1065353216u);
    o0 = _185;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
