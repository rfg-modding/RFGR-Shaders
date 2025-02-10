cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _68 = r1;
    _68.w = asfloat(1065353216u);
    r1 = _68;
    float4 _86 = r0;
    _86.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _86;
    float4 _104 = r0;
    _104.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _104;
    float4 _122 = r0;
    _122.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _122;
    float4 _138 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _152 = o0;
    _152.x = mad(_138.w, r0.w, mad(_138.z, r0.z, mad(_138.y, r0.y, _138.x * r0.x)));
    o0 = _152;
    float4 _164 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _178 = o0;
    _178.y = mad(_164.w, r0.w, mad(_164.z, r0.z, mad(_164.y, r0.y, _164.x * r0.x)));
    o0 = _178;
    float4 _190 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _204 = o0;
    _204.z = mad(_190.w, r0.w, mad(_190.z, r0.z, mad(_190.y, r0.y, _190.x * r0.x)));
    o0 = _204;
    float4 _216 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _230 = o0;
    _230.w = mad(_216.w, r0.w, mad(_216.z, r0.z, mad(_216.y, r0.y, _216.x * r0.x)));
    o0 = _230;
    float2 _236 = float2(asint(shader_in[2].xy));
    r1 = float4(_236.x, _236.y, r1.z, r1.w);
    float2 _250 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(r1.x, r1.y, _250.x, _250.y);
    float2 _262 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r1.zw;
    r1 = float4(_262.x, _262.y, r1.z, r1.w);
    float2 _271 = o1;
    _271.x = r1.x * cb2_m[2].w;
    o1 = _271;
    float2 _279 = o1;
    _279.y = r1.y * cb2_m[3].x;
    o1 = _279;
    float3 _293 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_293.x, _293.y, _293.z, r1.w);
    float4 _311 = r2;
    _311.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _311;
    float4 _327 = r2;
    _327.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _327;
    float4 _343 = r2;
    _343.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _343;
    float4 _358 = r0;
    _358.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _358;
    float4 _363 = r0;
    _363.w = rsqrt(r0.w);
    r0 = _363;
    float3 _369 = r0.www * r2.xyz;
    r1 = float4(_369.x, _369.y, _369.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _397 = r3;
    _397.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _397;
    float4 _413 = r3;
    _413.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _413;
    float4 _429 = r3;
    _429.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _429;
    float4 _444 = r0;
    _444.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _444;
    float4 _449 = r0;
    _449.w = rsqrt(r0.w);
    r0 = _449;
    float3 _455 = r0.www * r3.xyz;
    r2 = float4(_455.x, _455.y, _455.z, r2.w);
    float3 _462 = r1.zxy * r2.yzx;
    r3 = float4(_462.x, _462.y, _462.z, r3.w);
    float3 _473 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_473.x, _473.y, _473.z, r3.w);
    float3 _480 = r2.www * r3.xyz;
    r3 = float4(_480.x, _480.y, _480.z, r3.w);
    float3 _494 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_494.x, _494.y, _494.z, r4.w);
    float3 _511 = o2;
    _511.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _511;
    float3 _526 = o2;
    _526.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _526;
    float3 _541 = o2;
    _541.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _541;
    float3 _555 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_555.x, _555.y, _555.z, r4.w);
    float3 _569 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_569.x, _569.y, _569.z, r0.w);
    float4 _585 = r0;
    _585.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _585;
    float4 _590 = r0;
    _590.w = rsqrt(r0.w);
    r0 = _590;
    float3 _596 = r0.www * r4.xyz;
    r4 = float4(_596.x, _596.y, _596.z, r4.w);
    float3 _612 = o3;
    _612.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _612;
    float3 _621 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _633 = o4;
    _633.x = mad(_621.z, r2.xyz.z, mad(_621.y, r2.xyz.y, _621.x * r2.xyz.x));
    o4 = _633;
    float3 _648 = o3;
    _648.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _648;
    float3 _657 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _669 = o4;
    _669.z = mad(_657.z, r1.xyz.z, mad(_657.y, r1.xyz.y, _657.x * r1.xyz.x));
    o4 = _669;
    float3 _684 = o3;
    _684.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _684;
    float3 _693 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _705 = o4;
    _705.y = mad(_693.z, r3.xyz.z, mad(_693.y, r3.xyz.y, _693.x * r3.xyz.x));
    o4 = _705;
    float4 _714 = r0;
    _714.w = r0.y * cb0_m[13].x;
    r0 = _714;
    float4 _721 = r1;
    _721.x = r0.w * asfloat(3216550459u);
    r1 = _721;
    float4 _726 = r1;
    _726.x = exp2(r1.x);
    r1 = _726;
    float4 _733 = r1;
    _733.x = (-r1.x) + asfloat(1065353216u);
    r1 = _733;
    float4 _740 = r0;
    _740.w = r1.x / r0.w;
    r0 = _740;
    float4 _752 = r1;
    _752.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _752;
    float4 _767 = r0;
    _767.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _767;
    float4 _772 = r0;
    _772.x = sqrt(r0.x);
    r0 = _772;
    float4 _780 = r0;
    _780.x = r0.x * cb0_m[13].y;
    r0 = _780;
    float4 _790 = r0;
    _790.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _790;
    float4 _802 = r0;
    _802.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _802;
    float4 _808 = r0;
    _808.x = exp2(-r0.x);
    r0 = _808;
    float4 _814 = r0;
    _814.x = min(r0.x, asfloat(1065353216u));
    r0 = _814;
    float4 _821 = o4;
    _821.w = (-r0.x) + asfloat(1065353216u);
    o4 = _821;
    float2 _827 = float2(asint(shader_in[1].xy));
    r0 = float4(_827.x, _827.y, r0.z, r0.w);
    float2 _840 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _840.x, _840.y);
    float2 _849 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(_849.x, _849.y, o5.z, o5.w);
    float2 _856 = float2(asint(shader_in[3].xy));
    r0 = float4(_856.x, _856.y, r0.z, r0.w);
    float2 _869 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r0 = float4(r0.x, r0.y, _869.x, _869.y);
    float2 _878 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(o5.x, o5.y, _878.x, _878.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _887 = asfloat(v1);
    shader_in[1] = float4(_887.x, _887.y, shader_in[1].z, shader_in[1].w);
    float2 _892 = asfloat(v2);
    shader_in[2] = float4(_892.x, _892.y, shader_in[2].z, shader_in[2].w);
    float2 _897 = asfloat(v3);
    shader_in[3] = float4(_897.x, _897.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
