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
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float4 _57 = r0;
    _57.x = shader_in[1].z * cb0_m[1].x;
    r0 = _57;
    float4 _67 = r0;
    _67.x = clamp(r0.x * asfloat(1128792064u), 0.0f, 1.0f);
    r0 = _67;
    float4 _73 = r0;
    _73.x = cos(r0.xxxx.x);
    r0 = _73;
    float4 _80 = r0;
    _80.x = r0.x + asfloat(1065353216u);
    r0 = _80;
    float4 _90 = r0;
    _90.y = shader_in[1].z * cb2_m[1].w;
    r0 = _90;
    float4 _97 = r0;
    _97.x = r0.y * r0.x;
    r0 = _97;
    float4 _108 = r0;
    _108.y = asfloat((shader_in[1].z == asfloat(1065353216u)) ? 4294967295u : 0u);
    r0 = _108;
    float4 _118 = r0;
    _118.y = (asuint(r0.y) != 0u) ? asfloat(0u) : asfloat(1050253722u);
    r0 = _118;
    float4 _128 = r0;
    _128.x = (r0.x * asfloat(1056964608u)) + r0.y;
    r0 = _128;
    float2 _138 = r0.xx * asfloat(uint2(1103626240u, 1123680256u));
    r0 = float4(_138.x, _138.y, r0.z, r0.w);
    float4 _146 = r0;
    _146.x = max(r0.y, r0.x);
    r0 = _146;
    float4 _154 = r0;
    _154.y = min(shader_in[1].y, asfloat(1065185444u));
    r0 = _154;
    float4 _164 = r0;
    _164.y = asfloat((r0.y < shader_in[1].x) ? 4294967295u : 0u);
    r0 = _164;
    uint3 _169 = asuint(r0.yyy);
    float3 _172 = asfloat(uint3(0u, 1048911544u, 1048911544u));
    float3 _174 = asfloat(uint3(1065353216u, 0u, 0u));
    bool3 _177 = bool3(_169.x != uint3(0u, 0u, 0u).x, _169.y != uint3(0u, 0u, 0u).y, _169.z != uint3(0u, 0u, 0u).z);
    float3 _178 = float3(_177.x ? _172.x : _174.x, _177.y ? _172.y : _174.y, _177.z ? _172.z : _174.z);
    r0 = float4(r0.x, _178.x, _178.y, _178.z);
    float4 _189 = r1;
    _189.x = asfloat((asfloat(0u) == shader_in[1].z) ? 0u : 4294967295u);
    r1 = _189;
    uint3 _193 = asuint(r1.xxx);
    float3 _195 = asfloat(uint3(1065353216u, 1065353216u, 0u));
    bool3 _198 = bool3(_193.x != uint3(0u, 0u, 0u).x, _193.y != uint3(0u, 0u, 0u).y, _193.z != uint3(0u, 0u, 0u).z);
    float3 _199 = float3(_198.x ? _195.x : r0.yzw.x, _198.y ? _195.y : r0.yzw.y, _198.z ? _195.z : r0.yzw.z);
    r0 = float4(r0.x, _199.x, _199.y, _199.z);
    float3 _206 = r0.yzw * r0.xxx;
    r0 = float4(_206.x, _206.y, _206.z, r0.w);
    float3 _220 = r0.xyz * float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r0 = float4(_220.x, _220.y, _220.z, r0.w);
    float3 _228 = r0.xyz * asfloat(uint3(1053609165u, 1053609165u, 1053609165u));
    r0 = float4(_228.x, _228.y, _228.z, r0.w);
    float4 _236 = r1;
    _236.x = min(shader_in[2].x, asfloat(1065185444u));
    r1 = _236;
    float4 _243 = r1;
    _243.x = max(r1.x, asfloat(1008981770u));
    r1 = _243;
    float4 _248 = r1;
    _248.y = shader_in[2].y;
    r1 = _248;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    float4 _260 = r0;
    _260.w = r1.x;
    r0 = _260;
    r0 = max(r0, asfloat(uint4(0u, 0u, 0u, 0u)));
    r0 = min(r0, asfloat(uint4(1090519040u, 1090519040u, 1090519040u, 1090519040u)));
    float4 _278 = r1;
    _278.x = (-shader_in[2].z) + asfloat(1065353216u);
    r1 = _278;
    float3 _284 = r0.xyz * r1.xxx;
    r1 = float4(_284.x, _284.y, _284.z, r1.w);
    float3 _302 = (shader_in[2].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_302.x, _302.y, _302.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
