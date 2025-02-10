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
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
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
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _80 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _80.x, _80.y, _80.z);
    float4 _89 = r0;
    _89.y = r0.y + r0.y;
    r0 = _89;
    float4 _96 = r1;
    _96.x = r1.w * r1.y;
    r1 = _96;
    float4 _108 = r0;
    _108.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _108;
    float4 _112 = r0;
    _112.x = r1.x;
    r0 = _112;
    float4 _120 = r0;
    _120.w = (-r0.w) + asfloat(1065353216u);
    r0 = _120;
    float4 _127 = r0;
    _127.w = max(r0.w, asfloat(0u));
    r0 = _127;
    float4 _132 = r0;
    _132.z = sqrt(r0.w);
    r0 = _132;
    float3 _139 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_139.x, _139.y, _139.z, r0.w);
    float3 _155 = (cb2_m[4].y.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    float4 _224 = r1;
    _224.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _224;
    float4 _229 = r1;
    _229.x = rsqrt(r1.x);
    r1 = _229;
    float3 _236 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_236.x, _236.y, _236.z, r1.w);
    float3 _247 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r2 = float4(_247.x, _247.y, _247.z, r2.w);
    float4 _267 = r0;
    _267.w = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _267;
    float4 _282 = r1;
    _282.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _282;
    float4 _287 = r1;
    _287.x = rsqrt(r1.x);
    r1 = _287;
    float3 _293 = r1.xxx * r2.xyz;
    r1 = float4(_293.x, _293.y, _293.z, r1.w);
    float4 _310 = r1;
    _310.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _310;
    float4 _326 = r0;
    _326.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _326;
    float4 _336 = r0;
    _336.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _336;
    float4 _341 = r0;
    _341.y = log2(r1.x);
    r0 = _341;
    float2 _352 = r0.yy * float2(cb2_m[4].w, cb2_m[4].x);
    r1 = float4(_352.x, _352.y, r1.z, r1.w);
    float4 _362 = r1;
    _362.z = r0.y * cb2_m[3].z;
    r1 = _362;
    float3 _366 = exp2(r1.zxy);
    r1 = float4(_366.x, _366.y, _366.z, r1.w);
    float4 _378 = r0;
    _378.y = (r1.x * r0.w) + (-r0.w);
    r0 = _378;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _396 = r0;
    _396.y = (r2.w * r0.y) + r0.w;
    r0 = _396;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _417 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_417.x, _417.y, _417.z, r3.w);
    float3 _424 = r0.yyy * r3.xyz;
    r0 = float4(r0.x, _424.x, _424.y, _424.z);
    float4 _433 = r1;
    _433.x = r1.z * cb2_m[3].w;
    r1 = _433;
    float4 _441 = r1;
    _441.y = r1.y * cb2_m[4].z;
    r1 = _441;
    float3 _453 = r1.yyy * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(r1.x, _453.x, _453.y, _453.z);
    float3 _470 = (r1.xxx * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r1.yzw);
    r4 = float4(_470.x, _470.y, _470.z, r4.w);
    float3 _481 = (r2.www * r4.xyz) + r1.yzw;
    r1 = float4(_481.x, _481.y, _481.z, r1.w);
    float3 _488 = r2.xyz * r1.xyz;
    r1 = float4(_488.x, _488.y, _488.z, r1.w);
    float2 _501 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_501.x, _501.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _516 = r1;
    _516.w = max(r2.y, asfloat(1028443341u));
    r1 = _516;
    float3 _522 = r1.www * r1.xyz;
    r1 = float4(_522.x, _522.y, _522.z, r1.w);
    float3 _532 = (r0.yzw * r2.yyy) + r1.xyz;
    r0 = float4(r0.x, _532.x, _532.y, _532.z);
    float3 _545 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _545.x, _545.y, _545.z);
    float4 _554 = r1;
    _554.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _554;
    float4 _563 = r1;
    _563.x = abs(r1.x) + abs(r1.x);
    r1 = _563;
    float4 _573 = r1;
    _573.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _573;
    float4 _579 = r1;
    _579.x = max(r1.x, asfloat(0u));
    r1 = _579;
    float4 _588 = r1;
    _588.x = r1.x * cb0_m[7].y;
    r1 = _588;
    float3 _612 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _612.x, _612.y, _612.z);
    float3 _628 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _628.x, _628.y, _628.z);
    float3 _642 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(r2.x, _642.x, _642.y, _642.z);
    float3 _652 = (r1.xxx * r2.yzw) + r1.yzw;
    r1 = float4(_652.x, _652.y, _652.z, r1.w);
    float3 _659 = r2.xxx * r1.xyz;
    r1 = float4(_659.x, _659.y, _659.z, r1.w);
    float3 _669 = (r1.xyz * r3.xyz) + r0.yzw;
    r0 = float4(_669.x, _669.y, _669.z, r0.w);
    float4 _678 = r0;
    _678.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _678;
    float3 _684 = r0.xyz * r0.www;
    r0 = float4(_684.x, _684.y, _684.z, r0.w);
    float3 _701 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_701.x, _701.y, _701.z, r0.w);
    float4 _705 = r0;
    _705.w = asfloat(1065353216u);
    r0 = _705;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _735 = gl_FragCoord;
    _735.w = 1.0f / _735.w;
    shader_in[0] = float4(_735.xy.x, _735.xy.y, shader_in[0].z, shader_in[0].w);
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
