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
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float2 _69 = shader_in[4].xy * float2(cb2_m[3].x, cb2_m[3].y);
    r0 = float4(_69.x, _69.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt2s2, r0.xyxx.xy);
    float3 _91 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _91.x, _91.y, _91.z);
    float4 _100 = r0;
    _100.y = r0.y + r0.y;
    r0 = _100;
    float4 _107 = r1;
    _107.x = r1.w * r1.y;
    r1 = _107;
    float4 _119 = r0;
    _119.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _119;
    float4 _123 = r0;
    _123.x = r1.x;
    r0 = _123;
    float4 _131 = r0;
    _131.w = (-r0.w) + asfloat(1065353216u);
    r0 = _131;
    float4 _137 = r0;
    _137.w = max(r0.w, asfloat(0u));
    r0 = _137;
    float4 _142 = r0;
    _142.z = sqrt(r0.w);
    r0 = _142;
    float3 _149 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_149.x, _149.y, _149.z, r0.w);
    float3 _162 = (cb2_m[2].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_162.x, _162.y, _162.z, r0.w);
    float4 _178 = r0;
    _178.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _178;
    float4 _183 = r0;
    _183.w = rsqrt(r0.w);
    r0 = _183;
    float3 _189 = r0.www * r0.xyz;
    r0 = float4(_189.x, _189.y, _189.z, r0.w);
    float4 _208 = r0;
    _208.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _208;
    float4 _213 = r1;
    _213.x = rsqrt(r0.w);
    r1 = _213;
    float4 _218 = r0;
    _218.w = sqrt(r0.w);
    r0 = _218;
    float4 _234 = r0;
    _234.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _234;
    float3 _245 = (shader_in[1].xyz * r1.xxx) + shader_in[2].xyz;
    r1 = float4(r1.x, _245.x, _245.y, _245.z);
    float3 _253 = r1.xxx * shader_in[1].xyz;
    r2 = float4(_253.x, _253.y, _253.z, r2.w);
    float4 _270 = r1;
    _270.x = mad(r1.yzw.z, r1.yzw.z, mad(r1.yzw.y, r1.yzw.y, r1.yzw.x * r1.yzw.x));
    r1 = _270;
    float4 _275 = r1;
    _275.x = rsqrt(r1.x);
    r1 = _275;
    float3 _281 = r1.xxx * r1.yzw;
    r1 = float4(_281.x, _281.y, _281.z, r1.w);
    float4 _298 = r1;
    _298.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _298;
    float4 _305 = r1;
    _305.x = r1.x + asfloat(925353388u);
    r1 = _305;
    float4 _310 = r1;
    _310.x = log2(r1.x);
    r1 = _310;
    float4 _319 = r1;
    _319.x = r1.x * cb2_m[4].z;
    r1 = _319;
    float4 _324 = r1;
    _324.x = exp2(r1.x);
    r1 = _324;
    float4 _339 = r1;
    _339.y = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r1 = _339;
    float3 _344 = -shader_in[2].xyz;
    float4 _356 = r0;
    _356.x = mad(_344.z, r0.xyz.z, mad(_344.y, r0.xyz.y, _344.x * r0.xyz.x));
    r0 = _356;
    float4 _362 = r0;
    _362.x = r0.x + asfloat(1065353216u);
    r0 = _362;
    float4 _368 = r0;
    _368.x = log2(abs(r0.x));
    r0 = _368;
    float4 _375 = r0;
    _375.x = r0.x * asfloat(1083179008u);
    r0 = _375;
    float4 _380 = r0;
    _380.x = exp2(r0.x);
    r0 = _380;
    float4 _386 = r0;
    _386.x = r0.x + asfloat(925353388u);
    r0 = _386;
    float4 _392 = r0;
    _392.x = min(r0.x, asfloat(1065353216u));
    r0 = _392;
    float4 _400 = r0;
    _400.x = r0.x * cb2_m[3].w;
    r0 = _400;
    float3 _404 = -r2.xyz;
    float4 _417 = r0;
    _417.y = mad(_404.z, shader_in[3].xyz.z, mad(_404.y, shader_in[3].xyz.y, _404.x * shader_in[3].xyz.x));
    r0 = _417;
    float4 _425 = r0;
    _425.y = min(r0.y, cb1_m[2].x);
    r0 = _425;
    float4 _434 = r0;
    _434.y = r0.y + (-cb1_m[2].y);
    r0 = _434;
    float4 _440 = r0;
    _440.y = max(r0.y, asfloat(0u));
    r0 = _440;
    float4 _448 = r0;
    _448.y = r0.y * cb1_m[2].z;
    r0 = _448;
    float4 _458 = r0;
    _458.z = asfloat((asfloat(0u) >= r1.y) ? 4294967295u : 0u);
    r0 = _458;
    float4 _463 = r1;
    _463.y = clamp(r1.y, 0.0f, 1.0f);
    r1 = _463;
    float4 _472 = r0;
    _472.z = (asuint(r0.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _472;
    float4 _479 = r0;
    _479.z = r0.z * r1.x;
    r0 = _479;
    float4 _488 = r1;
    _488.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _488;
    float4 _498 = r0;
    _498.y = (asuint(r1.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _498;
    float4 _505 = r0;
    _505.y = r0.y * r0.w;
    r0 = _505;
    float4 _512 = r0;
    _512.w = max(r0.y, asfloat(1028443341u));
    r0 = _512;
    float4 _519 = r0;
    _519.y = r0.y * r1.y;
    r0 = _519;
    float4 _526 = r0;
    _526.z = r0.w * r0.z;
    r0 = _526;
    float2 _537 = shader_in[4].xy * float2(cb2_m[4].x, cb2_m[4].y);
    r1 = float4(_537.x, _537.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, r1.xyxx.xy);
    float3 _557 = r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_557.x, _557.y, _557.z, r1.w);
    float3 _564 = r0.xxx * r1.xyz;
    r1 = float4(_564.x, _564.y, _564.z, r1.w);
    float3 _571 = r0.zzz * r1.xyz;
    r0 = float4(_571.x, r0.y, _571.y, _571.z);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _592 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_592.x, _592.y, _592.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].zwzz.xy);
    float4 _610 = r1;
    _610.w = r3.w * cb2_m[2].x;
    r1 = _610;
    float3 _626 = ((-r1.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r1 = float4(_626.x, _626.y, _626.z, r1.w);
    float3 _636 = (r1.www * r1.xyz) + r2.xyz;
    r1 = float4(_636.x, _636.y, _636.z, r1.w);
    float3 _646 = (r0.yyy * r1.xyz) + r0.xzw;
    r0 = float4(_646.x, _646.y, _646.z, r0.w);
    float3 _659 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_659.x, _659.y, _659.z, r0.w);
    float4 _668 = r0;
    _668.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _668;
    float3 _674 = r0.xyz * r0.www;
    r0 = float4(_674.x, _674.y, _674.z, r0.w);
    float4 _678 = r0;
    _678.w = asfloat(1065353216u);
    r0 = _678;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
