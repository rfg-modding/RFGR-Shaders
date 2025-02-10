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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float3 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float4 _72 = r0;
    _72.x = shader_in[1].x * cb2_m[2].w;
    r0 = _72;
    float4 _83 = r0;
    _83.y = shader_in[1].y * cb2_m[3].x;
    r0 = _83;
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    float3 _104 = r0.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_104.x, _104.y, _104.z, r0.w);
    float4 _122 = r0;
    _122.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _122;
    float4 _127 = r0;
    _127.w = rsqrt(r0.w);
    r0 = _127;
    float4 _145 = r1;
    _145.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _145;
    float4 _150 = r1;
    _150.y = rsqrt(r1.x);
    r1 = _150;
    float4 _155 = r1;
    _155.x = sqrt(r1.x);
    r1 = _155;
    float4 _171 = r1;
    _171.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _171;
    float3 _178 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _178.x, _178.y, _178.z);
    float3 _189 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_189.x, _189.y, _189.z, r2.w);
    float4 _206 = r0;
    _206.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _206;
    float4 _211 = r0;
    _211.w = rsqrt(r0.w);
    r0 = _211;
    float3 _217 = r0.www * r2.xyz;
    r2 = float4(_217.x, _217.y, _217.z, r2.w);
    float4 _236 = r0;
    _236.w = mad(shader_in[4].xyz.z, shader_in[4].xyz.z, mad(shader_in[4].xyz.y, shader_in[4].xyz.y, shader_in[4].xyz.x * shader_in[4].xyz.x));
    r0 = _236;
    float4 _241 = r0;
    _241.w = rsqrt(r0.w);
    r0 = _241;
    float3 _248 = r0.www * shader_in[4].xyz;
    r3 = float4(_248.x, _248.y, _248.z, r3.w);
    float4 _266 = r0;
    _266.w = clamp(mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r0 = _266;
    float4 _281 = r2;
    _281.x = mad(r3.xyz.z, r1.yzw.z, mad(r3.xyz.y, r1.yzw.y, r3.xyz.x * r1.yzw.x));
    r2 = _281;
    float3 _285 = -r1.yzw;
    float4 _299 = r1;
    _299.y = mad(_285.z, shader_in[5].xyz.z, mad(_285.y, shader_in[5].xyz.y, _285.x * shader_in[5].xyz.x));
    r1 = _299;
    float4 _307 = r1;
    _307.y = min(r1.y, cb1_m[2].x);
    r1 = _307;
    float4 _316 = r1;
    _316.y = r1.y + (-cb1_m[2].y);
    r1 = _316;
    float4 _322 = r1;
    _322.y = max(r1.y, asfloat(0u));
    r1 = _322;
    float4 _330 = r1;
    _330.y = r1.y * cb1_m[2].z;
    r1 = _330;
    float4 _336 = r1;
    _336.z = max(r2.x, asfloat(0u));
    r1 = _336;
    float4 _341 = r0;
    _341.w = log2(r0.w);
    r0 = _341;
    float4 _349 = r1;
    _349.w = cb2_m[3].y + asfloat(925353388u);
    r1 = _349;
    float4 _356 = r0;
    _356.w = r0.w * r1.w;
    r0 = _356;
    float4 _361 = r0;
    _361.w = exp2(r0.w);
    r0 = _361;
    float4 _369 = r0;
    _369.w = r0.w * cb2_m[2].z;
    r0 = _369;
    float3 _375 = r0.www * r0.xyz;
    r0 = float4(_375.x, _375.y, _375.z, r0.w);
    float4 _387 = r0;
    _387.w = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _387;
    float4 _398 = r0;
    _398.w = (asuint(r0.w) != 0u) ? r1.y : asfloat(1065353216u);
    r0 = _398;
    float4 _405 = r0;
    _405.w = r0.w * r1.x;
    r0 = _405;
    float3 _411 = r0.www * r0.xyz;
    r0 = float4(_411.x, _411.y, _411.z, r0.w);
    float2 _424 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_424.x, _424.y, r1.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float4 _439 = r1;
    _439.x = max(r2.y, asfloat(1028443341u));
    r1 = _439;
    float3 _445 = r0.xyz * r1.xxx;
    r0 = float4(_445.x, _445.y, _445.z, r0.w);
    float2 _453 = float2(cb2_m[2].x, cb2_m[2].y);
    float2 _456 = asfloat(uint2(0u, 0u));
    bool2 _458 = bool2(_453.x == _456.x, _453.y == _456.y);
    float2 _461 = asfloat(uint2(_458.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _458.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r1 = float4(_461.x, _461.y, r1.z, r1.w);
    uint2 _466 = asuint(r1.xy);
    float2 _468 = asfloat(uint2(1065353216u, 1065353216u));
    float2 _474 = float2(cb2_m[2].x, cb2_m[2].y);
    bool2 _475 = bool2(_466.x != uint2(0u, 0u).x, _466.y != uint2(0u, 0u).y);
    float2 _476 = float2(_475.x ? _468.x : _474.x, _475.y ? _468.y : _474.y);
    r1 = float4(_476.x, _476.y, r1.z, r1.w);
    float2 _484 = r1.xy * shader_in[1].xy;
    r1 = float4(_484.x, _484.y, r1.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    float3 _504 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_504.x, _504.y, r1.z, _504.z);
    float3 _511 = r0.www * r1.xyw;
    r1 = float4(_511.x, _511.y, r1.z, _511.z);
    float3 _518 = r1.zzz * r1.xyw;
    r1 = float4(_518.x, _518.y, _518.z, r1.w);
    float3 _528 = (r1.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_528.x, _528.y, _528.z, r0.w);
    float3 _541 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_541.x, _541.y, _541.z, r0.w);
    float4 _550 = r0;
    _550.w = (-shader_in[5].w) + asfloat(1065353216u);
    r0 = _550;
    float3 _556 = r0.xyz * r0.www;
    r3 = float4(_556.x, _556.y, _556.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    float4 _591 = gl_FragCoord;
    _591.w = 1.0f / _591.w;
    shader_in[0] = float4(_591.xy.x, _591.xy.y, shader_in[0].z, shader_in[0].w);
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
