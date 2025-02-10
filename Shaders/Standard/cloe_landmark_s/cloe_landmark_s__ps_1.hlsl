cbuffer cb0_t : register(b0)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _78 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_78.x, _78.y, _78.z, r1.w);
    float4 _94 = r1;
    _94.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _94;
    float4 _99 = r1;
    _99.w = rsqrt(r1.w);
    r1 = _99;
    float3 _105 = r1.www * r1.xyz;
    r1 = float4(_105.x, _105.y, _105.z, r1.w);
    float4 _124 = r1;
    _124.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _124;
    float4 _129 = r1;
    _129.w = rsqrt(r1.w);
    r1 = _129;
    float3 _136 = r1.www * shader_in[2].xyz;
    r2 = float4(_136.x, _136.y, _136.z, r2.w);
    float4 _153 = r1;
    _153.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _153;
    float4 _160 = r1;
    _160.y = clamp(r1.x, 0.0f, 1.0f);
    r1 = _160;
    float4 _167 = r1;
    _167.x = r1.x + asfloat(1065353216u);
    r1 = _167;
    float4 _174 = r1;
    _174.x = r1.x * asfloat(1056964608u);
    r1 = _174;
    r2 = (-float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w)) + float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    r2 = (r1.xxxx * r2) + float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    r1 = (float4(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z, cb1_m[0].w) * r1.yyyy) + r2;
    r0 *= r1;
    float4 _247 = r1;
    _247.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _247;
    float4 _257 = r1;
    _257.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _257;
    float4 _267 = r1;
    _267.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _267;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
