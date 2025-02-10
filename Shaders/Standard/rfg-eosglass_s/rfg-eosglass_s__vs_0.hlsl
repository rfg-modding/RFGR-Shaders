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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
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
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _77 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _91 = r0;
    _91.x = mad(_77.w, r1.w, mad(_77.z, r1.z, mad(_77.y, r1.y, _77.x * r1.x)));
    r0 = _91;
    float4 _103 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _117 = r0;
    _117.y = mad(_103.w, r1.w, mad(_103.z, r1.z, mad(_103.y, r1.y, _103.x * r1.x)));
    r0 = _117;
    float4 _129 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _143 = r0;
    _143.z = mad(_129.w, r1.w, mad(_129.z, r1.z, mad(_129.y, r1.y, _129.x * r1.x)));
    r0 = _143;
    float4 _154 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _168 = o0;
    _168.x = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    o0 = _168;
    float4 _179 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _193 = o0;
    _193.y = mad(_179.w, r0.w, mad(_179.z, r0.z, mad(_179.y, r0.y, _179.x * r0.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _218 = o0;
    _218.z = mad(_204.w, r0.w, mad(_204.z, r0.z, mad(_204.y, r0.y, _204.x * r0.x)));
    o0 = _218;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r0.w, mad(_230.z, r0.z, mad(_230.y, r0.y, _230.x * r0.x)));
    o0 = _244;
    float3 _258 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_258.x, _258.y, _258.z, r1.w);
    float3 _272 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_272.x, _272.y, _272.z, r0.w);
    float4 _288 = r0;
    _288.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _288;
    float4 _293 = r0;
    _293.w = rsqrt(r0.w);
    r0 = _293;
    float3 _299 = r0.www * r1.xyz;
    r1 = float4(_299.x, _299.y, _299.z, r1.w);
    float3 _313 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_313.x, _313.y, _313.z, r2.w);
    float3 _324 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _337 = r3;
    _337.x = mad(_324.z, r2.xyz.z, mad(_324.y, r2.xyz.y, _324.x * r2.xyz.x));
    r3 = _337;
    float3 _346 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _358 = r3;
    _358.y = mad(_346.z, r2.xyz.z, mad(_346.y, r2.xyz.y, _346.x * r2.xyz.x));
    r3 = _358;
    float3 _367 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _379 = r3;
    _379.z = mad(_367.z, r2.xyz.z, mad(_367.y, r2.xyz.y, _367.x * r2.xyz.x));
    r3 = _379;
    float4 _394 = r0;
    _394.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _394;
    float4 _399 = r0;
    _399.w = rsqrt(r0.w);
    r0 = _399;
    float3 _405 = r0.www * r3.xyz;
    r2 = float4(_405.x, _405.y, _405.z, r2.w);
    r3 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _424 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _437 = r4;
    _437.x = mad(_424.z, r3.xyz.z, mad(_424.y, r3.xyz.y, _424.x * r3.xyz.x));
    r4 = _437;
    float3 _446 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _458 = r4;
    _458.y = mad(_446.z, r3.xyz.z, mad(_446.y, r3.xyz.y, _446.x * r3.xyz.x));
    r4 = _458;
    float3 _467 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _479 = r4;
    _479.z = mad(_467.z, r3.xyz.z, mad(_467.y, r3.xyz.y, _467.x * r3.xyz.x));
    r4 = _479;
    float4 _494 = r0;
    _494.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _494;
    float4 _499 = r0;
    _499.w = rsqrt(r0.w);
    r0 = _499;
    float3 _505 = r0.www * r4.xyz;
    r3 = float4(_505.x, _505.y, _505.z, r3.w);
    float3 _512 = r2.zxy * r3.yzx;
    r4 = float4(_512.x, _512.y, _512.z, r4.w);
    float3 _523 = (r2.yzx * r3.zxy) + (-r4.xyz);
    r4 = float4(_523.x, _523.y, _523.z, r4.w);
    float3 _530 = r3.www * r4.xyz;
    r4 = float4(_530.x, _530.y, _530.z, r4.w);
    float3 _546 = o1;
    _546.y = mad(r1.xyz.z, r4.xyz.z, mad(r1.xyz.y, r4.xyz.y, r1.xyz.x * r4.xyz.x));
    o1 = _546;
    float3 _561 = o1;
    _561.x = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o1 = _561;
    float4 _576 = r0;
    _576.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _576;
    float3 _580 = o1;
    _580.z = r0.w;
    o1 = _580;
    float4 _587 = r0;
    _587.w = r0.w + r0.w;
    r0 = _587;
    float3 _597 = (r2.xyz * (-r0.www)) + r1.xyz;
    r1 = float4(_597.x, _597.y, _597.z, r1.w);
    o3 = r1.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u));
    float3 _612 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _624 = o2;
    _624.x = mad(_612.z, r3.xyz.z, mad(_612.y, r3.xyz.y, _612.x * r3.xyz.x));
    o2 = _624;
    float4 _628 = o4;
    _628.x = r3.y;
    o4 = _628;
    float3 _637 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _649 = o2;
    _649.z = mad(_637.z, r2.xyz.z, mad(_637.y, r2.xyz.y, _637.x * r2.xyz.x));
    o2 = _649;
    float4 _653 = o4;
    _653.z = r2.y;
    o4 = _653;
    float3 _662 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _674 = o2;
    _674.y = mad(_662.z, r4.xyz.z, mad(_662.y, r4.xyz.y, _662.x * r4.xyz.x));
    o2 = _674;
    float4 _678 = o4;
    _678.y = r4.y;
    o4 = _678;
    float4 _687 = r0;
    _687.w = r0.y * cb0_m[13].x;
    r0 = _687;
    float4 _694 = r1;
    _694.x = r0.w * asfloat(3216550459u);
    r1 = _694;
    float4 _699 = r1;
    _699.x = exp2(r1.x);
    r1 = _699;
    float4 _706 = r1;
    _706.x = (-r1.x) + asfloat(1065353216u);
    r1 = _706;
    float4 _713 = r0;
    _713.w = r1.x / r0.w;
    r0 = _713;
    float4 _725 = r1;
    _725.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _725;
    float4 _740 = r0;
    _740.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _740;
    float4 _745 = r0;
    _745.x = sqrt(r0.x);
    r0 = _745;
    float4 _753 = r0;
    _753.x = r0.x * cb0_m[13].y;
    r0 = _753;
    float4 _763 = r0;
    _763.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _763;
    float4 _775 = r0;
    _775.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _775;
    float4 _781 = r0;
    _781.x = exp2(-r0.x);
    r0 = _781;
    float4 _787 = r0;
    _787.x = min(r0.x, asfloat(1065353216u));
    r0 = _787;
    float4 _794 = o4;
    _794.w = (-r0.x) + asfloat(1065353216u);
    o4 = _794;
    float2 _801 = float2(asint(shader_in[1].xy));
    r0 = float4(_801.x, _801.y, r0.z, r0.w);
    float2 _810 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_810.x, _810.y, o5.z, o5.w);
    float2 _818 = float2(asint(shader_in[4].xy));
    r0 = float4(_818.x, _818.y, r0.z, r0.w);
    float2 _824 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _824.x, _824.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _833 = asfloat(v1);
    shader_in[1] = float4(_833.x, _833.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _844 = asfloat(v4);
    shader_in[4] = float4(_844.x, _844.y, shader_in[4].z, shader_in[4].w);
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
