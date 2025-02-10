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
    float4 cb2_m[7] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _85 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _85.x, _85.y, _85.z);
    float4 _94 = r0;
    _94.y = r0.y + r0.y;
    r0 = _94;
    float4 _101 = r1;
    _101.x = r1.w * r1.y;
    r1 = _101;
    float4 _113 = r0;
    _113.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _113;
    float4 _117 = r0;
    _117.x = r1.x;
    r0 = _117;
    float4 _125 = r0;
    _125.w = (-r0.w) + asfloat(1065353216u);
    r0 = _125;
    float4 _132 = r0;
    _132.w = max(r0.w, asfloat(0u));
    r0 = _132;
    float4 _137 = r0;
    _137.z = sqrt(r0.w);
    r0 = _137;
    float3 _144 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_144.x, _144.y, _144.z, r0.w);
    float3 _160 = (cb2_m[5].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_160.x, _160.y, _160.z, r0.w);
    float4 _176 = r0;
    _176.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _176;
    float4 _181 = r0;
    _181.w = rsqrt(r0.w);
    r0 = _181;
    float3 _187 = r0.www * r0.xyz;
    r0 = float4(_187.x, _187.y, _187.z, r0.w);
    float4 _206 = r0;
    _206.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _206;
    float4 _211 = r0;
    _211.w = rsqrt(r0.w);
    r0 = _211;
    float4 _229 = r1;
    _229.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _229;
    float4 _234 = r1;
    _234.y = rsqrt(r1.x);
    r1 = _234;
    float4 _239 = r1;
    _239.x = sqrt(r1.x);
    r1 = _239;
    float4 _256 = r1;
    _256.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _256;
    float3 _263 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _263.x, _263.y, _263.z);
    float3 _274 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_274.x, _274.y, _274.z, r2.w);
    float4 _291 = r0;
    _291.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _291;
    float4 _296 = r0;
    _296.w = rsqrt(r0.w);
    r0 = _296;
    float3 _302 = r0.www * r2.xyz;
    r2 = float4(_302.x, _302.y, _302.z, r2.w);
    float4 _319 = r0;
    _319.w = clamp(mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r0 = _319;
    float4 _335 = r0;
    _335.x = clamp(mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x)), 0.0f, 1.0f);
    r0 = _335;
    float3 _339 = -r1.yzw;
    float4 _353 = r0;
    _353.y = mad(_339.z, shader_in[4].xyz.z, mad(_339.y, shader_in[4].xyz.y, _339.x * shader_in[4].xyz.x));
    r0 = _353;
    float4 _361 = r0;
    _361.y = min(r0.y, cb1_m[2].x);
    r0 = _361;
    float4 _370 = r0;
    _370.y = r0.y + (-cb1_m[2].y);
    r0 = _370;
    float4 _376 = r0;
    _376.y = max(r0.y, asfloat(0u));
    r0 = _376;
    float4 _384 = r0;
    _384.y = r0.y * cb1_m[2].z;
    r0 = _384;
    float4 _391 = r0;
    _391.x = r0.x + asfloat(925353388u);
    r0 = _391;
    float4 _396 = r0;
    _396.z = log2(r0.w);
    r0 = _396;
    float4 _405 = r2;
    _405.x = r0.z * cb2_m[6].x;
    r2 = _405;
    float4 _413 = r2;
    _413.y = r0.z * cb2_m[5].y;
    r2 = _413;
    float4 _421 = r2;
    _421.z = r0.z * cb2_m[4].w;
    r2 = _421;
    float3 _425 = exp2(r2.zxy);
    r1 = float4(r1.x, _425.x, _425.y, _425.z);
    float2 _436 = r1.zw * float2(cb2_m[5].w, cb2_m[5].x);
    r0 = float4(r0.x, r0.y, _436.x, _436.y);
    float4 _446 = r1;
    _446.z = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _446;
    float4 _453 = r1;
    _453.y = r1.z * r1.y;
    r1 = _453;
    float4 _460 = r1;
    _460.y = r1.y / r0.x;
    r1 = _460;
    float4 _466 = r1;
    _466.y = r1.y + asfloat(3212836864u);
    r1 = _466;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float4 _483 = r1;
    _483.y = (r2.w * r1.y) + asfloat(1065353216u);
    r1 = _483;
    float4 _494 = r1;
    _494.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _494;
    float4 _504 = r0;
    _504.y = (asuint(r1.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _504;
    float4 _511 = r0;
    _511.y = r0.y * r1.x;
    r0 = _511;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].xyxx.xy);
    float3 _532 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_532.x, r1.y, _532.y, _532.z);
    float3 _539 = r0.yyy * r1.xzw;
    r1 = float4(_539.x, r1.y, _539.y, _539.z);
    float3 _546 = r1.xzw * r1.yyy;
    r3 = float4(_546.x, _546.y, _546.z, r3.w);
    r4 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[1].xyxx.xy);
    float3 _566 = ((-r1.yyy) * r1.xzw) + r4.xyz;
    r1 = float4(_566.x, _566.y, _566.z, r1.w);
    float4 _575 = r1;
    _575.w = r4.w * cb2_m[4].z;
    r1 = _575;
    float4 _586 = r3;
    _586.w = ((-r4.w) * cb2_m[4].z) + asfloat(1065353216u);
    r3 = _586;
    float3 _595 = (r1.www * r1.xyz) + r3.xyz;
    r1 = float4(_595.x, _595.y, _595.z, r1.w);
    r5 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[5].zwzz.xy);
    float4 _613 = r3;
    _613.x = r5.w * cb2_m[3].x;
    r3 = _613;
    float3 _620 = (-r1.xyz) + r5.xyz;
    r6 = float4(_620.x, _620.y, _620.z, r6.w);
    float3 _631 = (r3.xxx * r6.xyz) + r1.xyz;
    r1 = float4(_631.x, _631.y, _631.z, r1.w);
    float3 _639 = r4.xyz + (-r5.xyz);
    r4 = float4(_639.x, _639.y, _639.z, r4.w);
    float4 _648 = r3;
    _648.y = (-cb2_m[3].y) + asfloat(1065353216u);
    r3 = _648;
    float4 _655 = r3;
    _655.y = r1.w * r3.y;
    r3 = _655;
    float4 _665 = r1;
    _665.w = (r3.x * r3.w) + r1.w;
    r1 = _665;
    float4 _672 = r3;
    _672.x = r3.x * r3.y;
    r3 = _672;
    float3 _681 = (r3.xxx * r4.xyz) + r1.xyz;
    r1 = float4(_681.x, _681.y, _681.z, r1.w);
    float3 _688 = r0.xxx * r1.xyz;
    r1 = float4(_688.x, _688.y, _688.z, r1.w);
    float4 _696 = r0;
    _696.x = (-r1.w) + asfloat(1065353216u);
    r0 = _696;
    float3 _708 = r0.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_708.x, _708.y, _708.z, r3.w);
    float3 _725 = (r0.www * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r3.xyz);
    r4 = float4(_725.x, _725.y, _725.z, r4.w);
    float3 _735 = (r2.www * r4.xyz) + r3.xyz;
    r3 = float4(_735.x, _735.y, _735.z, r3.w);
    float3 _742 = r2.xyz * r3.xyz;
    r2 = float4(_742.x, _742.y, _742.z, r2.w);
    float3 _749 = r0.xxx * r2.xyz;
    r0 = float4(_749.x, r0.y, _749.y, _749.z);
    float3 _756 = r0.yyy * r0.xzw;
    r0 = float4(_756.x, _756.y, _756.z, r0.w);
    float2 _768 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_768.x, _768.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _783 = r0;
    _783.w = max(r2.y, asfloat(1028443341u));
    r0 = _783;
    float3 _789 = r0.www * r0.xyz;
    r0 = float4(_789.x, _789.y, _789.z, r0.w);
    float3 _799 = (r1.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_799.x, _799.y, _799.z, r0.w);
    float3 _812 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_812.x, _812.y, _812.z, r0.w);
    float4 _821 = r0;
    _821.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _821;
    float3 _827 = r0.xyz * r0.www;
    r0 = float4(_827.x, _827.y, _827.z, r0.w);
    float4 _831 = r0;
    _831.w = asfloat(1065353216u);
    r0 = _831;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _863 = gl_FragCoord;
    _863.w = 1.0f / _863.w;
    shader_in[0] = float4(_863.xy.x, _863.xy.y, shader_in[0].z, shader_in[0].w);
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
