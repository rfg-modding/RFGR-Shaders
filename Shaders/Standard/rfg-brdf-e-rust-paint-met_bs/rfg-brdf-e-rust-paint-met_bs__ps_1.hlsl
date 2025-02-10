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
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 gl_FragCoord;
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
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _82 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _82.x, _82.y, _82.z);
    float4 _91 = r0;
    _91.y = r0.y + r0.y;
    r0 = _91;
    float4 _98 = r1;
    _98.x = r1.w * r1.y;
    r1 = _98;
    float4 _110 = r0;
    _110.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _110;
    float4 _114 = r0;
    _114.x = r1.x;
    r0 = _114;
    float4 _122 = r0;
    _122.w = (-r0.w) + asfloat(1065353216u);
    r0 = _122;
    float4 _129 = r0;
    _129.w = max(r0.w, asfloat(0u));
    r0 = _129;
    float4 _134 = r0;
    _134.z = sqrt(r0.w);
    r0 = _134;
    float3 _141 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_141.x, _141.y, _141.z, r0.w);
    float3 _157 = (cb2_m[7].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _203.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _203;
    float4 _208 = r0;
    _208.w = rsqrt(r0.w);
    r0 = _208;
    float4 _226 = r1;
    _226.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
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
    float3 _259 = r1.yyy * shader_in[1].xyz;
    r1 = float4(r1.x, _259.x, _259.y, _259.z);
    float3 _270 = (shader_in[2].xyz * r0.www) + r1.yzw;
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
    _347.y = mad(_333.z, shader_in[3].xyz.z, mad(_333.y, shader_in[3].xyz.y, _333.x * shader_in[3].xyz.x));
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
    float4 _379 = r0;
    _379.y = r0.y * cb1_m[2].z;
    r0 = _379;
    float4 _385 = r0;
    _385.z = max(r0.w, asfloat(0u));
    r0 = _385;
    float3 _394 = (-r0.zzz) + asfloat(uint3(1065353216u, 1064933786u, 1061158912u));
    r1 = float4(r1.x, _394.x, _394.y, _394.z);
    float4 _406 = r0;
    _406.z = asfloat((asfloat(1006632960u) >= r1.y) ? 4294967295u : 0u);
    r0 = _406;
    float2 _418 = clamp(r1.zw * asfloat(uint2(3259498496u, 3229785276u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(r1.x, _418.x, _418.y, r1.w);
    float4 _425 = r0;
    _425.w = max(r0.x, asfloat(0u));
    r0 = _425;
    float2 _434 = clamp(r0.xx * asfloat(uint2(1070945621u, 1084227584u)), 0.0f.xx, 1.0f.xx);
    r2 = float4(_434.x, _434.y, r2.z, r2.w);
    float2 _439 = log2(r2.xy);
    r2 = float4(_439.x, _439.y, r2.z, r2.w);
    float2 _447 = r2.xy * asfloat(uint2(1074580685u, 1074580685u));
    r2 = float4(_447.x, _447.y, r2.z, r2.w);
    float2 _452 = exp2(r2.xy);
    r2 = float4(_452.x, _452.y, r2.z, r2.w);
    float2 _457 = asfloat(uint2(964689920u, 1006632960u));
    bool2 _461 = bool2(_457.x < r0.ww.x, _457.y < r0.ww.y);
    float2 _465 = asfloat(uint2(_461.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _461.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(_465.x, r0.y, r0.z, _465.y);
    float3 _473 = asfloat(asuint(r0.xzw) & uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_473.x, r0.y, _473.y, _473.z);
    float4 _481 = r0;
    _481.z = r0.w * r0.z;
    r0 = _481;
    float2 _487 = r0.xx * r1.yz;
    r0 = float4(_487.x, r0.y, r0.z, _487.y);
    float2 _492 = log2(r0.xw);
    r0 = float4(_492.x, r0.y, r0.z, _492.y);
    float2 _498 = r0.xw * asfloat(uint2(1074580685u, 1074580685u));
    r0 = float4(_498.x, r0.y, r0.z, _498.y);
    float2 _503 = exp2(r0.xw);
    r3 = float4(_503.x, _503.y, r3.z, r3.w);
    float4 _510 = r0;
    _510.x = log2(r0.z);
    r0 = _510;
    float4 _516 = r0;
    _516.x = r0.x * asfloat(1074580685u);
    r0 = _516;
    float4 _521 = r3;
    _521.z = exp2(r0.x);
    r3 = _521;
    float4 _530 = r0;
    _530.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _530;
    float4 _540 = r0;
    _540.x = (asuint(r0.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _540;
    float4 _547 = r0;
    _547.x = r0.x * r1.x;
    r0 = _547;
    float3 _553 = r0.xxx * r3.xyz;
    r0 = float4(r0.x, _553.x, _553.y, _553.z);
    float2 _560 = r0.xx * r2.xy;
    r1 = float4(_560.x, _560.y, r1.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _575 = r0.yzw * r2.xyz;
    r0 = float4(_575.x, _575.y, _575.z, r0.w);
    float3 _588 = r0.xxx * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_588.x, _588.y, _588.z, r2.w);
    float3 _601 = r0.yyy * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_601.x, _601.y, _601.z, r3.w);
    float3 _617 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_617.x, _617.y, r0.z, _617.z);
    float3 _627 = (r2.xyz * r0.xyw) + r3.xyz;
    r0 = float4(_627.x, _627.y, r0.z, _627.z);
    float3 _641 = r0.zzz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r2 = float4(_641.x, _641.y, _641.z, r2.w);
    float3 _657 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_657.x, _657.y, _657.z, r3.w);
    float3 _667 = (r0.xyw * r3.xyz) + r2.xyz;
    r0 = float4(_667.x, _667.y, _667.z, r0.w);
    float3 _677 = r0.xyz * cb2_m[8].x.xxx;
    r0 = float4(_677.x, _677.y, _677.z, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _697 = r0;
    _697.w = ((-r2.w) * cb2_m[7].z) + asfloat(1065353216u);
    r0 = _697;
    float3 _703 = r0.www * r0.xyz;
    r0 = float4(_703.x, _703.y, _703.z, r0.w);
    float2 _716 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(r1.x, r1.y, _716.x, _716.y);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r1.zwzz.xy);
    float4 _731 = r0;
    _731.w = max(r3.y, asfloat(1028443341u));
    r0 = _731;
    float3 _737 = r0.www * r0.xyz;
    r0 = float4(_737.x, _737.y, _737.z, r0.w);
    float3 _750 = r1.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_750.x, r1.y, _750.y, _750.z);
    float3 _763 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_763.x, r3.y, _763.y, _763.z);
    float3 _779 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_779.x, _779.y, _779.z, r4.w);
    float3 _790 = (r1.xzw * r4.xyz) + r3.xzw;
    r1 = float4(_790.x, _790.y, _790.z, r1.w);
    float4 _799 = r0;
    _799.w = r2.w * cb2_m[7].z;
    r0 = _799;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _823 = ((-r4.xyz) * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z)) + r2.xyz;
    r2 = float4(_823.x, _823.y, _823.z, r2.w);
    float3 _836 = r4.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r3 = float4(_836.x, r3.y, _836.y, _836.z);
    float3 _846 = (r0.www * r2.xyz) + r3.xzw;
    r2 = float4(_846.x, _846.y, _846.z, r2.w);
    float3 _853 = r1.xyz * r2.xyz;
    r1 = float4(_853.x, _853.y, _853.z, r1.w);
    float3 _863 = (r1.xyz * r3.yyy) + r0.xyz;
    r0 = float4(_863.x, _863.y, _863.z, r0.w);
    float3 _876 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_876.x, _876.y, _876.z, r0.w);
    float4 _885 = r0;
    _885.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _885;
    float3 _891 = r0.xyz * r0.www;
    r4 = float4(_891.x, _891.y, _891.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _920 = gl_FragCoord;
    _920.w = 1.0f / _920.w;
    shader_in[0] = float4(_920.xy.x, _920.xy.y, shader_in[0].z, shader_in[0].w);
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
