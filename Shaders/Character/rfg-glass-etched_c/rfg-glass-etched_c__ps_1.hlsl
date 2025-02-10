cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

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

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float3 v2;
static float3 v3;
static float3 v4;
static float3 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _74 = r0;
    _74.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _74;
    float4 _79 = r0;
    _79.y = rsqrt(r0.x);
    r0 = _79;
    float4 _84 = r0;
    _84.x = sqrt(r0.x);
    r0 = _84;
    float4 _105 = r0;
    _105.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _105;
    float3 _112 = r0.yyy * shader_in[2].xyz;
    r0 = float4(r0.x, _112.x, _112.y, _112.z);
    float3 _117 = -r0.yzw;
    float4 _132 = r1;
    _132.x = mad(_117.z, shader_in[6].xyz.z, mad(_117.y, shader_in[6].xyz.y, _117.x * shader_in[6].xyz.x));
    r1 = _132;
    float4 _140 = r1;
    _140.x = min(r1.x, cb1_m[2].x);
    r1 = _140;
    float4 _149 = r1;
    _149.x = r1.x + (-cb1_m[2].y);
    r1 = _149;
    float4 _155 = r1;
    _155.x = max(r1.x, asfloat(0u));
    r1 = _155;
    float4 _164 = r1;
    _164.x = r1.x * cb1_m[2].z;
    r1 = _164;
    float4 _175 = r1;
    _175.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _175;
    float4 _186 = r1;
    _186.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _186;
    float4 _193 = r0;
    _193.x = r0.x * r1.x;
    r0 = _193;
    float3 _204 = shader_in[4].xyz + (-shader_in[5].xyz);
    r1 = float4(_204.x, _204.y, _204.z, r1.w);
    float4 _220 = r1;
    _220.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _220;
    float4 _225 = r1;
    _225.w = rsqrt(r1.w);
    r1 = _225;
    float3 _234 = (r1.xyz * r1.www) + r0.yzw;
    r0 = float4(r0.x, _234.x, _234.y, _234.z);
    float4 _250 = r1;
    _250.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _250;
    float4 _255 = r1;
    _255.x = rsqrt(r1.x);
    r1 = _255;
    float3 _261 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _261.x, _261.y, _261.z);
    float4 _280 = r1;
    _280.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _280;
    float4 _285 = r1;
    _285.x = rsqrt(r1.x);
    r1 = _285;
    float3 _292 = r1.xxx * shader_in[3].xyz;
    r1 = float4(_292.x, _292.y, _292.z, r1.w);
    float4 _308 = r0;
    _308.y = mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x));
    r0 = _308;
    float4 _314 = r0;
    _314.y = max(r0.y, asfloat(0u));
    r0 = _314;
    float4 _319 = r0;
    _319.y = log2(r0.y);
    r0 = _319;
    float4 _327 = r0;
    _327.y = r0.y * cb2_m[2].w;
    r0 = _327;
    float4 _332 = r0;
    _332.y = exp2(r0.y);
    r0 = _332;
    float4 _340 = r0;
    _340.y = r0.y * cb2_m[2].z;
    r0 = _340;
    float4 _347 = r0;
    _347.x = r0.x * r0.y;
    r0 = _347;
    float3 _359 = r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_359.x, _359.y, _359.z, r0.w);
    float4 _368 = r0;
    _368.w = (-shader_in[6].w) + asfloat(1065353216u);
    r0 = _368;
    float3 _374 = r0.xyz * r0.www;
    r0 = float4(_374.x, _374.y, _374.z, r0.w);
    float3 _391 = (shader_in[6].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_391.x, _391.y, _391.z, r0.w);
    float2 _403 = shader_in[1].xy * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(_403.x, _403.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, r1.xyxx.xy);
    float4 _419 = r1;
    _419.x = max(r1.y, asfloat(1036831949u));
    r1 = _419;
    float4 _426 = r1;
    _426.x = (-r1.x) + asfloat(1065353216u);
    r1 = _426;
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _442 = r0;
    _442.w = max(r1.x, r2.w);
    r0 = _442;
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _460 = o0;
    _460.w = min(r0.w, asfloat(1065353216u));
    o0 = _460;
    o0 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o0.w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = v6;
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
