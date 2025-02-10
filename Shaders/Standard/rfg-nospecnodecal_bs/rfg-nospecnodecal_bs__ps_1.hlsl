cbuffer cb1_t : register(b1)
{
    float4 cb1_m[3] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
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
    float4 _61 = r0;
    _61.x = shader_in[1].x * cb2_m[1].w;
    r0 = _61;
    float4 _72 = r0;
    _72.y = shader_in[1].y * cb2_m[2].x;
    r0 = _72;
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    float3 _92 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _92.x, _92.y, _92.z);
    float4 _101 = r0;
    _101.y = r0.y + r0.y;
    r0 = _101;
    float4 _108 = r1;
    _108.x = r1.w * r1.y;
    r1 = _108;
    float4 _120 = r0;
    _120.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _120;
    float4 _124 = r0;
    _124.x = r1.x;
    r0 = _124;
    float4 _132 = r0;
    _132.w = (-r0.w) + asfloat(1065353216u);
    r0 = _132;
    float4 _138 = r0;
    _138.w = max(r0.w, asfloat(0u));
    r0 = _138;
    float4 _143 = r0;
    _143.z = sqrt(r0.w);
    r0 = _143;
    float3 _150 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_150.x, _150.y, _150.z, r0.w);
    float3 _163 = (cb2_m[1].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_163.x, _163.y, _163.z, r0.w);
    float4 _179 = r0;
    _179.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _179;
    float4 _184 = r0;
    _184.w = rsqrt(r0.w);
    r0 = _184;
    float3 _190 = r0.www * r0.xyz;
    r0 = float4(_190.x, _190.y, _190.z, r0.w);
    float4 _208 = r0;
    _208.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _208;
    float4 _213 = r1;
    _213.x = rsqrt(r0.w);
    r1 = _213;
    float4 _218 = r0;
    _218.w = sqrt(r0.w);
    r0 = _218;
    float4 _234 = r0;
    _234.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _234;
    float3 _241 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float4 _258 = r0;
    _258.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _258;
    float3 _262 = -r1.xyz;
    float4 _276 = r0;
    _276.y = mad(_262.z, shader_in[3].xyz.z, mad(_262.y, shader_in[3].xyz.y, _262.x * shader_in[3].xyz.x));
    r0 = _276;
    float4 _284 = r0;
    _284.y = min(r0.y, cb1_m[2].x);
    r0 = _284;
    float4 _293 = r0;
    _293.y = r0.y + (-cb1_m[2].y);
    r0 = _293;
    float4 _299 = r0;
    _299.y = max(r0.y, asfloat(0u));
    r0 = _299;
    float4 _307 = r0;
    _307.y = r0.y * cb1_m[2].z;
    r0 = _307;
    float4 _318 = r0;
    _318.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _318;
    float4 _328 = r0;
    _328.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _328;
    float4 _335 = r0;
    _335.y = r0.y * r0.w;
    r0 = _335;
    float4 _342 = r0;
    _342.x = r0.y * r0.x;
    r0 = _342;
    float2 _349 = float2(cb2_m[1].x, cb2_m[1].y);
    float2 _352 = asfloat(uint2(0u, 0u));
    bool2 _354 = bool2(_349.x == _352.x, _349.y == _352.y);
    float2 _357 = asfloat(uint2(_354.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _354.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(r0.x, _357.x, _357.y, r0.w);
    uint2 _362 = asuint(r0.yz);
    float2 _364 = asfloat(uint2(1065353216u, 1065353216u));
    float2 _370 = float2(cb2_m[1].x, cb2_m[1].y);
    bool2 _371 = bool2(_362.x != uint2(0u, 0u).x, _362.y != uint2(0u, 0u).y);
    float2 _372 = float2(_371.x ? _364.x : _370.x, _371.y ? _364.y : _370.y);
    r0 = float4(r0.x, _372.x, _372.y, r0.w);
    float2 _380 = r0.yz * shader_in[1].xy;
    r0 = float4(r0.x, _380.x, _380.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.yzyy.xy);
    float3 _400 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _400.x, _400.y, _400.z);
    float3 _407 = r0.yzw * r0.xxx;
    r0 = float4(_407.x, _407.y, _407.z, r0.w);
    float3 _420 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_420.x, _420.y, _420.z, r0.w);
    float4 _429 = r0;
    _429.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _429;
    float3 _435 = r0.xyz * r0.www;
    r0 = float4(_435.x, _435.y, _435.z, r0.w);
    float4 _439 = r0;
    _439.w = asfloat(1065353216u);
    r0 = _439;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
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
