cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
static float4 r3;
static float4 r4;
static float4 r5;

void ps_main()
{
    float4 _54 = r0;
    _54.x = shader_in[1].y * cb2_m[0].y;
    r0 = _54;
    float4 _61 = r0;
    _61.x = r0.x * asfloat(1078530010u);
    r0 = _61;
    float4 _67 = r0;
    _67.x = sin(r0.xxxx.x);
    r0 = _67;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _90 = r0;
    _90.y = ((-r1.w) * cb6_m[0].w) + asfloat(1065353216u);
    r0 = _90;
    float3 _104 = r1.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    r1 = float4(_104.x, _104.y, _104.z, r1.w);
    float4 _116 = r0;
    _116.x = (cb2_m[0].z * r0.x) + r0.y;
    r0 = _116;
    float2 _124 = r1.xy * asfloat(uint2(1132462080u, 1132462080u));
    r0 = float4(r0.x, r0.y, _124.x, _124.y);
    float4 _133 = r1;
    _133.x = r1.z * cb2_m[1].x;
    r1 = _133;
    float4 _139 = r1;
    _139.x = min(r1.x, asfloat(1065353216u));
    r1 = _139;
    float2 _143 = floor(r0.zw);
    r0 = float4(r0.x, r0.y, _143.x, _143.y);
    float2 _155 = (r0.zw * asfloat(uint2(1006632960u, 1006632960u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(r0.x, r0.y, _155.x, _155.y);
    float2 _168 = (r0.zw * cb2_m[0].x.xx) + asfloat(uint2(973279855u, 973279855u));
    r1 = float4(r1.x, _168.x, _168.y, r1.w);
    float2 _181 = (r0.zw * cb2_m[0].x.xx) + shader_in[1].xy;
    r0 = float4(r0.x, r0.y, _181.x, _181.y);
    float4 _189 = r1;
    _189.w = r0.x * r1.y;
    r1 = _189;
    float2 _198 = (r1.yz * r0.xx) + r0.zw;
    r2 = float4(_198.x, _198.y, r2.z, r2.w);
    float4 _207 = r0;
    _207.x = r0.y * r1.z;
    r0 = _207;
    float4 _218 = r3;
    _218.y = (r0.x * asfloat(1056964608u)) + r0.w;
    r3 = _218;
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r2.xyxx.xy);
    float4 _234 = r3;
    _234.x = (r1.w * asfloat(1056964608u)) + r0.z;
    r3 = _234;
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r3.xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    r5 = tex2D(SPIRV_Cross_Combinedt2s2, r0.zwzz.xy);
    float4 _267 = r0;
    _267.x = clamp(r4.x / r3.y, 0.0f, 1.0f);
    r0 = _267;
    float4 _271 = r2;
    _271.w = r3.y;
    r2 = _271;
    float2 _279 = r0.xx * asfloat(uint2(1075838976u, 1079334229u));
    r0 = float4(_279.x, r0.y, _279.y, r0.w);
    float2 _286 = min(r0.xz, asfloat(uint2(1065353216u, 1065353216u)));
    r0 = float4(_286.x, r0.y, _286.y, r0.w);
    float2 _290 = asfloat(uint2(0u, 0u));
    r2 = float4(_290.x, _290.y, r2.z, r2.w);
    float3 _302 = (r0.xxx * asfloat(uint3(0u, 1045220557u, 0u))) + r2.xwy;
    r1 = float4(r1.x, _302.x, _302.y, _302.z);
    float3 _316 = (r0.zzz * asfloat(uint3(1036831949u, 1048576000u, 0u))) + asfloat(uint3(1063675494u, 1061158912u, 1065353216u));
    r0 = float4(_316.x, r0.y, _316.y, _316.z);
    float4 _321 = r2;
    _321.y = asfloat(3192704205u);
    r2 = _321;
    float4 _325 = r2;
    _325.x = r4.x;
    r2 = _325;
    float4 _329 = o0;
    _329.w = r4.w;
    o0 = _329;
    float3 _335 = r1.yzw + r2.xyz;
    r1 = float4(r1.x, _335.x, _335.y, _335.z);
    float3 _345 = clamp(r0.xzw * r1.yzw, 0.0f.xxx, 1.0f.xxx);
    r0 = float4(_345.x, r0.y, _345.y, _345.z);
    float3 _353 = (-r2.xwz) + r0.xzw;
    r0 = float4(_353.x, r0.y, _353.y, _353.z);
    float3 _363 = (r0.yyy * r0.xzw) + r2.xwz;
    r0 = float4(_363.x, _363.y, _363.z, r0.w);
    float3 _371 = (-r0.xyz) + r5.xyz;
    r1 = float4(r1.x, _371.x, _371.y, _371.z);
    float3 _381 = (r1.xxx * r1.yzw) + r0.xyz;
    o0 = float4(_381.x, _381.y, _381.z, o0.w);
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
