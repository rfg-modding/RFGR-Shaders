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
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float3 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
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
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
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
    float3 _161 = (cb2_m[7].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _207.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _207;
    float4 _212 = r0;
    _212.w = rsqrt(r0.w);
    r0 = _212;
    float4 _230 = r1;
    _230.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
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
    float3 _263 = r1.yyy * shader_in[1].xyz;
    r1 = float4(r1.x, _263.x, _263.y, _263.z);
    float3 _274 = (shader_in[2].xyz * r0.www) + r1.yzw;
    r2 = float4(_274.x, _274.y, _274.z, r2.w);
    float3 _283 = r0.www * shader_in[2].xyz;
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
    _388.y = mad(_374.z, shader_in[3].xyz.z, mad(_374.y, shader_in[3].xyz.y, _374.x * shader_in[3].xyz.x));
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
    float4 _420 = r0;
    _420.y = r0.y * cb1_m[2].z;
    r0 = _420;
    float4 _426 = r0;
    _426.z = max(r0.w, asfloat(0u));
    r0 = _426;
    float4 _433 = r2;
    _433.y = (-r0.z) + asfloat(1065353216u);
    r2 = _433;
    float4 _439 = r2;
    _439.x = max(r0.x, asfloat(0u));
    r2 = _439;
    float4 _448 = r3;
    _448.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r3 = _448;
    r3 = tex2D(SPIRV_Cross_Combinedt3s3, r3.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt4s4, r2.xyxx.xy);
    float4 _473 = r0;
    _473.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _473;
    float4 _483 = r0;
    _483.x = (asuint(r0.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _483;
    float4 _490 = r0;
    _490.x = r0.x * r1.x;
    r0 = _490;
    float3 _496 = r0.xxx * r2.xyz;
    r0 = float4(r0.x, _496.x, _496.y, _496.z);
    float3 _503 = r0.xxx * r3.xyz;
    r1 = float4(_503.x, _503.y, _503.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _518 = r0.yzw * r2.xyz;
    r0 = float4(_518.x, _518.y, _518.z, r0.w);
    float3 _531 = r0.xxx * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_531.x, _531.y, _531.z, r2.w);
    float3 _544 = r0.yyy * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_544.x, _544.y, _544.z, r3.w);
    float3 _561 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_561.x, _561.y, r0.z, _561.z);
    float3 _571 = (r2.xyz * r0.xyw) + r3.xyz;
    r0 = float4(_571.x, _571.y, r0.z, _571.z);
    float3 _585 = r0.zzz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r2 = float4(_585.x, _585.y, _585.z, r2.w);
    float3 _601 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_601.x, _601.y, _601.z, r3.w);
    float3 _611 = (r0.xyw * r3.xyz) + r2.xyz;
    r0 = float4(_611.x, _611.y, _611.z, r0.w);
    float3 _621 = r0.xyz * cb2_m[8].x.xxx;
    r0 = float4(_621.x, _621.y, _621.z, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[4].zwzz.xy);
    float4 _641 = r0;
    _641.w = ((-r2.w) * cb2_m[7].z) + asfloat(1065353216u);
    r0 = _641;
    float3 _647 = r0.www * r0.xyz;
    r0 = float4(_647.x, _647.y, _647.z, r0.w);
    float2 _660 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_660.x, _660.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float4 _675 = r0;
    _675.w = max(r3.y, asfloat(1028443341u));
    r0 = _675;
    float3 _681 = r0.www * r0.xyz;
    r0 = float4(_681.x, _681.y, _681.z, r0.w);
    float3 _694 = r1.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_694.x, r3.y, _694.y, _694.z);
    float3 _707 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_707.x, _707.y, _707.z, r4.w);
    float3 _724 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_724.x, _724.y, r1.z, _724.z);
    float3 _734 = (r3.xzw * r1.xyw) + r4.xyz;
    r1 = float4(_734.x, _734.y, r1.z, _734.z);
    float3 _747 = r1.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_747.x, r3.y, _747.y, _747.z);
    float3 _763 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r1.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_763.x, _763.y, _763.z, r4.w);
    float3 _773 = (r1.xyw * r4.xyz) + r3.xzw;
    r1 = float4(_773.x, _773.y, _773.z, r1.w);
    float4 _782 = r0;
    _782.w = r2.w * cb2_m[7].z;
    r0 = _782;
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _806 = ((-r4.xyz) * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z)) + r2.xyz;
    r2 = float4(_806.x, _806.y, _806.z, r2.w);
    float3 _819 = r4.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r3 = float4(_819.x, r3.y, _819.y, _819.z);
    float3 _829 = (r0.www * r2.xyz) + r3.xzw;
    r2 = float4(_829.x, _829.y, _829.z, r2.w);
    float3 _836 = r1.xyz * r2.xyz;
    r1 = float4(_836.x, _836.y, _836.z, r1.w);
    float3 _846 = (r1.xyz * r3.yyy) + r0.xyz;
    r0 = float4(_846.x, _846.y, _846.z, r0.w);
    float3 _859 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_859.x, _859.y, _859.z, r0.w);
    float4 _868 = r0;
    _868.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _868;
    float3 _874 = r0.xyz * r0.www;
    r4 = float4(_874.x, _874.y, _874.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _903 = gl_FragCoord;
    _903.w = 1.0f / _903.w;
    shader_in[0] = float4(_903.xy.x, _903.xy.y, shader_in[0].z, shader_in[0].w);
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
