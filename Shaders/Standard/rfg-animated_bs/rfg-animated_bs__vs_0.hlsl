cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
    float3 _490 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _502 = o2;
    _502.y = mad(_490.z, r3.xyz.z, mad(_490.y, r3.xyz.y, _490.x * r3.xyz.x));
    o2 = _502;
    float3 _511 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _523 = o2;
    _523.z = mad(_511.z, r1.xyz.z, mad(_511.y, r1.xyz.y, _511.x * r1.xyz.x));
    o2 = _523;
    float3 _532 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _544 = o2;
    _544.x = mad(_532.z, r2.xyz.z, mad(_532.y, r2.xyz.y, _532.x * r2.xyz.x));
    o2 = _544;
    float3 _558 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_558.x, _558.y, _558.z, r4.w);
    float3 _573 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_573.x, _573.y, _573.z, r0.w);
    float4 _589 = r0;
    _589.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _589;
    float4 _594 = r0;
    _594.w = rsqrt(r0.w);
    r0 = _594;
    float3 _600 = r0.www * r4.xyz;
    r4 = float4(_600.x, _600.y, _600.z, r4.w);
    float3 _616 = o3;
    _616.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _616;
    float4 _620 = o4;
    _620.x = r2.y;
    o4 = _620;
    float3 _635 = o3;
    _635.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _635;
    float4 _639 = o4;
    _639.z = r1.y;
    o4 = _639;
    float3 _654 = o3;
    _654.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _654;
    float4 _658 = o4;
    _658.y = r3.y;
    o4 = _658;
    float4 _667 = r0;
    _667.w = r0.y * cb0_m[13].x;
    r0 = _667;
    float4 _674 = r1;
    _674.x = r0.w * asfloat(3216550459u);
    r1 = _674;
    float4 _679 = r1;
    _679.x = exp2(r1.x);
    r1 = _679;
    float4 _686 = r1;
    _686.x = (-r1.x) + asfloat(1065353216u);
    r1 = _686;
    float4 _693 = r0;
    _693.w = r1.x / r0.w;
    r0 = _693;
    float4 _705 = r1;
    _705.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _705;
    float4 _720 = r0;
    _720.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _720;
    float4 _725 = r0;
    _725.x = sqrt(r0.x);
    r0 = _725;
    float4 _733 = r0;
    _733.x = r0.x * cb0_m[13].y;
    r0 = _733;
    float4 _743 = r0;
    _743.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _743;
    float4 _755 = r0;
    _755.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _755;
    float4 _761 = r0;
    _761.x = exp2(-r0.x);
    r0 = _761;
    float4 _767 = r0;
    _767.x = min(r0.x, asfloat(1065353216u));
    r0 = _767;
    float4 _774 = o4;
    _774.w = (-r0.x) + asfloat(1065353216u);
    o4 = _774;
    float2 _780 = float2(asint(shader_in[1].xy));
    r0 = float4(_780.x, _780.y, r0.z, r0.w);
    float2 _793 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _793.x, _793.y);
    float2 _802 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(_802.x, _802.y, o5.z, o5.w);
    float2 _809 = float2(asint(shader_in[3].xy));
    r0 = float4(_809.x, _809.y, r0.z, r0.w);
    float2 _822 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r0 = float4(r0.x, r0.y, _822.x, _822.y);
    float2 _831 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(o5.x, o5.y, _831.x, _831.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _840 = asfloat(v1);
    shader_in[1] = float4(_840.x, _840.y, shader_in[1].z, shader_in[1].w);
    float2 _845 = asfloat(v2);
    shader_in[2] = float4(_845.x, _845.y, shader_in[2].z, shader_in[2].w);
    float2 _850 = asfloat(v3);
    shader_in[3] = float4(_850.x, _850.y, shader_in[3].z, shader_in[3].w);
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
