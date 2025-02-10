cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
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
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy).yxzw;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float4 _62 = r0;
    _62.z = r1.x;
    r0 = _62;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _74 = r0;
    _74.x = r1.x;
    r0 = _74;
    float4 _78 = r0;
    _78.w = asfloat(1065353216u);
    r0 = _78;
    float4 _86 = asfloat(uint4(1066729984u, 3209707520u, 3200805888u, 1057462976u));
    float4 _100 = r1;
    _100.y = mad(_86.w, r0.w, mad(_86.z, r0.z, mad(_86.y, r0.y, _86.x * r0.x)));
    r1 = _100;
    float3 _107 = asfloat(uint3(1066729984u, 1070351104u, 3210666816u));
    float4 _119 = r1;
    _119.x = mad(_107.z, r0.xyw.z, mad(_107.y, r0.xyw.y, _107.x * r0.xyw.x));
    r1 = _119;
    float3 _124 = asfloat(uint3(1066729984u, 1073816576u, 3213521952u));
    float4 _136 = r1;
    _136.z = mad(_124.z, r0.xzw.z, mad(_124.y, r0.xzw.y, _124.x * r0.xzw.x));
    r1 = _136;
    float3 _143 = r1.xyz + asfloat(uint3(1029785518u, 1029785518u, 1029785518u));
    r0 = float4(_143.x, _143.y, _143.z, r0.w);
    float3 _151 = r0.xyz * asfloat(uint3(1064478574u, 1064478574u, 1064478574u));
    r0 = float4(_151.x, _151.y, _151.z, r0.w);
    float3 _156 = log2(r0.xyz);
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float3 _164 = r0.xyz * asfloat(uint3(1075419546u, 1075419546u, 1075419546u));
    r0 = float4(_164.x, _164.y, _164.z, r0.w);
    float3 _169 = exp2(r0.xyz);
    r0 = float4(_169.x, _169.y, _169.z, r0.w);
    float3 _176 = asfloat(uint3(1025879782u, 1025879782u, 1025879782u));
    bool3 _179 = bool3(r1.xyz.x < _176.x, r1.xyz.y < _176.y, r1.xyz.z < _176.z);
    float3 _186 = asfloat(uint3(_179.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _179.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _179.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(_186.x, _186.y, _186.z, r2.w);
    float3 _194 = r1.xyz * asfloat(uint3(1033798545u, 1033798545u, 1033798545u));
    r1 = float4(_194.x, _194.y, _194.z, r1.w);
    float4 _205 = r0;
    _205.w = asfloat(asuint(r2.y) & asuint(r2.x));
    r0 = _205;
    float4 _215 = r0;
    _215.w = asfloat(asuint(r2.z) & asuint(r0.w));
    r0 = _215;
    uint3 _219 = asuint(r0.www);
    bool3 _224 = bool3(_219.x != uint3(0u, 0u, 0u).x, _219.y != uint3(0u, 0u, 0u).y, _219.z != uint3(0u, 0u, 0u).z);
    float3 _225 = float3(_224.x ? r1.xyz.x : r0.xyz.x, _224.y ? r1.xyz.y : r0.xyz.y, _224.z ? r1.xyz.z : r0.xyz.z);
    r0 = float4(_225.x, _225.y, _225.z, r0.w);
    float3 _233 = shader_in[2].xyz + asfloat(uint3(1029785518u, 1029785518u, 1029785518u));
    r1 = float4(_233.x, _233.y, _233.z, r1.w);
    float3 _239 = r1.xyz * asfloat(uint3(1064478574u, 1064478574u, 1064478574u));
    r1 = float4(_239.x, _239.y, _239.z, r1.w);
    float3 _244 = log2(r1.xyz);
    r1 = float4(_244.x, _244.y, _244.z, r1.w);
    float3 _250 = r1.xyz * asfloat(uint3(1075419546u, 1075419546u, 1075419546u));
    r1 = float4(_250.x, _250.y, _250.z, r1.w);
    float3 _255 = exp2(r1.xyz);
    r1 = float4(_255.x, _255.y, _255.z, r1.w);
    float3 _261 = asfloat(uint3(1025879782u, 1025879782u, 1025879782u));
    bool3 _262 = bool3(shader_in[2].xyz.x < _261.x, shader_in[2].xyz.y < _261.y, shader_in[2].xyz.z < _261.z);
    float3 _264 = asfloat(uint3(_262.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _262.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _262.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(_264.x, _264.y, _264.z, r2.w);
    float4 _275 = r1;
    _275.w = asfloat(asuint(r2.y) & asuint(r2.x));
    r1 = _275;
    float4 _285 = r1;
    _285.w = asfloat(asuint(r2.z) & asuint(r1.w));
    r1 = _285;
    float3 _291 = shader_in[2].xyz * asfloat(uint3(1033798545u, 1033798545u, 1033798545u));
    r2 = float4(_291.x, _291.y, _291.z, r2.w);
    uint3 _296 = asuint(r1.www);
    bool3 _301 = bool3(_296.x != uint3(0u, 0u, 0u).x, _296.y != uint3(0u, 0u, 0u).y, _296.z != uint3(0u, 0u, 0u).z);
    float3 _302 = float3(_301.x ? r2.xyz.x : r1.xyz.x, _301.y ? r2.xyz.y : r1.xyz.y, _301.z ? r2.xyz.z : r1.xyz.z);
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float4 _308 = r1;
    _308.w = shader_in[2].w;
    r1 = _308;
    float4 _311 = r0;
    _311.w = asfloat(1065353216u);
    r0 = _311;
    r0 *= r1;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
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
