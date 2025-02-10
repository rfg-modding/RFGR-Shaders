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
    float4 cb2_m[7] : packoffset(c0);
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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
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
    float3 _156 = (cb2_m[6].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _202.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _202;
    float4 _207 = r0;
    _207.w = rsqrt(r0.w);
    r0 = _207;
    float4 _225 = r1;
    _225.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _225;
    float4 _230 = r1;
    _230.x = rsqrt(r1.x);
    r1 = _230;
    float3 _237 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_237.x, _237.y, _237.z, r1.w);
    float3 _248 = (shader_in[3].xyz * r0.www) + r1.xyz;
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
    _324.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
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
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _376 = r1.xyz * r2.xyz;
    r1 = float4(_376.x, _376.y, _376.z, r1.w);
    float3 _389 = r1.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_389.x, _389.y, _389.z, r2.w);
    float3 _405 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.xxx) + r2.xyz;
    r1 = float4(_405.x, _405.y, r1.z, _405.z);
    float3 _421 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r1.zzz) + r1.xyw;
    r1 = float4(_421.x, _421.y, _421.z, r1.w);
    float3 _431 = r1.xyz * cb2_m[6].w.xxx;
    r1 = float4(_431.x, _431.y, _431.z, r1.w);
    float4 _438 = r0;
    _438.y = max(r0.w, asfloat(0u));
    r0 = _438;
    float4 _446 = r0;
    _446.z = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _446;
    float4 _453 = r0;
    _453.z = r0.z * r0.z;
    r0 = _453;
    float4 _460 = r0;
    _460.z = r0.z * r0.z;
    r0 = _460;
    float3 _466 = r0.yyy * r1.xyz;
    r1 = float4(_466.x, _466.y, _466.z, r1.w);
    float2 _478 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(r0.x, _478.x, r0.z, _478.y);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r0.ywyy.xy);
    float4 _493 = r0;
    _493.y = max(r2.y, asfloat(1028443341u));
    r0 = _493;
    float3 _499 = r0.yyy * r1.xyz;
    r1 = float4(_499.x, _499.y, _499.z, r1.w);
    float4 _507 = r0;
    _507.y = r0.z * r0.z;
    r0 = _507;
    float3 _519 = r0.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_519.x, _519.y, _519.z, r3.w);
    float4 _528 = r0;
    _528.y = r0.y * r0.y;
    r0 = _528;
    float3 _543 = (r0.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r0 = float4(r0.x, _543.x, _543.y, _543.z);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _565 = r3.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r3 = float4(_565.x, _565.y, _565.z, r3.w);
    float3 _572 = r0.yzw * r3.xyz;
    r0 = float4(r0.x, _572.x, _572.y, _572.z);
    float3 _582 = (r0.yzw * r2.yyy) + r1.xyz;
    r0 = float4(r0.x, _582.x, _582.y, _582.z);
    float3 _595 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _595.x, _595.y, _595.z);
    float4 _604 = r1;
    _604.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _604;
    float4 _613 = r1;
    _613.x = abs(r1.x) + abs(r1.x);
    r1 = _613;
    float4 _623 = r1;
    _623.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _623;
    float4 _629 = r1;
    _629.x = max(r1.x, asfloat(0u));
    r1 = _629;
    float4 _638 = r1;
    _638.x = r1.x * cb0_m[7].y;
    r1 = _638;
    float3 _662 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _662.x, _662.y, _662.z);
    float3 _678 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _678.x, _678.y, _678.z);
    float3 _692 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(r2.x, _692.x, _692.y, _692.z);
    float3 _702 = (r1.xxx * r2.yzw) + r1.yzw;
    r1 = float4(_702.x, _702.y, _702.z, r1.w);
    float3 _709 = r2.xxx * r1.xyz;
    r1 = float4(_709.x, _709.y, _709.z, r1.w);
    float3 _719 = (r1.xyz * r3.xyz) + r0.yzw;
    r0 = float4(_719.x, _719.y, _719.z, r0.w);
    float4 _728 = r0;
    _728.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _728;
    float3 _734 = r0.xyz * r0.www;
    r0 = float4(_734.x, _734.y, _734.z, r0.w);
    float3 _751 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_751.x, _751.y, _751.z, r0.w);
    float4 _755 = r0;
    _755.w = asfloat(1065353216u);
    r0 = _755;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _785 = gl_FragCoord;
    _785.w = 1.0f / _785.w;
    shader_in[0] = float4(_785.xy.x, _785.xy.y, shader_in[0].z, shader_in[0].w);
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
