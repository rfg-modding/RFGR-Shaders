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
static float3 v0;
static float3 v1;
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
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
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
    float4 _83 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _97 = r0;
    _97.y = mad(_83.w, r1.w, mad(_83.z, r1.z, mad(_83.y, r1.y, _83.x * r1.x)));
    r0 = _97;
    float4 _108 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _122 = r0;
    _122.x = mad(_108.w, r1.w, mad(_108.z, r1.z, mad(_108.y, r1.y, _108.x * r1.x)));
    r0 = _122;
    float4 _134 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _148 = r0;
    _148.z = mad(_134.w, r1.w, mad(_134.z, r1.z, mad(_134.y, r1.y, _134.x * r1.x)));
    r0 = _148;
    float4 _159 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _173 = o0;
    _173.x = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _184 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _198 = o0;
    _198.y = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _209 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _223 = o0;
    _223.z = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    o0 = _223;
    float4 _235 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _249 = o0;
    _249.w = mad(_235.w, r0.w, mad(_235.z, r0.z, mad(_235.y, r0.y, _235.x * r0.x)));
    o0 = _249;
    float2 _260 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_260.x, _260.y, r1.z, r1.w);
    float2 _277 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r1 = float4(r1.x, r1.y, _277.x, _277.y);
    o1 = r1.zw * float2(cb2_m[7].x, cb2_m[7].y);
    float3 _301 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_301.x, _301.y, _301.z, r2.w);
    float4 _318 = r0;
    _318.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _318;
    float4 _323 = r0;
    _323.w = rsqrt(r0.w);
    r0 = _323;
    float3 _329 = r0.www * r2.xyz;
    r2 = float4(_329.x, _329.y, _329.z, r2.w);
    float3 _343 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_343.x, _343.y, _343.z, r3.w);
    float3 _354 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _367 = r4;
    _367.x = mad(_354.z, r3.xyz.z, mad(_354.y, r3.xyz.y, _354.x * r3.xyz.x));
    r4 = _367;
    float3 _376 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _388 = r4;
    _388.y = mad(_376.z, r3.xyz.z, mad(_376.y, r3.xyz.y, _376.x * r3.xyz.x));
    r4 = _388;
    float3 _397 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _409 = r4;
    _409.z = mad(_397.z, r3.xyz.z, mad(_397.y, r3.xyz.y, _397.x * r3.xyz.x));
    r4 = _409;
    float4 _424 = r0;
    _424.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _424;
    float4 _429 = r0;
    _429.w = rsqrt(r0.w);
    r0 = _429;
    float3 _435 = r0.www * r4.xyz;
    r3 = float4(_435.x, _435.y, _435.z, r3.w);
    float3 _442 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r4 = float4(_442.x, _442.y, _442.z, r4.w);
    float3 _453 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r4.xyz);
    r4 = float4(_453.x, _453.y, _453.z, r4.w);
    float4 _466 = r0;
    _466.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _466;
    float4 _471 = r0;
    _471.w = rsqrt(r0.w);
    r0 = _471;
    float3 _477 = r0.www * r4.xyz;
    r4 = float4(_477.x, _477.y, _477.z, r4.w);
    float3 _485 = r3.yzx * (-r4.xyz);
    r5 = float4(_485.x, _485.y, _485.z, r5.w);
    float3 _498 = ((-r4.zxy) * r3.zxy) + (-r5.xyz);
    r5 = float4(_498.x, _498.y, _498.z, r5.w);
    float3 _514 = o2;
    _514.x = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o2 = _514;
    float2 _520 = -r4.xz;
    float3 _527 = o2;
    _527.y = mad(r2.zy.y, _520.y, r2.zy.x * _520.x);
    o2 = _527;
    float3 _542 = o2;
    _542.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o2 = _542;
    float3 _551 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _563 = o3;
    _563.z = mad(_551.z, r3.xyz.z, mad(_551.y, r3.xyz.y, _551.x * r3.xyz.x));
    o3 = _563;
    float2 _570 = float2(cb1_m[1].z, cb1_m[1].y);
    float2 _573 = -r4.xz;
    float4 _580 = o3;
    _580.y = mad(_570.y, _573.y, _570.x * _573.x);
    o3 = _580;
    float3 _589 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _601 = o3;
    _601.x = mad(_589.z, r5.xyz.z, mad(_589.y, r5.xyz.y, _589.x * r5.xyz.x));
    o3 = _601;
    float4 _608 = r0;
    _608.w = float(asint(shader_in[2].x));
    r0 = _608;
    float4 _615 = o3;
    _615.w = r0.w * asfloat(981467136u);
    o3 = _615;
    float3 _628 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r2 = float4(_628.x, _628.y, _628.z, r2.w);
    float3 _642 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_642.x, _642.y, _642.z, r0.w);
    float4 _652 = r0;
    _652.w = r2.y * cb0_m[13].x;
    r0 = _652;
    float4 _659 = r1;
    _659.z = r0.w * asfloat(3216550459u);
    r1 = _659;
    float4 _664 = r1;
    _664.z = exp2(r1.z);
    r1 = _664;
    float4 _671 = r1;
    _671.z = (-r1.z) + asfloat(1065353216u);
    r1 = _671;
    float4 _678 = r0;
    _678.w = r1.z / r0.w;
    r0 = _678;
    float4 _690 = r1;
    _690.z = asfloat((asfloat(1008981770u) < abs(r2.y)) ? 4294967295u : 0u);
    r1 = _690;
    float4 _705 = r1;
    _705.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _705;
    float4 _710 = r1;
    _710.w = sqrt(r1.w);
    r1 = _710;
    float4 _718 = r1;
    _718.w = r1.w * cb0_m[13].y;
    r1 = _718;
    float4 _728 = r0;
    _728.w = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _728;
    float4 _740 = r0;
    _740.w = (r0.w * r1.w) + (-cb0_m[13].w);
    r0 = _740;
    float4 _746 = r0;
    _746.w = exp2(-r0.w);
    r0 = _746;
    float4 _752 = r0;
    _752.w = min(r0.w, asfloat(1065353216u));
    r0 = _752;
    float4 _759 = o4;
    _759.w = (-r0.w) + asfloat(1065353216u);
    o4 = _759;
    float4 _774 = o4;
    _774.z = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o4 = _774;
    float2 _780 = -r4.xz;
    float4 _787 = o4;
    _787.y = mad(r0.zy.y, _780.y, r0.zy.x * _780.x);
    o4 = _787;
    float4 _802 = o4;
    _802.x = mad(r0.xyz.z, r5.xyz.z, mad(r0.xyz.y, r5.xyz.y, r0.xyz.x * r5.xyz.x));
    o4 = _802;
    float2 _811 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_811.x, _811.y, r0.z, r0.w);
    float2 _824 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_824.x, _824.y, r0.z, r0.w);
    float2 _835 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _835.x, _835.y);
    float2 _848 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_848.x, _848.y, r0.z, r0.w);
    float2 _859 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_859.x, _859.y, o5.z, o5.w);
    float2 _873 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_873.x, _873.y, r0.z, r0.w);
    float2 _887 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _887.x, _887.y);
    float2 _898 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _898.x, _898.y);
    float2 _909 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_909.x, _909.y, o6.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _924 = shader_in[2];
    _924.x = asfloat(v2);
    shader_in[2] = _924;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
