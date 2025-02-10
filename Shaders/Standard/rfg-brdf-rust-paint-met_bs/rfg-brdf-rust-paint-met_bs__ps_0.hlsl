cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _79 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _79.x, _79.y, _79.z);
    float4 _88 = r0;
    _88.y = r0.y + r0.y;
    r0 = _88;
    float4 _95 = r1;
    _95.x = r1.w * r1.y;
    r1 = _95;
    float4 _107 = r0;
    _107.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _107;
    float4 _111 = r0;
    _111.x = r1.x;
    r0 = _111;
    float4 _119 = r0;
    _119.w = (-r0.w) + asfloat(1065353216u);
    r0 = _119;
    float4 _126 = r0;
    _126.w = max(r0.w, asfloat(0u));
    r0 = _126;
    float4 _131 = r0;
    _131.z = sqrt(r0.w);
    r0 = _131;
    float3 _138 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_138.x, _138.y, _138.z, r0.w);
    float3 _155 = (cb2_m[7].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float4 _171 = r0;
    _171.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _171;
    float4 _176 = r0;
    _176.w = rsqrt(r0.w);
    r0 = _176;
    float3 _182 = r0.www * r0.xyz;
    r0 = float4(_182.x, _182.y, _182.z, r0.w);
    float4 _201 = r0;
    _201.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _201;
    float4 _206 = r0;
    _206.w = rsqrt(r0.w);
    r0 = _206;
    float4 _224 = r1;
    _224.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _224;
    float4 _229 = r1;
    _229.x = rsqrt(r1.x);
    r1 = _229;
    float3 _236 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_236.x, _236.y, _236.z, r1.w);
    float3 _247 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r2 = float4(_247.x, _247.y, _247.z, r2.w);
    float4 _264 = r0;
    _264.w = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _264;
    float4 _279 = r1;
    _279.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _279;
    float4 _284 = r1;
    _284.x = rsqrt(r1.x);
    r1 = _284;
    float3 _290 = r1.xxx * r2.xyz;
    r1 = float4(_290.x, _290.y, _290.z, r1.w);
    float4 _306 = r1;
    _306.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _306;
    float4 _323 = r0;
    _323.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _323;
    float4 _335 = r0;
    _335.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _335;
    float4 _341 = r0;
    _341.y = max(r1.x, asfloat(0u));
    r0 = _341;
    float3 _350 = (-r0.yyy) + asfloat(uint3(1065353216u, 1064933786u, 1061158912u));
    r1 = float4(_350.x, _350.y, _350.z, r1.w);
    float4 _362 = r0;
    _362.y = asfloat((asfloat(1006632960u) >= r1.x) ? 4294967295u : 0u);
    r0 = _362;
    float2 _374 = clamp(r1.yz * asfloat(uint2(3259498496u, 3229785276u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(_374.x, _374.y, r1.z, r1.w);
    float4 _381 = r0;
    _381.z = max(r0.w, asfloat(0u));
    r0 = _381;
    float2 _390 = clamp(r0.ww * asfloat(uint2(1070945621u, 1084227584u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(r1.x, r1.y, _390.x, _390.y);
    float2 _395 = log2(r1.zw);
    r1 = float4(r1.x, r1.y, _395.x, _395.y);
    float2 _403 = r1.zw * asfloat(uint2(1074580685u, 1074580685u));
    r1 = float4(r1.x, r1.y, _403.x, _403.y);
    float2 _408 = exp2(r1.zw);
    r1 = float4(r1.x, r1.y, _408.x, _408.y);
    float2 _413 = asfloat(uint2(964689920u, 1006632960u));
    bool2 _417 = bool2(_413.x < r0.zz.x, _413.y < r0.zz.y);
    float2 _421 = asfloat(uint2(_417.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _417.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(r0.x, r0.y, _421.x, _421.y);
    float3 _429 = asfloat(asuint(r0.yzw) & uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _429.x, _429.y, _429.z);
    float4 _437 = r0;
    _437.y = r0.w * r0.y;
    r0 = _437;
    float2 _443 = r0.zz * r1.xy;
    r0 = float4(r0.x, r0.y, _443.x, _443.y);
    float2 _448 = log2(r0.zw);
    r0 = float4(r0.x, r0.y, _448.x, _448.y);
    float2 _454 = r0.zw * asfloat(uint2(1074580685u, 1074580685u));
    r0 = float4(r0.x, r0.y, _454.x, _454.y);
    float2 _459 = exp2(r0.zw);
    r2 = float4(_459.x, _459.y, r2.z, r2.w);
    float4 _465 = r0;
    _465.y = log2(r0.y);
    r0 = _465;
    float4 _471 = r0;
    _471.y = r0.y * asfloat(1074580685u);
    r0 = _471;
    float4 _476 = r2;
    _476.z = exp2(r0.y);
    r2 = _476;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _491 = r2.xyz * r3.xyz;
    r0 = float4(r0.x, _491.x, _491.y, _491.z);
    float3 _504 = r0.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_504.x, _504.y, _504.z, r2.w);
    float3 _517 = r0.zzz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_517.x, _517.y, _517.z, r3.w);
    float3 _533 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_533.x, _533.y, _533.z, r4.w);
    float3 _544 = (r2.xyz * r4.xyz) + r3.xyz;
    r2 = float4(_544.x, _544.y, _544.z, r2.w);
    float3 _558 = r0.www * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r3 = float4(_558.x, _558.y, _558.z, r3.w);
    float3 _574 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _574.x, _574.y, _574.z);
    float3 _584 = (r2.xyz * r0.yzw) + r3.xyz;
    r0 = float4(r0.x, _584.x, _584.y, _584.z);
    float3 _594 = r0.yzw * cb2_m[7].w.xxx;
    r0 = float4(r0.x, _594.x, _594.y, _594.z);
    float2 _607 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_607.x, _607.y, r1.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float4 _622 = r1;
    _622.x = max(r2.y, asfloat(1028443341u));
    r1 = _622;
    float3 _628 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _628.x, _628.y, _628.z);
    float3 _641 = r1.zzz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_641.x, _641.y, _641.z, r1.w);
    float3 _654 = r1.www * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_654.x, _654.y, _654.z, r3.w);
    float3 _670 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_670.x, _670.y, _670.z, r4.w);
    float3 _680 = (r1.xyz * r4.xyz) + r3.xyz;
    r1 = float4(_680.x, _680.y, _680.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _701 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r4 = float4(_701.x, _701.y, _701.z, r4.w);
    float3 _708 = r1.xyz * r4.xyz;
    r1 = float4(_708.x, _708.y, _708.z, r1.w);
    float3 _718 = (r1.xyz * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _718.x, _718.y, _718.z);
    float3 _731 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _731.x, _731.y, _731.z);
    float4 _740 = r1;
    _740.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _740;
    float4 _749 = r1;
    _749.x = abs(r1.x) + abs(r1.x);
    r1 = _749;
    float4 _759 = r1;
    _759.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _759;
    float4 _765 = r1;
    _765.x = max(r1.x, asfloat(0u));
    r1 = _765;
    float4 _773 = r1;
    _773.x = r1.x * cb0_m[7].y;
    r1 = _773;
    float3 _797 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _797.x, _797.y, _797.z);
    float3 _813 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _813.x, _813.y, _813.z);
    float3 _827 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(r2.x, _827.x, _827.y, _827.z);
    float3 _837 = (r1.xxx * r2.yzw) + r1.yzw;
    r1 = float4(_837.x, _837.y, _837.z, r1.w);
    float3 _844 = r2.xxx * r1.xyz;
    r1 = float4(_844.x, _844.y, _844.z, r1.w);
    float3 _854 = (r1.xyz * r4.xyz) + r0.yzw;
    r0 = float4(_854.x, _854.y, _854.z, r0.w);
    float4 _863 = r0;
    _863.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _863;
    float3 _869 = r0.xyz * r0.www;
    r0 = float4(_869.x, _869.y, _869.z, r0.w);
    float3 _886 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_886.x, _886.y, _886.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _917 = gl_FragCoord;
    _917.w = 1.0f / _917.w;
    shader_in[0] = float4(_917.xy.x, _917.xy.y, shader_in[0].z, shader_in[0].w);
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
