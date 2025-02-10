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

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _69 = r0;
    _69.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _69;
    float4 _74 = r0;
    _74.y = rsqrt(r0.x);
    r0 = _74;
    float4 _79 = r0;
    _79.x = sqrt(r0.x);
    r0 = _79;
    float4 _99 = r0;
    _99.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _99;
    float3 _106 = r0.yyy * shader_in[1].xyz;
    r0 = float4(r0.x, _106.x, _106.y, _106.z);
    float3 _111 = -r0.yzw;
    float4 _126 = r1;
    _126.x = mad(_111.z, shader_in[5].xyz.z, mad(_111.y, shader_in[5].xyz.y, _111.x * shader_in[5].xyz.x));
    r1 = _126;
    float4 _135 = r1;
    _135.x = min(r1.x, cb1_m[2].x);
    r1 = _135;
    float4 _144 = r1;
    _144.x = r1.x + (-cb1_m[2].y);
    r1 = _144;
    float4 _150 = r1;
    _150.x = max(r1.x, asfloat(0u));
    r1 = _150;
    float4 _159 = r1;
    _159.x = r1.x * cb1_m[2].z;
    r1 = _159;
    float4 _170 = r1;
    _170.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _170;
    float4 _181 = r1;
    _181.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _181;
    float4 _188 = r0;
    _188.x = r0.x * r1.x;
    r0 = _188;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[6].xyxx.xy);
    float3 _211 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _211.x, _211.y, _211.z);
    float4 _220 = r1;
    _220.y = r1.y + r1.y;
    r1 = _220;
    float4 _227 = r2;
    _227.x = r2.w * r2.y;
    r2 = _227;
    float4 _239 = r1;
    _239.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r1 = _239;
    float4 _243 = r1;
    _243.x = r2.x;
    r1 = _243;
    float4 _250 = r1;
    _250.w = (-r1.w) + asfloat(1065353216u);
    r1 = _250;
    float4 _256 = r1;
    _256.w = max(r1.w, asfloat(0u));
    r1 = _256;
    float4 _261 = r1;
    _261.z = sqrt(r1.w);
    r1 = _261;
    float3 _268 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_268.x, _268.y, _268.z, r1.w);
    float3 _280 = (cb2_m[2].y.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_280.x, _280.y, _280.z, r1.w);
    float4 _296 = r1;
    _296.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _296;
    float4 _301 = r1;
    _301.w = rsqrt(r1.w);
    r1 = _301;
    float3 _307 = r1.www * r1.xyz;
    r1 = float4(_307.x, _307.y, _307.z, r1.w);
    float4 _324 = r0;
    _324.y = clamp(mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x)), 0.0f, 1.0f);
    r0 = _324;
    float4 _331 = r0;
    _331.x = r0.x * r0.y;
    r0 = _331;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].xyxx.xy);
    float3 _351 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _351.x, _351.y, _351.z);
    float3 _358 = r0.yzw * r0.xxx;
    r0 = float4(_358.x, _358.y, _358.z, r0.w);
    float4 _368 = r0;
    _368.w = shader_in[6].z / cb2_m[2].x;
    r0 = _368;
    float4 _376 = r0;
    _376.w = clamp((-r0.w) + asfloat(1065353216u), 0.0f, 1.0f);
    r0 = _376;
    float4 _383 = r0;
    _383.w = r0.w * r0.w;
    r0 = _383;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[6].xyxx.xy);
    float3 _397 = r0.www * r1.xyz;
    r1 = float4(_397.x, _397.y, _397.z, r1.w);
    float3 _410 = r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_410.x, _410.y, _410.z, r1.w);
    float3 _426 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_426.x, _426.y, _426.z, r0.w);
    float4 _444 = r1;
    _444.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _444;
    float4 _449 = r1;
    _449.x = rsqrt(r1.x);
    r1 = _449;
    float4 _457 = r1;
    _457.x = r1.x * shader_in[2].z;
    r1 = _457;
    float4 _471 = r1;
    _471.x = clamp((r1.x * shader_in[3].x) + shader_in[3].y, 0.0f, 1.0f);
    r1 = _471;
    float4 _486 = r1;
    _486.y = clamp((abs(shader_in[2].w) * shader_in[3].z) + shader_in[3].w, 0.0f, 1.0f);
    r1 = _486;
    float4 _493 = r1;
    _493.y = (-r1.y) + asfloat(1065353216u);
    r1 = _493;
    float4 _500 = r0;
    _500.w = r1.y * r1.x;
    r0 = _500;
    r0 *= shader_in[4];
    float4 _513 = r1;
    _513.x = (-shader_in[5].w) + asfloat(1065353216u);
    r1 = _513;
    float3 _519 = r0.xyz * r1.xxx;
    r0 = float4(_519.x, _519.y, _519.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
