cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

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
    float4 _71 = r0;
    _71.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _71;
    float4 _81 = r0;
    _81.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _81;
    float4 _91 = r0;
    _91.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _91;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float2 _110 = shader_in[4].xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_110.x, _110.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt3s3, r0.xyxx.xy);
    float4 _127 = r1;
    _127.y = r0.y + r0.y;
    r1 = _127;
    float3 _139 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _139.x, _139.y, _139.z);
    float4 _147 = r0;
    _147.x = r0.w * r0.y;
    r0 = _147;
    float4 _159 = r0;
    _159.y = mad(r0.xz.y, r0.xz.y, r0.xz.x * r0.xz.x);
    r0 = _159;
    float4 _166 = r0;
    _166.y = (-r0.y) + asfloat(1065353216u);
    r0 = _166;
    float4 _172 = r0;
    _172.y = max(r0.y, asfloat(0u));
    r0 = _172;
    float4 _177 = r1;
    _177.z = sqrt(r0.y);
    r1 = _177;
    float4 _181 = r1;
    _181.x = r0.x;
    r1 = _181;
    float3 _188 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float3 _200 = (cb2_m[2].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_200.x, _200.y, _200.z, r0.w);
    float4 _216 = r0;
    _216.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _216;
    float4 _221 = r0;
    _221.w = rsqrt(r0.w);
    r0 = _221;
    float3 _227 = r0.www * r0.xyz;
    r0 = float4(_227.x, _227.y, _227.z, r0.w);
    float4 _245 = r0;
    _245.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _245;
    float4 _250 = r0;
    _250.w = rsqrt(r0.w);
    r0 = _250;
    float3 _257 = r0.www * shader_in[2].xyz;
    r1 = float4(_257.x, _257.y, _257.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _279 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_279.x, _279.y, _279.z, r3.w);
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].zwzz.xy);
    float4 _298 = r0;
    _298.w = r4.w * cb2_m[1].x;
    r0 = _298;
    float3 _314 = ((-r2.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r4.xyz;
    r2 = float4(_314.x, _314.y, _314.z, r2.w);
    float3 _324 = (r0.www * r2.xyz) + r3.xyz;
    r2 = float4(_324.x, _324.y, _324.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _342 = r0;
    _342.w = r3.w * cb2_m[1].w;
    r0 = _342;
    float3 _349 = (-r2.xyz) + r3.xyz;
    r3 = float4(_349.x, _349.y, _349.z, r3.w);
    float3 _359 = (r0.www * r3.xyz) + r2.xyz;
    r2 = float4(_359.x, _359.y, _359.z, r2.w);
    float4 _378 = r0;
    _378.w = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _378;
    float4 _396 = r1;
    _396.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _396;
    float4 _401 = r1;
    _401.w = rsqrt(r1.w);
    r1 = _401;
    float3 _411 = (shader_in[3].xyz * r1.www) + r1.xyz;
    r1 = float4(_411.x, _411.y, _411.z, r1.w);
    float4 _427 = r1;
    _427.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _427;
    float4 _432 = r1;
    _432.w = rsqrt(r1.w);
    r1 = _432;
    float3 _438 = r1.www * r1.xyz;
    r1 = float4(_438.x, _438.y, _438.z, r1.w);
    float4 _455 = r0;
    _455.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _455;
    float4 _463 = r0;
    _463.y = cb2_m[3].y + asfloat(925353388u);
    r0 = _463;
    float4 _468 = r0;
    _468.x = log2(r0.x);
    r0 = _468;
    float4 _475 = r0;
    _475.x = r0.x * r0.y;
    r0 = _475;
    float4 _480 = r0;
    _480.x = exp2(r0.x);
    r0 = _480;
    float4 _488 = r0;
    _488.x = r0.x * cb2_m[3].x;
    r0 = _488;
    float4 _495 = r0;
    _495.x = r0.x * r2.w;
    r0 = _495;
    float3 _504 = (r2.xyz * r0.www) + r0.xxx;
    r0 = float4(_504.x, _504.y, _504.z, r0.w);
    float3 _517 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_517.x, _517.y, _517.z, o0.w);
    float4 _521 = o0;
    _521.w = asfloat(1065353216u);
    o0 = _521;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
