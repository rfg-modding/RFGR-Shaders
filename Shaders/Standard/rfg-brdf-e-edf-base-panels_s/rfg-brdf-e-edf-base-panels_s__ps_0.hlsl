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
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
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
    float3 _156 = (cb2_m[6].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _202.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _202;
    float4 _207 = r0;
    _207.w = rsqrt(r0.w);
    r0 = _207;
    float4 _225 = r1;
    _225.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _225;
    float4 _230 = r1;
    _230.x = rsqrt(r1.x);
    r1 = _230;
    float3 _237 = r1.xxx * shader_in[1].xyz;
    r1 = float4(_237.x, _237.y, _237.z, r1.w);
    float3 _248 = (shader_in[2].xyz * r0.www) + r1.xyz;
    r2 = float4(_248.x, _248.y, _248.z, r2.w);
    float4 _265 = r0;
    _265.w = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _265;
    float4 _280 = r1;
    _280.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _280;
    float4 _285 = r1;
    _285.x = rsqrt(r1.x);
    r1 = _285;
    float3 _291 = r1.xxx * r2.xyz;
    r1 = float4(_291.x, _291.y, _291.z, r1.w);
    float4 _307 = r1;
    _307.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _307;
    float4 _324 = r0;
    _324.x = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _324;
    float4 _336 = r0;
    _336.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _336;
    float4 _342 = r0;
    _342.y = max(r1.x, asfloat(0u));
    r0 = _342;
    float4 _347 = r0;
    _347.y = log2(r0.y);
    r0 = _347;
    float3 _356 = r0.yyy * asfloat(uint3(1115684864u, 1107296256u, 1098907648u));
    r1 = float4(_356.x, _356.y, _356.z, r1.w);
    float3 _361 = exp2(r1.xyz);
    r1 = float4(_361.x, _361.y, _361.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _376 = r1.xyz * r2.xyz;
    r1 = float4(_376.x, _376.y, _376.z, r1.w);
    float3 _386 = clamp(r1.xyz + r1.xyz, 0.0f.xxx, 1.0f.xxx);
    r1 = float4(_386.x, _386.y, _386.z, r1.w);
    float3 _400 = r1.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_400.x, _400.y, _400.z, r2.w);
    float3 _416 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.xxx) + r2.xyz;
    r1 = float4(_416.x, _416.y, r1.z, _416.z);
    float3 _432 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r1.zzz) + r1.xyw;
    r1 = float4(_432.x, _432.y, _432.z, r1.w);
    float3 _442 = r1.xyz * cb2_m[7].x.xxx;
    r1 = float4(_442.x, _442.y, _442.z, r1.w);
    float4 _449 = r0;
    _449.y = max(r0.w, asfloat(0u));
    r0 = _449;
    float4 _457 = r0;
    _457.z = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _457;
    float4 _464 = r0;
    _464.z = r0.z * r0.z;
    r0 = _464;
    float4 _471 = r0;
    _471.z = r0.z * r0.z;
    r0 = _471;
    float3 _477 = r0.yyy * r1.xyz;
    r1 = float4(_477.x, _477.y, _477.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _497 = r0;
    _497.y = ((-r2.w) * cb2_m[6].z) + asfloat(1065353216u);
    r0 = _497;
    float3 _503 = r0.yyy * r1.xyz;
    r1 = float4(_503.x, _503.y, _503.z, r1.w);
    float2 _515 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(r0.x, _515.x, r0.z, _515.y);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r0.ywyy.xy);
    float4 _531 = r0;
    _531.y = max(r3.y, asfloat(1028443341u));
    r0 = _531;
    float3 _537 = r0.yyy * r1.xyz;
    r1 = float4(_537.x, _537.y, _537.z, r1.w);
    float4 _545 = r0;
    _545.y = r0.z * r0.z;
    r0 = _545;
    float3 _557 = r0.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_557.x, _557.y, _557.z, r4.w);
    float4 _566 = r0;
    _566.y = r0.y * r0.y;
    r0 = _566;
    float3 _581 = (r0.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r4.xyz;
    r0 = float4(r0.x, _581.x, _581.y, _581.z);
    float4 _590 = r1;
    _590.w = r2.w * cb2_m[6].z;
    r1 = _590;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _615 = ((-r4.xyz) * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) + r2.xyz;
    r2 = float4(_615.x, _615.y, _615.z, r2.w);
    float3 _628 = r4.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r4 = float4(_628.x, _628.y, _628.z, r4.w);
    float3 _638 = (r1.www * r2.xyz) + r4.xyz;
    r2 = float4(_638.x, _638.y, _638.z, r2.w);
    float3 _645 = r0.yzw * r2.xyz;
    r0 = float4(r0.x, _645.x, _645.y, _645.z);
    float3 _655 = (r0.yzw * r3.yyy) + r1.xyz;
    r0 = float4(r0.x, _655.x, _655.y, _655.z);
    float3 _668 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _668.x, _668.y, _668.z);
    float4 _677 = r1;
    _677.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _677;
    float4 _686 = r1;
    _686.x = abs(r1.x) + abs(r1.x);
    r1 = _686;
    float4 _696 = r1;
    _696.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _696;
    float4 _702 = r1;
    _702.x = max(r1.x, asfloat(0u));
    r1 = _702;
    float4 _710 = r1;
    _710.x = r1.x * cb0_m[7].y;
    r1 = _710;
    float3 _734 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _734.x, _734.y, _734.z);
    float3 _750 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _750.x, _750.y, _750.z);
    float3 _764 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(r3.x, _764.x, _764.y, _764.z);
    float3 _774 = (r1.xxx * r3.yzw) + r1.yzw;
    r1 = float4(_774.x, _774.y, _774.z, r1.w);
    float3 _781 = r3.xxx * r1.xyz;
    r1 = float4(_781.x, _781.y, _781.z, r1.w);
    float3 _791 = (r1.xyz * r2.xyz) + r0.yzw;
    r0 = float4(_791.x, _791.y, _791.z, r0.w);
    float4 _800 = r0;
    _800.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _800;
    float3 _806 = r0.xyz * r0.www;
    r0 = float4(_806.x, _806.y, _806.z, r0.w);
    float3 _823 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_823.x, _823.y, _823.z, r0.w);
    float4 _827 = r0;
    _827.w = asfloat(1065353216u);
    r0 = _827;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _855 = gl_FragCoord;
    _855.w = 1.0f / _855.w;
    shader_in[0] = float4(_855.xy.x, _855.xy.y, shader_in[0].z, shader_in[0].w);
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
