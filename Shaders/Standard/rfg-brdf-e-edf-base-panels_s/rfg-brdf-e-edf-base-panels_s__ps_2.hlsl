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
    float4 cb2_m[8] : packoffset(c0);
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
    float3 _118 = r0.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r1 = float4(_118.x, _118.y, _118.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[3].zwzz.xy);
    float4 _138 = r0;
    _138.w = r2.w * cb2_m[6].z;
    r0 = _138;
    float3 _154 = ((-r0.xyz) * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) + r2.xyz;
    r0 = float4(_154.x, _154.y, _154.z, r0.w);
    float3 _164 = (r0.www * r0.xyz) + r1.xyz;
    r0 = float4(_164.x, _164.y, _164.z, r0.w);
    float4 _176 = r0;
    _176.w = ((-r2.w) * cb2_m[6].z) + asfloat(1065353216u);
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
    float3 _296 = (cb2_m[6].w.xxx * r2.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    float3 _357 = (shader_in[2].xyz * r1.www) + r1.xyz;
    r3 = float4(_357.x, _357.y, _357.z, r3.w);
    float4 _373 = r1;
    _373.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _373;
    float4 _378 = r1;
    _378.w = rsqrt(r1.w);
    r1 = _378;
    float3 _384 = r1.www * r3.xyz;
    r3 = float4(_384.x, _384.y, _384.z, r3.w);
    float4 _400 = r1;
    _400.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _400;
    float4 _415 = r1;
    _415.y = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    r1 = _415;
    float4 _424 = r1;
    _424.z = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _424;
    float2 _431 = max(r1.xy, asfloat(uint2(0u, 0u)));
    r1 = float4(_431.x, _431.y, r1.z, r1.w);
    float4 _439 = r1;
    _439.z = r1.z * r1.z;
    r1 = _439;
    float4 _446 = r1;
    _446.z = r1.z * r1.z;
    r1 = _446;
    float4 _453 = r1;
    _453.w = r1.z * r1.z;
    r1 = _453;
    float4 _460 = r1;
    _460.w = r1.w * r1.w;
    r1 = _460;
    float3 _472 = r1.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_472.x, _472.y, _472.z, r2.w);
    float3 _488 = (r1.www * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xyz;
    r2 = float4(_488.x, _488.y, _488.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].xyxx.xy);
    float4 _502 = r1;
    _502.y = log2(r1.y);
    r1 = _502;
    float3 _511 = r1.yyy * asfloat(uint3(1115684864u, 1107296256u, 1098907648u));
    r1 = float4(r1.x, _511.x, _511.y, _511.z);
    float3 _516 = exp2(r1.yzw);
    r1 = float4(r1.x, _516.x, _516.y, _516.z);
    float3 _523 = r3.xyz * r1.yzw;
    r1 = float4(r1.x, _523.x, _523.y, _523.z);
    float3 _535 = clamp(r1.yzw + r1.yzw, 0.0f.xxx, 1.0f.xxx);
    r1 = float4(r1.x, _535.x, _535.y, _535.z);
    float3 _548 = r1.zzz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r3 = float4(_548.x, _548.y, _548.z, r3.w);
    float3 _564 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.yyy) + r3.xyz;
    r3 = float4(_564.x, _564.y, _564.z, r3.w);
    float3 _581 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r1.www) + r3.xyz;
    r1 = float4(r1.x, _581.x, _581.y, _581.z);
    float3 _591 = r1.yzw * cb2_m[7].x.xxx;
    r1 = float4(r1.x, _591.x, _591.y, _591.z);
    float3 _598 = r1.xxx * r1.yzw;
    r1 = float4(_598.x, _598.y, _598.z, r1.w);
    float3 _605 = r0.www * r1.xyz;
    r1 = float4(_605.x, _605.y, _605.z, r1.w);
    float3 _615 = (r2.xyz * r0.xyz) + r1.xyz;
    r0 = float4(_615.x, _615.y, _615.z, r0.w);
    float3 _628 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_628.x, _628.y, _628.z, o0.w);
    float4 _632 = o0;
    _632.w = asfloat(1065353216u);
    o0 = _632;
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
