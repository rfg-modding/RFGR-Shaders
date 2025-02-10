cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
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
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
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
static float4 r4;
static float4 r5;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _80 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _80.x, _80.y, _80.z);
    float4 _89 = r0;
    _89.y = r0.y + r0.y;
    r0 = _89;
    float4 _96 = r1;
    _96.x = r1.w * r1.y;
    r1 = _96;
    float4 _108 = r0;
    _108.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _108;
    float4 _112 = r0;
    _112.x = r1.x;
    r0 = _112;
    float4 _120 = r0;
    _120.w = (-r0.w) + asfloat(1065353216u);
    r0 = _120;
    float4 _127 = r0;
    _127.w = max(r0.w, asfloat(0u));
    r0 = _127;
    float4 _132 = r0;
    _132.z = sqrt(r0.w);
    r0 = _132;
    float3 _139 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_139.x, _139.y, _139.z, r0.w);
    float3 _155 = (cb2_m[4].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _264.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
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
    float4 _322 = r0;
    _322.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _322;
    float4 _334 = r0;
    _334.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _334;
    float4 _340 = r0;
    _340.y = max(r1.x, asfloat(0u));
    r0 = _340;
    float4 _345 = r0;
    _345.y = log2(r0.y);
    r0 = _345;
    float4 _354 = r0;
    _354.y = r0.y * cb2_m[5].x;
    r0 = _354;
    float4 _359 = r0;
    _359.y = exp2(r0.y);
    r0 = _359;
    float4 _368 = r0;
    _368.y = r0.y * cb2_m[4].w;
    r0 = _368;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _389 = r1.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r1 = float4(_389.x, _389.y, _389.z, r1.w);
    float3 _402 = r1.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_402.x, _402.y, _402.z, r1.w);
    float3 _409 = r0.yyy * r1.xyz;
    r1 = float4(_409.x, _409.y, _409.z, r1.w);
    float4 _416 = r0;
    _416.y = max(r0.w, asfloat(0u));
    r0 = _416;
    float4 _424 = r0;
    _424.z = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _424;
    float3 _430 = r0.yyy * r1.xyz;
    r1 = float4(_430.x, _430.y, _430.z, r1.w);
    float3 _445 = float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z) * cb2_m[4].y.xxx;
    r2 = float4(_445.x, _445.y, _445.z, r2.w);
    float3 _470 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * cb2_m[4].y.xxx) + float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_470.x, _470.y, _470.z, r3.w);
    float3 _481 = (r0.yyy * r3.xyz) + r2.xyz;
    r2 = float4(_481.x, _481.y, _481.z, r2.w);
    float3 _495 = r2.xyz + (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z));
    r2 = float4(_495.x, _495.y, _495.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _515 = r0;
    _515.y = (cb2_m[4].z * r3.w) + r0.y;
    r0 = _515;
    float4 _525 = r0;
    _525.w = (cb2_m[4].z * r3.w) + asfloat(1065353216u);
    r0 = _525;
    float4 _531 = r0;
    _531.w = asfloat(1065353216u) / r0.w;
    r0 = _531;
    float4 _539 = r0;
    _539.y = clamp(r0.w * r0.y, 0.0f, 1.0f);
    r0 = _539;
    float4 _549 = r0;
    _549.w = (r0.y * asfloat(3221225472u)) + asfloat(1077936128u);
    r0 = _549;
    float4 _556 = r0;
    _556.y = r0.y * r0.y;
    r0 = _556;
    float4 _563 = r0;
    _563.y = r0.y * r0.w;
    r0 = _563;
    float3 _578 = (r0.yyy * r2.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_578.x, _578.y, _578.z, r2.w);
    float3 _585 = r0.yyy * r2.xyz;
    r2 = float4(_585.x, _585.y, _585.z, r2.w);
    float3 _592 = r2.xyz + r2.xyz;
    r4 = float4(_592.x, _592.y, _592.z, r4.w);
    float3 _603 = ((-r2.xyz) * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r5 = float4(_603.x, _603.y, _603.z, r5.w);
    float3 _611 = r2.xyz * r3.xyz;
    r2 = float4(_611.x, _611.y, _611.z, r2.w);
    float3 _621 = (r3.xyz * r5.xyz) + r4.xyz;
    r4 = float4(_621.x, _621.y, _621.z, r4.w);
    float3 _628 = r2.xyz * r4.xyz;
    r2 = float4(_628.x, _628.y, _628.z, r2.w);
    float3 _644 = (r2.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r1 = float4(_644.x, _644.y, _644.z, r1.w);
    float3 _664 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_664.x, _664.y, _664.z, r2.w);
    float3 _680 = (r0.zzz * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r0 = float4(r0.x, _680.x, _680.y, _680.z);
    float2 _693 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_693.x, _693.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _708 = r0;
    _708.x = r0.x * r2.x;
    r0 = _708;
    float4 _715 = r0;
    _715.x = min(r2.y, r0.x);
    r0 = _715;
    float3 _725 = ((-r0.yzw) * r0.xxx) + r0.yzw;
    r0 = float4(_725.x, _725.y, _725.z, r0.w);
    float3 _735 = ((-r0.xyz) * r3.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_735.x, _735.y, _735.z, r0.w);
    float3 _742 = (-r0.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_742.x, _742.y, _742.z, r0.w);
    float3 _752 = (r1.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_752.x, _752.y, _752.z, r0.w);
    float4 _761 = r0;
    _761.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _761;
    float3 _767 = r0.xyz * r0.www;
    r0 = float4(_767.x, _767.y, _767.z, r0.w);
    float3 _784 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_784.x, _784.y, _784.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _815 = gl_FragCoord;
    _815.w = 1.0f / _815.w;
    shader_in[0] = float4(_815.xy.x, _815.xy.y, shader_in[0].z, shader_in[0].w);
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
