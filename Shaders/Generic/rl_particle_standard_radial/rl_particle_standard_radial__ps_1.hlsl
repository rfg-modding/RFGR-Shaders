cbuffer cb3_t : register(b3)
{
    float4 cb3_m[9] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 v1;
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[2].zwzz.xy);
    float4 _72 = r0;
    _72.x = (r0.x * cb3_m[4].w) + (-cb3_m[4].z);
    r0 = _72;
    float4 _76 = r0;
    _76.y = asfloat(1065353216u);
    r0 = _76;
    float2 _83 = float2(cb3_m[2].z, cb3_m[2].w);
    float4 _92 = r0;
    _92.z = mad(_83.y, r0.xy.y, _83.x * r0.xy.x);
    r0 = _92;
    float2 _100 = float2(cb3_m[3].z, cb3_m[3].w);
    float4 _109 = r0;
    _109.x = mad(_100.y, r0.xy.y, _100.x * r0.xy.x);
    r0 = _109;
    float4 _116 = r0;
    _116.x = r0.z / r0.x;
    r0 = _116;
    float4 _125 = r0;
    _125.x = r0.x + (-shader_in[3].z);
    r0 = _125;
    float4 _137 = r0;
    _137.y = clamp(r0.x * cb3_m[8].w, 0.0f, 1.0f);
    r0 = _137;
    float4 _151 = r0;
    _151.x = asfloat((r0.x < (-cb3_m[8].w)) ? 4294967295u : 0u);
    r0 = _151;
    float4 _161 = r0;
    _161.x = (asuint(r0.x) != 0u) ? asfloat(1065353216u) : r0.y;
    r0 = _161;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float3 _180 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _190 = r0;
    _190.y = mad(r1.xyz.z, _180.z, mad(r1.xyz.y, _180.y, r1.xyz.x * _180.x));
    r0 = _190;
    float3 _197 = (-r0.yyy) + r1.xyz;
    r2 = float4(_197.x, _197.y, _197.z, r2.w);
    float3 _209 = (shader_in[3].xxx * r2.xyz) + r0.yyy;
    r0 = float4(r0.x, _209.x, _209.y, _209.z);
    float3 _222 = float3(cb3_m[5].x, cb3_m[5].y, cb3_m[5].z);
    float4 _232 = r2;
    _232.x = mad(r0.yzw.z, _222.z, mad(r0.yzw.y, _222.y, r0.yzw.x * _222.x));
    r2 = _232;
    float3 _244 = float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    float4 _254 = r2;
    _254.y = mad(r0.yzw.z, _244.z, mad(r0.yzw.y, _244.y, r0.yzw.x * _244.x));
    r2 = _254;
    float3 _266 = float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z);
    float4 _276 = r2;
    _276.z = mad(r0.yzw.z, _266.z, mad(r0.yzw.y, _266.y, r0.yzw.x * _266.x));
    r2 = _276;
    float3 _282 = max(r2.xyz, asfloat(uint3(0u, 0u, 0u)));
    r1 = float4(_282.x, _282.y, _282.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    r2 = ((-shader_in[1]) * r1) + r2;
    r1 *= shader_in[1];
    r1 = (shader_in[3].wwww * r2) + r1;
    float4 _318 = r1;
    _318.w = r0.x * r1.w;
    r1 = _318;
    r0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _339 = clamp(r0.www * r0.xyz, 0.0f.xxx, 1.0f.xxx);
    o0 = float4(_339.x, _339.y, _339.z, o0.w);
    float4 _353 = o0;
    _353.w = clamp((shader_in[3].y * (-r0.w)) + r0.w, 0.0f, 1.0f);
    o0 = _353;
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = v2;
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
