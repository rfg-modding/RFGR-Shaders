cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float4 r5;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
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
    _231.x = rsqrt(r1.x);
    r1 = _231;
    float3 _238 = r1.xxx * shader_in[1].xyz;
    r1 = float4(_238.x, _238.y, _238.z, r1.w);
    float3 _249 = (shader_in[2].xyz * r0.www) + r1.xyz;
    r2 = float4(_249.x, _249.y, _249.z, r2.w);
    float4 _266 = r0;
    _266.w = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _266;
    float4 _281 = r1;
    _281.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _281;
    float4 _286 = r1;
    _286.x = rsqrt(r1.x);
    r1 = _286;
    float3 _292 = r1.xxx * r2.xyz;
    r1 = float4(_292.x, _292.y, _292.z, r1.w);
    float4 _308 = r1;
    _308.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _308;
    float4 _325 = r0;
    _325.x = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _325;
    float4 _337 = r0;
    _337.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _337;
    float4 _343 = r0;
    _343.y = max(r1.x, asfloat(0u));
    r0 = _343;
    float3 _352 = (-r0.yyy) + asfloat(uint3(1065353216u, 1064933786u, 1061158912u));
    r1 = float4(_352.x, _352.y, _352.z, r1.w);
    float4 _364 = r0;
    _364.y = asfloat((asfloat(1006632960u) >= r1.x) ? 4294967295u : 0u);
    r0 = _364;
    float2 _376 = clamp(r1.yz * asfloat(uint2(3259498496u, 3229785276u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(_376.x, _376.y, r1.z, r1.w);
    float4 _383 = r0;
    _383.z = max(r0.w, asfloat(0u));
    r0 = _383;
    float2 _392 = clamp(r0.ww * asfloat(uint2(1070945621u, 1084227584u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(r1.x, r1.y, _392.x, _392.y);
    float2 _397 = log2(r1.zw);
    r1 = float4(r1.x, r1.y, _397.x, _397.y);
    float2 _405 = r1.zw * asfloat(uint2(1074580685u, 1074580685u));
    r1 = float4(r1.x, r1.y, _405.x, _405.y);
    float2 _410 = exp2(r1.zw);
    r1 = float4(r1.x, r1.y, _410.x, _410.y);
    float2 _415 = asfloat(uint2(964689920u, 1006632960u));
    bool2 _419 = bool2(_415.x < r0.zz.x, _415.y < r0.zz.y);
    float2 _423 = asfloat(uint2(_419.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _419.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(r0.x, r0.y, _423.x, _423.y);
    float3 _431 = asfloat(asuint(r0.yzw) & uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _431.x, _431.y, _431.z);
    float4 _439 = r0;
    _439.y = r0.w * r0.y;
    r0 = _439;
    float2 _445 = r0.zz * r1.xy;
    r0 = float4(r0.x, r0.y, _445.x, _445.y);
    float2 _450 = log2(r0.zw);
    r0 = float4(r0.x, r0.y, _450.x, _450.y);
    float2 _456 = r0.zw * asfloat(uint2(1074580685u, 1074580685u));
    r0 = float4(r0.x, r0.y, _456.x, _456.y);
    float2 _461 = exp2(r0.zw);
    r2 = float4(_461.x, _461.y, r2.z, r2.w);
    float4 _467 = r0;
    _467.y = log2(r0.y);
    r0 = _467;
    float4 _473 = r0;
    _473.y = r0.y * asfloat(1074580685u);
    r0 = _473;
    float4 _478 = r2;
    _478.z = exp2(r0.y);
    r2 = _478;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _493 = r2.xyz * r3.xyz;
    r0 = float4(r0.x, _493.x, _493.y, _493.z);
    float3 _507 = r0.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_507.x, _507.y, _507.z, r2.w);
    float3 _520 = r0.zzz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_520.x, _520.y, _520.z, r3.w);
    float3 _536 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_536.x, _536.y, _536.z, r4.w);
    float3 _547 = (r2.xyz * r4.xyz) + r3.xyz;
    r2 = float4(_547.x, _547.y, _547.z, r2.w);
    float3 _561 = r0.www * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r3 = float4(_561.x, _561.y, _561.z, r3.w);
    float3 _577 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _577.x, _577.y, _577.z);
    float3 _587 = (r2.xyz * r0.yzw) + r3.xyz;
    r0 = float4(r0.x, _587.x, _587.y, _587.z);
    float3 _597 = r0.yzw * cb2_m[8].x.xxx;
    r0 = float4(r0.x, _597.x, _597.y, _597.z);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _617 = r1;
    _617.x = ((-r2.w) * cb2_m[7].z) + asfloat(1065353216u);
    r1 = _617;
    float3 _623 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _623.x, _623.y, _623.z);
    float2 _636 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_636.x, _636.y, r1.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float4 _651 = r1;
    _651.x = max(r3.y, asfloat(1028443341u));
    r1 = _651;
    float3 _657 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _657.x, _657.y, _657.z);
    float3 _670 = r1.zzz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_670.x, _670.y, _670.z, r1.w);
    float3 _683 = r1.www * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_683.x, _683.y, _683.z, r4.w);
    float3 _699 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r5 = float4(_699.x, _699.y, _699.z, r5.w);
    float3 _710 = (r1.xyz * r5.xyz) + r4.xyz;
    r1 = float4(_710.x, _710.y, _710.z, r1.w);
    float4 _719 = r1;
    _719.w = r2.w * cb2_m[7].z;
    r1 = _719;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _743 = ((-r4.xyz) * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z)) + r2.xyz;
    r2 = float4(_743.x, _743.y, _743.z, r2.w);
    float3 _756 = r4.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r5 = float4(_756.x, _756.y, _756.z, r5.w);
    float3 _766 = (r1.www * r2.xyz) + r5.xyz;
    r2 = float4(_766.x, _766.y, _766.z, r2.w);
    float3 _773 = r1.xyz * r2.xyz;
    r1 = float4(_773.x, _773.y, _773.z, r1.w);
    float3 _783 = (r1.xyz * r3.yyy) + r0.yzw;
    r0 = float4(r0.x, _783.x, _783.y, _783.z);
    float3 _796 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _796.x, _796.y, _796.z);
    float4 _805 = r1;
    _805.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _805;
    float4 _814 = r1;
    _814.x = abs(r1.x) + abs(r1.x);
    r1 = _814;
    float4 _824 = r1;
    _824.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _824;
    float4 _830 = r1;
    _830.x = max(r1.x, asfloat(0u));
    r1 = _830;
    float4 _838 = r1;
    _838.x = r1.x * cb0_m[7].y;
    r1 = _838;
    float3 _862 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _862.x, _862.y, _862.z);
    float3 _878 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _878.x, _878.y, _878.z);
    float3 _892 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(r3.x, _892.x, _892.y, _892.z);
    float3 _902 = (r1.xxx * r3.yzw) + r1.yzw;
    r1 = float4(_902.x, _902.y, _902.z, r1.w);
    float3 _909 = r3.xxx * r1.xyz;
    r1 = float4(_909.x, _909.y, _909.z, r1.w);
    float3 _919 = (r1.xyz * r2.xyz) + r0.yzw;
    r0 = float4(_919.x, _919.y, _919.z, r0.w);
    float4 _928 = r0;
    _928.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _928;
    float3 _934 = r0.xyz * r0.www;
    r0 = float4(_934.x, _934.y, _934.z, r0.w);
    float3 _951 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r4 = float4(_951.x, _951.y, _951.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _980 = gl_FragCoord;
    _980.w = 1.0f / _980.w;
    shader_in[0] = float4(_980.xy.x, _980.xy.y, shader_in[0].z, shader_in[0].w);
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
