cbuffer cb2_t : register(b2)
{
    float4 cb2_m[12] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float4 _64 = r0;
    _64.x = (r0.x * cb2_m[11].w) + cb2_m[11].z;
    r0 = _64;
    float4 _77 = r0;
    _77.y = (-cb2_m[10].x) + cb2_m[10].y;
    r0 = _77;
    float4 _89 = r0;
    _89.x = ((-r0.y) * r0.x) + cb2_m[10].y;
    r0 = _89;
    float4 _98 = r0;
    _98.y = cb2_m[10].x * cb2_m[10].y;
    r0 = _98;
    float4 _105 = r0;
    _105.x = r0.y / r0.x;
    r0 = _105;
    float2 _117 = (-r0.xx) + float2(cb2_m[9].y, cb2_m[9].w);
    r0 = float4(r0.x, _117.x, _117.y, r0.w);
    float2 _133 = (-float2(cb2_m[9].x, cb2_m[9].z)) + float2(cb2_m[9].y, cb2_m[9].w);
    r1 = float4(_133.x, _133.y, r1.z, r1.w);
    float2 _141 = r0.yz / r1.xy;
    r0 = float4(r0.x, _141.x, _141.y, r0.w);
    float3 _152 = float3(cb2_m[9].x, cb2_m[9].z, cb2_m[9].w);
    bool3 _157 = bool3(_152.x < r0.xxx.x, _152.y < r0.xxx.y, _152.z < r0.xxx.z);
    float3 _163 = asfloat(uint3(_157.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _157.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _157.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r1 = float4(_163.x, _163.y, _163.z, r1.w);
    float3 _175 = float3(cb2_m[9].y, cb2_m[9].w, cb2_m[9].x);
    bool3 _176 = bool3(r0.xxx.x < _175.x, r0.xxx.y < _175.y, r0.xxx.z < _175.z);
    float3 _179 = asfloat(uint3(_176.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _176.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _176.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(_179.x, _179.y, _179.z, r2.w);
    float2 _190 = asfloat(asuint(r1.xy) & asuint(r2.xy));
    r0 = float4(_190.x, r0.y, r0.z, _190.y);
    float4 _201 = r1;
    _201.x = asfloat(asuint(r1.z) | asuint(r2.z));
    r1 = _201;
    float4 _211 = r0;
    _211.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _211;
    float4 _219 = r0;
    _219.y = (-r0.z) + asfloat(1065353216u);
    r0 = _219;
    float4 _230 = r0;
    _230.x = (asuint(r0.w) != 0u) ? r0.y : r0.x;
    r0 = _230;
    float4 _240 = r0;
    _240.x = (asuint(r1.x) != 0u) ? asfloat(1065353216u) : r0.x;
    r0 = _240;
    float4 _248 = r0;
    _248.x = max(r0.x, cb2_m[11].x);
    r0 = _248;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _271 = r1.xyz + (-r2.xyz);
    r0 = float4(r0.x, _271.x, _271.y, _271.z);
    float3 _281 = (r0.xxx * r0.yzw) + r2.xyz;
    o0 = float4(_281.x, _281.y, _281.z, o0.w);
    float4 _286 = o0;
    _286.w = r2.w;
    o0 = _286;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
