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
static float3 v4;
static float3 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _59 = r0;
    _59.x = shader_in[5].x * asfloat(1082130432u);
    r0 = _59;
    float3 _72 = (r0.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r0 = float4(_72.x, _72.y, _72.z, r0.w);
    float4 _77 = r0;
    _77.w = asfloat(1065353216u);
    r0 = _77;
    float4 _92 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _107 = r1;
    _107.x = mad(_92.w, r0.w, mad(_92.z, r0.z, mad(_92.y, r0.y, _92.x * r0.x)));
    r1 = _107;
    float4 _119 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _133 = r1;
    _133.y = mad(_119.w, r0.w, mad(_119.z, r0.z, mad(_119.y, r0.y, _119.x * r0.x)));
    r1 = _133;
    float4 _145 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _159 = r1;
    _159.z = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    r1 = _159;
    float4 _162 = r1;
    _162.w = asfloat(1065353216u);
    r1 = _162;
    float4 _173 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _187 = o0;
    _187.x = mad(_173.w, r1.w, mad(_173.z, r1.z, mad(_173.y, r1.y, _173.x * r1.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _212 = o0;
    _212.y = mad(_198.w, r1.w, mad(_198.z, r1.z, mad(_198.y, r1.y, _198.x * r1.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _237 = o0;
    _237.z = mad(_223.w, r1.w, mad(_223.z, r1.z, mad(_223.y, r1.y, _223.x * r1.x)));
    o0 = _237;
    float4 _249 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _263 = o0;
    _263.w = mad(_249.w, r1.w, mad(_249.z, r1.z, mad(_249.y, r1.y, _249.x * r1.x)));
    o0 = _263;
    float2 _269 = float2(asint(shader_in[1].xy));
    r0 = float4(_269.x, _269.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _290 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_290.x, _290.y, _290.z, r0.w);
    float3 _300 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_300.x, _300.y, _300.z, r2.w);
    float3 _312 = (shader_in[5].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_312.x, _312.y, _312.z, r0.w);
    float3 _322 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _334 = r2;
    _334.x = mad(_322.z, r0.xyz.z, mad(_322.y, r0.xyz.y, _322.x * r0.xyz.x));
    r2 = _334;
    float3 _343 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _355 = r2;
    _355.y = mad(_343.z, r0.xyz.z, mad(_343.y, r0.xyz.y, _343.x * r0.xyz.x));
    r2 = _355;
    float3 _364 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _376 = r2;
    _376.z = mad(_364.z, r0.xyz.z, mad(_364.y, r0.xyz.y, _364.x * r0.xyz.x));
    r2 = _376;
    float4 _391 = r0;
    _391.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _391;
    float4 _396 = r0;
    _396.x = rsqrt(r0.x);
    r0 = _396;
    float3 _402 = r0.xxx * r2.xyz;
    r0 = float4(_402.x, _402.y, _402.z, r0.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _421 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _434 = r3;
    _434.x = mad(_421.z, r2.xyz.z, mad(_421.y, r2.xyz.y, _421.x * r2.xyz.x));
    r3 = _434;
    float3 _443 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _455 = r3;
    _455.y = mad(_443.z, r2.xyz.z, mad(_443.y, r2.xyz.y, _443.x * r2.xyz.x));
    r3 = _455;
    float3 _464 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _476 = r3;
    _476.z = mad(_464.z, r2.xyz.z, mad(_464.y, r2.xyz.y, _464.x * r2.xyz.x));
    r3 = _476;
    float4 _491 = r0;
    _491.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _491;
    float4 _496 = r0;
    _496.w = rsqrt(r0.w);
    r0 = _496;
    float3 _502 = r0.www * r3.xyz;
    r2 = float4(_502.x, _502.y, _502.z, r2.w);
    float3 _509 = r0.zxy * r2.yzx;
    r3 = float4(_509.x, _509.y, _509.z, r3.w);
    float3 _520 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_520.x, _520.y, _520.z, r3.w);
    float3 _527 = r2.www * r3.xyz;
    r3 = float4(_527.x, _527.y, _527.z, r3.w);
    float3 _542 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_542.x, _542.y, _542.z, r4.w);
    float3 _557 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_557.x, _557.y, _557.z, r1.w);
    float3 _573 = o2;
    _573.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _573;
    float3 _588 = o2;
    _588.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o2 = _588;
    float3 _603 = o2;
    _603.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _603;
    float4 _612 = r0;
    _612.w = r1.y * cb0_m[13].x;
    r0 = _612;
    float4 _619 = r1;
    _619.w = r0.w * asfloat(3216550459u);
    r1 = _619;
    float4 _624 = r1;
    _624.w = exp2(r1.w);
    r1 = _624;
    float4 _631 = r1;
    _631.w = (-r1.w) + asfloat(1065353216u);
    r1 = _631;
    float4 _638 = r0;
    _638.w = r1.w / r0.w;
    r0 = _638;
    float4 _650 = r1;
    _650.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _650;
    float4 _665 = r1;
    _665.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _665;
    float4 _670 = r1;
    _670.x = sqrt(r1.x);
    r1 = _670;
    float4 _678 = r1;
    _678.x = r1.x * cb0_m[13].y;
    r1 = _678;
    float4 _688 = r0;
    _688.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _688;
    float4 _700 = r0;
    _700.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _700;
    float4 _706 = r0;
    _706.w = exp2(-r0.w);
    r0 = _706;
    float4 _712 = r0;
    _712.w = min(r0.w, asfloat(1065353216u));
    r0 = _712;
    float4 _719 = o3;
    _719.w = (-r0.w) + asfloat(1065353216u);
    o3 = _719;
    float2 _726 = float2(cb1_m[0].x, cb1_m[0].z);
    float2 _732 = float2(cb1_m[0].x, cb1_m[0].z);
    float4 _739 = r0;
    _739.w = mad(_726.y, _732.y, _726.x * _732.x);
    r0 = _739;
    float4 _744 = r0;
    _744.w = sqrt(r0.w);
    r0 = _744;
    float4 _752 = r0;
    _752.w = asfloat((asfloat(0u) < r0.w) ? 4294967295u : 0u);
    r0 = _752;
    float4 _759 = r0;
    _759.w = asfloat(asuint(r0.w) & 1065353216u);
    r0 = _759;
    float2 _766 = float2(cb1_m[0].x, cb1_m[0].z);
    r1 = float4(_766.x, r1.y, _766.y, r1.w);
    float4 _770 = r1;
    _770.y = asfloat(0u);
    r1 = _770;
    float3 _783 = r1.xyz + (-float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z));
    r1 = float4(_783.x, _783.y, _783.z, r1.w);
    float3 _799 = (r0.www * r1.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_799.x, _799.y, _799.z, r1.w);
    float4 _815 = r0;
    _815.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _815;
    float4 _820 = r0;
    _820.w = rsqrt(r0.w);
    r0 = _820;
    float3 _826 = r0.www * r1.xyz;
    r1 = float4(_826.x, _826.y, _826.z, r1.w);
    float4 _842 = o3;
    _842.z = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    o3 = _842;
    float4 _857 = o3;
    _857.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    o3 = _857;
    float4 _872 = o3;
    _872.y = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o3 = _872;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _880 = asfloat(v1);
    shader_in[1] = float4(_880.x, _880.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
