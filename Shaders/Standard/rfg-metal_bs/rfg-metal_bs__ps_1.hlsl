cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _81 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _81.x, _81.y, _81.z);
    float4 _90 = r0;
    _90.y = r0.y + r0.y;
    r0 = _90;
    float4 _97 = r1;
    _97.x = r1.w * r1.y;
    r1 = _97;
    float4 _109 = r0;
    _109.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _109;
    float4 _113 = r0;
    _113.x = r1.x;
    r0 = _113;
    float4 _121 = r0;
    _121.w = (-r0.w) + asfloat(1065353216u);
    r0 = _121;
    float4 _128 = r0;
    _128.w = max(r0.w, asfloat(0u));
    r0 = _128;
    float4 _133 = r0;
    _133.z = sqrt(r0.w);
    r0 = _133;
    float3 _140 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_140.x, _140.y, _140.z, r0.w);
    float3 _156 = (cb2_m[2].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float4 _172 = r0;
    _172.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _172;
    float4 _177 = r0;
    _177.w = rsqrt(r0.w);
    r0 = _177;
    float3 _183 = r0.www * r0.xyz;
    r0 = float4(_183.x, _183.y, _183.z, r0.w);
    float4 _202 = r0;
    _202.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _202;
    float4 _207 = r0;
    _207.w = rsqrt(r0.w);
    r0 = _207;
    float4 _224 = r1;
    _224.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _224;
    float4 _229 = r1;
    _229.y = rsqrt(r1.x);
    r1 = _229;
    float4 _234 = r1;
    _234.x = sqrt(r1.x);
    r1 = _234;
    float4 _250 = r1;
    _250.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _250;
    float3 _257 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _257.x, _257.y, _257.z);
    float3 _268 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_268.x, _268.y, _268.z, r2.w);
    float4 _285 = r0;
    _285.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _285;
    float4 _290 = r0;
    _290.w = rsqrt(r0.w);
    r0 = _290;
    float3 _296 = r0.www * r2.xyz;
    r2 = float4(_296.x, _296.y, _296.z, r2.w);
    float4 _312 = r0;
    _312.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _312;
    float4 _328 = r0;
    _328.x = clamp(mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x)), 0.0f, 1.0f);
    r0 = _328;
    float3 _332 = -r1.yzw;
    float4 _346 = r0;
    _346.y = mad(_332.z, shader_in[4].xyz.z, mad(_332.y, shader_in[4].xyz.y, _332.x * shader_in[4].xyz.x));
    r0 = _346;
    float4 _354 = r0;
    _354.y = min(r0.y, cb1_m[2].x);
    r0 = _354;
    float4 _363 = r0;
    _363.y = r0.y + (-cb1_m[2].y);
    r0 = _363;
    float4 _369 = r0;
    _369.y = max(r0.y, asfloat(0u));
    r0 = _369;
    float4 _378 = r0;
    _378.y = r0.y * cb1_m[2].z;
    r0 = _378;
    float4 _387 = r0;
    _387.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _387;
    float4 _393 = r0;
    _393.z = max(r0.w, asfloat(0u));
    r0 = _393;
    float4 _399 = r0;
    _399.w = min(r0.z, asfloat(1065353216u));
    r0 = _399;
    float4 _404 = r0;
    _404.z = log2(r0.z);
    r0 = _404;
    float4 _409 = r0;
    _409.w = log2(r0.w);
    r0 = _409;
    float4 _417 = r0;
    _417.w = r0.w * cb2_m[2].z;
    r0 = _417;
    float4 _422 = r0;
    _422.w = exp2(r0.w);
    r0 = _422;
    float4 _429 = r0;
    _429.x = r0.w * r0.x;
    r0 = _429;
    float4 _440 = r0;
    _440.w = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _440;
    float4 _450 = r0;
    _450.y = (asuint(r0.w) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _450;
    float4 _457 = r0;
    _457.y = r0.y * r1.x;
    r0 = _457;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _477 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_477.x, _477.y, _477.z, r2.w);
    float3 _484 = r0.yyy * r2.xyz;
    r2 = float4(_484.x, _484.y, _484.z, r2.w);
    float3 _491 = r0.xxx * r2.xyz;
    r2 = float4(_491.x, _491.y, _491.z, r2.w);
    float4 _500 = r0;
    _500.x = cb2_m[3].y + asfloat(925353388u);
    r0 = _500;
    float4 _507 = r0;
    _507.x = r0.z * r0.x;
    r0 = _507;
    float4 _512 = r0;
    _512.x = exp2(r0.x);
    r0 = _512;
    float4 _520 = r0;
    _520.x = r0.x * cb2_m[3].x;
    r0 = _520;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _541 = r3.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_541.x, _541.y, _541.z, r3.w);
    float3 _548 = r0.xxx * r3.xyz;
    r0 = float4(_548.x, r0.y, _548.y, _548.z);
    float3 _555 = r0.yyy * r0.xzw;
    r0 = float4(_555.x, _555.y, _555.z, r0.w);
    float2 _568 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_568.x, _568.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float4 _583 = r0;
    _583.w = max(r3.y, asfloat(1028443341u));
    r0 = _583;
    float3 _589 = r0.www * r0.xyz;
    r0 = float4(_589.x, _589.y, _589.z, r0.w);
    float3 _599 = (r2.xyz * r3.yyy) + r0.xyz;
    r0 = float4(_599.x, _599.y, _599.z, r0.w);
    float3 _612 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_612.x, _612.y, _612.z, r0.w);
    float4 _621 = r0;
    _621.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _621;
    float3 _627 = r0.xyz * r0.www;
    r1 = float4(_627.x, _627.y, _627.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _658 = gl_FragCoord;
    _658.w = 1.0f / _658.w;
    shader_in[0] = float4(_658.xy.x, _658.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
