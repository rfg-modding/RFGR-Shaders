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

uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

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
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float2 _73 = shader_in[5].xy * float2(cb2_m[3].y, cb2_m[3].z);
    r0 = float4(_73.x, _73.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt3s3, r0.xyxx.xy);
    float3 _95 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _95.x, _95.y, _95.z);
    float4 _104 = r0;
    _104.y = r0.y + r0.y;
    r0 = _104;
    float4 _111 = r1;
    _111.x = r1.w * r1.y;
    r1 = _111;
    float4 _123 = r0;
    _123.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _123;
    float4 _127 = r0;
    _127.x = r1.x;
    r0 = _127;
    float4 _135 = r0;
    _135.w = (-r0.w) + asfloat(1065353216u);
    r0 = _135;
    float4 _142 = r0;
    _142.w = max(r0.w, asfloat(0u));
    r0 = _142;
    float4 _147 = r0;
    _147.z = sqrt(r0.w);
    r0 = _147;
    float3 _154 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_154.x, _154.y, _154.z, r0.w);
    float3 _166 = (cb2_m[3].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_166.x, _166.y, _166.z, r0.w);
    float4 _182 = r0;
    _182.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _182;
    float4 _187 = r0;
    _187.w = rsqrt(r0.w);
    r0 = _187;
    float3 _193 = r0.www * r0.xyz;
    r0 = float4(_193.x, _193.y, _193.z, r0.w);
    float4 _212 = r0;
    _212.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _212;
    float4 _217 = r1;
    _217.x = rsqrt(r0.w);
    r1 = _217;
    float4 _222 = r0;
    _222.w = sqrt(r0.w);
    r0 = _222;
    float4 _239 = r0;
    _239.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _239;
    float3 _250 = (shader_in[2].xyz * r1.xxx) + shader_in[3].xyz;
    r1 = float4(r1.x, _250.x, _250.y, _250.z);
    float3 _258 = r1.xxx * shader_in[2].xyz;
    r2 = float4(_258.x, _258.y, _258.z, r2.w);
    float4 _275 = r1;
    _275.x = mad(r1.yzw.z, r1.yzw.z, mad(r1.yzw.y, r1.yzw.y, r1.yzw.x * r1.yzw.x));
    r1 = _275;
    float4 _280 = r1;
    _280.x = rsqrt(r1.x);
    r1 = _280;
    float3 _286 = r1.xxx * r1.yzw;
    r1 = float4(_286.x, _286.y, _286.z, r1.w);
    float4 _303 = r1;
    _303.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _303;
    float4 _310 = r1;
    _310.x = r1.x + asfloat(925353388u);
    r1 = _310;
    float4 _315 = r1;
    _315.x = log2(r1.x);
    r1 = _315;
    float4 _324 = r1;
    _324.x = r1.x * cb2_m[4].w;
    r1 = _324;
    float4 _329 = r1;
    _329.x = exp2(r1.x);
    r1 = _329;
    float4 _344 = r1;
    _344.y = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r1 = _344;
    float3 _349 = -shader_in[3].xyz;
    float4 _361 = r0;
    _361.x = mad(_349.z, r0.xyz.z, mad(_349.y, r0.xyz.y, _349.x * r0.xyz.x));
    r0 = _361;
    float4 _367 = r0;
    _367.x = r0.x + asfloat(1065353216u);
    r0 = _367;
    float4 _373 = r0;
    _373.x = log2(abs(r0.x));
    r0 = _373;
    float4 _380 = r0;
    _380.x = r0.x * asfloat(1083179008u);
    r0 = _380;
    float4 _385 = r0;
    _385.x = exp2(r0.x);
    r0 = _385;
    float4 _391 = r0;
    _391.x = r0.x + asfloat(925353388u);
    r0 = _391;
    float4 _397 = r0;
    _397.x = min(r0.x, asfloat(1065353216u));
    r0 = _397;
    float4 _405 = r0;
    _405.x = r0.x * cb2_m[4].x;
    r0 = _405;
    float3 _409 = -r2.xyz;
    float4 _422 = r0;
    _422.y = mad(_409.z, shader_in[4].xyz.z, mad(_409.y, shader_in[4].xyz.y, _409.x * shader_in[4].xyz.x));
    r0 = _422;
    float4 _430 = r0;
    _430.y = min(r0.y, cb1_m[2].x);
    r0 = _430;
    float4 _439 = r0;
    _439.y = r0.y + (-cb1_m[2].y);
    r0 = _439;
    float4 _445 = r0;
    _445.y = max(r0.y, asfloat(0u));
    r0 = _445;
    float4 _453 = r0;
    _453.y = r0.y * cb1_m[2].z;
    r0 = _453;
    float4 _463 = r0;
    _463.z = asfloat((asfloat(0u) >= r1.y) ? 4294967295u : 0u);
    r0 = _463;
    float4 _468 = r1;
    _468.y = clamp(r1.y, 0.0f, 1.0f);
    r1 = _468;
    float4 _477 = r0;
    _477.z = (asuint(r0.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _477;
    float4 _484 = r0;
    _484.z = r0.z * r1.x;
    r0 = _484;
    float4 _493 = r1;
    _493.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _493;
    float4 _503 = r0;
    _503.y = (asuint(r1.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _503;
    float4 _510 = r0;
    _510.y = r0.y * r0.w;
    r0 = _510;
    float4 _517 = r0;
    _517.w = max(r0.y, asfloat(1028443341u));
    r0 = _517;
    float4 _524 = r0;
    _524.y = r0.y * r1.y;
    r0 = _524;
    float4 _531 = r0;
    _531.z = r0.w * r0.z;
    r0 = _531;
    float2 _542 = shader_in[5].xy * float2(cb2_m[4].y, cb2_m[4].z);
    r1 = float4(_542.x, _542.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt4s4, r1.xyxx.xy);
    float3 _562 = r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_562.x, _562.y, _562.z, r1.w);
    float3 _569 = r0.xxx * r1.xyz;
    r1 = float4(_569.x, _569.y, _569.z, r1.w);
    float3 _576 = r0.zzz * r1.xyz;
    r0 = float4(_576.x, r0.y, _576.y, _576.z);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _597 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_597.x, _597.y, _597.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float4 _615 = r1;
    _615.w = r3.w * cb2_m[2].x;
    r1 = _615;
    float3 _631 = ((-r1.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r1 = float4(_631.x, _631.y, _631.z, r1.w);
    float3 _641 = (r1.www * r1.xyz) + r2.xyz;
    r1 = float4(_641.x, _641.y, _641.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    float3 _657 = (-r1.xyz) + r2.xyz;
    r2 = float4(_657.x, _657.y, _657.z, r2.w);
    float4 _666 = r1;
    _666.w = r2.w * cb2_m[2].w;
    r1 = _666;
    float3 _675 = (r1.www * r2.xyz) + r1.xyz;
    r1 = float4(_675.x, _675.y, _675.z, r1.w);
    float3 _685 = (r0.yyy * r1.xyz) + r0.xzw;
    r0 = float4(_685.x, _685.y, _685.z, r0.w);
    float3 _698 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_698.x, _698.y, _698.z, r0.w);
    float4 _707 = r0;
    _707.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _707;
    float3 _713 = r0.xyz * r0.www;
    r0 = float4(_713.x, _713.y, _713.z, r0.w);
    float4 _717 = r0;
    _717.w = asfloat(1065353216u);
    r0 = _717;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
