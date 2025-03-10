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
static float4 r5;
static float4 r6;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
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
    float3 _155 = (cb2_m[7].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float4 _171 = r0;
    _171.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _171;
    float4 _176 = r0;
    _176.w = rsqrt(r0.w);
    r0 = _176;
    float3 _182 = r0.www * r0.xyz;
    r0 = float4(_182.x, _182.y, _182.z, r0.w);
    float4 _201 = r0;
    _201.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _201;
    float4 _206 = r0;
    _206.w = rsqrt(r0.w);
    r0 = _206;
    float3 _213 = r0.www * shader_in[3].xyz;
    r1 = float4(_213.x, _213.y, _213.z, r1.w);
    float4 _229 = r1;
    _229.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _229;
    float4 _235 = r1;
    _235.x = max(r1.x, asfloat(0u));
    r1 = _235;
    float4 _241 = r1;
    _241.y = min(r1.x, asfloat(1065353216u));
    r1 = _241;
    float4 _248 = r1;
    _248.x = (-r1.x) + asfloat(1065353216u);
    r1 = _248;
    float4 _266 = r1;
    _266.z = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _266;
    float4 _271 = r1;
    _271.z = rsqrt(r1.z);
    r1 = _271;
    float3 _278 = r1.zzz * shader_in[2].xyz;
    r2 = float4(_278.x, _278.y, _278.z, r2.w);
    float4 _295 = r1;
    _295.z = mad(r2.xyz.z, r0.xyz.z, mad(r2.xyz.y, r0.xyz.y, r2.xyz.x * r0.xyz.x));
    r1 = _295;
    float3 _305 = (shader_in[3].xyz * r0.www) + r2.xyz;
    r2 = float4(_305.x, _305.y, _305.z, r2.w);
    float4 _313 = r0;
    _313.w = clamp(r1.z, 0.0f, 1.0f);
    r0 = _313;
    float4 _320 = r0;
    _320.w = r1.y * r0.w;
    r0 = _320;
    float4 _325 = r0;
    _325.w = log2(r0.w);
    r0 = _325;
    float4 _332 = r0;
    _332.w = r0.w * asfloat(1074580685u);
    r0 = _332;
    float4 _337 = r0;
    _337.w = exp2(r0.w);
    r0 = _337;
    float3 _349 = r0.www * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_349.x, _349.y, _349.z, r3.w);
    float3 _367 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_367.x, _367.y, _367.z, r4.w);
    float2 _381 = (r1.zz * asfloat(uint2(1056964608u, 1056964608u))) + asfloat(uint2(1056964608u, 3196059648u));
    r1 = float4(r1.x, _381.x, r1.z, _381.y);
    float4 _388 = r0;
    _388.w = max(r1.z, asfloat(0u));
    r0 = _388;
    float4 _399 = r0;
    _399.w = asfloat((asfloat(964689920u) < r0.w) ? 4294967295u : 0u);
    r0 = _399;
    float4 _406 = r0;
    _406.w = asfloat(asuint(r0.w) & 1065353216u);
    r0 = _406;
    float4 _414 = r1;
    _414.z = clamp(r1.w * asfloat(1082130432u), 0.0f, 1.0f);
    r1 = _414;
    float4 _422 = r1;
    _422.x = (-r1.x) + r1.y;
    r1 = _422;
    float4 _428 = r1;
    _428.x = r1.x + asfloat(3212836864u);
    r1 = _428;
    float4 _439 = r1;
    _439.x = clamp(((-r1.x) * asfloat(3207244459u)) + asfloat(1065353216u), 0.0f, 1.0f);
    r1 = _439;
    float4 _444 = r1;
    _444.x = log2(r1.x);
    r1 = _444;
    float4 _450 = r1;
    _450.x = r1.x * asfloat(1074580685u);
    r1 = _450;
    float4 _455 = r1;
    _455.x = exp2(r1.x);
    r1 = _455;
    float4 _460 = r1;
    _460.y = log2(r1.z);
    r1 = _460;
    float4 _466 = r1;
    _466.y = r1.y * asfloat(1074580685u);
    r1 = _466;
    float4 _471 = r1;
    _471.y = exp2(r1.y);
    r1 = _471;
    float3 _483 = r1.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(r1.x, _483.x, _483.y, _483.z);
    float3 _493 = (r1.yzw * r4.xyz) + r3.xyz;
    r1 = float4(r1.x, _493.x, _493.y, _493.z);
    float3 _506 = r1.xxx * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_506.x, _506.y, _506.z, r3.w);
    float3 _522 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r1.xxx) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_522.x, _522.y, _522.z, r4.w);
    float3 _532 = (r1.yzw * r4.xyz) + r3.xyz;
    r1 = float4(_532.x, _532.y, _532.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _554 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r4 = float4(_554.x, _554.y, _554.z, r4.w);
    float3 _561 = r1.xyz * r4.xyz;
    r1 = float4(_561.x, _561.y, _561.z, r1.w);
    float4 _577 = r1;
    _577.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _577;
    float4 _582 = r1;
    _582.w = rsqrt(r1.w);
    r1 = _582;
    float3 _588 = r1.www * r2.xyz;
    r2 = float4(_588.x, _588.y, _588.z, r2.w);
    float4 _604 = r1;
    _604.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r1 = _604;
    float4 _621 = r0;
    _621.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _621;
    float4 _630 = r0;
    _630.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _630;
    float4 _636 = r0;
    _636.y = max(r1.w, asfloat(0u));
    r0 = _636;
    float4 _644 = r0;
    _644.y = (-r0.y) + asfloat(1062333317u);
    r0 = _644;
    float4 _652 = r0;
    _652.y = clamp(r0.y * asfloat(3236205129u), 0.0f, 1.0f);
    r0 = _652;
    float4 _659 = r0;
    _659.y = r0.w * r0.y;
    r0 = _659;
    float4 _664 = r0;
    _664.y = log2(r0.y);
    r0 = _664;
    float4 _670 = r0;
    _670.y = r0.y * asfloat(1074580685u);
    r0 = _670;
    float4 _675 = r0;
    _675.y = exp2(r0.y);
    r0 = _675;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _689 = r0.yyy * r2.xyz;
    r0 = float4(r0.x, _689.x, _689.y, _689.z);
    float3 _702 = r0.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_702.x, _702.y, _702.z, r2.w);
    float3 _715 = r0.zzz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r5 = float4(_715.x, _715.y, _715.z, r5.w);
    float3 _732 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r6 = float4(_732.x, _732.y, _732.z, r6.w);
    float3 _743 = (r2.xyz * r6.xyz) + r5.xyz;
    r2 = float4(_743.x, _743.y, _743.z, r2.w);
    float3 _757 = r0.www * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r5 = float4(_757.x, _757.y, _757.z, r5.w);
    float3 _773 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _773.x, _773.y, _773.z);
    float3 _783 = (r2.xyz * r0.yzw) + r5.xyz;
    r0 = float4(r0.x, _783.x, _783.y, _783.z);
    float3 _793 = r0.yzw * cb2_m[7].w.xxx;
    r0 = float4(r0.x, _793.x, _793.y, _793.z);
    float2 _805 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_805.x, _805.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _820 = r1;
    _820.w = max(r2.y, asfloat(1028443341u));
    r1 = _820;
    float3 _826 = r0.yzw * r1.www;
    r0 = float4(r0.x, _826.x, _826.y, _826.z);
    float3 _836 = (r1.xyz * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _836.x, _836.y, _836.z);
    float3 _849 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _849.x, _849.y, _849.z);
    float4 _858 = r1;
    _858.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _858;
    float4 _867 = r1;
    _867.x = abs(r1.x) + abs(r1.x);
    r1 = _867;
    float4 _877 = r1;
    _877.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _877;
    float4 _883 = r1;
    _883.x = max(r1.x, asfloat(0u));
    r1 = _883;
    float4 _891 = r1;
    _891.x = r1.x * cb0_m[7].y;
    r1 = _891;
    float3 _915 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _915.x, _915.y, _915.z);
    float3 _931 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _931.x, _931.y, _931.z);
    float3 _945 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(r2.x, _945.x, _945.y, _945.z);
    float3 _955 = (r1.xxx * r2.yzw) + r1.yzw;
    r1 = float4(_955.x, _955.y, _955.z, r1.w);
    float3 _962 = r2.xxx * r1.xyz;
    r1 = float4(_962.x, _962.y, _962.z, r1.w);
    float3 _972 = (r1.xyz * r4.xyz) + r0.yzw;
    r0 = float4(_972.x, _972.y, _972.z, r0.w);
    float4 _981 = r0;
    _981.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _981;
    float3 _987 = r0.xyz * r0.www;
    r0 = float4(_987.x, _987.y, _987.z, r0.w);
    float3 _1004 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_1004.x, _1004.y, _1004.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _1035 = gl_FragCoord;
    _1035.w = 1.0f / _1035.w;
    shader_in[0] = float4(_1035.xy.x, _1035.xy.y, shader_in[0].z, shader_in[0].w);
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
