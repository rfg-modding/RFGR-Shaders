cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform samplerCUBE SPIRV_Cross_Combinedt2s2;

static float3 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void ps_main()
{
    float4 _73 = r0;
    _73.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _73;
    float4 _78 = r0;
    _78.x = rsqrt(r0.x);
    r0 = _78;
    float4 _96 = r0;
    _96.y = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _96;
    float4 _101 = r0;
    _101.y = rsqrt(r0.y);
    r0 = _101;
    float3 _108 = r0.yyy * shader_in[2].xyz;
    r0 = float4(r0.x, _108.x, _108.y, _108.z);
    float3 _119 = (shader_in[1].xyz * r0.xxx) + r0.yzw;
    r1 = float4(_119.x, _119.y, _119.z, r1.w);
    float4 _136 = r0;
    _136.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _136;
    float4 _141 = r0;
    _141.x = rsqrt(r0.x);
    r0 = _141;
    float3 _147 = r0.xxx * r1.xyz;
    r1 = float4(_147.x, _147.y, _147.z, r1.w);
    float2 _165 = shader_in[4].xy * float2(cb2_m[1].x, cb2_m[1].y);
    r2 = float4(_165.x, _165.y, r2.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r2.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, r2.xyxx.xy);
    float3 _195 = (r3.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(r4.x, _195.x, _195.y, _195.z);
    float4 _204 = r3;
    _204.y = r3.y + r3.y;
    r3 = _204;
    float4 _211 = r4;
    _211.x = r4.w * r4.y;
    r4 = _211;
    float4 _223 = r0;
    _223.x = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _223;
    float4 _227 = r3;
    _227.x = r4.x;
    r3 = _227;
    float4 _235 = r0;
    _235.x = (-r0.x) + asfloat(1065353216u);
    r0 = _235;
    float4 _241 = r0;
    _241.x = max(r0.x, asfloat(0u));
    r0 = _241;
    float4 _246 = r3;
    _246.z = sqrt(r0.x);
    r3 = _246;
    float3 _253 = r3.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r3 = float4(_253.x, _253.y, _253.z, r3.w);
    float3 _266 = (cb2_m[1].z.xxx * r3.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r3 = float4(_266.x, _266.y, _266.z, r3.w);
    float4 _282 = r0;
    _282.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _282;
    float4 _287 = r0;
    _287.x = rsqrt(r0.x);
    r0 = _287;
    float3 _293 = r0.xxx * r3.xyz;
    r4 = float4(_293.x, _293.y, _293.z, r4.w);
    float2 _305 = (r3.xy * r0.xx) + shader_in[3].xy;
    r3 = float4(_305.x, _305.y, r3.z, r3.w);
    float4 _324 = r0;
    _324.x = clamp(mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _324;
    float4 _339 = r0;
    _339.y = mad(r4.xyz.z, r0.yzw.z, mad(r4.xyz.y, r0.yzw.y, r4.xyz.x * r0.yzw.x));
    r0 = _339;
    float4 _344 = r0;
    _344.x = log2(r0.x);
    r0 = _344;
    float4 _352 = r0;
    _352.z = cb2_m[2].x + asfloat(925353388u);
    r0 = _352;
    float4 _359 = r0;
    _359.x = r0.x * r0.z;
    r0 = _359;
    float4 _364 = r0;
    _364.x = exp2(r0.x);
    r0 = _364;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].zwzz.xy);
    float4 _379 = r0;
    _379.z = (-r1.w) + asfloat(1065353216u);
    r0 = _379;
    float3 _385 = r1.www * r1.xyz;
    r1 = float4(_385.x, _385.y, _385.z, r1.w);
    float4 _394 = r0;
    _394.w = r0.z * cb2_m[1].w;
    r0 = _394;
    float4 _401 = r0;
    _401.x = r0.w * r0.x;
    r0 = _401;
    float3 _413 = r0.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r4 = float4(_413.x, _413.y, _413.z, r4.w);
    float4 _419 = r0;
    _419.x = clamp(r0.y, 0.0f, 1.0f);
    r0 = _419;
    float4 _428 = r0;
    _428.y = (r0.y * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _428;
    float3 _437 = (r1.xyz * r0.xxx) + r4.xyz;
    r4 = float4(_437.x, _437.y, _437.z, r4.w);
    float3 _450 = r4.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_450.x, _450.y, _450.z, r4.w);
    float4 _459 = r0;
    _459.x = (r0.y * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _459;
    float4 _468 = r0;
    _468.x = abs(r0.x) + abs(r0.x);
    r0 = _468;
    float4 _478 = r0;
    _478.x = ((-r0.x) * r0.x) + asfloat(1065353216u);
    r0 = _478;
    float4 _484 = r0;
    _484.x = max(r0.x, asfloat(0u));
    r0 = _484;
    float4 _493 = r0;
    _493.x = r0.x * cb0_m[7].y;
    r0 = _493;
    float3 _517 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r5 = float4(_517.x, _517.y, _517.z, r5.w);
    float3 _534 = (r0.yyy * r5.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r5 = float4(_534.x, _534.y, _534.z, r5.w);
    float3 _548 = (-r5.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r6 = float4(_548.x, _548.y, _548.z, r6.w);
    float3 _559 = (r0.xxx * r6.xyz) + r5.xyz;
    r0 = float4(_559.x, _559.y, r0.z, _559.z);
    float3 _569 = (r0.xyw * r1.xyz) + r4.xyz;
    r0 = float4(_569.x, _569.y, r0.z, _569.z);
    float4 _575 = r3;
    _575.z = shader_in[3].z;
    r3 = _575;
    float4 _590 = r1;
    _590.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _590;
    float4 _595 = r1;
    _595.x = rsqrt(r1.x);
    r1 = _595;
    float3 _601 = r1.xxx * r3.xyz;
    r1 = float4(_601.x, _601.y, _601.z, r1.w);
    r1 = texCUBE(SPIRV_Cross_Combinedt2s2, r1.xyzx.xyz);
    float3 _616 = r2.xyz * r1.xyz;
    r1 = float4(_616.x, _616.y, _616.z, r1.w);
    float3 _623 = r0.zzz * r1.xyz;
    r1 = float4(_623.x, _623.y, _623.z, r1.w);
    float3 _639 = (r1.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r0.xyw;
    o0 = float4(_639.x, _639.y, _639.z, o0.w);
    float4 _643 = o0;
    _643.w = asfloat(1065353216u);
    o0 = _643;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
