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
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
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
static float4 r5;

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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    float4 _113 = r1;
    _113.y = r0.y + r0.y;
    r1 = _113;
    float3 _125 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _125.x, _125.y, _125.z);
    float4 _133 = r0;
    _133.x = r0.w * r0.y;
    r0 = _133;
    float4 _145 = r0;
    _145.y = mad(r0.xz.y, r0.xz.y, r0.xz.x * r0.xz.x);
    r0 = _145;
    float4 _152 = r0;
    _152.y = (-r0.y) + asfloat(1065353216u);
    r0 = _152;
    float4 _158 = r0;
    _158.y = max(r0.y, asfloat(0u));
    r0 = _158;
    float4 _163 = r1;
    _163.z = sqrt(r0.y);
    r1 = _163;
    float4 _167 = r1;
    _167.x = r0.x;
    r1 = _167;
    float3 _174 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_174.x, _174.y, _174.z, r0.w);
    float3 _187 = (cb2_m[5].y.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_187.x, _187.y, _187.z, r0.w);
    float4 _203 = r0;
    _203.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _203;
    float4 _208 = r0;
    _208.w = rsqrt(r0.w);
    r0 = _208;
    float3 _214 = r0.www * r0.xyz;
    r0 = float4(_214.x, _214.y, _214.z, r0.w);
    float4 _232 = r0;
    _232.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _232;
    float4 _237 = r0;
    _237.w = rsqrt(r0.w);
    r0 = _237;
    float3 _244 = r0.www * shader_in[1].xyz;
    r1 = float4(_244.x, _244.y, _244.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[3].zwzz.xy);
    float4 _263 = r1;
    _263.w = r2.w * cb2_m[4].y;
    r1 = _263;
    float3 _276 = r2.xyz + (-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z));
    r2 = float4(_276.x, _276.y, _276.z, r2.w);
    float3 _292 = (r1.www * r2.xyz) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_292.x, _292.y, _292.z, r2.w);
    float4 _304 = r1;
    _304.w = ((-r2.w) * cb2_m[4].y) + asfloat(1065353216u);
    r1 = _304;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[3].xyxx.xy);
    float4 _321 = r2;
    _321.w = r3.w * cb2_m[5].x;
    r2 = _321;
    float3 _328 = (-r2.xyz) + r3.xyz;
    r3 = float4(_328.x, _328.y, _328.z, r3.w);
    float3 _338 = (r2.www * r3.xyz) + r2.xyz;
    r2 = float4(_338.x, _338.y, _338.z, r2.w);
    float4 _350 = r2;
    _350.w = ((-r3.w) * cb2_m[5].x) + asfloat(1065353216u);
    r2 = _350;
    float4 _368 = r1;
    _368.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _368;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].xyxx.xy);
    float3 _389 = r3.xyz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_389.x, _389.y, _389.z, r3.w);
    float4 _407 = r1;
    _407.y = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _407;
    float4 _412 = r1;
    _412.y = rsqrt(r1.y);
    r1 = _412;
    float3 _419 = r1.yyy * shader_in[2].xyz;
    r4 = float4(_419.x, _419.y, _419.z, r4.w);
    float3 _431 = (shader_in[1].xyz * r0.www) + r4.xyz;
    r5 = float4(_431.x, _431.y, _431.z, r5.w);
    float4 _448 = r0;
    _448.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _448;
    float4 _453 = r0;
    _453.w = rsqrt(r0.w);
    r0 = _453;
    float3 _459 = r0.www * r5.xyz;
    r5 = float4(_459.x, _459.y, _459.z, r5.w);
    float4 _475 = r0;
    _475.w = mad(r0.xyz.z, r5.xyz.z, mad(r0.xyz.y, r5.xyz.y, r0.xyz.x * r5.xyz.x));
    r0 = _475;
    float4 _490 = r0;
    _490.x = mad(r0.xyz.z, r4.xyz.z, mad(r0.xyz.y, r4.xyz.y, r0.xyz.x * r4.xyz.x));
    r0 = _490;
    float2 _497 = max(r0.xw, asfloat(uint2(0u, 0u)));
    r0 = float4(_497.x, r0.y, r0.z, _497.y);
    float4 _505 = r0;
    _505.x = (-r0.x) + asfloat(1065353216u);
    r0 = _505;
    float4 _515 = r0;
    _515.y = clamp(r2.w + (-cb2_m[3].x), 0.0f, 1.0f);
    r0 = _515;
    float4 _523 = r0;
    _523.z = (-cb2_m[3].x) + asfloat(1065353216u);
    r0 = _523;
    float4 _530 = r0;
    _530.y = r0.y / r0.z;
    r0 = _530;
    float4 _539 = r0;
    _539.z = cb2_m[5].w + asfloat(925353388u);
    r0 = _539;
    float4 _544 = r0;
    _544.w = log2(r0.w);
    r0 = _544;
    float4 _551 = r0;
    _551.z = r0.w * r0.z;
    r0 = _551;
    float4 _556 = r0;
    _556.z = exp2(r0.z);
    r0 = _556;
    float4 _564 = r0;
    _564.z = r0.z * cb2_m[5].z;
    r0 = _564;
    float4 _571 = r0;
    _571.z = r1.w * r0.z;
    r0 = _571;
    float4 _578 = r0;
    _578.z = r2.w * r0.z;
    r0 = _578;
    float4 _585 = r1;
    _585.y = cb2_m[4].x + asfloat(925353388u);
    r1 = _585;
    float4 _592 = r0;
    _592.w = r0.w * r1.y;
    r0 = _592;
    float4 _597 = r0;
    _597.w = exp2(r0.w);
    r0 = _597;
    float4 _605 = r0;
    _605.w = r0.w * cb2_m[3].w;
    r0 = _605;
    float4 _612 = r1;
    _612.y = cb2_m[3].z + asfloat(925353388u);
    r1 = _612;
    float4 _617 = r0;
    _617.x = log2(r0.x);
    r0 = _617;
    float4 _624 = r0;
    _624.x = r0.x * r1.y;
    r0 = _624;
    float4 _629 = r0;
    _629.x = exp2(r0.x);
    r0 = _629;
    float4 _637 = r0;
    _637.x = r0.x * cb2_m[3].y;
    r0 = _637;
    float2 _643 = r0.yy * r0.xw;
    r0 = float4(_643.x, r0.y, r0.z, _643.y);
    float3 _656 = r0.www * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(r1.x, _656.x, _656.y, _656.z);
    float3 _666 = (r3.xyz * r0.zzz) + r1.yzw;
    r0 = float4(r0.x, _666.x, _666.y, _666.z);
    float3 _682 = (float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z) * r0.xxx) + r0.yzw;
    r0 = float4(_682.x, _682.y, _682.z, r0.w);
    float3 _689 = r1.xxx * r0.xyz;
    r0 = float4(_689.x, _689.y, _689.z, r0.w);
    float3 _699 = (r2.xyz * r1.xxx) + r0.xyz;
    r0 = float4(_699.x, _699.y, _699.z, r0.w);
    float3 _712 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_712.x, _712.y, _712.z, o0.w);
    float4 _716 = o0;
    _716.w = asfloat(1065353216u);
    o0 = _716;
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
