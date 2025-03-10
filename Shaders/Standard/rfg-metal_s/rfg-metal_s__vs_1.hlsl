cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
    float4 _81 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _95 = r0;
    _95.x = mad(_81.w, r1.w, mad(_81.z, r1.z, mad(_81.y, r1.y, _81.x * r1.x)));
    r0 = _95;
    float4 _107 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _121 = r0;
    _121.y = mad(_107.w, r1.w, mad(_107.z, r1.z, mad(_107.y, r1.y, _107.x * r1.x)));
    r0 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r0;
    _147.z = mad(_133.w, r1.w, mad(_133.z, r1.z, mad(_133.y, r1.y, _133.x * r1.x)));
    r0 = _147;
    float4 _158 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _172 = o0;
    _172.x = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _183 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _197 = o0;
    _197.y = mad(_183.w, r0.w, mad(_183.z, r0.z, mad(_183.y, r0.y, _183.x * r0.x)));
    o0 = _197;
    float4 _208 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _222 = o0;
    _222.z = mad(_208.w, r0.w, mad(_208.z, r0.z, mad(_208.y, r0.y, _208.x * r0.x)));
    o0 = _222;
    float4 _234 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _248 = o0;
    _248.w = mad(_234.w, r0.w, mad(_234.z, r0.z, mad(_234.y, r0.y, _234.x * r0.x)));
    o0 = _248;
    float2 _254 = float2(asint(shader_in[1].xy));
    r1 = float4(_254.x, _254.y, r1.z, r1.w);
    float2 _265 = r1.xy * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(_265.x, _265.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _286 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_286.x, _286.y, _286.z, r1.w);
    float3 _296 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _309 = r2;
    _309.x = mad(_296.z, r1.xyz.z, mad(_296.y, r1.xyz.y, _296.x * r1.xyz.x));
    r2 = _309;
    float3 _318 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _330 = r2;
    _330.y = mad(_318.z, r1.xyz.z, mad(_318.y, r1.xyz.y, _318.x * r1.xyz.x));
    r2 = _330;
    float3 _339 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _351 = r2;
    _351.z = mad(_339.z, r1.xyz.z, mad(_339.y, r1.xyz.y, _339.x * r1.xyz.x));
    r2 = _351;
    float4 _366 = r0;
    _366.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _366;
    float4 _371 = r0;
    _371.w = rsqrt(r0.w);
    r0 = _371;
    float3 _377 = r0.www * r2.xyz;
    r1 = float4(_377.x, _377.y, _377.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _396 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _409 = r3;
    _409.x = mad(_396.z, r2.xyz.z, mad(_396.y, r2.xyz.y, _396.x * r2.xyz.x));
    r3 = _409;
    float3 _418 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _430 = r3;
    _430.y = mad(_418.z, r2.xyz.z, mad(_418.y, r2.xyz.y, _418.x * r2.xyz.x));
    r3 = _430;
    float3 _439 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _451 = r3;
    _451.z = mad(_439.z, r2.xyz.z, mad(_439.y, r2.xyz.y, _439.x * r2.xyz.x));
    r3 = _451;
    float4 _466 = r0;
    _466.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _466;
    float4 _471 = r0;
    _471.w = rsqrt(r0.w);
    r0 = _471;
    float3 _477 = r0.www * r3.xyz;
    r2 = float4(_477.x, _477.y, _477.z, r2.w);
    float3 _484 = r1.zxy * r2.yzx;
    r3 = float4(_484.x, _484.y, _484.z, r3.w);
    float3 _495 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_495.x, _495.y, _495.z, r3.w);
    float3 _502 = r2.www * r3.xyz;
    r3 = float4(_502.x, _502.y, _502.z, r3.w);
    float3 _516 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_516.x, _516.y, _516.z, r4.w);
    float3 _533 = o2;
    _533.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _533;
    float3 _548 = o2;
    _548.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _548;
    float3 _563 = o2;
    _563.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _563;
    float3 _577 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_577.x, _577.y, _577.z, r4.w);
    float3 _591 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_591.x, _591.y, _591.z, r0.w);
    float4 _607 = r0;
    _607.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _607;
    float4 _612 = r0;
    _612.w = rsqrt(r0.w);
    r0 = _612;
    float3 _618 = r0.www * r4.xyz;
    r4 = float4(_618.x, _618.y, _618.z, r4.w);
    float3 _634 = o3;
    _634.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _634;
    float3 _643 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _655 = o4;
    _655.x = mad(_643.z, r2.xyz.z, mad(_643.y, r2.xyz.y, _643.x * r2.xyz.x));
    o4 = _655;
    float3 _670 = o3;
    _670.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _670;
    float3 _679 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _691 = o4;
    _691.z = mad(_679.z, r1.xyz.z, mad(_679.y, r1.xyz.y, _679.x * r1.xyz.x));
    o4 = _691;
    float3 _706 = o3;
    _706.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _706;
    float3 _715 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _727 = o4;
    _727.y = mad(_715.z, r3.xyz.z, mad(_715.y, r3.xyz.y, _715.x * r3.xyz.x));
    o4 = _727;
    float4 _736 = r0;
    _736.w = r0.y * cb0_m[13].x;
    r0 = _736;
    float4 _743 = r1;
    _743.x = r0.w * asfloat(3216550459u);
    r1 = _743;
    float4 _748 = r1;
    _748.x = exp2(r1.x);
    r1 = _748;
    float4 _755 = r1;
    _755.x = (-r1.x) + asfloat(1065353216u);
    r1 = _755;
    float4 _762 = r0;
    _762.w = r1.x / r0.w;
    r0 = _762;
    float4 _774 = r1;
    _774.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _774;
    float4 _789 = r0;
    _789.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _789;
    float4 _794 = r0;
    _794.x = sqrt(r0.x);
    r0 = _794;
    float4 _802 = r0;
    _802.x = r0.x * cb0_m[13].y;
    r0 = _802;
    float4 _812 = r0;
    _812.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _812;
    float4 _824 = r0;
    _824.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _824;
    float4 _830 = r0;
    _830.x = exp2(-r0.x);
    r0 = _830;
    float4 _836 = r0;
    _836.x = min(r0.x, asfloat(1065353216u));
    r0 = _836;
    float4 _843 = o4;
    _843.w = (-r0.x) + asfloat(1065353216u);
    o4 = _843;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _851 = asfloat(v1);
    shader_in[1] = float4(_851.x, _851.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
