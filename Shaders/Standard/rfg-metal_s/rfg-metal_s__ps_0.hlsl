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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
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
    float3 _156 = (cb2_m[2].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    float4 _267 = r0;
    _267.w = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _267;
    float4 _276 = r0;
    _276.w = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _276;
    float4 _291 = r1;
    _291.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _291;
    float4 _296 = r1;
    _296.x = rsqrt(r1.x);
    r1 = _296;
    float3 _302 = r1.xxx * r2.xyz;
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float4 _318 = r1;
    _318.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _318;
    float4 _335 = r0;
    _335.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _335;
    float4 _344 = r0;
    _344.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _344;
    float4 _350 = r0;
    _350.y = max(r1.x, asfloat(0u));
    r0 = _350;
    float4 _356 = r0;
    _356.z = min(r0.y, asfloat(1065353216u));
    r0 = _356;
    float4 _361 = r0;
    _361.y = log2(r0.y);
    r0 = _361;
    float4 _366 = r0;
    _366.z = log2(r0.z);
    r0 = _366;
    float4 _375 = r0;
    _375.z = r0.z * cb2_m[2].z;
    r0 = _375;
    float4 _380 = r0;
    _380.z = exp2(r0.z);
    r0 = _380;
    float4 _387 = r0;
    _387.z = r0.z * r0.w;
    r0 = _387;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _407 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_407.x, _407.y, _407.z, r2.w);
    float3 _414 = r0.zzz * r2.xyz;
    r3 = float4(_414.x, _414.y, _414.z, r3.w);
    float4 _424 = r0;
    _424.z = cb2_m[3].y + asfloat(925353388u);
    r0 = _424;
    float4 _431 = r0;
    _431.y = r0.y * r0.z;
    r0 = _431;
    float4 _436 = r0;
    _436.y = exp2(r0.y);
    r0 = _436;
    float4 _444 = r0;
    _444.y = r0.y * cb2_m[3].x;
    r0 = _444;
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _465 = r4.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_465.x, _465.y, _465.z, r4.w);
    float3 _472 = r0.yyy * r4.xyz;
    r0 = float4(r0.x, _472.x, _472.y, _472.z);
    float2 _485 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r4 = float4(_485.x, _485.y, r4.z, r4.w);
    r4 = tex2D(SPIRV_Cross_Combinedt15s15, r4.xyxx.xy);
    float4 _500 = r2;
    _500.w = max(r4.y, asfloat(1028443341u));
    r2 = _500;
    float3 _506 = r0.yzw * r2.www;
    r0 = float4(r0.x, _506.x, _506.y, _506.z);
    float3 _516 = (r3.xyz * r4.yyy) + r0.yzw;
    r0 = float4(r0.x, _516.x, _516.y, _516.z);
    float3 _529 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _529.x, _529.y, _529.z);
    float4 _538 = r2;
    _538.w = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r2 = _538;
    float4 _547 = r2;
    _547.w = abs(r2.w) + abs(r2.w);
    r2 = _547;
    float4 _557 = r2;
    _557.w = ((-r2.w) * r2.w) + asfloat(1065353216u);
    r2 = _557;
    float4 _563 = r2;
    _563.w = max(r2.w, asfloat(0u));
    r2 = _563;
    float4 _572 = r2;
    _572.w = r2.w * cb0_m[7].y;
    r2 = _572;
    float3 _596 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r3 = float4(_596.x, _596.y, _596.z, r3.w);
    float3 _612 = (r0.xxx * r3.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r3 = float4(_612.x, _612.y, _612.z, r3.w);
    float3 _626 = (-r3.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r4 = float4(r4.x, _626.x, _626.y, _626.z);
    float3 _636 = (r2.www * r4.yzw) + r3.xyz;
    r3 = float4(_636.x, _636.y, _636.z, r3.w);
    float3 _643 = r4.xxx * r3.xyz;
    r3 = float4(_643.x, _643.y, _643.z, r3.w);
    float3 _653 = (r3.xyz * r2.xyz) + r0.yzw;
    r0 = float4(_653.x, _653.y, _653.z, r0.w);
    float4 _662 = r0;
    _662.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _662;
    float3 _668 = r0.xyz * r0.www;
    r0 = float4(_668.x, _668.y, _668.z, r0.w);
    float3 _685 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_685.x, _685.y, _685.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _716 = gl_FragCoord;
    _716.w = 1.0f / _716.w;
    shader_in[0] = float4(_716.xy.x, _716.xy.y, shader_in[0].z, shader_in[0].w);
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
