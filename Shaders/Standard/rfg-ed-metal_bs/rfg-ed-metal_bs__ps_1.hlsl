cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

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

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
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
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _86 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _86.x, _86.y, _86.z);
    float4 _95 = r0;
    _95.y = r0.y + r0.y;
    r0 = _95;
    float4 _102 = r1;
    _102.x = r1.w * r1.y;
    r1 = _102;
    float4 _114 = r0;
    _114.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _114;
    float4 _118 = r0;
    _118.x = r1.x;
    r0 = _118;
    float4 _126 = r0;
    _126.w = (-r0.w) + asfloat(1065353216u);
    r0 = _126;
    float4 _133 = r0;
    _133.w = max(r0.w, asfloat(0u));
    r0 = _133;
    float4 _138 = r0;
    _138.z = sqrt(r0.w);
    r0 = _138;
    float3 _145 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_145.x, _145.y, _145.z, r0.w);
    float3 _161 = (cb2_m[4].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_161.x, _161.y, _161.z, r0.w);
    float4 _177 = r0;
    _177.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _177;
    float4 _182 = r0;
    _182.w = rsqrt(r0.w);
    r0 = _182;
    float3 _188 = r0.www * r0.xyz;
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float4 _207 = r0;
    _207.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _207;
    float4 _212 = r0;
    _212.w = rsqrt(r0.w);
    r0 = _212;
    float4 _230 = r1;
    _230.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _230;
    float4 _235 = r1;
    _235.y = rsqrt(r1.x);
    r1 = _235;
    float4 _240 = r1;
    _240.x = sqrt(r1.x);
    r1 = _240;
    float4 _257 = r1;
    _257.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _257;
    float3 _264 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _264.x, _264.y, _264.z);
    float3 _275 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_275.x, _275.y, _275.z, r2.w);
    float4 _292 = r0;
    _292.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _292;
    float4 _297 = r0;
    _297.w = rsqrt(r0.w);
    r0 = _297;
    float3 _303 = r0.www * r2.xyz;
    r2 = float4(_303.x, _303.y, _303.z, r2.w);
    float4 _319 = r0;
    _319.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _319;
    float4 _335 = r0;
    _335.x = clamp(mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x)), 0.0f, 1.0f);
    r0 = _335;
    float3 _339 = -r1.yzw;
    float4 _352 = r0;
    _352.y = mad(_339.z, shader_in[4].xyz.z, mad(_339.y, shader_in[4].xyz.y, _339.x * shader_in[4].xyz.x));
    r0 = _352;
    float4 _360 = r0;
    _360.y = min(r0.y, cb1_m[2].x);
    r0 = _360;
    float4 _369 = r0;
    _369.y = r0.y + (-cb1_m[2].y);
    r0 = _369;
    float4 _375 = r0;
    _375.y = max(r0.y, asfloat(0u));
    r0 = _375;
    float4 _384 = r0;
    _384.y = r0.y * cb1_m[2].z;
    r0 = _384;
    float4 _390 = r0;
    _390.z = max(r0.w, asfloat(0u));
    r0 = _390;
    float4 _396 = r0;
    _396.w = min(r0.z, asfloat(1065353216u));
    r0 = _396;
    float4 _401 = r0;
    _401.z = log2(r0.z);
    r0 = _401;
    float4 _406 = r0;
    _406.w = log2(r0.w);
    r0 = _406;
    float4 _414 = r0;
    _414.w = r0.w * cb2_m[3].w;
    r0 = _414;
    float4 _419 = r0;
    _419.w = exp2(r0.w);
    r0 = _419;
    float4 _428 = r1;
    _428.y = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _428;
    float4 _439 = r0;
    _439.x = ((-r1.y) * r0.w) + r0.x;
    r0 = _439;
    float4 _446 = r0;
    _446.w = r0.w * r1.y;
    r0 = _446;
    r2 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[1].xyxx.xy);
    float4 _462 = r1;
    _462.y = r2.w * cb2_m[3].z;
    r1 = _462;
    r3 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[5].zwzz.xy);
    float4 _479 = r1;
    _479.z = r3.w * cb2_m[2].x;
    r1 = _479;
    float4 _486 = r1;
    _486.w = max(r1.z, r1.y);
    r1 = _486;
    float4 _496 = r0;
    _496.x = (r1.w * r0.x) + r0.w;
    r0 = _496;
    float4 _503 = r0;
    _503.w = (-r1.w) + asfloat(1065353216u);
    r0 = _503;
    float4 _509 = r0;
    _509.x = max(r0.x, asfloat(0u));
    r0 = _509;
    float4 _520 = r1;
    _520.w = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _520;
    float4 _530 = r0;
    _530.y = (asuint(r1.w) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _530;
    float4 _537 = r0;
    _537.y = r0.y * r1.x;
    r0 = _537;
    float4 _544 = r0;
    _544.x = r0.y * r0.x;
    r0 = _544;
    float4 _552 = r1;
    _552.x = (-cb2_m[2].y) + asfloat(1065353216u);
    r1 = _552;
    float4 _559 = r1;
    _559.x = r1.y * r1.x;
    r1 = _559;
    float4 _566 = r1;
    _566.x = r1.z * r1.x;
    r1 = _566;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].xyxx.xy);
    float3 _591 = ((-r4.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xyz;
    r5 = float4(_591.x, _591.y, _591.z, r5.w);
    float3 _600 = r2.xyz + (-r3.xyz);
    r2 = float4(_600.x, _600.y, _600.z, r2.w);
    float3 _613 = r4.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r6 = float4(_613.x, _613.y, _613.z, r6.w);
    float3 _624 = (r1.yyy * r5.xyz) + r6.xyz;
    r5 = float4(_624.x, _624.y, _624.z, r5.w);
    float3 _632 = r3.xyz + (-r5.xyz);
    r3 = float4(_632.x, _632.y, _632.z, r3.w);
    float3 _642 = (r1.zzz * r3.xyz) + r5.xyz;
    r1 = float4(r1.x, _642.x, _642.y, _642.z);
    float3 _652 = (r1.xxx * r2.xyz) + r1.yzw;
    r1 = float4(_652.x, _652.y, _652.z, r1.w);
    float3 _659 = r0.xxx * r1.xyz;
    r1 = float4(_659.x, _659.y, _659.z, r1.w);
    float4 _668 = r0;
    _668.x = cb2_m[4].z + asfloat(925353388u);
    r0 = _668;
    float4 _675 = r0;
    _675.x = r0.z * r0.x;
    r0 = _675;
    float4 _680 = r0;
    _680.x = exp2(r0.x);
    r0 = _680;
    float4 _688 = r0;
    _688.x = r0.x * cb2_m[4].y;
    r0 = _688;
    float4 _695 = r0;
    _695.x = r0.w * r0.x;
    r0 = _695;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float3 _715 = r2.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_715.x, _715.y, _715.z, r2.w);
    float3 _722 = r0.xxx * r2.xyz;
    r0 = float4(_722.x, r0.y, _722.y, _722.z);
    float3 _729 = r0.yyy * r0.xzw;
    r0 = float4(_729.x, _729.y, _729.z, r0.w);
    float2 _742 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_742.x, _742.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _757 = r0;
    _757.w = max(r2.y, asfloat(1028443341u));
    r0 = _757;
    float3 _763 = r0.www * r0.xyz;
    r0 = float4(_763.x, _763.y, _763.z, r0.w);
    float3 _773 = (r1.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_773.x, _773.y, _773.z, r0.w);
    float3 _786 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_786.x, _786.y, _786.z, r0.w);
    float4 _795 = r0;
    _795.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _795;
    float3 _801 = r0.xyz * r0.www;
    r4 = float4(_801.x, _801.y, _801.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _834 = gl_FragCoord;
    _834.w = 1.0f / _834.w;
    shader_in[0] = float4(_834.xy.x, _834.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
