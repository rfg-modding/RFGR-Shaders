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
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float4 _68 = r0;
    _68.x = shader_in[1].x * cb2_m[1].w;
    r0 = _68;
    float4 _79 = r0;
    _79.y = shader_in[1].y * cb2_m[2].x;
    r0 = _79;
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    float3 _99 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _99.x, _99.y, _99.z);
    float4 _108 = r0;
    _108.y = r0.y + r0.y;
    r0 = _108;
    float4 _115 = r1;
    _115.x = r1.w * r1.y;
    r1 = _115;
    float4 _127 = r0;
    _127.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _127;
    float4 _131 = r0;
    _131.x = r1.x;
    r0 = _131;
    float4 _139 = r0;
    _139.w = (-r0.w) + asfloat(1065353216u);
    r0 = _139;
    float4 _145 = r0;
    _145.w = max(r0.w, asfloat(0u));
    r0 = _145;
    float4 _150 = r0;
    _150.z = sqrt(r0.w);
    r0 = _150;
    float3 _157 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float3 _170 = (cb2_m[1].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_170.x, _170.y, _170.z, r0.w);
    float4 _186 = r0;
    _186.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _186;
    float4 _191 = r0;
    _191.w = rsqrt(r0.w);
    r0 = _191;
    float3 _197 = r0.www * r0.xyz;
    r0 = float4(_197.x, _197.y, _197.z, r0.w);
    float4 _215 = r0;
    _215.w = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _215;
    float4 _224 = r1;
    _224.x = abs(r0.w) + abs(r0.w);
    r1 = _224;
    float4 _236 = r0;
    _236.w = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _236;
    float4 _246 = r1;
    _246.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _246;
    float4 _252 = r1;
    _252.x = max(r1.x, asfloat(0u));
    r1 = _252;
    float4 _261 = r1;
    _261.x = r1.x * cb0_m[7].y;
    r1 = _261;
    float3 _280 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _280.x, _280.y, _280.z);
    float3 _296 = (r0.www * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _296.x, _296.y, _296.z);
    float3 _315 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r1.yzw);
    r2 = float4(_315.x, _315.y, _315.z, r2.w);
    float3 _326 = (r1.xxx * r2.xyz) + r1.yzw;
    r1 = float4(_326.x, _326.y, _326.z, r1.w);
    float3 _335 = (-r1.xyz) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r2 = float4(_335.x, _335.y, _335.z, r2.w);
    float3 _347 = (cb2_m[2].y.xxx * r2.xyz) + r1.xyz;
    r1 = float4(_347.x, _347.y, _347.z, r1.w);
    float2 _355 = float2(cb2_m[1].x, cb2_m[1].y);
    float2 _358 = asfloat(uint2(0u, 0u));
    bool2 _361 = bool2(_355.x == _358.x, _355.y == _358.y);
    float2 _365 = asfloat(uint2(_361.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _361.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r2 = float4(_365.x, _365.y, r2.z, r2.w);
    uint2 _370 = asuint(r2.xy);
    float2 _372 = asfloat(uint2(1065353216u, 1065353216u));
    float2 _378 = float2(cb2_m[1].x, cb2_m[1].y);
    bool2 _379 = bool2(_370.x != uint2(0u, 0u).x, _370.y != uint2(0u, 0u).y);
    float2 _380 = float2(_379.x ? _372.x : _378.x, _379.y ? _372.y : _378.y);
    r2 = float4(_380.x, _380.y, r2.z, r2.w);
    float2 _388 = r2.xy * shader_in[1].xy;
    r2 = float4(_388.x, _388.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r2.xyxx.xy);
    float3 _408 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_408.x, _408.y, _408.z, r3.w);
    float3 _416 = r1.xyz * r3.xyz;
    r1 = float4(_416.x, _416.y, _416.z, r1.w);
    float2 _429 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r4 = float4(_429.x, _429.y, r4.z, r4.w);
    r4 = tex2D(SPIRV_Cross_Combinedt15s15, r4.xyxx.xy);
    float3 _444 = r1.xyz * r4.xxx;
    r1 = float4(_444.x, _444.y, _444.z, r1.w);
    float4 _462 = r0;
    _462.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _462;
    float4 _467 = r0;
    _467.w = rsqrt(r0.w);
    r0 = _467;
    float3 _474 = r0.www * shader_in[2].xyz;
    r4 = float4(_474.x, r4.y, _474.y, _474.z);
    float4 _491 = r0;
    _491.x = clamp(mad(r0.xyz.z, r4.xzw.z, mad(r0.xyz.y, r4.xzw.y, r0.xyz.x * r4.xzw.x)), 0.0f, 1.0f);
    r0 = _491;
    float4 _498 = r0;
    _498.x = r4.y * r0.x;
    r0 = _498;
    float3 _504 = r3.xyz * r0.xxx;
    r0 = float4(_504.x, _504.y, _504.z, r0.w);
    float3 _520 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_520.x, _520.y, _520.z, r0.w);
    float4 _529 = r0;
    _529.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _529;
    float3 _535 = r0.xyz * r0.www;
    r0 = float4(_535.x, _535.y, _535.z, r0.w);
    float3 _553 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r2 = float4(_553.x, _553.y, _553.z, r2.w);
    o0 = r2 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float4 _580 = gl_FragCoord;
    _580.w = 1.0f / _580.w;
    shader_in[0] = float4(_580.xy.x, _580.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
