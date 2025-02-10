cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
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

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _81 = r0;
    _81.x = mad(shader_in[2].w, r1.w, mad(shader_in[2].z, r1.z, mad(shader_in[2].y, r1.y, shader_in[2].x * r1.x)));
    r0 = _81;
    float4 _99 = r0;
    _99.y = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _99;
    float4 _117 = r0;
    _117.z = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _117;
    float4 _133 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _147 = o0;
    _147.x = mad(_133.w, r0.w, mad(_133.z, r0.z, mad(_133.y, r0.y, _133.x * r0.x)));
    o0 = _147;
    float4 _159 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _173 = o0;
    _173.y = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _184 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _198 = o0;
    _198.z = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _209 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _223 = o0;
    _223.w = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    o0 = _223;
    float4 _227 = r0;
    _227.w = asfloat(3212836864u);
    r0 = _227;
    float3 _241 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float3 _253 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _263 = r1;
    _263.w = mad(r1.xyz.z, _253.z, mad(r1.xyz.y, _253.y, r1.xyz.x * _253.x));
    r1 = _263;
    float4 _272 = r1;
    _272.w = r1.w * cb5_m[5].y;
    r1 = _272;
    float4 _280 = r2;
    _280.y = r0.w * r1.w;
    r2 = _280;
    float3 _291 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _302 = r3;
    _302.x = mad(r1.xyz.z, _291.z, mad(r1.xyz.y, _291.y, r1.xyz.x * _291.x));
    r3 = _302;
    float3 _313 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _323 = r3;
    _323.z = mad(r1.xyz.z, _313.z, mad(r1.xyz.y, _313.y, r1.xyz.x * _313.x));
    r3 = _323;
    float2 _333 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_333.x, r2.y, _333.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _345 = o3;
    _345.w = r2.z;
    o3 = _345;
    float3 _357 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_357.x, _357.y, _357.z, r1.w);
    float3 _371 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_371.x, _371.y, _371.z, r2.w);
    float3 _389 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_389.x, _389.y, _389.z, r2.w);
    float4 _405 = r0;
    _405.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _405;
    float4 _410 = r0;
    _410.w = rsqrt(r0.w);
    r0 = _410;
    float3 _416 = r0.www * r2.xyz;
    r2 = float4(_416.x, _416.y, _416.z, r2.w);
    float3 _423 = r1.zxy * r2.xyz;
    r3 = float4(_423.x, _423.y, _423.z, r3.w);
    float3 _434 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_434.x, _434.y, _434.z, r2.w);
    float4 _450 = r0;
    _450.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _450;
    float4 _455 = r0;
    _455.w = rsqrt(r0.w);
    r0 = _455;
    float3 _461 = r0.www * r2.xyz;
    r2 = float4(_461.x, _461.y, _461.z, r2.w);
    float4 _478 = r3;
    _478.x = mad(shader_in[2].xyz.z, r2.xyz.z, mad(shader_in[2].xyz.y, r2.xyz.y, shader_in[2].xyz.x * r2.xyz.x));
    r3 = _478;
    float4 _494 = r3;
    _494.y = mad(shader_in[3].xyz.z, r2.xyz.z, mad(shader_in[3].xyz.y, r2.xyz.y, shader_in[3].xyz.x * r2.xyz.x));
    r3 = _494;
    float4 _510 = r3;
    _510.z = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _510;
    float3 _519 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _531 = o3;
    _531.x = mad(_519.z, r2.xyz.z, mad(_519.y, r2.xyz.y, _519.x * r2.xyz.x));
    o3 = _531;
    float4 _546 = r0;
    _546.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _546;
    float4 _551 = r0;
    _551.w = rsqrt(r0.w);
    r0 = _551;
    float3 _557 = r0.www * r3.xyz;
    r2 = float4(_557.x, _557.y, _557.z, r2.w);
    float4 _574 = r3;
    _574.x = mad(shader_in[2].xyz.z, r1.xyz.z, mad(shader_in[2].xyz.y, r1.xyz.y, shader_in[2].xyz.x * r1.xyz.x));
    r3 = _574;
    float4 _590 = r3;
    _590.y = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r3 = _590;
    float4 _606 = r3;
    _606.z = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r3 = _606;
    float3 _615 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _627 = o3;
    _627.z = mad(_615.z, r1.xyz.z, mad(_615.y, r1.xyz.y, _615.x * r1.xyz.x));
    o3 = _627;
    float4 _642 = r0;
    _642.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _642;
    float4 _647 = r0;
    _647.w = rsqrt(r0.w);
    r0 = _647;
    float3 _653 = r0.www * r3.xyz;
    r1 = float4(_653.x, _653.y, _653.z, r1.w);
    float3 _660 = r2.yzx * r1.zxy;
    r3 = float4(_660.x, _660.y, _660.z, r3.w);
    float3 _671 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_671.x, _671.y, _671.z, r3.w);
    float3 _685 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_685.x, _685.y, _685.z, r4.w);
    float3 _701 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_701.x, _701.y, _701.z, r0.w);
    float3 _708 = -r3.xyz;
    float3 _718 = o2;
    _718.y = mad(r4.xyz.z, _708.z, mad(r4.xyz.y, _708.y, r4.xyz.x * _708.x));
    o2 = _718;
    float3 _733 = o2;
    _733.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _733;
    float3 _742 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _754 = o6;
    _754.x = mad(_742.z, r2.xyz.z, mad(_742.y, r2.xyz.y, _742.x * r2.xyz.x));
    o6 = _754;
    float3 _769 = o2;
    _769.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _769;
    float3 _778 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _790 = o6;
    _790.z = mad(_778.z, r1.xyz.z, mad(_778.y, r1.xyz.y, _778.x * r1.xyz.x));
    o6 = _790;
    float3 _799 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _811 = o3;
    _811.y = mad(_799.z, r3.xyz.z, mad(_799.y, r3.xyz.y, _799.x * r3.xyz.x));
    o3 = _811;
    float3 _820 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _823 = -r3.xyz;
    float4 _833 = o6;
    _833.y = mad(_820.z, _823.z, mad(_820.y, _823.y, _820.x * _823.x));
    o6 = _833;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _863 = r0;
    _863.w = r0.y * cb0_m[13].x;
    r0 = _863;
    float4 _870 = r1;
    _870.x = r0.w * asfloat(3216550459u);
    r1 = _870;
    float4 _875 = r1;
    _875.x = exp2(r1.x);
    r1 = _875;
    float4 _882 = r1;
    _882.x = (-r1.x) + asfloat(1065353216u);
    r1 = _882;
    float4 _889 = r0;
    _889.w = r1.x / r0.w;
    r0 = _889;
    float4 _901 = r1;
    _901.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _901;
    float4 _916 = r0;
    _916.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _916;
    float4 _921 = r0;
    _921.x = sqrt(r0.x);
    r0 = _921;
    float4 _929 = r0;
    _929.x = r0.x * cb0_m[13].y;
    r0 = _929;
    float4 _939 = r0;
    _939.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _939;
    float4 _951 = r0;
    _951.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _951;
    float4 _957 = r0;
    _957.x = exp2(-r0.x);
    r0 = _957;
    float4 _963 = r0;
    _963.x = min(r0.x, asfloat(1065353216u));
    r0 = _963;
    float4 _970 = o6;
    _970.w = (-r0.x) + asfloat(1065353216u);
    o6 = _970;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
