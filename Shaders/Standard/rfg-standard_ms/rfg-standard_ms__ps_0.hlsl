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
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
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
    float2 _79 = shader_in[5].xy * float2(cb2_m[3].y, cb2_m[3].z);
    r0 = float4(_79.x, _79.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt3s3, r0.xyxx.xy);
    float3 _101 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _101.x, _101.y, _101.z);
    float4 _110 = r0;
    _110.y = r0.y + r0.y;
    r0 = _110;
    float4 _117 = r1;
    _117.x = r1.w * r1.y;
    r1 = _117;
    float4 _129 = r0;
    _129.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _129;
    float4 _133 = r0;
    _133.x = r1.x;
    r0 = _133;
    float4 _141 = r0;
    _141.w = (-r0.w) + asfloat(1065353216u);
    r0 = _141;
    float4 _148 = r0;
    _148.w = max(r0.w, asfloat(0u));
    r0 = _148;
    float4 _153 = r0;
    _153.z = sqrt(r0.w);
    r0 = _153;
    float3 _160 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_160.x, _160.y, _160.z, r0.w);
    float3 _172 = (cb2_m[3].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_172.x, _172.y, _172.z, r0.w);
    float4 _188 = r0;
    _188.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _188;
    float4 _193 = r0;
    _193.w = rsqrt(r0.w);
    r0 = _193;
    float3 _199 = r0.www * r0.xyz;
    r0 = float4(_199.x, _199.y, _199.z, r0.w);
    float3 _205 = -shader_in[3].xyz;
    float4 _217 = r0;
    _217.w = mad(_205.z, r0.xyz.z, mad(_205.y, r0.xyz.y, _205.x * r0.xyz.x));
    r0 = _217;
    float4 _224 = r1;
    _224.x = r0.w + r0.w;
    r1 = _224;
    float4 _230 = r0;
    _230.w = r0.w + asfloat(1065353216u);
    r0 = _230;
    float4 _236 = r0;
    _236.w = log2(abs(r0.w));
    r0 = _236;
    float4 _243 = r0;
    _243.w = r0.w * asfloat(1083179008u);
    r0 = _243;
    float4 _248 = r0;
    _248.w = exp2(r0.w);
    r0 = _248;
    float4 _255 = r0;
    _255.w = r0.w + asfloat(925353388u);
    r0 = _255;
    float4 _261 = r0;
    _261.w = min(r0.w, asfloat(1065353216u));
    r0 = _261;
    float4 _270 = r0;
    _270.w = r0.w * cb2_m[4].x;
    r0 = _270;
    float3 _282 = (r0.xyz * (-r1.xxx)) + (-shader_in[3].xyz);
    r1 = float4(_282.x, _282.y, _282.z, r1.w);
    float4 _299 = r1;
    _299.x = mad(r1.xyz.z, shader_in[4].xyz.z, mad(r1.xyz.y, shader_in[4].xyz.y, r1.xyz.x * shader_in[4].xyz.x));
    r1 = _299;
    float4 _308 = r1;
    _308.y = abs(r1.x) + abs(r1.x);
    r1 = _308;
    float4 _320 = r1;
    _320.x = clamp((r1.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r1 = _320;
    float4 _330 = r1;
    _330.y = ((-r1.y) * r1.y) + asfloat(1065353216u);
    r1 = _330;
    float4 _336 = r1;
    _336.y = max(r1.y, asfloat(0u));
    r1 = _336;
    float4 _345 = r1;
    _345.y = r1.y * cb0_m[7].y;
    r1 = _345;
    float3 _365 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_365.x, _365.y, _365.z, r2.w);
    float3 _382 = (r1.xxx * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(_382.x, r1.y, _382.y, _382.z);
    float3 _401 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r1.xzw);
    r3 = float4(_401.x, _401.y, _401.z, r3.w);
    float3 _412 = (r1.yyy * r3.xyz) + r1.xzw;
    r1 = float4(_412.x, _412.y, _412.z, r1.w);
    float2 _424 = shader_in[5].xy * float2(cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_424.x, _424.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt4s4, r3.xyxx.xy);
    float3 _445 = r3.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_445.x, _445.y, _445.z, r3.w);
    float3 _452 = r0.www * r3.xyz;
    r3 = float4(_452.x, _452.y, _452.z, r3.w);
    float3 _459 = r1.xyz * r3.xyz;
    r1 = float4(_459.x, _459.y, _459.z, r1.w);
    float3 _468 = r1.xyz * cb0_m[7].z.xxx;
    r1 = float4(_468.x, _468.y, _468.z, r1.w);
    float4 _485 = r0;
    _485.w = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _485;
    float4 _494 = r1;
    _494.w = abs(r0.w) + abs(r0.w);
    r1 = _494;
    float4 _503 = r0;
    _503.w = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _503;
    float3 _518 = (r0.www * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(_518.x, _518.y, _518.z, r2.w);
    float4 _529 = r0;
    _529.w = ((-r1.w) * r1.w) + asfloat(1065353216u);
    r0 = _529;
    float4 _535 = r0;
    _535.w = max(r0.w, asfloat(0u));
    r0 = _535;
    float4 _543 = r0;
    _543.w = r0.w * cb0_m[7].y;
    r0 = _543;
    float3 _561 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r2.xyz);
    r4 = float4(_561.x, _561.y, _561.z, r4.w);
    float3 _572 = (r0.www * r4.xyz) + r2.xyz;
    r2 = float4(_572.x, _572.y, _572.z, r2.w);
    float3 _581 = (-r2.xyz) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r4 = float4(_581.x, _581.y, _581.z, r4.w);
    float3 _594 = (cb2_m[3].w.xxx * r4.xyz) + r2.xyz;
    r2 = float4(_594.x, _594.y, _594.z, r2.w);
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float4 _611 = r0;
    _611.w = r4.w * cb2_m[2].x;
    r0 = _611;
    r5 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _632 = r5.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r6 = float4(_632.x, _632.y, _632.z, r6.w);
    float3 _650 = ((-r5.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r4.xyz;
    r4 = float4(_650.x, _650.y, _650.z, r4.w);
    float3 _660 = (r0.www * r4.xyz) + r6.xyz;
    r4 = float4(_660.x, _660.y, _660.z, r4.w);
    r6 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    float3 _676 = (-r4.xyz) + r6.xyz;
    r6 = float4(_676.x, _676.y, _676.z, r6.w);
    float4 _685 = r0;
    _685.w = r6.w * cb2_m[2].w;
    r0 = _685;
    float3 _694 = (r0.www * r6.xyz) + r4.xyz;
    r4 = float4(_694.x, _694.y, _694.z, r4.w);
    float3 _704 = (r4.xyz * r2.xyz) + r1.xyz;
    r1 = float4(_704.x, _704.y, _704.z, r1.w);
    float2 _717 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_717.x, _717.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _731 = r1.xyz * r2.xxx;
    r1 = float4(_731.x, _731.y, _731.z, r1.w);
    float4 _749 = r0;
    _749.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _749;
    float4 _754 = r0;
    _754.w = rsqrt(r0.w);
    r0 = _754;
    float3 _765 = (shader_in[2].xyz * r0.www) + shader_in[3].xyz;
    r2 = float4(_765.x, r2.y, _765.y, _765.z);
    float3 _773 = r0.www * shader_in[2].xyz;
    r6 = float4(_773.x, _773.y, _773.z, r6.w);
    float4 _789 = r0;
    _789.w = mad(r0.xyz.z, r6.xyz.z, mad(r0.xyz.y, r6.xyz.y, r0.xyz.x * r6.xyz.x));
    r0 = _789;
    float4 _804 = r1;
    _804.w = mad(r2.xzw.z, r2.xzw.z, mad(r2.xzw.y, r2.xzw.y, r2.xzw.x * r2.xzw.x));
    r1 = _804;
    float4 _809 = r1;
    _809.w = rsqrt(r1.w);
    r1 = _809;
    float3 _815 = r1.www * r2.xzw;
    r2 = float4(_815.x, r2.y, _815.y, _815.z);
    float4 _832 = r0;
    _832.x = clamp(mad(r0.xyz.z, r2.xzw.z, mad(r0.xyz.y, r2.xzw.y, r0.xyz.x * r2.xzw.x)), 0.0f, 1.0f);
    r0 = _832;
    float4 _838 = r0;
    _838.x = r0.x + asfloat(925353388u);
    r0 = _838;
    float4 _843 = r0;
    _843.x = log2(r0.x);
    r0 = _843;
    float4 _851 = r0;
    _851.x = r0.x * cb2_m[4].w;
    r0 = _851;
    float4 _856 = r0;
    _856.x = exp2(r0.x);
    r0 = _856;
    float4 _866 = r0;
    _866.y = asfloat((asfloat(0u) >= r0.w) ? 4294967295u : 0u);
    r0 = _866;
    float4 _871 = r0;
    _871.w = clamp(r0.w, 0.0f, 1.0f);
    r0 = _871;
    float4 _878 = r0;
    _878.z = r2.y * r0.w;
    r0 = _878;
    float4 _885 = r0;
    _885.w = max(r2.y, asfloat(1028443341u));
    r0 = _885;
    float4 _894 = r0;
    _894.y = (asuint(r0.y) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _894;
    float4 _901 = r0;
    _901.x = r0.y * r0.x;
    r0 = _901;
    float4 _908 = r0;
    _908.x = r0.w * r0.x;
    r0 = _908;
    float3 _914 = r3.xyz * r0.xxx;
    r0 = float4(_914.x, _914.y, r0.z, _914.z);
    float3 _924 = (r0.zzz * r4.xyz) + r0.xyw;
    r0 = float4(_924.x, _924.y, _924.z, r0.w);
    float3 _940 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_940.x, _940.y, _940.z, r0.w);
    float4 _949 = r0;
    _949.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _949;
    float3 _955 = r0.xyz * r0.www;
    r0 = float4(_955.x, _955.y, _955.z, r0.w);
    float3 _972 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r5 = float4(_972.x, _972.y, _972.z, r5.w);
    o0 = r5 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _1005 = gl_FragCoord;
    _1005.w = 1.0f / _1005.w;
    shader_in[0] = float4(_1005.xy.x, _1005.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
