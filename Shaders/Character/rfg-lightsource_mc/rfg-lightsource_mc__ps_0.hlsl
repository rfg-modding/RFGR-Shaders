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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
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
    float4 _74 = r0;
    _74.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _74;
    float4 _79 = r0;
    _79.x = rsqrt(r0.x);
    r0 = _79;
    float4 _97 = r0;
    _97.y = mad(shader_in[4].xyz.z, shader_in[4].xyz.z, mad(shader_in[4].xyz.y, shader_in[4].xyz.y, shader_in[4].xyz.x * shader_in[4].xyz.x));
    r0 = _97;
    float4 _102 = r0;
    _102.y = rsqrt(r0.y);
    r0 = _102;
    float3 _109 = r0.yyy * shader_in[4].xyz;
    r0 = float4(r0.x, _109.x, _109.y, _109.z);
    float3 _120 = (shader_in[3].xyz * r0.xxx) + r0.yzw;
    r1 = float4(_120.x, _120.y, _120.z, r1.w);
    float4 _137 = r0;
    _137.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _137;
    float4 _142 = r0;
    _142.x = rsqrt(r0.x);
    r0 = _142;
    float3 _148 = r0.xxx * r1.xyz;
    r1 = float4(_148.x, _148.y, _148.z, r1.w);
    float4 _167 = r0;
    _167.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _167;
    float4 _172 = r0;
    _172.x = rsqrt(r0.x);
    r0 = _172;
    float3 _179 = r0.xxx * shader_in[2].xyz;
    r2 = float4(_179.x, _179.y, _179.z, r2.w);
    float4 _199 = r0;
    _199.x = clamp(mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _199;
    float4 _214 = r0;
    _214.y = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r0 = _214;
    float4 _221 = r0;
    _221.y = max(r0.y, asfloat(0u));
    r0 = _221;
    float4 _226 = r0;
    _226.x = log2(r0.x);
    r0 = _226;
    float4 _237 = r0;
    _237.z = cb2_m[3].y + asfloat(925353388u);
    r0 = _237;
    float4 _244 = r0;
    _244.x = r0.x * r0.z;
    r0 = _244;
    float4 _249 = r0;
    _249.x = exp2(r0.x);
    r0 = _249;
    float4 _258 = r0;
    _258.x = r0.x * cb2_m[2].z;
    r0 = _258;
    float4 _269 = r1;
    _269.x = shader_in[1].x * cb2_m[2].w;
    r1 = _269;
    float4 _278 = r1;
    _278.y = shader_in[1].y * cb2_m[3].x;
    r1 = _278;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r1.xyxx.xy);
    float3 _298 = r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_298.x, _298.y, _298.z, r1.w);
    float3 _305 = r0.xxx * r1.xyz;
    r0 = float4(_305.x, r0.y, _305.y, _305.z);
    float2 _318 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_318.x, _318.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float4 _333 = r1;
    _333.z = max(r1.y, asfloat(1028443341u));
    r1 = _333;
    float3 _339 = r0.xzw * r1.zzz;
    r0 = float4(_339.x, r0.y, _339.y, _339.z);
    float2 _347 = float2(cb2_m[2].x, cb2_m[2].y);
    float2 _350 = asfloat(uint2(0u, 0u));
    bool2 _353 = bool2(_347.x == _350.x, _347.y == _350.y);
    float2 _357 = asfloat(uint2(_353.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _353.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r1 = float4(r1.x, r1.y, _357.x, _357.y);
    uint2 _362 = asuint(r1.zw);
    float2 _365 = asfloat(uint2(1065353216u, 1065353216u));
    float2 _371 = float2(cb2_m[2].x, cb2_m[2].y);
    bool2 _372 = bool2(_362.x != uint2(0u, 0u).x, _362.y != uint2(0u, 0u).y);
    float2 _373 = float2(_372.x ? _365.x : _371.x, _372.y ? _365.y : _371.y);
    r1 = float4(r1.x, r1.y, _373.x, _373.y);
    float2 _381 = r1.zw * shader_in[1].xy;
    r1 = float4(r1.x, r1.y, _381.x, _381.y);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float3 _401 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_401.x, _401.y, _401.z, r3.w);
    float3 _409 = r0.yyy * r3.xyz;
    r4 = float4(_409.x, _409.y, _409.z, r4.w);
    float3 _420 = (r4.xyz * r1.yyy) + r0.xzw;
    r0 = float4(_420.x, _420.y, _420.z, r0.w);
    float4 _429 = r0;
    _429.w = r1.x * shader_in[4].w;
    r0 = _429;
    float3 _441 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_441.x, _441.y, _441.z, r0.w);
    float3 _461 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(_461.x, _461.y, _461.z, r1.w);
    float3 _477 = (r0.www * r1.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(_477.x, _477.y, _477.z, r1.w);
    float3 _487 = (-r1.xyz) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r4 = float4(_487.x, _487.y, _487.z, r4.w);
    float3 _499 = (cb0_m[1].w.xxx * r4.xyz) + r1.xyz;
    r1 = float4(_499.x, _499.y, _499.z, r1.w);
    float3 _509 = (r1.xyz * r3.xyz) + r0.xyz;
    r0 = float4(_509.x, _509.y, _509.z, r0.w);
    float4 _518 = r0;
    _518.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _518;
    float3 _524 = r0.xyz * r0.www;
    r0 = float4(_524.x, _524.y, _524.z, r0.w);
    float3 _541 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r2 = float4(_541.x, _541.y, _541.z, r2.w);
    o0 = r2 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _570 = gl_FragCoord;
    _570.w = 1.0f / _570.w;
    shader_in[0] = float4(_570.xy.x, _570.xy.y, shader_in[0].z, shader_in[0].w);
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
