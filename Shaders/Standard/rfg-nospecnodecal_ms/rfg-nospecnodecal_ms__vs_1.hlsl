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
    float3 _541 = (-r1.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_541.x, _541.y, _541.z, r4.w);
    float3 _557 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_557.x, _557.y, _557.z, r1.w);
    float3 _573 = o2;
    _573.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _573;
    float3 _582 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _594 = o3;
    _594.y = mad(_582.z, r3.xyz.z, mad(_582.y, r3.xyz.y, _582.x * r3.xyz.x));
    o3 = _594;
    float3 _609 = o2;
    _609.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o2 = _609;
    float3 _618 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _630 = o3;
    _630.z = mad(_618.z, r0.xyz.z, mad(_618.y, r0.xyz.y, _618.x * r0.xyz.x));
    o3 = _630;
    float3 _645 = o2;
    _645.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _645;
    float3 _654 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _666 = o3;
    _666.x = mad(_654.z, r2.xyz.z, mad(_654.y, r2.xyz.y, _654.x * r2.xyz.x));
    o3 = _666;
    float4 _675 = r0;
    _675.x = r1.y * cb0_m[13].x;
    r0 = _675;
    float4 _682 = r0;
    _682.y = r0.x * asfloat(3216550459u);
    r0 = _682;
    float4 _687 = r0;
    _687.y = exp2(r0.y);
    r0 = _687;
    float4 _694 = r0;
    _694.y = (-r0.y) + asfloat(1065353216u);
    r0 = _694;
    float4 _701 = r0;
    _701.x = r0.y / r0.x;
    r0 = _701;
    float4 _713 = r0;
    _713.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _713;
    float4 _728 = r0;
    _728.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _728;
    float4 _733 = r0;
    _733.z = sqrt(r0.z);
    r0 = _733;
    float4 _741 = r0;
    _741.z = r0.z * cb0_m[13].y;
    r0 = _741;
    float4 _751 = r0;
    _751.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _751;
    float4 _763 = r0;
    _763.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _763;
    float4 _769 = r0;
    _769.x = exp2(-r0.x);
    r0 = _769;
    float4 _775 = r0;
    _775.x = min(r0.x, asfloat(1065353216u));
    r0 = _775;
    float4 _782 = o3;
    _782.w = (-r0.x) + asfloat(1065353216u);
    o3 = _782;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _790 = asfloat(v1);
    shader_in[1] = float4(_790.x, _790.y, shader_in[1].z, shader_in[1].w);
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
