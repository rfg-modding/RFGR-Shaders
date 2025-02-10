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
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].zwzz.xy);
    float3 _78 = (r0.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _78.x, _78.y, _78.z);
    float4 _86 = r0;
    _86.x = r0.w * r0.z;
    r0 = _86;
    float4 _98 = r0;
    _98.w = mad(r0.xy.y, r0.xy.y, r0.xy.x * r0.xy.x);
    r0 = _98;
    float4 _106 = r0;
    _106.w = (-r0.w) + asfloat(1065353216u);
    r0 = _106;
    float4 _113 = r0;
    _113.w = max(r0.w, asfloat(0u));
    r0 = _113;
    float4 _118 = r0;
    _118.z = sqrt(r0.w);
    r0 = _118;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _134 = (r1.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _134.x, _134.y, _134.z);
    float4 _142 = r1;
    _142.x = r1.w * r1.z;
    r1 = _142;
    float4 _154 = r0;
    _154.w = mad(r1.xy.y, r1.xy.y, r1.xy.x * r1.xy.x);
    r0 = _154;
    float4 _161 = r0;
    _161.w = (-r0.w) + asfloat(1065353216u);
    r0 = _161;
    float4 _167 = r0;
    _167.w = max(r0.w, asfloat(0u));
    r0 = _167;
    float4 _172 = r1;
    _172.z = sqrt(r0.w);
    r1 = _172;
    float3 _179 = r0.xyz + (-r1.xyz);
    r0 = float4(_179.x, _179.y, _179.z, r0.w);
    float4 _192 = r0;
    _192.w = abs(shader_in[3].z) + abs(shader_in[3].x);
    r0 = _192;
    float4 _201 = r0;
    _201.w = abs(shader_in[3].x) / r0.w;
    r0 = _201;
    float4 _208 = r0;
    _208.w = r0.w + asfloat(3202770534u);
    r0 = _208;
    float4 _218 = r0;
    _218.w = clamp(r0.w * asfloat(1092616192u), 0.0f, 1.0f);
    r0 = _218;
    float3 _227 = (r0.www * r0.xyz) + r1.xyz;
    r0 = float4(_227.x, _227.y, _227.z, r0.w);
    float4 _246 = r1;
    _246.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _246;
    float4 _251 = r1;
    _251.x = rsqrt(r1.x);
    r1 = _251;
    float3 _258 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_258.x, _258.y, _258.z, r1.w);
    float3 _263 = -r1.xyz;
    float4 _275 = r1;
    _275.w = mad(_263.z, r0.xyz.z, mad(_263.y, r0.xyz.y, _263.x * r0.xyz.x));
    r1 = _275;
    float4 _281 = r1;
    _281.w = r1.w + asfloat(1065353216u);
    r1 = _281;
    float4 _286 = r1;
    _286.w = log2(r1.w);
    r1 = _286;
    float4 _293 = r1;
    _293.w = r1.w * asfloat(1083179008u);
    r1 = _293;
    float4 _298 = r1;
    _298.w = exp2(r1.w);
    r1 = _298;
    float4 _304 = r1;
    _304.w = min(r1.w, asfloat(1065353216u));
    r1 = _304;
    float4 _323 = r2;
    _323.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r2 = _323;
    float4 _328 = r2;
    _328.x = rsqrt(r2.x);
    r2 = _328;
    float3 _338 = (shader_in[1].xyz * r2.xxx) + r1.xyz;
    r1 = float4(_338.x, _338.y, _338.z, r1.w);
    float3 _346 = r2.xxx * shader_in[1].xyz;
    r2 = float4(_346.x, _346.y, _346.z, r2.w);
    float4 _363 = r2;
    _363.x = clamp(mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r2 = _363;
    float4 _378 = r2;
    _378.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r2 = _378;
    float4 _383 = r2;
    _383.y = rsqrt(r2.y);
    r2 = _383;
    float3 _389 = r1.xyz * r2.yyy;
    r1 = float4(_389.x, _389.y, _389.z, r1.w);
    float4 _406 = r1;
    _406.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _406;
    float4 _423 = r0;
    _423.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _423;
    float4 _433 = r0;
    _433.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _433;
    float4 _440 = r0;
    _440.y = r1.x + asfloat(925353388u);
    r0 = _440;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    r3 += (-r4);
    r3 = (r0.wwww * r3) + r4;
    float4 _475 = r0;
    _475.z = (-r3.w) + asfloat(1065353216u);
    r0 = _475;
    float3 _492 = r3.xyz * float3(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z);
    r1 = float4(_492.x, _492.y, _492.z, r1.w);
    float4 _500 = r0;
    _500.y = r0.z * r0.y;
    r0 = _500;
    float3 _506 = r1.xyz * r0.yyy;
    r0 = float4(r0.x, _506.x, _506.y, _506.z);
    float3 _513 = r1.www * r0.yzw;
    r0 = float4(r0.x, _513.x, _513.y, _513.z);
    float3 _521 = r0.yzw * asfloat(uint3(1148846080u, 1148846080u, 1148846080u));
    r0 = float4(r0.x, _521.x, _521.y, _521.z);
    float3 _531 = (r1.xyz * r2.xxx) + r0.yzw;
    r0 = float4(r0.x, _531.x, _531.y, _531.z);
    float3 _544 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _544.x, _544.y, _544.z);
    float2 _558 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_558.x, _558.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _572 = r0.yzw * r2.yyy;
    r0 = float4(r0.x, _572.x, _572.y, _572.z);
    float4 _581 = r1;
    _581.w = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _581;
    float4 _590 = r1;
    _590.w = abs(r1.w) + abs(r1.w);
    r1 = _590;
    float4 _600 = r1;
    _600.w = ((-r1.w) * r1.w) + asfloat(1065353216u);
    r1 = _600;
    float4 _606 = r1;
    _606.w = max(r1.w, asfloat(0u));
    r1 = _606;
    float4 _615 = r1;
    _615.w = r1.w * cb0_m[7].y;
    r1 = _615;
    float3 _639 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(r2.x, _639.x, _639.y, _639.z);
    float3 _655 = (r0.xxx * r2.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(r2.x, _655.x, _655.y, _655.z);
    float3 _669 = (-r2.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(_669.x, _669.y, _669.z, r3.w);
    float3 _679 = (r1.www * r3.xyz) + r2.yzw;
    r2 = float4(r2.x, _679.x, _679.y, _679.z);
    float3 _686 = r2.xxx * r2.yzw;
    r2 = float4(_686.x, _686.y, _686.z, r2.w);
    float3 _696 = (r2.xyz * r1.xyz) + r0.yzw;
    r0 = float4(_696.x, _696.y, _696.z, r0.w);
    float4 _705 = r0;
    _705.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _705;
    float3 _711 = r0.xyz * r0.www;
    r0 = float4(_711.x, _711.y, _711.z, r0.w);
    float3 _728 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_728.x, _728.y, _728.z, r0.w);
    float4 _734 = r0;
    _734.w = shader_in[3].w;
    r0 = _734;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _764 = gl_FragCoord;
    _764.w = 1.0f / _764.w;
    shader_in[0] = float4(_764.xy.x, _764.xy.y, shader_in[0].z, shader_in[0].w);
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
