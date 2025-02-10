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

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 gl_FragCoord;
static float3 v3;
static float4 v4;
static float4 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[6].xyxx.xy);
    float3 _79 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _79.x, _79.y, _79.z);
    float4 _88 = r0;
    _88.y = r0.y + r0.y;
    r0 = _88;
    float4 _95 = r1;
    _95.x = r1.w * r1.y;
    r1 = _95;
    float4 _107 = r0;
    _107.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _107;
    float4 _111 = r0;
    _111.x = r1.x;
    r0 = _111;
    float4 _119 = r0;
    _119.w = (-r0.w) + asfloat(1065353216u);
    r0 = _119;
    float4 _126 = r0;
    _126.w = max(r0.w, asfloat(0u));
    r0 = _126;
    float4 _131 = r0;
    _131.z = sqrt(r0.w);
    r0 = _131;
    float3 _138 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_138.x, _138.y, _138.z, r0.w);
    float3 _154 = (cb2_m[2].y.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _199.w = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
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
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].xyxx.xy);
    float3 _333 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_333.x, _333.y, _333.z, r2.w);
    float3 _340 = r1.xyz * r2.xyz;
    r1 = float4(_340.x, _340.y, _340.z, r1.w);
    float2 _352 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_352.x, _352.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float3 _367 = r1.xyz * r3.xxx;
    r1 = float4(_367.x, _367.y, _367.z, r1.w);
    float4 _386 = r0;
    _386.w = mad(shader_in[5].xyz.z, shader_in[5].xyz.z, mad(shader_in[5].xyz.y, shader_in[5].xyz.y, shader_in[5].xyz.x * shader_in[5].xyz.x));
    r0 = _386;
    float4 _391 = r0;
    _391.w = rsqrt(r0.w);
    r0 = _391;
    float3 _398 = r0.www * shader_in[5].xyz;
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
    float4 _454 = r0;
    _454.w = shader_in[6].z / cb2_m[2].x;
    r0 = _454;
    float4 _462 = r0;
    _462.w = clamp((-r0.w) + asfloat(1065353216u), 0.0f, 1.0f);
    r0 = _462;
    float4 _469 = r0;
    _469.w = r0.w * r0.w;
    r0 = _469;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[6].xyxx.xy);
    float3 _483 = r0.www * r1.xyz;
    r1 = float4(_483.x, _483.y, _483.z, r1.w);
    float3 _500 = (r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + r0.xyz;
    r0 = float4(_500.x, _500.y, _500.z, r0.w);
    float3 _508 = r0.xyz * shader_in[3].xyz;
    r0 = float4(_508.x, _508.y, _508.z, r0.w);
    float4 _517 = r0;
    _517.w = (-shader_in[5].w) + asfloat(1065353216u);
    r0 = _517;
    float3 _523 = r0.xyz * r0.www;
    r0 = float4(_523.x, _523.y, _523.z, r0.w);
    float3 _540 = (shader_in[5].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_540.x, _540.y, _540.z, r0.w);
    float4 _546 = r0;
    _546.w = shader_in[4].w;
    r0 = _546;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    float4 _574 = gl_FragCoord;
    _574.w = 1.0f / _574.w;
    shader_in[0] = float4(_574.xy.x, _574.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
