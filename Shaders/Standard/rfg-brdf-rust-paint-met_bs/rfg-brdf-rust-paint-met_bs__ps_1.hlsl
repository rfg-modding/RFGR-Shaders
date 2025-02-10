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
    float4 cb2_m[8] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _81 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _81.x, _81.y, _81.z);
    float4 _90 = r0;
    _90.y = r0.y + r0.y;
    r0 = _90;
    float4 _97 = r1;
    _97.x = r1.w * r1.y;
    r1 = _97;
    float4 _109 = r0;
    _109.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _109;
    float4 _113 = r0;
    _113.x = r1.x;
    r0 = _113;
    float4 _121 = r0;
    _121.w = (-r0.w) + asfloat(1065353216u);
    r0 = _121;
    float4 _128 = r0;
    _128.w = max(r0.w, asfloat(0u));
    r0 = _128;
    float4 _133 = r0;
    _133.z = sqrt(r0.w);
    r0 = _133;
    float3 _140 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_140.x, _140.y, _140.z, r0.w);
    float3 _157 = (cb2_m[7].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float4 _173 = r0;
    _173.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _173;
    float4 _178 = r0;
    _178.w = rsqrt(r0.w);
    r0 = _178;
    float3 _184 = r0.www * r0.xyz;
    r0 = float4(_184.x, _184.y, _184.z, r0.w);
    float4 _203 = r0;
    _203.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _203;
    float4 _208 = r0;
    _208.w = rsqrt(r0.w);
    r0 = _208;
    float4 _226 = r1;
    _226.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _226;
    float4 _231 = r1;
    _231.y = rsqrt(r1.x);
    r1 = _231;
    float4 _236 = r1;
    _236.x = sqrt(r1.x);
    r1 = _236;
    float4 _252 = r1;
    _252.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _252;
    float3 _259 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _259.x, _259.y, _259.z);
    float3 _270 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_270.x, _270.y, _270.z, r2.w);
    float4 _287 = r0;
    _287.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _287;
    float4 _292 = r0;
    _292.w = rsqrt(r0.w);
    r0 = _292;
    float3 _298 = r0.www * r2.xyz;
    r2 = float4(_298.x, _298.y, _298.z, r2.w);
    float4 _314 = r0;
    _314.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _314;
    float4 _329 = r0;
    _329.x = mad(r1.yzw.z, r0.xyz.z, mad(r1.yzw.y, r0.xyz.y, r1.yzw.x * r0.xyz.x));
    r0 = _329;
    float3 _333 = -r1.yzw;
    float4 _347 = r0;
    _347.y = mad(_333.z, shader_in[4].xyz.z, mad(_333.y, shader_in[4].xyz.y, _333.x * shader_in[4].xyz.x));
    r0 = _347;
    float4 _355 = r0;
    _355.y = min(r0.y, cb1_m[2].x);
    r0 = _355;
    float4 _364 = r0;
    _364.y = r0.y + (-cb1_m[2].y);
    r0 = _364;
    float4 _370 = r0;
    _370.y = max(r0.y, asfloat(0u));
    r0 = _370;
    float4 _378 = r0;
    _378.y = r0.y * cb1_m[2].z;
    r0 = _378;
    float4 _384 = r0;
    _384.z = max(r0.w, asfloat(0u));
    r0 = _384;
    float3 _393 = (-r0.zzz) + asfloat(uint3(1065353216u, 1064933786u, 1061158912u));
    r1 = float4(r1.x, _393.x, _393.y, _393.z);
    float4 _405 = r0;
    _405.z = asfloat((asfloat(1006632960u) >= r1.y) ? 4294967295u : 0u);
    r0 = _405;
    float2 _417 = clamp(r1.zw * asfloat(uint2(3259498496u, 3229785276u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(r1.x, _417.x, _417.y, r1.w);
    float4 _424 = r0;
    _424.w = max(r0.x, asfloat(0u));
    r0 = _424;
    float2 _433 = clamp(r0.xx * asfloat(uint2(1070945621u, 1084227584u)), 0.0f.xx, 1.0f.xx);
    r2 = float4(_433.x, _433.y, r2.z, r2.w);
    float2 _438 = log2(r2.xy);
    r2 = float4(_438.x, _438.y, r2.z, r2.w);
    float2 _446 = r2.xy * asfloat(uint2(1074580685u, 1074580685u));
    r2 = float4(_446.x, _446.y, r2.z, r2.w);
    float2 _451 = exp2(r2.xy);
    r2 = float4(_451.x, _451.y, r2.z, r2.w);
    float2 _456 = asfloat(uint2(964689920u, 1006632960u));
    bool2 _460 = bool2(_456.x < r0.ww.x, _456.y < r0.ww.y);
    float2 _464 = asfloat(uint2(_460.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _460.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(_464.x, r0.y, r0.z, _464.y);
    float3 _472 = asfloat(asuint(r0.xzw) & uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_472.x, r0.y, _472.y, _472.z);
    float4 _480 = r0;
    _480.z = r0.w * r0.z;
    r0 = _480;
    float2 _486 = r0.xx * r1.yz;
    r0 = float4(_486.x, r0.y, r0.z, _486.y);
    float2 _491 = log2(r0.xw);
    r0 = float4(_491.x, r0.y, r0.z, _491.y);
    float2 _497 = r0.xw * asfloat(uint2(1074580685u, 1074580685u));
    r0 = float4(_497.x, r0.y, r0.z, _497.y);
    float2 _502 = exp2(r0.xw);
    r3 = float4(_502.x, _502.y, r3.z, r3.w);
    float4 _509 = r0;
    _509.x = log2(r0.z);
    r0 = _509;
    float4 _515 = r0;
    _515.x = r0.x * asfloat(1074580685u);
    r0 = _515;
    float4 _520 = r3;
    _520.z = exp2(r0.x);
    r3 = _520;
    float4 _529 = r0;
    _529.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _529;
    float4 _539 = r0;
    _539.x = (asuint(r0.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _539;
    float4 _546 = r0;
    _546.x = r0.x * r1.x;
    r0 = _546;
    float3 _552 = r0.xxx * r3.xyz;
    r0 = float4(r0.x, _552.x, _552.y, _552.z);
    float2 _559 = r0.xx * r2.xy;
    r1 = float4(_559.x, _559.y, r1.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _574 = r0.yzw * r2.xyz;
    r0 = float4(_574.x, _574.y, _574.z, r0.w);
    float3 _587 = r0.xxx * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_587.x, _587.y, _587.z, r2.w);
    float3 _600 = r0.yyy * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_600.x, _600.y, _600.z, r3.w);
    float3 _616 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_616.x, _616.y, r0.z, _616.z);
    float3 _626 = (r2.xyz * r0.xyw) + r3.xyz;
    r0 = float4(_626.x, _626.y, r0.z, _626.z);
    float3 _640 = r0.zzz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r2 = float4(_640.x, _640.y, _640.z, r2.w);
    float3 _656 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_656.x, _656.y, _656.z, r3.w);
    float3 _666 = (r0.xyw * r3.xyz) + r2.xyz;
    r0 = float4(_666.x, _666.y, _666.z, r0.w);
    float3 _675 = r0.xyz * cb2_m[7].w.xxx;
    r0 = float4(_675.x, _675.y, _675.z, r0.w);
    float2 _688 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(r1.x, r1.y, _688.x, _688.y);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r1.zwzz.xy);
    float4 _703 = r0;
    _703.w = max(r2.y, asfloat(1028443341u));
    r0 = _703;
    float3 _709 = r0.www * r0.xyz;
    r0 = float4(_709.x, _709.y, _709.z, r0.w);
    float3 _722 = r1.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_722.x, r1.y, _722.y, _722.z);
    float3 _735 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_735.x, r2.y, _735.y, _735.z);
    float3 _751 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_751.x, _751.y, _751.z, r3.w);
    float3 _761 = (r1.xzw * r3.xyz) + r2.xzw;
    r1 = float4(_761.x, _761.y, _761.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _782 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r2 = float4(_782.x, r2.y, _782.y, _782.z);
    float3 _789 = r1.xyz * r2.xzw;
    r1 = float4(_789.x, _789.y, _789.z, r1.w);
    float3 _799 = (r1.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_799.x, _799.y, _799.z, r0.w);
    float3 _812 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_812.x, _812.y, _812.z, r0.w);
    float4 _821 = r0;
    _821.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _821;
    float3 _827 = r0.xyz * r0.www;
    r3 = float4(_827.x, _827.y, _827.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _858 = gl_FragCoord;
    _858.w = 1.0f / _858.w;
    shader_in[0] = float4(_858.xy.x, _858.xy.y, shader_in[0].z, shader_in[0].w);
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
