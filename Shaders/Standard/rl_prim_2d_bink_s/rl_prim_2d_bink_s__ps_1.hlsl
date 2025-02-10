cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy).yzxw;
    float4 _71 = r2;
    _71.x = r0.x;
    r2 = _71;
    float4 _75 = r2;
    _75.y = r1.x;
    r2 = _75;
    float4 _79 = r2;
    _79.w = asfloat(1065353216u);
    r2 = _79;
    float3 _87 = asfloat(uint3(1066729984u, 1070351104u, 3210666816u));
    float4 _99 = r0;
    _99.x = mad(_87.z, r2.xyw.z, mad(_87.y, r2.xyw.y, _87.x * r2.xyw.x));
    r0 = _99;
    float4 _106 = asfloat(uint4(1066729984u, 3209707520u, 3200805888u, 1057462976u));
    float4 _120 = r0;
    _120.y = mad(_106.w, r2.w, mad(_106.z, r2.z, mad(_106.y, r2.y, _106.x * r2.x)));
    r0 = _120;
    float3 _125 = asfloat(uint3(1066729984u, 1073816576u, 3213521952u));
    float4 _137 = r0;
    _137.z = mad(_125.z, r2.xzw.z, mad(_125.y, r2.xzw.y, _125.x * r2.xzw.x));
    r0 = _137;
    float3 _143 = asfloat(uint3(1025879782u, 1025879782u, 1025879782u));
    bool3 _146 = bool3(r0.xyz.x < _143.x, r0.xyz.y < _143.y, r0.xyz.z < _143.z);
    float3 _152 = asfloat(uint3(_146.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _146.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _146.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r1 = float4(_152.x, _152.y, _152.z, r1.w);
    float4 _163 = r0;
    _163.w = asfloat(asuint(r1.y) & asuint(r1.x));
    r0 = _163;
    float4 _173 = r0;
    _173.w = asfloat(asuint(r1.z) & asuint(r0.w));
    r0 = _173;
    float3 _180 = r0.xyz * asfloat(uint3(1033798545u, 1033798545u, 1033798545u));
    r1 = float4(_180.x, _180.y, _180.z, r1.w);
    float3 _188 = r0.xyz + asfloat(uint3(1029785518u, 1029785518u, 1029785518u));
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float3 _196 = r0.xyz * asfloat(uint3(1064478574u, 1064478574u, 1064478574u));
    r0 = float4(_196.x, _196.y, _196.z, r0.w);
    float3 _201 = log2(r0.xyz);
    r0 = float4(_201.x, _201.y, _201.z, r0.w);
    float3 _209 = r0.xyz * asfloat(uint3(1075419546u, 1075419546u, 1075419546u));
    r0 = float4(_209.x, _209.y, _209.z, r0.w);
    float3 _214 = exp2(r0.xyz);
    r0 = float4(_214.x, _214.y, _214.z, r0.w);
    uint3 _219 = asuint(r0.www);
    bool3 _224 = bool3(_219.x != uint3(0u, 0u, 0u).x, _219.y != uint3(0u, 0u, 0u).y, _219.z != uint3(0u, 0u, 0u).z);
    float3 _225 = float3(_224.x ? r1.xyz.x : r0.xyz.x, _224.y ? r1.xyz.y : r0.xyz.y, _224.z ? r1.xyz.z : r0.xyz.z);
    r0 = float4(_225.x, _225.y, _225.z, r0.w);
    float3 _232 = asfloat(uint3(1025879782u, 1025879782u, 1025879782u));
    bool3 _233 = bool3(shader_in[2].xyz.x < _232.x, shader_in[2].xyz.y < _232.y, shader_in[2].xyz.z < _232.z);
    float3 _235 = asfloat(uint3(_233.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _233.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _233.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r1 = float4(_235.x, _235.y, _235.z, r1.w);
    float4 _246 = r1;
    _246.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _246;
    float4 _256 = r1;
    _256.x = asfloat(asuint(r1.z) & asuint(r1.x));
    r1 = _256;
    float3 _262 = shader_in[2].xyz * asfloat(uint3(1033798545u, 1033798545u, 1033798545u));
    r1 = float4(r1.x, _262.x, _262.y, _262.z);
    float3 _269 = shader_in[2].xyz + asfloat(uint3(1029785518u, 1029785518u, 1029785518u));
    r2 = float4(_269.x, _269.y, _269.z, r2.w);
    float3 _275 = r2.xyz * asfloat(uint3(1064478574u, 1064478574u, 1064478574u));
    r2 = float4(_275.x, _275.y, _275.z, r2.w);
    float3 _280 = log2(r2.xyz);
    r2 = float4(_280.x, _280.y, _280.z, r2.w);
    float3 _286 = r2.xyz * asfloat(uint3(1075419546u, 1075419546u, 1075419546u));
    r2 = float4(_286.x, _286.y, _286.z, r2.w);
    float3 _291 = exp2(r2.xyz);
    r2 = float4(_291.x, _291.y, _291.z, r2.w);
    uint3 _296 = asuint(r1.xxx);
    bool3 _301 = bool3(_296.x != uint3(0u, 0u, 0u).x, _296.y != uint3(0u, 0u, 0u).y, _296.z != uint3(0u, 0u, 0u).z);
    float3 _302 = float3(_301.x ? r1.yzw.x : r2.xyz.x, _301.y ? r1.yzw.y : r2.xyz.y, _301.z ? r1.yzw.z : r2.xyz.z);
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float4 _308 = r1;
    _308.w = shader_in[2].w;
    r1 = _308;
    float4 _311 = r0;
    _311.w = asfloat(1065353216u);
    r0 = _311;
    r0 *= r1;
    float4 _328 = r1;
    _328.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _328;
    float4 _338 = r1;
    _338.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _338;
    float4 _348 = r1;
    _348.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _348;
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
