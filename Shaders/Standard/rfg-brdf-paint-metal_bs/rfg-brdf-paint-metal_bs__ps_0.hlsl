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
    _201.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _201;
    float4 _206 = r0;
    _206.w = rsqrt(r0.w);
    r0 = _206;
    float3 _213 = r0.www * shader_in[2].xyz;
    r1 = float4(_213.x, _213.y, _213.z, r1.w);
    float4 _232 = r0;
    _232.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _232;
    float4 _237 = r0;
    _237.w = rsqrt(r0.w);
    r0 = _237;
    float3 _247 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r2 = float4(_247.x, _247.y, _247.z, r2.w);
    float4 _264 = r1;
    _264.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r1 = _264;
    float3 _271 = r0.www * shader_in[3].xyz;
    r1 = float4(r1.x, _271.x, _271.y, _271.z);
    float4 _290 = r0;
    _290.w = clamp(mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x)), 0.0f, 1.0f);
    r0 = _290;
    float4 _305 = r1;
    _305.y = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _305;
    float4 _310 = r1;
    _310.y = rsqrt(r1.y);
    r1 = _310;
    float3 _316 = r1.yyy * r2.xyz;
    r1 = float4(r1.x, _316.x, _316.y, _316.z);
    float4 _332 = r1;
    _332.y = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r1 = _332;
    float4 _349 = r0;
    _349.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _349;
    float4 _359 = r0;
    _359.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _359;
    float2 _366 = max(r1.yx, asfloat(uint2(0u, 0u)));
    r0 = float4(r0.x, _366.x, _366.y, r0.w);
    float3 _376 = (-r0.yyy) + asfloat(uint3(1065353216u, 1064933786u, 1061158912u));
    r1 = float4(r1.x, _376.x, _376.y, _376.z);
    float4 _388 = r0;
    _388.y = asfloat((asfloat(1006632960u) >= r1.y) ? 4294967295u : 0u);
    r0 = _388;
    float2 _399 = clamp(r1.zw * asfloat(uint2(3259498496u, 3229785276u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(r1.x, _399.x, _399.y, r1.w);
    float4 _407 = r0;
    _407.y = asfloat(asuint(r0.y) & 1065353216u);
    r0 = _407;
    float2 _411 = asfloat(uint2(964689920u, 1006632960u));
    bool2 _415 = bool2(_411.x < r0.zz.x, _411.y < r0.zz.y);
    float2 _418 = asfloat(uint2(_415.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _415.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r2 = float4(_418.x, _418.y, r2.z, r2.w);
    float2 _426 = asfloat(asuint(r2.xy) & uint2(1065353216u, 1065353216u));
    r2 = float4(_426.x, _426.y, r2.z, r2.w);
    float4 _434 = r0;
    _434.y = r0.y * r2.y;
    r0 = _434;
    float2 _440 = r1.yz * r2.xx;
    r1 = float4(r1.x, _440.x, _440.y, r1.w);
    float2 _445 = log2(r1.yz);
    r1 = float4(r1.x, _445.x, _445.y, r1.w);
    float2 _453 = r1.yz * asfloat(uint2(1074580685u, 1074580685u));
    r1 = float4(r1.x, _453.x, _453.y, r1.w);
    float2 _458 = exp2(r1.yz);
    r2 = float4(_458.x, _458.y, r2.z, r2.w);
    float4 _464 = r0;
    _464.y = log2(r0.y);
    r0 = _464;
    float4 _470 = r0;
    _470.y = r0.y * asfloat(1074580685u);
    r0 = _470;
    float4 _475 = r2;
    _475.z = exp2(r0.y);
    r2 = _475;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _490 = r2.xyz * r3.xyz;
    r1 = float4(r1.x, _490.x, _490.y, _490.z);
    float3 _503 = r1.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_503.x, _503.y, _503.z, r2.w);
    float3 _516 = r1.zzz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_516.x, _516.y, _516.z, r3.w);
    float3 _533 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r1.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_533.x, _533.y, _533.z, r4.w);
    float3 _544 = (r2.xyz * r4.xyz) + r3.xyz;
    r2 = float4(_544.x, _544.y, _544.z, r2.w);
    float3 _558 = r1.www * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r3 = float4(_558.x, _558.y, _558.z, r3.w);
    float3 _574 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r1.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(r1.x, _574.x, _574.y, _574.z);
    float3 _584 = (r2.xyz * r1.yzw) + r3.xyz;
    r1 = float4(r1.x, _584.x, _584.y, _584.z);
    float3 _594 = r1.yzw * cb2_m[7].w.xxx;
    r1 = float4(r1.x, _594.x, _594.y, _594.z);
    float2 _607 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(r0.x, _607.x, _607.y, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r0.yzyy.xy);
    float4 _622 = r0;
    _622.y = max(r2.y, asfloat(1028443341u));
    r0 = _622;
    float3 _628 = r0.yyy * r1.yzw;
    r1 = float4(r1.x, _628.x, _628.y, _628.z);
    float4 _634 = r0;
    _634.y = clamp(r1.x, 0.0f, 1.0f);
    r0 = _634;
    float4 _643 = r0;
    _643.z = (r1.x * asfloat(1056964608u)) + asfloat(3196059648u);
    r0 = _643;
    float4 _651 = r0;
    _651.z = clamp(r0.z * asfloat(1082130432u), 0.0f, 1.0f);
    r0 = _651;
    float4 _656 = r0;
    _656.z = log2(r0.z);
    r0 = _656;
    float4 _662 = r0;
    _662.z = r0.z * asfloat(1074580685u);
    r0 = _662;
    float4 _667 = r0;
    _667.z = exp2(r0.z);
    r0 = _667;
    float4 _674 = r0;
    _674.y = r0.w * r0.y;
    r0 = _674;
    float4 _679 = r0;
    _679.y = log2(r0.y);
    r0 = _679;
    float4 _685 = r0;
    _685.y = r0.y * asfloat(1074580685u);
    r0 = _685;
    float4 _690 = r0;
    _690.y = exp2(r0.y);
    r0 = _690;
    float3 _702 = r0.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_702.x, _702.y, _702.z, r3.w);
    float3 _715 = r0.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_715.x, _715.y, _715.z, r4.w);
    float3 _731 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _731.x, _731.y, _731.z);
    float3 _741 = (r3.xyz * r0.yzw) + r4.xyz;
    r0 = float4(r0.x, _741.x, _741.y, _741.z);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _762 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r4 = float4(_762.x, _762.y, _762.z, r4.w);
    float3 _769 = r0.yzw * r4.xyz;
    r0 = float4(r0.x, _769.x, _769.y, _769.z);
    float3 _779 = (r0.yzw * r2.yyy) + r1.yzw;
    r0 = float4(r0.x, _779.x, _779.y, _779.z);
    float3 _792 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _792.x, _792.y, _792.z);
    float4 _801 = r1;
    _801.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _801;
    float4 _810 = r1;
    _810.x = abs(r1.x) + abs(r1.x);
    r1 = _810;
    float4 _820 = r1;
    _820.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _820;
    float4 _826 = r1;
    _826.x = max(r1.x, asfloat(0u));
    r1 = _826;
    float4 _834 = r1;
    _834.x = r1.x * cb0_m[7].y;
    r1 = _834;
    float3 _858 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _858.x, _858.y, _858.z);
    float3 _874 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _874.x, _874.y, _874.z);
    float3 _888 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(r2.x, _888.x, _888.y, _888.z);
    float3 _898 = (r1.xxx * r2.yzw) + r1.yzw;
    r1 = float4(_898.x, _898.y, _898.z, r1.w);
    float3 _905 = r2.xxx * r1.xyz;
    r1 = float4(_905.x, _905.y, _905.z, r1.w);
    float3 _915 = (r1.xyz * r4.xyz) + r0.yzw;
    r0 = float4(_915.x, _915.y, _915.z, r0.w);
    float4 _924 = r0;
    _924.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _924;
    float3 _930 = r0.xyz * r0.www;
    r0 = float4(_930.x, _930.y, _930.z, r0.w);
    float3 _947 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_947.x, _947.y, _947.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _978 = gl_FragCoord;
    _978.w = 1.0f / _978.w;
    shader_in[0] = float4(_978.xy.x, _978.xy.y, shader_in[0].z, shader_in[0].w);
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
