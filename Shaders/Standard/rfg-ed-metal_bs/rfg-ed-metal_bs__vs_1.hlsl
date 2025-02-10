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
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static int2 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float2 v5 : TEXCOORD5;
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
    float2 _237 = float2(asint(shader_in[4].xy));
    r1 = float4(_237.x, _237.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _258 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_258.x, _258.y, _258.z, r1.w);
    float4 _276 = r2;
    _276.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _276;
    float4 _292 = r2;
    _292.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _292;
    float4 _308 = r2;
    _308.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _308;
    float4 _323 = r0;
    _323.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _323;
    float4 _328 = r0;
    _328.w = rsqrt(r0.w);
    r0 = _328;
    float3 _334 = r0.www * r2.xyz;
    r1 = float4(_334.x, _334.y, _334.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _361 = r3;
    _361.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _361;
    float4 _377 = r3;
    _377.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _377;
    float4 _393 = r3;
    _393.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _393;
    float4 _408 = r0;
    _408.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _408;
    float4 _413 = r0;
    _413.w = rsqrt(r0.w);
    r0 = _413;
    float3 _419 = r0.www * r3.xyz;
    r2 = float4(_419.x, _419.y, _419.z, r2.w);
    float3 _426 = r1.zxy * r2.yzx;
    r3 = float4(_426.x, _426.y, _426.z, r3.w);
    float3 _437 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_437.x, _437.y, _437.z, r3.w);
    float3 _444 = r2.www * r3.xyz;
    r3 = float4(_444.x, _444.y, _444.z, r3.w);
    float3 _458 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_458.x, _458.y, _458.z, r4.w);
    float3 _475 = o2;
    _475.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _475;
    float3 _490 = o2;
    _490.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _490;
    float3 _505 = o2;
    _505.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _505;
    float3 _519 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_519.x, _519.y, _519.z, r4.w);
    float3 _533 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_533.x, _533.y, _533.z, r0.w);
    float4 _549 = r0;
    _549.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _549;
    float4 _554 = r0;
    _554.w = rsqrt(r0.w);
    r0 = _554;
    float3 _560 = r0.www * r4.xyz;
    r4 = float4(_560.x, _560.y, _560.z, r4.w);
    float3 _576 = o3;
    _576.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _576;
    float3 _585 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _597 = o4;
    _597.x = mad(_585.z, r2.xyz.z, mad(_585.y, r2.xyz.y, _585.x * r2.xyz.x));
    o4 = _597;
    float3 _612 = o3;
    _612.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _612;
    float3 _621 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _633 = o4;
    _633.z = mad(_621.z, r1.xyz.z, mad(_621.y, r1.xyz.y, _621.x * r1.xyz.x));
    o4 = _633;
    float3 _648 = o3;
    _648.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _648;
    float3 _657 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _669 = o4;
    _669.y = mad(_657.z, r3.xyz.z, mad(_657.y, r3.xyz.y, _657.x * r3.xyz.x));
    o4 = _669;
    float4 _678 = r0;
    _678.w = r0.y * cb0_m[13].x;
    r0 = _678;
    float4 _685 = r1;
    _685.x = r0.w * asfloat(3216550459u);
    r1 = _685;
    float4 _690 = r1;
    _690.x = exp2(r1.x);
    r1 = _690;
    float4 _697 = r1;
    _697.x = (-r1.x) + asfloat(1065353216u);
    r1 = _697;
    float4 _704 = r0;
    _704.w = r1.x / r0.w;
    r0 = _704;
    float4 _716 = r1;
    _716.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _716;
    float4 _731 = r0;
    _731.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _731;
    float4 _736 = r0;
    _736.x = sqrt(r0.x);
    r0 = _736;
    float4 _744 = r0;
    _744.x = r0.x * cb0_m[13].y;
    r0 = _744;
    float4 _754 = r0;
    _754.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _754;
    float4 _766 = r0;
    _766.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _766;
    float4 _772 = r0;
    _772.x = exp2(-r0.x);
    r0 = _772;
    float4 _778 = r0;
    _778.x = min(r0.x, asfloat(1065353216u));
    r0 = _778;
    float4 _785 = o4;
    _785.w = (-r0.x) + asfloat(1065353216u);
    o4 = _785;
    float2 _791 = float2(asint(shader_in[1].xy));
    r0 = float4(_791.x, _791.y, r0.z, r0.w);
    float2 _802 = r0.xy * float2(cb2_m[3].x, cb2_m[3].y);
    r0 = float4(_802.x, _802.y, r0.z, r0.w);
    float2 _808 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_808.x, _808.y, o5.z, o5.w);
    float2 _816 = float2(asint(shader_in[5].xy));
    r0 = float4(_816.x, _816.y, r0.z, r0.w);
    float2 _827 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r0 = float4(_827.x, _827.y, r0.z, r0.w);
    float2 _833 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _833.x, _833.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _842 = asfloat(v1);
    shader_in[1] = float4(_842.x, _842.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _853 = asfloat(v4);
    shader_in[4] = float4(_853.x, _853.y, shader_in[4].z, shader_in[4].w);
    float2 _858 = asfloat(v5);
    shader_in[5] = float4(_858.x, _858.y, shader_in[5].z, shader_in[5].w);
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
