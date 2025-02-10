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

uniform sampler2D SPIRV_Cross_Combinedt3s3;
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
    float2 _71 = shader_in[5].xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_71.x, _71.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt3s3, r0.xyxx.xy);
    float3 _93 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _93.x, _93.y, _93.z);
    float4 _102 = r0;
    _102.y = r0.y + r0.y;
    r0 = _102;
    float4 _109 = r1;
    _109.x = r1.w * r1.y;
    r1 = _109;
    float4 _121 = r0;
    _121.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _121;
    float4 _125 = r0;
    _125.x = r1.x;
    r0 = _125;
    float4 _133 = r0;
    _133.w = (-r0.w) + asfloat(1065353216u);
    r0 = _133;
    float4 _140 = r0;
    _140.w = max(r0.w, asfloat(0u));
    r0 = _140;
    float4 _145 = r0;
    _145.z = sqrt(r0.w);
    r0 = _145;
    float3 _152 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_152.x, _152.y, _152.z, r0.w);
    float3 _164 = (cb2_m[2].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_164.x, _164.y, _164.z, r0.w);
    float4 _180 = r0;
    _180.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _180;
    float4 _185 = r0;
    _185.w = rsqrt(r0.w);
    r0 = _185;
    float3 _191 = r0.www * r0.xyz;
    r0 = float4(_191.x, _191.y, _191.z, r0.w);
    float4 _209 = r0;
    _209.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _209;
    float4 _214 = r1;
    _214.x = rsqrt(r0.w);
    r1 = _214;
    float4 _219 = r0;
    _219.w = sqrt(r0.w);
    r0 = _219;
    float4 _236 = r0;
    _236.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _236;
    float3 _248 = (shader_in[2].xyz * r1.xxx) + shader_in[3].xyz;
    r1 = float4(r1.x, _248.x, _248.y, _248.z);
    float3 _256 = r1.xxx * shader_in[2].xyz;
    r2 = float4(_256.x, _256.y, _256.z, r2.w);
    float4 _273 = r1;
    _273.x = mad(r1.yzw.z, r1.yzw.z, mad(r1.yzw.y, r1.yzw.y, r1.yzw.x * r1.yzw.x));
    r1 = _273;
    float4 _278 = r1;
    _278.x = rsqrt(r1.x);
    r1 = _278;
    float3 _284 = r1.xxx * r1.yzw;
    r1 = float4(_284.x, _284.y, _284.z, r1.w);
    float4 _301 = r1;
    _301.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _301;
    float4 _308 = r1;
    _308.x = r1.x + asfloat(925353388u);
    r1 = _308;
    float4 _313 = r1;
    _313.x = log2(r1.x);
    r1 = _313;
    float4 _321 = r1;
    _321.x = r1.x * cb2_m[3].y;
    r1 = _321;
    float4 _326 = r1;
    _326.x = exp2(r1.x);
    r1 = _326;
    float4 _341 = r1;
    _341.y = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r1 = _341;
    float3 _346 = -shader_in[3].xyz;
    float4 _358 = r0;
    _358.x = mad(_346.z, r0.xyz.z, mad(_346.y, r0.xyz.y, _346.x * r0.xyz.x));
    r0 = _358;
    float4 _364 = r0;
    _364.x = r0.x + asfloat(1065353216u);
    r0 = _364;
    float4 _370 = r0;
    _370.x = log2(abs(r0.x));
    r0 = _370;
    float4 _377 = r0;
    _377.x = r0.x * asfloat(1083179008u);
    r0 = _377;
    float4 _382 = r0;
    _382.x = exp2(r0.x);
    r0 = _382;
    float4 _388 = r0;
    _388.x = r0.x + asfloat(925353388u);
    r0 = _388;
    float4 _394 = r0;
    _394.x = min(r0.x, asfloat(1065353216u));
    r0 = _394;
    float4 _402 = r0;
    _402.x = r0.x * cb2_m[3].x;
    r0 = _402;
    float3 _406 = -r2.xyz;
    float4 _420 = r0;
    _420.y = mad(_406.z, shader_in[4].xyz.z, mad(_406.y, shader_in[4].xyz.y, _406.x * shader_in[4].xyz.x));
    r0 = _420;
    float4 _428 = r0;
    _428.y = min(r0.y, cb1_m[2].x);
    r0 = _428;
    float4 _437 = r0;
    _437.y = r0.y + (-cb1_m[2].y);
    r0 = _437;
    float4 _443 = r0;
    _443.y = max(r0.y, asfloat(0u));
    r0 = _443;
    float4 _451 = r0;
    _451.y = r0.y * cb1_m[2].z;
    r0 = _451;
    float4 _461 = r0;
    _461.z = asfloat((asfloat(0u) >= r1.y) ? 4294967295u : 0u);
    r0 = _461;
    float4 _466 = r1;
    _466.y = clamp(r1.y, 0.0f, 1.0f);
    r1 = _466;
    float4 _475 = r0;
    _475.z = (asuint(r0.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _475;
    float4 _482 = r0;
    _482.z = r0.z * r1.x;
    r0 = _482;
    float4 _491 = r1;
    _491.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _491;
    float4 _501 = r0;
    _501.y = (asuint(r1.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _501;
    float4 _508 = r0;
    _508.y = r0.y * r0.w;
    r0 = _508;
    float4 _515 = r0;
    _515.w = max(r0.y, asfloat(1028443341u));
    r0 = _515;
    float4 _522 = r0;
    _522.y = r0.y * r1.y;
    r0 = _522;
    float4 _529 = r0;
    _529.z = r0.w * r0.z;
    r0 = _529;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float4 _544 = r0;
    _544.x = r0.x * r1.w;
    r0 = _544;
    float4 _551 = r0;
    _551.x = r0.x * r0.z;
    r0 = _551;
    float3 _563 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_563.x, _563.y, _563.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _589 = ((-r1.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r1 = float4(_589.x, _589.y, _589.z, r1.w);
    float4 _598 = r0;
    _598.z = r3.w * cb2_m[1].x;
    r0 = _598;
    float3 _607 = (r0.zzz * r1.xyz) + r2.xyz;
    r1 = float4(_607.x, _607.y, _607.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    float3 _623 = (-r1.xyz) + r2.xyz;
    r2 = float4(_623.x, _623.y, _623.z, r2.w);
    float4 _632 = r0;
    _632.z = r2.w * cb2_m[1].w;
    r0 = _632;
    float3 _641 = (r0.zzz * r2.xyz) + r1.xyz;
    r1 = float4(_641.x, _641.y, _641.z, r1.w);
    float3 _651 = (r0.yyy * r1.xyz) + r0.xxx;
    r0 = float4(_651.x, _651.y, _651.z, r0.w);
    float3 _664 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_664.x, _664.y, _664.z, r0.w);
    float4 _673 = r0;
    _673.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _673;
    float3 _679 = r0.xyz * r0.www;
    r0 = float4(_679.x, _679.y, _679.z, r0.w);
    float4 _683 = r0;
    _683.w = asfloat(1065353216u);
    r0 = _683;
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
