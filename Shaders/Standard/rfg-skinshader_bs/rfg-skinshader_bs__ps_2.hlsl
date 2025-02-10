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
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float2 v1;
static float3 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _77 = r1;
    _77.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _77;
    float4 _87 = r1;
    _87.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _87;
    float4 _97 = r1;
    _97.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _97;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _119 = r2;
    _119.y = r1.y + r1.y;
    r2 = _119;
    float3 _131 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _131.x, _131.y, _131.z);
    float4 _139 = r1;
    _139.x = r1.w * r1.y;
    r1 = _139;
    float4 _151 = r1;
    _151.y = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r1 = _151;
    float4 _159 = r1;
    _159.y = (-r1.y) + asfloat(1065353216u);
    r1 = _159;
    float4 _165 = r1;
    _165.y = max(r1.y, asfloat(0u));
    r1 = _165;
    float4 _170 = r2;
    _170.z = sqrt(r1.y);
    r2 = _170;
    float4 _174 = r2;
    _174.x = r1.x;
    r2 = _174;
    float3 _181 = r2.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_181.x, _181.y, _181.z, r1.w);
    float3 _194 = (cb2_m[4].x.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_194.x, _194.y, _194.z, r1.w);
    float4 _210 = r1;
    _210.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _210;
    float4 _215 = r1;
    _215.w = rsqrt(r1.w);
    r1 = _215;
    float3 _221 = r1.www * r1.xyz;
    r1 = float4(_221.x, _221.y, _221.z, r1.w);
    float4 _240 = r1;
    _240.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _240;
    float4 _245 = r1;
    _245.w = rsqrt(r1.w);
    r1 = _245;
    float3 _252 = r1.www * shader_in[2].xyz;
    r2 = float4(_252.x, _252.y, _252.z, r2.w);
    float4 _268 = r1;
    _268.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _268;
    float4 _274 = r1;
    _274.w = max(r1.w, asfloat(0u));
    r1 = _274;
    float4 _284 = r2;
    _284.w = (cb2_m[4].z * r0.w) + asfloat(1065353216u);
    r2 = _284;
    float4 _296 = r3;
    _296.x = (cb2_m[4].z * r0.w) + r1.w;
    r3 = _296;
    float4 _302 = r2;
    _302.w = asfloat(1065353216u) / r2.w;
    r2 = _302;
    float4 _312 = r2;
    _312.w = clamp(r2.w * r3.x, 0.0f, 1.0f);
    r2 = _312;
    float4 _322 = r3;
    _322.x = (r2.w * asfloat(3221225472u)) + asfloat(1077936128u);
    r3 = _322;
    float4 _329 = r2;
    _329.w = r2.w * r2.w;
    r2 = _329;
    float4 _336 = r2;
    _336.w = r2.w * r3.x;
    r2 = _336;
    float3 _350 = float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z) * cb2_m[4].y.xxx;
    r3 = float4(_350.x, _350.y, _350.z, r3.w);
    float3 _375 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * cb2_m[4].y.xxx) + float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r4 = float4(_375.x, _375.y, _375.z, r4.w);
    float3 _386 = (r1.www * r4.xyz) + r3.xyz;
    r3 = float4(_386.x, _386.y, _386.z, r3.w);
    float3 _400 = r3.xyz + (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z));
    r3 = float4(_400.x, _400.y, _400.z, r3.w);
    float3 _416 = (r2.www * r3.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_416.x, _416.y, _416.z, r3.w);
    float3 _423 = r2.www * r3.xyz;
    r3 = float4(_423.x, _423.y, _423.z, r3.w);
    float3 _430 = r0.xyz * r3.xyz;
    r4 = float4(_430.x, _430.y, _430.z, r4.w);
    float3 _437 = r3.xyz + r3.xyz;
    r5 = float4(_437.x, _437.y, _437.z, r5.w);
    float3 _448 = ((-r3.xyz) * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_448.x, _448.y, _448.z, r3.w);
    float3 _458 = (r0.xyz * r3.xyz) + r5.xyz;
    r0 = float4(_458.x, _458.y, _458.z, r0.w);
    float3 _465 = r0.xyz * r4.xyz;
    r0 = float4(_465.x, _465.y, _465.z, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _487 = r3.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r3 = float4(_487.x, _487.y, _487.z, r3.w);
    float4 _505 = r2;
    _505.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r2 = _505;
    float4 _510 = r2;
    _510.w = rsqrt(r2.w);
    r2 = _510;
    float3 _520 = (shader_in[3].xyz * r2.www) + r2.xyz;
    r2 = float4(_520.x, _520.y, _520.z, r2.w);
    float4 _536 = r2;
    _536.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r2 = _536;
    float4 _541 = r2;
    _541.w = rsqrt(r2.w);
    r2 = _541;
    float3 _547 = r2.www * r2.xyz;
    r2 = float4(_547.x, _547.y, _547.z, r2.w);
    float4 _563 = r1;
    _563.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _563;
    float4 _569 = r1;
    _569.x = max(r1.x, asfloat(0u));
    r1 = _569;
    float4 _574 = r1;
    _574.x = log2(r1.x);
    r1 = _574;
    float4 _583 = r1;
    _583.x = r1.x * cb2_m[5].x;
    r1 = _583;
    float4 _588 = r1;
    _588.x = exp2(r1.x);
    r1 = _588;
    float4 _597 = r1;
    _597.x = r1.x * cb2_m[4].w;
    r1 = _597;
    float3 _609 = r3.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_609.x, _609.y, _609.z, r2.w);
    float3 _616 = r1.xxx * r2.xyz;
    r1 = float4(_616.x, _616.y, _616.z, r1.w);
    float3 _623 = r1.www * r1.xyz;
    r1 = float4(_623.x, _623.y, _623.z, r1.w);
    float3 _639 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    o0 = float4(_639.x, _639.y, _639.z, o0.w);
    float4 _644 = o0;
    _644.w = r0.w;
    o0 = _644;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
