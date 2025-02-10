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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[6].xyxx.xy);
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
    float3 _155 = (cb2_m[2].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float4 _171 = r0;
    _171.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _171;
    float4 _176 = r0;
    _176.w = rsqrt(r0.w);
    r0 = _176;
    float3 _182 = r0.www * r0.xyz;
    r0 = float4(_182.x, _182.y, _182.z, r0.w);
    float4 _200 = r0;
    _200.w = mad(r0.xyz.z, shader_in[5].xyz.z, mad(r0.xyz.y, shader_in[5].xyz.y, r0.xyz.x * shader_in[5].xyz.x));
    r0 = _200;
    float4 _209 = r1;
    _209.x = abs(r0.w) + abs(r0.w);
    r1 = _209;
    float4 _221 = r0;
    _221.w = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _221;
    float4 _231 = r1;
    _231.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _231;
    float4 _237 = r1;
    _237.x = max(r1.x, asfloat(0u));
    r1 = _237;
    float4 _246 = r1;
    _246.x = r1.x * cb0_m[7].y;
    r1 = _246;
    float3 _267 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _267.x, _267.y, _267.z);
    float3 _283 = (r0.www * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _283.x, _283.y, _283.z);
    float3 _302 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r1.yzw);
    r2 = float4(_302.x, _302.y, _302.z, r2.w);
    float3 _313 = (r1.xxx * r2.xyz) + r1.yzw;
    r1 = float4(_313.x, _313.y, _313.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].xyxx.xy);
    float3 _334 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_334.x, _334.y, _334.z, r2.w);
    float3 _341 = r1.xyz * r2.xyz;
    r1 = float4(_341.x, _341.y, _341.z, r1.w);
    float2 _353 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_353.x, _353.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float3 _368 = r1.xyz * r3.xxx;
    r1 = float4(_368.x, _368.y, _368.z, r1.w);
    float4 _387 = r0;
    _387.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _387;
    float4 _392 = r0;
    _392.w = rsqrt(r0.w);
    r0 = _392;
    float3 _399 = r0.www * shader_in[1].xyz;
    r3 = float4(_399.x, r3.y, _399.y, _399.z);
    float4 _416 = r0;
    _416.x = clamp(mad(r0.xyz.z, r3.xzw.z, mad(r0.xyz.y, r3.xzw.y, r0.xyz.x * r3.xzw.x)), 0.0f, 1.0f);
    r0 = _416;
    float4 _423 = r0;
    _423.x = r3.y * r0.x;
    r0 = _423;
    float3 _429 = r2.xyz * r0.xxx;
    r0 = float4(_429.x, _429.y, _429.z, r0.w);
    float3 _445 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_445.x, _445.y, _445.z, r0.w);
    float2 _458 = (-float2(cb2_m[2].x, cb2_m[2].y)) + asfloat(uint2(1065353216u, 1065353216u));
    r1 = float4(_458.x, _458.y, r1.z, r1.w);
    float4 _469 = r1;
    _469.z = clamp(shader_in[6].z / cb2_m[3].x, 0.0f, 1.0f);
    r1 = _469;
    float4 _478 = r1;
    _478.w = r1.z + (-cb2_m[2].x);
    r1 = _478;
    float4 _485 = r1;
    _485.x = r1.w / r1.x;
    r1 = _485;
    float4 _496 = r1;
    _496.x = (r1.x * r1.y) + cb2_m[2].y;
    r1 = _496;
    float2 _511 = (-float2(cb2_m[1].z, cb2_m[1].w)) + float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(r1.x, _511.x, r1.z, _511.y);
    float2 _523 = r1.zz + (-float2(cb2_m[1].z, cb2_m[1].x));
    r2 = float4(_523.x, _523.y, r2.z, r2.w);
    float4 _531 = r1;
    _531.y = r2.x / r1.y;
    r1 = _531;
    float4 _542 = r1;
    _542.y = (r1.y * r1.w) + cb2_m[1].w;
    r1 = _542;
    float4 _554 = r1;
    _554.w = asfloat((r1.z < cb2_m[2].x) ? 4294967295u : 0u);
    r1 = _554;
    float4 _565 = r1;
    _565.x = (asuint(r1.w) != 0u) ? r1.y : r1.x;
    r1 = _565;
    float2 _580 = (-float2(cb2_m[1].x, cb2_m[1].y)) + float2(cb2_m[1].z, cb2_m[1].w);
    r1 = float4(r1.x, _580.x, r1.z, _580.y);
    float4 _588 = r1;
    _588.y = r2.y / r1.y;
    r1 = _588;
    float4 _599 = r1;
    _599.y = (r1.y * r1.w) + cb2_m[1].y;
    r1 = _599;
    float2 _608 = float2(cb2_m[1].z, cb2_m[1].x);
    bool2 _610 = bool2(r1.zz.x < _608.x, r1.zz.y < _608.y);
    float2 _614 = asfloat(uint2(_610.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _610.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r2 = float4(_614.x, _614.y, r2.z, r2.w);
    float4 _623 = r1;
    _623.z = r1.z / cb2_m[1].x;
    r1 = _623;
    float4 _634 = r1;
    _634.x = (asuint(r2.x) != 0u) ? r1.y : r1.x;
    r1 = _634;
    float4 _644 = r1;
    _644.y = cb2_m[1].y + (-cb2_m[2].z);
    r1 = _644;
    float4 _655 = r1;
    _655.y = (r1.z * r1.y) + cb2_m[2].z;
    r1 = _655;
    float4 _666 = r1;
    _666.x = (asuint(r2.y) != 0u) ? r1.y : r1.x;
    r1 = _666;
    float2 _678 = (r1.xx * asfloat(uint2(3211998003u, 3204448256u))) + asfloat(uint2(1064514355u, 1065353216u));
    r1 = float4(_678.x, _678.y, r1.z, r1.w);
    float4 _691 = r1;
    _691.z = (r2.w * shader_in[6].x) + (-r1.x);
    r1 = _691;
    float4 _699 = r1;
    _699.x = (-r1.x) + r1.y;
    r1 = _699;
    float4 _707 = r1;
    _707.x = clamp(r1.z / r1.x, 0.0f, 1.0f);
    r1 = _707;
    float4 _724 = r1;
    _724.y = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _724;
    float4 _729 = r1;
    _729.y = rsqrt(r1.y);
    r1 = _729;
    float4 _737 = r1;
    _737.y = r1.y * shader_in[2].z;
    r1 = _737;
    float4 _750 = r1;
    _750.y = clamp((r1.y * shader_in[3].x) + shader_in[3].y, 0.0f, 1.0f);
    r1 = _750;
    float4 _765 = r1;
    _765.z = clamp((abs(shader_in[2].w) * shader_in[3].z) + shader_in[3].w, 0.0f, 1.0f);
    r1 = _765;
    float4 _772 = r1;
    _772.z = (-r1.z) + asfloat(1065353216u);
    r1 = _772;
    float4 _779 = r1;
    _779.y = r1.z * r1.y;
    r1 = _779;
    float4 _786 = r0;
    _786.w = r1.y * r1.x;
    r0 = _786;
    r0 *= shader_in[4];
    float4 _799 = r1;
    _799.x = (-shader_in[5].w) + asfloat(1065353216u);
    r1 = _799;
    float3 _805 = r0.xyz * r1.xxx;
    r1 = float4(_805.x, _805.y, _805.z, r1.w);
    float3 _822 = (shader_in[5].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_822.x, _822.y, _822.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    float4 _855 = gl_FragCoord;
    _855.w = 1.0f / _855.w;
    shader_in[0] = float4(_855.xy.x, _855.xy.y, shader_in[0].z, shader_in[0].w);
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
    v6 = stage_input.v6;
    frag_main();
}
