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
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[7];
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
    float3 _154 = (cb2_m[1].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_154.x, _154.y, _154.z, r0.w);
    float4 _170 = r0;
    _170.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _170;
    float4 _175 = r0;
    _175.w = rsqrt(r0.w);
    r0 = _175;
    float3 _181 = r0.www * r0.xyz;
    r0 = float4(_181.x, _181.y, _181.z, r0.w);
    float4 _199 = r0;
    _199.w = mad(r0.xyz.z, shader_in[6].xyz.z, mad(r0.xyz.y, shader_in[6].xyz.y, r0.xyz.x * shader_in[6].xyz.x));
    r0 = _199;
    float4 _208 = r1;
    _208.x = abs(r0.w) + abs(r0.w);
    r1 = _208;
    float4 _220 = r0;
    _220.w = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _220;
    float4 _230 = r1;
    _230.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _230;
    float4 _236 = r1;
    _236.x = max(r1.x, asfloat(0u));
    r1 = _236;
    float4 _245 = r1;
    _245.x = r1.x * cb0_m[7].y;
    r1 = _245;
    float3 _266 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _266.x, _266.y, _266.z);
    float3 _282 = (r0.www * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _282.x, _282.y, _282.z);
    float3 _301 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r1.yzw);
    r2 = float4(_301.x, _301.y, _301.z, r2.w);
    float3 _312 = (r1.xxx * r2.xyz) + r1.yzw;
    r1 = float4(_312.x, _312.y, _312.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _333 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_333.x, _333.y, _333.z, r2.w);
    float3 _340 = r1.xyz * r2.xyz;
    r1 = float4(_340.x, _340.y, _340.z, r1.w);
    float2 _353 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_353.x, _353.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float3 _368 = r1.xyz * r3.xxx;
    r1 = float4(_368.x, _368.y, _368.z, r1.w);
    float4 _386 = r0;
    _386.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _386;
    float4 _391 = r0;
    _391.w = rsqrt(r0.w);
    r0 = _391;
    float3 _398 = r0.www * shader_in[2].xyz;
    r3 = float4(_398.x, r3.y, _398.y, _398.z);
    float4 _415 = r0;
    _415.x = clamp(mad(r0.xyz.z, r3.xzw.z, mad(r0.xyz.y, r3.xzw.y, r0.xyz.x * r3.xzw.x)), 0.0f, 1.0f);
    r0 = _415;
    float4 _422 = r0;
    _422.x = r3.y * r0.x;
    r0 = _422;
    float3 _428 = r2.xyz * r0.xxx;
    r0 = float4(_428.x, _428.y, _428.z, r0.w);
    float3 _444 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_444.x, _444.y, _444.z, r0.w);
    float4 _462 = r1;
    _462.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _462;
    float4 _467 = r1;
    _467.x = rsqrt(r1.x);
    r1 = _467;
    float4 _475 = r1;
    _475.x = r1.x * shader_in[3].z;
    r1 = _475;
    float4 _489 = r1;
    _489.x = clamp((r1.x * shader_in[4].x) + shader_in[4].y, 0.0f, 1.0f);
    r1 = _489;
    float4 _504 = r1;
    _504.y = clamp((abs(shader_in[3].w) * shader_in[4].z) + shader_in[4].w, 0.0f, 1.0f);
    r1 = _504;
    float4 _511 = r1;
    _511.y = (-r1.y) + asfloat(1065353216u);
    r1 = _511;
    float4 _518 = r1;
    _518.x = r1.y * r1.x;
    r1 = _518;
    float4 _525 = r0;
    _525.w = r1.x * r2.w;
    r0 = _525;
    r0 *= shader_in[5];
    float4 _538 = r1;
    _538.x = (-shader_in[6].w) + asfloat(1065353216u);
    r1 = _538;
    float3 _544 = r0.xyz * r1.xxx;
    r1 = float4(_544.x, _544.y, _544.z, r1.w);
    float3 _561 = (shader_in[6].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_561.x, _561.y, _561.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    float4 _594 = gl_FragCoord;
    _594.w = 1.0f / _594.w;
    shader_in[0] = float4(_594.xy.x, _594.xy.y, shader_in[0].z, shader_in[0].w);
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
    v6 = stage_input.v6;
    frag_main();
}
