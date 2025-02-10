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
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

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
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _86 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _86.x, _86.y, _86.z);
    float4 _95 = r0;
    _95.y = r0.y + r0.y;
    r0 = _95;
    float4 _102 = r1;
    _102.x = r1.w * r1.y;
    r1 = _102;
    float4 _114 = r0;
    _114.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _114;
    float4 _118 = r0;
    _118.x = r1.x;
    r0 = _118;
    float4 _126 = r0;
    _126.w = (-r0.w) + asfloat(1065353216u);
    r0 = _126;
    float4 _133 = r0;
    _133.w = max(r0.w, asfloat(0u));
    r0 = _133;
    float4 _138 = r0;
    _138.z = sqrt(r0.w);
    r0 = _138;
    float3 _145 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_145.x, _145.y, _145.z, r0.w);
    float3 _161 = (cb2_m[1].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_161.x, _161.y, _161.z, r0.w);
    float4 _177 = r0;
    _177.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _177;
    float4 _182 = r0;
    _182.w = rsqrt(r0.w);
    r0 = _182;
    float3 _188 = r0.www * r0.xyz;
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float4 _207 = r0;
    _207.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _207;
    float4 _212 = r0;
    _212.w = rsqrt(r0.w);
    r0 = _212;
    float4 _230 = r1;
    _230.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _230;
    float4 _235 = r1;
    _235.y = rsqrt(r1.x);
    r1 = _235;
    float4 _240 = r1;
    _240.x = sqrt(r1.x);
    r1 = _240;
    float4 _256 = r1;
    _256.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _256;
    float3 _263 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _263.x, _263.y, _263.z);
    float3 _274 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_274.x, _274.y, _274.z, r2.w);
    float3 _283 = r0.www * shader_in[3].xyz;
    r3 = float4(_283.x, _283.y, _283.z, r3.w);
    float4 _300 = r0;
    _300.w = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    r0 = _300;
    float4 _306 = r0;
    _306.w = max(r0.w, asfloat(0u));
    r0 = _306;
    float4 _313 = r3;
    _313.y = (-r0.w) + asfloat(1065353216u);
    r3 = _313;
    float4 _328 = r0;
    _328.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _328;
    float4 _333 = r0;
    _333.w = rsqrt(r0.w);
    r0 = _333;
    float3 _339 = r0.www * r2.xyz;
    r2 = float4(_339.x, _339.y, _339.z, r2.w);
    float4 _355 = r0;
    _355.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _355;
    float4 _370 = r0;
    _370.x = mad(r1.yzw.z, r0.xyz.z, mad(r1.yzw.y, r0.xyz.y, r1.yzw.x * r0.xyz.x));
    r0 = _370;
    float3 _374 = -r1.yzw;
    float4 _388 = r0;
    _388.y = mad(_374.z, shader_in[4].xyz.z, mad(_374.y, shader_in[4].xyz.y, _374.x * shader_in[4].xyz.x));
    r0 = _388;
    float4 _396 = r0;
    _396.y = min(r0.y, cb1_m[2].x);
    r0 = _396;
    float4 _405 = r0;
    _405.y = r0.y + (-cb1_m[2].y);
    r0 = _405;
    float4 _411 = r0;
    _411.y = max(r0.y, asfloat(0u));
    r0 = _411;
    float4 _419 = r0;
    _419.y = r0.y * cb1_m[2].z;
    r0 = _419;
    float4 _425 = r0;
    _425.z = max(r0.w, asfloat(0u));
    r0 = _425;
    float4 _432 = r2;
    _432.y = (-r0.z) + asfloat(1065353216u);
    r2 = _432;
    float4 _438 = r2;
    _438.x = max(r0.x, asfloat(0u));
    r2 = _438;
    float4 _447 = r3;
    _447.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r3 = _447;
    r3 = tex2D(SPIRV_Cross_Combinedt3s3, r3.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt4s4, r2.xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[1].xyxx.xy);
    float3 _476 = r2.xyz * r4.xyz;
    r0 = float4(_476.x, r0.y, _476.y, _476.z);
    float3 _483 = r3.xyz * r4.xyz;
    r1 = float4(r1.x, _483.x, _483.y, _483.z);
    float4 _491 = r0;
    _491.x = max(r0.z, r0.x);
    r0 = _491;
    float4 _498 = r0;
    _498.x = max(r0.w, r0.x);
    r0 = _498;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _512 = r0.xxx * r2.xyz;
    r0 = float4(_512.x, r0.y, _512.y, _512.z);
    float3 _521 = r0.xzw * cb2_m[2].y.xxx;
    r0 = float4(_521.x, r0.y, _521.y, _521.z);
    float4 _533 = r2;
    _533.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r2 = _533;
    float4 _543 = r0;
    _543.y = (asuint(r2.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _543;
    float4 _550 = r0;
    _550.y = r0.y * r1.x;
    r0 = _550;
    float3 _556 = r0.yyy * r0.xzw;
    r0 = float4(_556.x, r0.y, _556.y, _556.z);
    float2 _569 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_569.x, _569.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _584 = r1;
    _584.x = max(r2.y, asfloat(1028443341u));
    r1 = _584;
    float3 _590 = r0.xzw * r1.xxx;
    r0 = float4(_590.x, r0.y, _590.y, _590.z);
    float4 _598 = r1;
    _598.x = max(r1.z, r1.y);
    r1 = _598;
    float4 _605 = r1;
    _605.x = max(r1.w, r1.x);
    r1 = _605;
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _625 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(r1.x, _625.x, _625.y, _625.z);
    float3 _632 = r1.yzw * r1.xxx;
    r1 = float4(_632.x, _632.y, _632.z, r1.w);
    float3 _639 = r0.yyy * r1.xyz;
    r1 = float4(_639.x, _639.y, _639.z, r1.w);
    float3 _649 = (r1.xyz * r2.yyy) + r0.xzw;
    r0 = float4(_649.x, _649.y, _649.z, r0.w);
    float3 _662 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_662.x, _662.y, _662.z, r0.w);
    float4 _671 = r0;
    _671.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _671;
    float3 _677 = r0.xyz * r0.www;
    r0 = float4(_677.x, _677.y, _677.z, r0.w);
    float4 _685 = r1;
    _685.x = (-r3.w) + asfloat(1065353216u);
    r1 = _685;
    float4 _696 = r0;
    _696.w = (cb2_m[1].w * r1.x) + r3.w;
    r0 = _696;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _726 = gl_FragCoord;
    _726.w = 1.0f / _726.w;
    shader_in[0] = float4(_726.xy.x, _726.xy.y, shader_in[0].z, shader_in[0].w);
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
