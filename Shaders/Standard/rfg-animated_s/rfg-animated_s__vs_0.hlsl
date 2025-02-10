cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
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
    float4 _60 = r0;
    _60.w = asfloat(1065353216u);
    r0 = _60;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _70 = r1;
    _70.w = asfloat(1065353216u);
    r1 = _70;
    float4 _85 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _99 = r0;
    _99.x = mad(_85.w, r1.w, mad(_85.z, r1.z, mad(_85.y, r1.y, _85.x * r1.x)));
    r0 = _99;
    float4 _111 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _125 = r0;
    _125.y = mad(_111.w, r1.w, mad(_111.z, r1.z, mad(_111.y, r1.y, _111.x * r1.x)));
    r0 = _125;
    float4 _137 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _151 = r0;
    _151.z = mad(_137.w, r1.w, mad(_137.z, r1.z, mad(_137.y, r1.y, _137.x * r1.x)));
    r0 = _151;
    float4 _162 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _176 = o0;
    _176.x = mad(_162.w, r0.w, mad(_162.z, r0.z, mad(_162.y, r0.y, _162.x * r0.x)));
    o0 = _176;
    float4 _187 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _201 = o0;
    _201.y = mad(_187.w, r0.w, mad(_187.z, r0.z, mad(_187.y, r0.y, _187.x * r0.x)));
    o0 = _201;
    float4 _212 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _226 = o0;
    _226.z = mad(_212.w, r0.w, mad(_212.z, r0.z, mad(_212.y, r0.y, _212.x * r0.x)));
    o0 = _226;
    float4 _238 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _252 = o0;
    _252.w = mad(_238.w, r0.w, mad(_238.z, r0.z, mad(_238.y, r0.y, _238.x * r0.x)));
    o0 = _252;
    float2 _258 = float2(asint(shader_in[2].xy));
    r1 = float4(_258.x, _258.y, r1.z, r1.w);
    float2 _272 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(r1.x, r1.y, _272.x, _272.y);
    float2 _284 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r1.zw;
    r1 = float4(_284.x, _284.y, r1.z, r1.w);
    float2 _293 = o1;
    _293.x = r1.x * cb2_m[2].w;
    o1 = _293;
    float2 _301 = o1;
    _301.y = r1.y * cb2_m[3].x;
    o1 = _301;
    float3 _315 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_315.x, _315.y, _315.z, r1.w);
    float3 _325 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _338 = r2;
    _338.x = mad(_325.z, r1.xyz.z, mad(_325.y, r1.xyz.y, _325.x * r1.xyz.x));
    r2 = _338;
    float3 _347 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _359 = r2;
    _359.y = mad(_347.z, r1.xyz.z, mad(_347.y, r1.xyz.y, _347.x * r1.xyz.x));
    r2 = _359;
    float3 _368 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _380 = r2;
    _380.z = mad(_368.z, r1.xyz.z, mad(_368.y, r1.xyz.y, _368.x * r1.xyz.x));
    r2 = _380;
    float4 _395 = r0;
    _395.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _395;
    float4 _400 = r0;
    _400.w = rsqrt(r0.w);
    r0 = _400;
    float3 _406 = r0.www * r2.xyz;
    r1 = float4(_406.x, _406.y, _406.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _426 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _439 = r3;
    _439.x = mad(_426.z, r2.xyz.z, mad(_426.y, r2.xyz.y, _426.x * r2.xyz.x));
    r3 = _439;
    float3 _448 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _460 = r3;
    _460.y = mad(_448.z, r2.xyz.z, mad(_448.y, r2.xyz.y, _448.x * r2.xyz.x));
    r3 = _460;
    float3 _469 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _481 = r3;
    _481.z = mad(_469.z, r2.xyz.z, mad(_469.y, r2.xyz.y, _469.x * r2.xyz.x));
    r3 = _481;
    float4 _496 = r0;
    _496.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _496;
    float4 _501 = r0;
    _501.w = rsqrt(r0.w);
    r0 = _501;
    float3 _507 = r0.www * r3.xyz;
    r2 = float4(_507.x, _507.y, _507.z, r2.w);
    float3 _514 = r1.zxy * r2.yzx;
    r3 = float4(_514.x, _514.y, _514.z, r3.w);
    float3 _525 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_525.x, _525.y, _525.z, r3.w);
    float3 _532 = r2.www * r3.xyz;
    r3 = float4(_532.x, _532.y, _532.z, r3.w);
    float3 _542 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _554 = o2;
    _554.y = mad(_542.z, r3.xyz.z, mad(_542.y, r3.xyz.y, _542.x * r3.xyz.x));
    o2 = _554;
    float3 _563 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _575 = o2;
    _575.z = mad(_563.z, r1.xyz.z, mad(_563.y, r1.xyz.y, _563.x * r1.xyz.x));
    o2 = _575;
    float3 _584 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _596 = o2;
    _596.x = mad(_584.z, r2.xyz.z, mad(_584.y, r2.xyz.y, _584.x * r2.xyz.x));
    o2 = _596;
    float3 _610 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_610.x, _610.y, _610.z, r4.w);
    float3 _625 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_625.x, _625.y, _625.z, r0.w);
    float4 _641 = r0;
    _641.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _641;
    float4 _646 = r0;
    _646.w = rsqrt(r0.w);
    r0 = _646;
    float3 _652 = r0.www * r4.xyz;
    r4 = float4(_652.x, _652.y, _652.z, r4.w);
    float3 _668 = o3;
    _668.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _668;
    float4 _672 = o4;
    _672.x = r2.y;
    o4 = _672;
    float3 _687 = o3;
    _687.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _687;
    float4 _691 = o4;
    _691.z = r1.y;
    o4 = _691;
    float3 _706 = o3;
    _706.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _706;
    float4 _710 = o4;
    _710.y = r3.y;
    o4 = _710;
    float4 _719 = r0;
    _719.w = r0.y * cb0_m[13].x;
    r0 = _719;
    float4 _726 = r1;
    _726.x = r0.w * asfloat(3216550459u);
    r1 = _726;
    float4 _731 = r1;
    _731.x = exp2(r1.x);
    r1 = _731;
    float4 _738 = r1;
    _738.x = (-r1.x) + asfloat(1065353216u);
    r1 = _738;
    float4 _745 = r0;
    _745.w = r1.x / r0.w;
    r0 = _745;
    float4 _757 = r1;
    _757.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _757;
    float4 _772 = r0;
    _772.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _772;
    float4 _777 = r0;
    _777.x = sqrt(r0.x);
    r0 = _777;
    float4 _785 = r0;
    _785.x = r0.x * cb0_m[13].y;
    r0 = _785;
    float4 _795 = r0;
    _795.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _795;
    float4 _807 = r0;
    _807.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _807;
    float4 _813 = r0;
    _813.x = exp2(-r0.x);
    r0 = _813;
    float4 _819 = r0;
    _819.x = min(r0.x, asfloat(1065353216u));
    r0 = _819;
    float4 _826 = o4;
    _826.w = (-r0.x) + asfloat(1065353216u);
    o4 = _826;
    float2 _832 = float2(asint(shader_in[1].xy));
    r0 = float4(_832.x, _832.y, r0.z, r0.w);
    float2 _845 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _845.x, _845.y);
    float2 _854 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(_854.x, _854.y, o5.z, o5.w);
    float2 _861 = float2(asint(shader_in[3].xy));
    r0 = float4(_861.x, _861.y, r0.z, r0.w);
    float2 _874 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r0 = float4(r0.x, r0.y, _874.x, _874.y);
    float2 _883 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(o5.x, o5.y, _883.x, _883.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _892 = asfloat(v1);
    shader_in[1] = float4(_892.x, _892.y, shader_in[1].z, shader_in[1].w);
    float2 _897 = asfloat(v2);
    shader_in[2] = float4(_897.x, _897.y, shader_in[2].z, shader_in[2].w);
    float2 _902 = asfloat(v3);
    shader_in[3] = float4(_902.x, _902.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
