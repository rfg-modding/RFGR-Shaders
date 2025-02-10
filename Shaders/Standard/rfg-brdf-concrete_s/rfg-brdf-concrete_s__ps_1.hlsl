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
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _79 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _79.x, _79.y, _79.z);
    float4 _88 = r0;
    _88.y = r0.y + r0.y;
    r0 = _88;
    float4 _95 = r1;
    _95.x = r1.w * r1.y;
    r1 = _95;
    float4 _107 = r0;
    _107.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _107;
    float4 _111 = r0;
    _111.x = r1.x;
    r0 = _111;
    float4 _119 = r0;
    _119.w = (-r0.w) + asfloat(1065353216u);
    r0 = _119;
    float4 _126 = r0;
    _126.w = max(r0.w, asfloat(0u));
    r0 = _126;
    float4 _131 = r0;
    _131.z = sqrt(r0.w);
    r0 = _131;
    float3 _138 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_138.x, _138.y, _138.z, r0.w);
    float3 _155 = (cb2_m[4].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float4 _171 = r0;
    _171.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _171;
    float4 _176 = r0;
    _176.w = rsqrt(r0.w);
    r0 = _176;
    float3 _182 = r0.www * r0.xyz;
    r0 = float4(_182.x, _182.y, _182.z, r0.w);
    float4 _201 = r0;
    _201.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _201;
    float4 _206 = r0;
    _206.w = rsqrt(r0.w);
    r0 = _206;
    float3 _213 = r0.www * shader_in[3].xyz;
    r1 = float4(_213.x, _213.y, _213.z, r1.w);
    float4 _229 = r0;
    _229.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _229;
    float4 _235 = r0;
    _235.w = max(r0.w, asfloat(0u));
    r0 = _235;
    float4 _242 = r0;
    _242.w = (-r0.w) + asfloat(1065353216u);
    r0 = _242;
    float4 _249 = r0;
    _249.w = r0.w * r0.w;
    r0 = _249;
    float4 _267 = r1;
    _267.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _267;
    float4 _272 = r1;
    _272.y = rsqrt(r1.x);
    r1 = _272;
    float4 _277 = r1;
    _277.x = sqrt(r1.x);
    r1 = _277;
    float4 _293 = r1;
    _293.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _293;
    float3 _300 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _300.x, _300.y, _300.z);
    float4 _316 = r0;
    _316.x = mad(r1.yzw.z, r0.xyz.z, mad(r1.yzw.y, r0.xyz.y, r1.yzw.x * r0.xyz.x));
    r0 = _316;
    float3 _320 = -r1.yzw;
    float4 _333 = r0;
    _333.y = mad(_320.z, shader_in[4].xyz.z, mad(_320.y, shader_in[4].xyz.y, _320.x * shader_in[4].xyz.x));
    r0 = _333;
    float4 _341 = r0;
    _341.y = min(r0.y, cb1_m[2].x);
    r0 = _341;
    float4 _350 = r0;
    _350.y = r0.y + (-cb1_m[2].y);
    r0 = _350;
    float4 _356 = r0;
    _356.y = max(r0.y, asfloat(0u));
    r0 = _356;
    float4 _364 = r0;
    _364.y = r0.y * cb1_m[2].z;
    r0 = _364;
    float4 _373 = r0;
    _373.z = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _373;
    float4 _380 = r0;
    _380.z = (-r0.z) + asfloat(1065353216u);
    r0 = _380;
    float4 _390 = r0;
    _390.z = (r0.z * r0.z) + r0.w;
    r0 = _390;
    float4 _397 = r0;
    _397.z = r0.z + r0.z;
    r0 = _397;
    float4 _402 = r0;
    _402.z = sqrt(r0.z);
    r0 = _402;
    float4 _409 = r0;
    _409.z = (-r0.z) + asfloat(1065353216u);
    r0 = _409;
    float4 _415 = r0;
    _415.z = max(r0.z, asfloat(0u));
    r0 = _415;
    float4 _420 = r0;
    _420.z = log2(r0.z);
    r0 = _420;
    float4 _427 = r0;
    _427.z = r0.z * asfloat(1074580685u);
    r0 = _427;
    float4 _433 = r2;
    _433.x = exp2(r0.z);
    r2 = _433;
    float4 _444 = r0;
    _444.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _444;
    float4 _454 = r0;
    _454.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _454;
    float4 _461 = r0;
    _461.y = r0.y * r1.x;
    r0 = _461;
    float4 _468 = r1;
    _468.x = r0.x * asfloat(1084227584u);
    r1 = _468;
    float4 _473 = r0;
    _473.x = clamp(r0.x, 0.0f, 1.0f);
    r0 = _473;
    float4 _478 = r0;
    _478.x = log2(r0.x);
    r0 = _478;
    float4 _484 = r0;
    _484.x = r0.x * asfloat(1074580685u);
    r0 = _484;
    float4 _489 = r2;
    _489.y = exp2(r0.x);
    r2 = _489;
    float4 _494 = r1;
    _494.x = clamp(r1.x, 0.0f, 1.0f);
    r1 = _494;
    float4 _499 = r0;
    _499.x = log2(r1.x);
    r0 = _499;
    float4 _505 = r0;
    _505.x = r0.x * asfloat(1074580685u);
    r0 = _505;
    float4 _510 = r2;
    _510.z = exp2(r0.x);
    r2 = _510;
    float3 _516 = r0.yyy * r2.xyz;
    r0 = float4(_516.x, _516.y, _516.z, r0.w);
    float3 _529 = r0.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_529.x, _529.y, _529.z, r1.w);
    float3 _542 = r0.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_542.x, _542.y, _542.z, r2.w);
    float3 _559 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r0.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_559.x, _559.y, r0.z, _559.z);
    float3 _569 = (r1.xyz * r0.xyw) + r2.xyz;
    r0 = float4(_569.x, _569.y, r0.z, _569.z);
    float3 _582 = r0.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(_582.x, _582.y, _582.z, r1.w);
    float3 _598 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r2 = float4(_598.x, _598.y, _598.z, r2.w);
    float3 _608 = (r0.xyw * r2.xyz) + r1.xyz;
    r0 = float4(_608.x, _608.y, _608.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _629 = r1.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_629.x, _629.y, _629.z, r2.w);
    float3 _636 = r0.xyz * r2.xyz;
    r0 = float4(_636.x, _636.y, _636.z, r0.w);
    float2 _649 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_649.x, _649.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _663 = r0.xyz * r2.yyy;
    r0 = float4(_663.x, _663.y, _663.z, r0.w);
    float3 _676 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_676.x, _676.y, _676.z, r0.w);
    float4 _685 = r0;
    _685.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _685;
    float3 _691 = r0.xyz * r0.www;
    r1 = float4(_691.x, _691.y, _691.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _722 = gl_FragCoord;
    _722.w = 1.0f / _722.w;
    shader_in[0] = float4(_722.xy.x, _722.xy.y, shader_in[0].z, shader_in[0].w);
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
