cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _54 = asfloat(uint3(1025879782u, 1025879782u, 1025879782u));
    bool3 _57 = bool3(shader_in[2].xyz.x < _54.x, shader_in[2].xyz.y < _54.y, shader_in[2].xyz.z < _54.z);
    float3 _64 = asfloat(uint3(_57.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _57.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _57.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r1 = float4(_64.x, _64.y, _64.z, r1.w);
    float4 _75 = r1;
    _75.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _75;
    float4 _85 = r1;
    _85.x = asfloat(asuint(r1.z) & asuint(r1.x));
    r1 = _85;
    float3 _93 = shader_in[2].xyz * asfloat(uint3(1033798545u, 1033798545u, 1033798545u));
    r1 = float4(r1.x, _93.x, _93.y, _93.z);
    float3 _102 = shader_in[2].xyz + asfloat(uint3(1029785518u, 1029785518u, 1029785518u));
    r2 = float4(_102.x, _102.y, _102.z, r2.w);
    float3 _111 = r2.xyz * asfloat(uint3(1064478574u, 1064478574u, 1064478574u));
    r2 = float4(_111.x, _111.y, _111.z, r2.w);
    float3 _116 = log2(r2.xyz);
    r2 = float4(_116.x, _116.y, _116.z, r2.w);
    float3 _124 = r2.xyz * asfloat(uint3(1075419546u, 1075419546u, 1075419546u));
    r2 = float4(_124.x, _124.y, _124.z, r2.w);
    float3 _129 = exp2(r2.xyz);
    r2 = float4(_129.x, _129.y, _129.z, r2.w);
    uint3 _134 = asuint(r1.xxx);
    bool3 _139 = bool3(_134.x != uint3(0u, 0u, 0u).x, _134.y != uint3(0u, 0u, 0u).y, _134.z != uint3(0u, 0u, 0u).z);
    float3 _140 = float3(_139.x ? r1.yzw.x : r2.xyz.x, _139.y ? r1.yzw.y : r2.xyz.y, _139.z ? r1.yzw.z : r2.xyz.z);
    r1 = float4(_140.x, _140.y, _140.z, r1.w);
    float4 _146 = r1;
    _146.w = shader_in[2].w;
    r1 = _146;
    r0 *= r1;
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _176 = r1;
    _176.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _176;
    float4 _186 = r1;
    _186.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _186;
    float4 _196 = r1;
    _196.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _196;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
