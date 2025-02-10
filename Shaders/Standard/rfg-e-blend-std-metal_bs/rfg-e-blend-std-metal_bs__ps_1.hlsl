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
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _82 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _82.x, _82.y, _82.z);
    float4 _91 = r0;
    _91.y = r0.y + r0.y;
    r0 = _91;
    float4 _98 = r1;
    _98.x = r1.w * r1.y;
    r1 = _98;
    float4 _110 = r0;
    _110.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _110;
    float4 _114 = r0;
    _114.x = r1.x;
    r0 = _114;
    float4 _122 = r0;
    _122.w = (-r0.w) + asfloat(1065353216u);
    r0 = _122;
    float4 _129 = r0;
    _129.w = max(r0.w, asfloat(0u));
    r0 = _129;
    float4 _134 = r0;
    _134.z = sqrt(r0.w);
    r0 = _134;
    float3 _141 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_141.x, _141.y, _141.z, r0.w);
    float3 _157 = (cb2_m[4].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float4 _173 = r0;
    _173.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _173;
    float4 _178 = r0;
    _178.w = rsqrt(r0.w);
    r0 = _178;
    float3 _184 = r0.www * r0.xyz;
    r0 = float4(_184.x, _184.y, _184.z, r0.w);
    float4 _203 = r0;
    _203.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _203;
    float4 _208 = r0;
    _208.w = rsqrt(r0.w);
    r0 = _208;
    float4 _226 = r1;
    _226.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _226;
    float4 _231 = r1;
    _231.y = rsqrt(r1.x);
    r1 = _231;
    float4 _236 = r1;
    _236.x = sqrt(r1.x);
    r1 = _236;
    float4 _252 = r1;
    _252.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _252;
    float3 _259 = r1.yyy * shader_in[1].xyz;
    r1 = float4(r1.x, _259.x, _259.y, _259.z);
    float3 _270 = (shader_in[2].xyz * r0.www) + r1.yzw;
    r2 = float4(_270.x, _270.y, _270.z, r2.w);
    float4 _287 = r0;
    _287.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _287;
    float4 _292 = r0;
    _292.w = rsqrt(r0.w);
    r0 = _292;
    float3 _298 = r0.www * r2.xyz;
    r2 = float4(_298.x, _298.y, _298.z, r2.w);
    float4 _315 = r0;
    _315.w = clamp(mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r0 = _315;
    float4 _331 = r0;
    _331.x = clamp(mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x)), 0.0f, 1.0f);
    r0 = _331;
    float3 _335 = -r1.yzw;
    float4 _349 = r0;
    _349.y = mad(_335.z, shader_in[3].xyz.z, mad(_335.y, shader_in[3].xyz.y, _335.x * shader_in[3].xyz.x));
    r0 = _349;
    float4 _357 = r0;
    _357.y = min(r0.y, cb1_m[2].x);
    r0 = _357;
    float4 _366 = r0;
    _366.y = r0.y + (-cb1_m[2].y);
    r0 = _366;
    float4 _372 = r0;
    _372.y = max(r0.y, asfloat(0u));
    r0 = _372;
    float4 _380 = r0;
    _380.y = r0.y * cb1_m[2].z;
    r0 = _380;
    float4 _385 = r0;
    _385.z = log2(r0.w);
    r0 = _385;
    float4 _394 = r2;
    _394.x = r0.z * cb2_m[5].x;
    r2 = _394;
    float4 _402 = r2;
    _402.y = r0.z * cb2_m[4].y;
    r2 = _402;
    float4 _410 = r2;
    _410.z = r0.z * cb2_m[3].w;
    r2 = _410;
    float3 _414 = exp2(r2.zxy);
    r1 = float4(r1.x, _414.x, _414.y, _414.z);
    float2 _425 = r1.zw * float2(cb2_m[4].w, cb2_m[4].x);
    r0 = float4(r0.x, r0.y, _425.x, _425.y);
    float4 _435 = r1;
    _435.z = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _435;
    float4 _446 = r1;
    _446.y = (r1.y * r1.z) + (-r0.x);
    r1 = _446;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float4 _464 = r1;
    _464.y = (r2.w * r1.y) + r0.x;
    r1 = _464;
    float4 _475 = r1;
    _475.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _475;
    float4 _485 = r0;
    _485.y = (asuint(r1.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _485;
    float4 _492 = r0;
    _492.y = r0.y * r1.x;
    r0 = _492;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _513 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_513.x, r1.y, _513.y, _513.z);
    float3 _520 = r0.yyy * r1.xzw;
    r1 = float4(_520.x, r1.y, _520.y, _520.z);
    float3 _527 = r1.xzw * r1.yyy;
    r1 = float4(_527.x, _527.y, _527.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float3 _546 = (r0.xxx * r3.xyz) + (-r1.xyz);
    r3 = float4(_546.x, _546.y, _546.z, r3.w);
    float4 _555 = r0;
    _555.x = r3.w * cb2_m[3].z;
    r0 = _555;
    float4 _566 = r1;
    _566.w = ((-r3.w) * cb2_m[3].z) + asfloat(1065353216u);
    r1 = _566;
    float3 _575 = (r0.xxx * r3.xyz) + r1.xyz;
    r1 = float4(_575.x, _575.y, _575.z, r1.w);
    float3 _588 = r0.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_588.x, _588.y, _588.z, r3.w);
    float3 _605 = (r0.www * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r3.xyz);
    r0 = float4(_605.x, r0.y, _605.y, _605.z);
    float3 _615 = (r2.www * r0.xzw) + r3.xyz;
    r0 = float4(_615.x, r0.y, _615.y, _615.z);
    float3 _622 = r2.xyz * r0.xzw;
    r0 = float4(_622.x, r0.y, _622.y, _622.z);
    float3 _629 = r1.www * r0.xzw;
    r0 = float4(_629.x, r0.y, _629.y, _629.z);
    float3 _636 = r0.yyy * r0.xzw;
    r0 = float4(_636.x, _636.y, _636.z, r0.w);
    float2 _649 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_649.x, _649.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _664 = r0;
    _664.w = max(r2.y, asfloat(1028443341u));
    r0 = _664;
    float3 _670 = r0.www * r0.xyz;
    r0 = float4(_670.x, _670.y, _670.z, r0.w);
    float3 _680 = (r1.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_680.x, _680.y, _680.z, r0.w);
    float3 _693 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_693.x, _693.y, _693.z, r0.w);
    float4 _702 = r0;
    _702.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _702;
    float3 _708 = r0.xyz * r0.www;
    r0 = float4(_708.x, _708.y, _708.z, r0.w);
    float4 _712 = r0;
    _712.w = asfloat(1065353216u);
    r0 = _712;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _740 = gl_FragCoord;
    _740.w = 1.0f / _740.w;
    shader_in[0] = float4(_740.xy.x, _740.xy.y, shader_in[0].z, shader_in[0].w);
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
