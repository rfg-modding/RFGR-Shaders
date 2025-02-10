cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float3 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _58 = r0;
    _58.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _58;
    float4 _68 = r0;
    _68.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _68;
    float4 _78 = r0;
    _78.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _78;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _111 = r0;
    _111.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _111;
    float4 _116 = r0;
    _116.w = rsqrt(r0.w);
    r0 = _116;
    float3 _123 = r0.www * shader_in[2].xyz;
    r1 = float4(_123.x, _123.y, _123.z, r1.w);
    float4 _143 = r0;
    _143.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _143;
    float4 _148 = r0;
    _148.w = rsqrt(r0.w);
    r0 = _148;
    float3 _155 = r0.www * shader_in[3].xyz;
    r2 = float4(_155.x, _155.y, _155.z, r2.w);
    float4 _172 = r0;
    _172.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _172;
    float3 _185 = (abs(r0.www) * asfloat(uint3(1077936128u, 1077936128u, 1077936128u))) + asfloat(uint3(0u, 1065353216u, 3212836864u));
    r1 = float4(_185.x, _185.y, _185.z, r1.w);
    float3 _198 = clamp(abs(r1.xyz) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u)), 0.0f.xxx, 1.0f.xxx);
    r1 = float4(_198.x, _198.y, _198.z, r1.w);
    float3 _208 = (r1.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u))) + asfloat(uint3(0u, 1065353216u, 1065353216u));
    r1 = float4(_208.x, _208.y, _208.z, r1.w);
    float3 _215 = r0.xyz * r1.xyz;
    r0 = float4(_215.x, _215.y, _215.z, r0.w);
    float3 _228 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_228.x, _228.y, _228.z, o0.w);
    float4 _232 = o0;
    _232.w = asfloat(1065353216u);
    o0 = _232;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
