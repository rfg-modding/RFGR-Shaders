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
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
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
    _68.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _68;
    float4 _78 = r0;
    _78.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _78;
    float4 _88 = r0;
    _88.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _88;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[3].xyxx.xy);
    float3 _118 = r0.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r1 = float4(_118.x, _118.y, _118.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[3].zwzz.xy);
    float4 _138 = r0;
    _138.w = r2.w * cb2_m[7].z;
    r0 = _138;
    float3 _154 = ((-r0.xyz) * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z)) + r2.xyz;
    r0 = float4(_154.x, _154.y, _154.z, r0.w);
    float3 _164 = (r0.www * r0.xyz) + r1.xyz;
    r0 = float4(_164.x, _164.y, _164.z, r0.w);
    float4 _176 = r0;
    _176.w = ((-r2.w) * cb2_m[7].z) + asfloat(1065353216u);
    r0 = _176;
    float4 _193 = r1;
    _193.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _193;
    float4 _198 = r1;
    _198.x = rsqrt(r1.x);
    r1 = _198;
    float3 _205 = r1.xxx * shader_in[1].xyz;
    r1 = float4(_205.x, _205.y, _205.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    float4 _222 = r3;
    _222.y = r2.y + r2.y;
    r3 = _222;
    float3 _234 = (r2.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _234.x, _234.y, _234.z);
    float4 _242 = r2;
    _242.x = r2.w * r2.y;
    r2 = _242;
    float4 _254 = r1;
    _254.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r1 = _254;
    float4 _261 = r1;
    _261.w = (-r1.w) + asfloat(1065353216u);
    r1 = _261;
    float4 _267 = r1;
    _267.w = max(r1.w, asfloat(0u));
    r1 = _267;
    float4 _272 = r3;
    _272.z = sqrt(r1.w);
    r3 = _272;
    float4 _276 = r3;
    _276.x = r2.x;
    r3 = _276;
    float3 _283 = r3.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r2 = float4(_283.x, _283.y, _283.z, r2.w);
    float3 _296 = (cb2_m[7].w.xxx * r2.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r2 = float4(_296.x, _296.y, _296.z, r2.w);
    float4 _312 = r1;
    _312.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _312;
    float4 _317 = r1;
    _317.w = rsqrt(r1.w);
    r1 = _317;
    float3 _323 = r1.www * r2.xyz;
    r2 = float4(_323.x, _323.y, _323.z, r2.w);
    float4 _342 = r1;
    _342.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _342;
    float4 _347 = r1;
    _347.w = rsqrt(r1.w);
    r1 = _347;
    float3 _354 = r1.www * shader_in[2].xyz;
    r3 = float4(_354.x, _354.y, _354.z, r3.w);
    float3 _365 = (shader_in[2].xyz * r1.www) + r1.xyz;
    r4 = float4(_365.x, _365.y, _365.z, r4.w);
    float4 _382 = r1;
    _382.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _382;
    float4 _387 = r1;
    _387.w = rsqrt(r1.w);
    r1 = _387;
    float3 _393 = r1.www * r4.xyz;
    r4 = float4(_393.x, _393.y, _393.z, r4.w);
    float4 _409 = r1;
    _409.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _409;
    float4 _424 = r1;
    _424.y = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    r1 = _424;
    float4 _439 = r1;
    _439.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r1 = _439;
    float4 _448 = r1;
    _448.w = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _448;
    r1 = max(r1, asfloat(uint4(0u, 0u, 0u, 0u)));
    float2 _459 = r1.xy * r1.xx;
    r2 = float4(_459.x, _459.y, r2.z, r2.w);
    float4 _467 = r2;
    _467.x = r2.x * r2.x;
    r2 = _467;
    float4 _474 = r2;
    _474.x = r1.x * r2.x;
    r2 = _474;
    float4 _479 = r2;
    _479.y = log2(r2.y);
    r2 = _479;
    float4 _486 = r2;
    _486.y = r2.y * asfloat(1074580685u);
    r2 = _486;
    float4 _491 = r2;
    _491.y = exp2(r2.y);
    r2 = _491;
    float4 _498 = r1;
    _498.y = (-r1.y) + asfloat(1065353216u);
    r1 = _498;
    float4 _505 = r1;
    _505.y = r1.y * r1.w;
    r1 = _505;
    float4 _512 = r2;
    _512.z = r1.y * r1.y;
    r2 = _512;
    float4 _519 = r1;
    _519.y = r1.y * r2.z;
    r1 = _519;
    float4 _526 = r1;
    _526.y = r1.w * r1.y;
    r1 = _526;
    float4 _536 = r1;
    _536.y = clamp(r1.y * asfloat(1082130432u), 0.0f, 1.0f);
    r1 = _536;
    float3 _548 = r2.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(r2.x, _548.x, _548.y, _548.z);
    float3 _564 = (float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z) * r2.xxx) + r2.yzw;
    r2 = float4(_564.x, _564.y, _564.z, r2.w);
    float3 _580 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.yyy) + r2.xyz;
    r2 = float4(_580.x, _580.y, _580.z, r2.w);
    float4 _588 = r1;
    _588.y = r1.z + asfloat(953267991u);
    r1 = _588;
    float4 _593 = r1;
    _593.y = log2(r1.y);
    r1 = _593;
    float2 _602 = r1.yy * asfloat(uint2(1132593152u, 1109393408u));
    r1 = float4(r1.x, _602.x, _602.y, r1.w);
    float2 _607 = exp2(r1.yz);
    r1 = float4(r1.x, _607.x, _607.y, r1.w);
    float2 _614 = min(r1.yz, asfloat(uint2(1065353216u, 1065353216u)));
    r1 = float4(r1.x, _614.x, _614.y, r1.w);
    float2 _627 = (r1.yz * asfloat(uint2(1067030938u, 1069547520u))) + asfloat(uint2(0u, 3184315597u));
    r3 = float4(_627.x, _627.y, r3.z, r3.w);
    float4 _631 = r3;
    _631.z = asfloat(1065353216u);
    r3 = _631;
    float3 _637 = max(r3.xyz, asfloat(uint3(0u, 0u, 0u)));
    r1 = float4(r1.x, _637.x, _637.y, _637.z);
    float4 _647 = r2;
    _647.w = asfloat((r1.x >= asfloat(981668463u)) ? 4294967295u : 0u);
    r2 = _647;
    float4 _654 = r2;
    _654.w = asfloat(asuint(r2.w) & 1065353216u);
    r2 = _654;
    float3 _660 = r1.yzw * r2.www;
    r1 = float4(r1.x, _660.x, _660.y, _660.z);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].xyxx.xy);
    float3 _675 = r1.xxx * r1.yzw;
    r1 = float4(_675.x, _675.y, _675.z, r1.w);
    float3 _682 = r3.xyz * r1.xyz;
    r1 = float4(_682.x, _682.y, _682.z, r1.w);
    float3 _696 = r1.yyy * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_696.x, _696.y, _696.z, r3.w);
    float3 _712 = (float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z) * r1.xxx) + r3.xyz;
    r1 = float4(_712.x, _712.y, r1.z, _712.z);
    float3 _729 = (float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z) * r1.zzz) + r1.xyw;
    r1 = float4(_729.x, _729.y, _729.z, r1.w);
    float3 _739 = r1.xyz * cb2_m[8].x.xxx;
    r1 = float4(_739.x, _739.y, _739.z, r1.w);
    float3 _746 = r0.www * r1.xyz;
    r1 = float4(_746.x, _746.y, _746.z, r1.w);
    float3 _756 = (r2.xyz * r0.xyz) + r1.xyz;
    r0 = float4(_756.x, _756.y, _756.z, r0.w);
    float3 _769 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_769.x, _769.y, _769.z, o0.w);
    float4 _773 = o0;
    _773.w = asfloat(1065353216u);
    o0 = _773;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
