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
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float4 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float2 _71 = shader_in[2].xy * float2(cb2_m[3].y, cb2_m[3].z);
    r0 = float4(_71.x, _71.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt3s3, r0.xyxx.xy);
    float3 _94 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _94.x, _94.y, _94.z);
    float4 _103 = r0;
    _103.y = r0.y + r0.y;
    r0 = _103;
    float4 _110 = r1;
    _110.x = r1.w * r1.y;
    r1 = _110;
    float4 _122 = r0;
    _122.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _122;
    float4 _126 = r0;
    _126.x = r1.x;
    r0 = _126;
    float4 _134 = r0;
    _134.w = (-r0.w) + asfloat(1065353216u);
    r0 = _134;
    float4 _141 = r0;
    _141.w = max(r0.w, asfloat(0u));
    r0 = _141;
    float4 _146 = r0;
    _146.z = sqrt(r0.w);
    r0 = _146;
    float3 _153 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_153.x, _153.y, _153.z, r0.w);
    float3 _165 = (cb2_m[3].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_165.x, _165.y, _165.z, r0.w);
    float4 _181 = r0;
    _181.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _181;
    float4 _186 = r0;
    _186.w = rsqrt(r0.w);
    r0 = _186;
    float3 _192 = r0.www * r0.xyz;
    r0 = float4(_192.x, _192.y, _192.z, r0.w);
    float4 _211 = r0;
    _211.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _211;
    float4 _216 = r0;
    _216.w = rsqrt(r0.w);
    r0 = _216;
    float3 _223 = r0.www * shader_in[1].xyz;
    r1 = float4(_223.x, _223.y, _223.z, r1.w);
    float4 _239 = r0;
    _239.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _239;
    float4 _248 = r0;
    _248.y = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _248;
    float4 _255 = r0;
    _255.x = clamp(r0.x, 0.0f, 1.0f);
    r0 = _255;
    float4 _263 = r0;
    _263.z = (r0.y * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _263;
    float4 _272 = r0;
    _272.z = abs(r0.z) + abs(r0.z);
    r0 = _272;
    float4 _282 = r0;
    _282.z = ((-r0.z) * r0.z) + asfloat(1065353216u);
    r0 = _282;
    float4 _288 = r0;
    _288.z = max(r0.z, asfloat(0u));
    r0 = _288;
    float4 _297 = r0;
    _297.z = r0.z * cb0_m[7].y;
    r0 = _297;
    float3 _321 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(_321.x, _321.y, _321.z, r1.w);
    float3 _337 = (r0.yyy * r1.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(_337.x, _337.y, _337.z, r1.w);
    float3 _351 = (-r1.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(_351.x, _351.y, _351.z, r2.w);
    float3 _362 = (r0.zzz * r2.xyz) + r1.xyz;
    r0 = float4(r0.x, _362.x, _362.y, _362.z);
    float3 _371 = (-r0.yzw) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r1 = float4(_371.x, _371.y, _371.z, r1.w);
    float3 _384 = (cb2_m[3].w.xxx * r1.xyz) + r0.yzw;
    r0 = float4(r0.x, _384.x, _384.y, _384.z);
    float2 _397 = shader_in[2].zw + float2(cb2_m[4].x, cb2_m[4].y);
    r1 = float4(_397.x, _397.y, r1.z, r1.w);
    float2 _406 = r1.xy + asfloat(uint2(3204448256u, 3204448256u));
    r1 = float4(_406.x, _406.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, r1.xyxx.xy);
    float2 _422 = trunc(float2(cb2_m[2].y, cb2_m[2].x));
    r2 = float4(_422.x, _422.y, r2.z, r2.w);
    float4 _429 = r2;
    _429.z = trunc(cb2_m[1].w);
    r2 = _429;
    float4 _444 = r1;
    _444.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _444;
    float4 _450 = r1;
    _450.x = min(r1.x, asfloat(1065353216u));
    r1 = _450;
    float2 _461 = shader_in[2].xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(r1.x, _461.x, _461.y, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.yzyy.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, r1.yzyy.xy);
    float3 _493 = (r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + (-r3.xyz);
    r1 = float4(r1.x, _493.x, _493.y, _493.z);
    float3 _503 = (r1.xxx * r1.yzw) + r3.xyz;
    r1 = float4(r1.x, _503.x, _503.y, _503.z);
    float3 _510 = r0.xxx * r1.yzw;
    r2 = float4(_510.x, _510.y, _510.z, r2.w);
    float2 _523 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_523.x, _523.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float3 _537 = r2.xyz * r3.yyy;
    r2 = float4(_537.x, _537.y, _537.z, r2.w);
    float3 _550 = r2.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_550.x, _550.y, _550.z, r2.w);
    float3 _560 = (r0.yzw * r1.yzw) + r2.xyz;
    r0 = float4(_560.x, _560.y, _560.z, r0.w);
    float4 _569 = r0;
    _569.w = (-shader_in[1].w) + asfloat(1065353216u);
    r0 = _569;
    float3 _575 = r0.xyz * r0.www;
    r0 = float4(_575.x, _575.y, _575.z, r0.w);
    float3 _592 = (shader_in[1].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_592.x, _592.y, _592.z, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[2].zwzz.xy);
    float3 _611 = trunc(float3(cb2_m[1].z, cb2_m[1].y, cb2_m[1].x));
    r1 = float4(r1.x, _611.x, _611.y, _611.z);
    float4 _627 = r1;
    _627.y = mad(r2.xyz.z, r1.yzw.z, mad(r2.xyz.y, r1.yzw.y, r2.xyz.x * r1.yzw.x));
    r1 = _627;
    float4 _633 = r1;
    _633.y = min(r1.y, asfloat(1065353216u));
    r1 = _633;
    float4 _640 = r1;
    _640.x = r1.y + r1.x;
    r1 = _640;
    float4 _646 = r0;
    _646.w = min(r1.x, asfloat(1065353216u));
    r0 = _646;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = v2;
    float4 _666 = gl_FragCoord;
    _666.w = 1.0f / _666.w;
    shader_in[0] = float4(_666.xy.x, _666.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
