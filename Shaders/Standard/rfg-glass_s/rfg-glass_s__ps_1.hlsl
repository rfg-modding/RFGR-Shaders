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

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float3 v2;
static float3 v3;
static float3 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _73 = r0;
    _73.x = mad(shader_in[4].xyz.z, shader_in[4].xyz.z, mad(shader_in[4].xyz.y, shader_in[4].xyz.y, shader_in[4].xyz.x * shader_in[4].xyz.x));
    r0 = _73;
    float4 _78 = r0;
    _78.x = rsqrt(r0.x);
    r0 = _78;
    float3 _85 = r0.xxx * shader_in[4].xyz;
    r0 = float4(_85.x, _85.y, _85.z, r0.w);
    float4 _104 = r0;
    _104.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _104;
    float4 _109 = r0;
    _109.w = rsqrt(r0.w);
    r0 = _109;
    float4 _128 = r1;
    _128.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _128;
    float4 _133 = r1;
    _133.y = rsqrt(r1.x);
    r1 = _133;
    float4 _138 = r1;
    _138.x = sqrt(r1.x);
    r1 = _138;
    float4 _159 = r1;
    _159.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _159;
    float3 _166 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _166.x, _166.y, _166.z);
    float3 _177 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_177.x, _177.y, _177.z, r2.w);
    float3 _183 = -r1.yzw;
    float4 _197 = r0;
    _197.w = mad(_183.z, shader_in[5].xyz.z, mad(_183.y, shader_in[5].xyz.y, _183.x * shader_in[5].xyz.x));
    r0 = _197;
    float4 _205 = r0;
    _205.w = min(r0.w, cb1_m[2].x);
    r0 = _205;
    float4 _214 = r0;
    _214.w = r0.w + (-cb1_m[2].y);
    r0 = _214;
    float4 _220 = r0;
    _220.w = max(r0.w, asfloat(0u));
    r0 = _220;
    float4 _229 = r0;
    _229.w = r0.w * cb1_m[2].z;
    r0 = _229;
    float4 _244 = r1;
    _244.y = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _244;
    float4 _249 = r1;
    _249.y = rsqrt(r1.y);
    r1 = _249;
    float3 _255 = r1.yyy * r2.xyz;
    r1 = float4(r1.x, _255.x, _255.y, _255.z);
    float4 _271 = r0;
    _271.x = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r0 = _271;
    float4 _277 = r0;
    _277.x = max(r0.x, asfloat(0u));
    r0 = _277;
    float4 _282 = r0;
    _282.x = log2(r0.x);
    r0 = _282;
    float4 _290 = r0;
    _290.y = cb2_m[2].w + asfloat(925353388u);
    r0 = _290;
    float4 _297 = r0;
    _297.x = r0.x * r0.y;
    r0 = _297;
    float4 _302 = r0;
    _302.x = exp2(r0.x);
    r0 = _302;
    float4 _310 = r0;
    _310.x = r0.x * cb2_m[2].x;
    r0 = _310;
    float2 _321 = shader_in[1].xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(r0.x, _321.x, _321.y, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    float3 _342 = r2.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(r1.x, _342.x, _342.y, _342.z);
    float3 _349 = r0.xxx * r1.yzw;
    r0 = float4(_349.x, _349.y, _349.z, r0.w);
    float4 _361 = r1;
    _361.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _361;
    float4 _372 = r0;
    _372.w = (asuint(r1.y) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _372;
    float4 _379 = r0;
    _379.w = r0.w * r1.x;
    r0 = _379;
    float3 _385 = r0.www * r0.xyz;
    r0 = float4(_385.x, _385.y, _385.z, r0.w);
    float3 _398 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_398.x, _398.y, _398.z, r0.w);
    float4 _407 = r0;
    _407.w = (-shader_in[5].w) + asfloat(1065353216u);
    r0 = _407;
    float3 _413 = r0.xyz * r0.www;
    r0 = float4(_413.x, _413.y, _413.z, r0.w);
    float3 _430 = (shader_in[5].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_430.x, _430.y, _430.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _443 = r0;
    _443.w = r1.w;
    r0 = _443;
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _461 = o0;
    _461.w = min(r0.w, asfloat(1065353216u));
    o0 = _461;
    o0 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o0.w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
