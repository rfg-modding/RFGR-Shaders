cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float2 _58 = float2(asint(shader_in[0].xy));
    r0 = float4(_58.x, _58.y, r0.z, r0.w);
    float4 _67 = r0;
    _67.y = r0.y + asfloat(1191182336u);
    r0 = _67;
    float4 _75 = r1;
    _75.y = r0.x * asfloat(1015021568u);
    r1 = _75;
    float4 _82 = r0;
    _82.x = r0.y * asfloat(998244352u);
    r0 = _82;
    float4 _87 = r1;
    _87.z = trunc(r0.x);
    r1 = _87;
    float4 _98 = r1;
    _98.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _98;
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    float4 _119 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _133 = r0;
    _133.y = mad(_119.w, r1.w, mad(_119.z, r1.z, mad(_119.y, r1.y, _119.x * r1.x)));
    r0 = _133;
    float4 _144 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _158 = r0;
    _158.x = mad(_144.w, r1.w, mad(_144.z, r1.z, mad(_144.y, r1.y, _144.x * r1.x)));
    r0 = _158;
    float4 _170 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _184 = r0;
    _184.z = mad(_170.w, r1.w, mad(_170.z, r1.z, mad(_170.y, r1.y, _170.x * r1.x)));
    r0 = _184;
    float4 _187 = r0;
    _187.w = asfloat(1065353216u);
    r0 = _187;
    float4 _198 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _212 = o0;
    _212.x = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _237 = o0;
    _237.y = mad(_223.w, r0.w, mad(_223.z, r0.z, mad(_223.y, r0.y, _223.x * r0.x)));
    o0 = _237;
    float4 _248 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _262 = o0;
    _262.z = mad(_248.w, r0.w, mad(_248.z, r0.z, mad(_248.y, r0.y, _248.x * r0.x)));
    o0 = _262;
    float4 _274 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _288 = o0;
    _288.w = mad(_274.w, r0.w, mad(_274.z, r0.z, mad(_274.y, r0.y, _274.x * r0.x)));
    o0 = _288;
    float2 _299 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_299.x, _299.y, r1.z, r1.w);
    float2 _316 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r1 = float4(r1.x, r1.y, _316.x, _316.y);
    o1 = r1.zw * float2(cb2_m[7].x, cb2_m[7].y);
    float3 _340 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_340.x, _340.y, _340.z, r2.w);
    float4 _357 = r0;
    _357.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _357;
    float4 _362 = r1;
    _362.z = rsqrt(r0.w);
    r1 = _362;
    float4 _367 = o3;
    _367.w = sqrt(r0.w);
    o3 = _367;
    float3 _373 = r1.zzz * r2.xyz;
    r2 = float4(_373.x, _373.y, _373.z, r2.w);
    float3 _387 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_387.x, _387.y, _387.z, r3.w);
    float3 _398 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _411 = r4;
    _411.x = mad(_398.z, r3.xyz.z, mad(_398.y, r3.xyz.y, _398.x * r3.xyz.x));
    r4 = _411;
    float3 _420 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _432 = r4;
    _432.y = mad(_420.z, r3.xyz.z, mad(_420.y, r3.xyz.y, _420.x * r3.xyz.x));
    r4 = _432;
    float3 _441 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _453 = r4;
    _453.z = mad(_441.z, r3.xyz.z, mad(_441.y, r3.xyz.y, _441.x * r3.xyz.x));
    r4 = _453;
    float4 _468 = r0;
    _468.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _468;
    float4 _473 = r0;
    _473.w = rsqrt(r0.w);
    r0 = _473;
    float3 _479 = r0.www * r4.xyz;
    r3 = float4(_479.x, _479.y, _479.z, r3.w);
    float3 _486 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r4 = float4(_486.x, _486.y, _486.z, r4.w);
    float3 _497 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r4.xyz);
    r4 = float4(_497.x, _497.y, _497.z, r4.w);
    float4 _510 = r0;
    _510.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _510;
    float4 _515 = r0;
    _515.w = rsqrt(r0.w);
    r0 = _515;
    float3 _521 = r0.www * r4.xyz;
    r4 = float4(_521.x, _521.y, _521.z, r4.w);
    float3 _529 = r3.yzx * (-r4.xyz);
    r5 = float4(_529.x, _529.y, _529.z, r5.w);
    float3 _542 = ((-r4.zxy) * r3.zxy) + (-r5.xyz);
    r5 = float4(_542.x, _542.y, _542.z, r5.w);
    float3 _558 = o2;
    _558.x = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o2 = _558;
    float3 _573 = o2;
    _573.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o2 = _573;
    float2 _579 = -r4.xz;
    float3 _586 = o2;
    _586.y = mad(r2.zy.y, _579.y, r2.zy.x * _579.x);
    o2 = _586;
    float3 _595 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _607 = o3;
    _607.z = mad(_595.z, r3.xyz.z, mad(_595.y, r3.xyz.y, _595.x * r3.xyz.x));
    o3 = _607;
    float2 _614 = float2(cb1_m[1].z, cb1_m[1].y);
    float2 _617 = -r4.xz;
    float4 _624 = o3;
    _624.y = mad(_614.y, _617.y, _614.x * _617.x);
    o3 = _624;
    float3 _633 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _645 = o3;
    _645.x = mad(_633.z, r5.xyz.z, mad(_633.y, r5.xyz.y, _633.x * r5.xyz.x));
    o3 = _645;
    float3 _658 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r2 = float4(_658.x, _658.y, _658.z, r2.w);
    float3 _672 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_672.x, _672.y, _672.z, r0.w);
    float4 _682 = r0;
    _682.w = r2.y * cb0_m[13].x;
    r0 = _682;
    float4 _689 = r1;
    _689.z = r0.w * asfloat(3216550459u);
    r1 = _689;
    float4 _694 = r1;
    _694.z = exp2(r1.z);
    r1 = _694;
    float4 _701 = r1;
    _701.z = (-r1.z) + asfloat(1065353216u);
    r1 = _701;
    float4 _708 = r0;
    _708.w = r1.z / r0.w;
    r0 = _708;
    float4 _720 = r1;
    _720.z = asfloat((asfloat(1008981770u) < abs(r2.y)) ? 4294967295u : 0u);
    r1 = _720;
    float4 _735 = r1;
    _735.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _735;
    float4 _740 = r1;
    _740.w = sqrt(r1.w);
    r1 = _740;
    float4 _748 = r1;
    _748.w = r1.w * cb0_m[13].y;
    r1 = _748;
    float4 _758 = r0;
    _758.w = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _758;
    float4 _770 = r0;
    _770.w = (r0.w * r1.w) + (-cb0_m[13].w);
    r0 = _770;
    float4 _776 = r0;
    _776.w = exp2(-r0.w);
    r0 = _776;
    float4 _782 = r0;
    _782.w = min(r0.w, asfloat(1065353216u));
    r0 = _782;
    float4 _789 = o4;
    _789.w = (-r0.w) + asfloat(1065353216u);
    o4 = _789;
    float4 _804 = o4;
    _804.z = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o4 = _804;
    float2 _810 = -r4.xz;
    float4 _817 = o4;
    _817.y = mad(r0.zy.y, _810.y, r0.zy.x * _810.x);
    o4 = _817;
    float4 _832 = o4;
    _832.x = mad(r0.xyz.z, r5.xyz.z, mad(r0.xyz.y, r5.xyz.y, r0.xyz.x * r5.xyz.x));
    o4 = _832;
    float2 _841 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_841.x, _841.y, r0.z, r0.w);
    float2 _854 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_854.x, _854.y, r0.z, r0.w);
    float2 _866 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _866.x, _866.y);
    float2 _879 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_879.x, _879.y, r0.z, r0.w);
    float2 _890 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_890.x, _890.y, o5.z, o5.w);
    float2 _904 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_904.x, _904.y, r0.z, r0.w);
    float2 _918 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _918.x, _918.y);
    float2 _929 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _929.x, _929.y);
    float2 _940 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_940.x, _940.y, o6.z, o6.w);
}

void vert_main()
{
    float2 _945 = asfloat(v0);
    shader_in[0] = float4(_945.x, _945.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v1 = stage_input.v1;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
