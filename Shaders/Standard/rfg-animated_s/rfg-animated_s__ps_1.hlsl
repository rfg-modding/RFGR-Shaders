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
    float4 cb2_m[7] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float2 _72 = shader_in[5].xy * float2(cb2_m[5].x, cb2_m[5].y);
    r0 = float4(_72.x, _72.y, r0.z, r0.w);
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
    float4 _140 = r0;
    _140.w = max(r0.w, asfloat(0u));
    r0 = _140;
    float4 _145 = r0;
    _145.z = sqrt(r0.w);
    r0 = _145;
    float3 _152 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_152.x, _152.y, _152.z, r0.w);
    float3 _165 = (cb2_m[4].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _211.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _211;
    float4 _216 = r1;
    _216.x = rsqrt(r0.w);
    r1 = _216;
    float4 _221 = r0;
    _221.w = sqrt(r0.w);
    r0 = _221;
    float4 _238 = r0;
    _238.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _238;
    float3 _250 = (shader_in[2].xyz * r1.xxx) + shader_in[3].xyz;
    r1 = float4(r1.x, _250.x, _250.y, _250.z);
    float3 _258 = r1.xxx * shader_in[2].xyz;
    r2 = float4(_258.x, _258.y, _258.z, r2.w);
    float4 _275 = r1;
    _275.x = mad(r1.yzw.z, r1.yzw.z, mad(r1.yzw.y, r1.yzw.y, r1.yzw.x * r1.yzw.x));
    r1 = _275;
    float4 _280 = r1;
    _280.x = rsqrt(r1.x);
    r1 = _280;
    float3 _286 = r1.xxx * r1.yzw;
    r1 = float4(_286.x, _286.y, _286.z, r1.w);
    float4 _303 = r1;
    _303.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _303;
    float4 _310 = r1;
    _310.x = r1.x + asfloat(925353388u);
    r1 = _310;
    float4 _315 = r1;
    _315.x = log2(r1.x);
    r1 = _315;
    float4 _325 = r1;
    _325.x = r1.x * cb2_m[6].z;
    r1 = _325;
    float4 _330 = r1;
    _330.x = exp2(r1.x);
    r1 = _330;
    float4 _345 = r1;
    _345.y = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r1 = _345;
    float3 _350 = -shader_in[3].xyz;
    float4 _362 = r0;
    _362.x = mad(_350.z, r0.xyz.z, mad(_350.y, r0.xyz.y, _350.x * r0.xyz.x));
    r0 = _362;
    float4 _368 = r0;
    _368.x = r0.x + asfloat(1065353216u);
    r0 = _368;
    float4 _374 = r0;
    _374.x = log2(abs(r0.x));
    r0 = _374;
    float4 _381 = r0;
    _381.x = r0.x * asfloat(1083179008u);
    r0 = _381;
    float4 _386 = r0;
    _386.x = exp2(r0.x);
    r0 = _386;
    float4 _392 = r0;
    _392.x = r0.x + asfloat(925353388u);
    r0 = _392;
    float4 _398 = r0;
    _398.x = min(r0.x, asfloat(1065353216u));
    r0 = _398;
    float4 _406 = r0;
    _406.x = r0.x * cb2_m[5].w;
    r0 = _406;
    float3 _410 = -r2.xyz;
    float4 _423 = r0;
    _423.y = mad(_410.z, shader_in[4].xyz.z, mad(_410.y, shader_in[4].xyz.y, _410.x * shader_in[4].xyz.x));
    r0 = _423;
    float4 _431 = r0;
    _431.y = min(r0.y, cb1_m[2].x);
    r0 = _431;
    float4 _440 = r0;
    _440.y = r0.y + (-cb1_m[2].y);
    r0 = _440;
    float4 _446 = r0;
    _446.y = max(r0.y, asfloat(0u));
    r0 = _446;
    float4 _454 = r0;
    _454.y = r0.y * cb1_m[2].z;
    r0 = _454;
    float4 _464 = r0;
    _464.z = asfloat((asfloat(0u) >= r1.y) ? 4294967295u : 0u);
    r0 = _464;
    float4 _469 = r1;
    _469.y = clamp(r1.y, 0.0f, 1.0f);
    r1 = _469;
    float4 _478 = r0;
    _478.z = (asuint(r0.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _478;
    float4 _485 = r0;
    _485.z = r0.z * r1.x;
    r0 = _485;
    float4 _494 = r1;
    _494.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _494;
    float4 _504 = r0;
    _504.y = (asuint(r1.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _504;
    float4 _511 = r0;
    _511.y = r0.y * r0.w;
    r0 = _511;
    float4 _518 = r0;
    _518.w = max(r0.y, asfloat(1028443341u));
    r0 = _518;
    float4 _525 = r0;
    _525.y = r0.y * r1.y;
    r0 = _525;
    float4 _532 = r0;
    _532.z = r0.w * r0.z;
    r0 = _532;
    float2 _543 = shader_in[5].xy * float2(cb2_m[6].x, cb2_m[6].y);
    r1 = float4(_543.x, _543.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt4s4, r1.xyxx.xy);
    float3 _563 = r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_563.x, _563.y, _563.z, r1.w);
    float3 _570 = r0.xxx * r1.xyz;
    r1 = float4(_570.x, _570.y, _570.z, r1.w);
    float3 _577 = r0.zzz * r1.xyz;
    r0 = float4(_577.x, r0.y, _577.y, _577.z);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _598 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_598.x, _598.y, _598.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float4 _616 = r1;
    _616.w = r3.w * cb2_m[2].z;
    r1 = _616;
    float3 _632 = ((-r1.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r1 = float4(_632.x, _632.y, _632.z, r1.w);
    float3 _642 = (r1.www * r1.xyz) + r2.xyz;
    r1 = float4(_642.x, _642.y, _642.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    float3 _658 = (-r1.xyz) + r2.xyz;
    r2 = float4(_658.x, _658.y, _658.z, r2.w);
    float4 _667 = r1;
    _667.w = r2.w * cb2_m[3].w;
    r1 = _667;
    float3 _676 = (r1.www * r2.xyz) + r1.xyz;
    r1 = float4(_676.x, _676.y, _676.z, r1.w);
    float3 _686 = (r0.yyy * r1.xyz) + r0.xzw;
    r0 = float4(_686.x, _686.y, _686.z, r0.w);
    float3 _699 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_699.x, _699.y, _699.z, r0.w);
    float4 _708 = r0;
    _708.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _708;
    float3 _714 = r0.xyz * r0.www;
    r0 = float4(_714.x, _714.y, _714.z, r0.w);
    float4 _718 = r0;
    _718.w = asfloat(1065353216u);
    r0 = _718;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
