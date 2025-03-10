cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float3 o3;
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
    float3 _277 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_277.x, _277.y, _277.z, r0.w);
    float2 _284 = float2(asint(shader_in[1].xy));
    r1 = float4(_284.x, _284.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _305 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_305.x, _305.y, _305.z, r1.w);
    float3 _315 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_315.x, _315.y, _315.z, r2.w);
    float3 _327 = (shader_in[5].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_327.x, _327.y, _327.z, r1.w);
    float3 _337 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _349 = r2;
    _349.x = mad(_337.z, r1.xyz.z, mad(_337.y, r1.xyz.y, _337.x * r1.xyz.x));
    r2 = _349;
    float3 _358 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _370 = r2;
    _370.y = mad(_358.z, r1.xyz.z, mad(_358.y, r1.xyz.y, _358.x * r1.xyz.x));
    r2 = _370;
    float3 _379 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _391 = r2;
    _391.z = mad(_379.z, r1.xyz.z, mad(_379.y, r1.xyz.y, _379.x * r1.xyz.x));
    r2 = _391;
    float4 _406 = r0;
    _406.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _406;
    float4 _411 = r0;
    _411.w = rsqrt(r0.w);
    r0 = _411;
    float3 _417 = r0.www * r2.xyz;
    r1 = float4(_417.x, _417.y, _417.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _436 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _449 = r3;
    _449.x = mad(_436.z, r2.xyz.z, mad(_436.y, r2.xyz.y, _436.x * r2.xyz.x));
    r3 = _449;
    float3 _458 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _470 = r3;
    _470.y = mad(_458.z, r2.xyz.z, mad(_458.y, r2.xyz.y, _458.x * r2.xyz.x));
    r3 = _470;
    float3 _479 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _491 = r3;
    _491.z = mad(_479.z, r2.xyz.z, mad(_479.y, r2.xyz.y, _479.x * r2.xyz.x));
    r3 = _491;
    float4 _506 = r0;
    _506.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _506;
    float4 _511 = r0;
    _511.w = rsqrt(r0.w);
    r0 = _511;
    float3 _517 = r0.www * r3.xyz;
    r2 = float4(_517.x, _517.y, _517.z, r2.w);
    float3 _524 = r1.zxy * r2.yzx;
    r3 = float4(_524.x, _524.y, _524.z, r3.w);
    float3 _535 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_535.x, _535.y, _535.z, r3.w);
    float3 _542 = r2.www * r3.xyz;
    r3 = float4(_542.x, _542.y, _542.z, r3.w);
    float3 _558 = o2;
    _558.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _558;
    float3 _573 = o2;
    _573.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _573;
    float3 _588 = o2;
    _588.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _588;
    float2 _595 = float2(cb1_m[0].x, cb1_m[0].z);
    float2 _601 = float2(cb1_m[0].x, cb1_m[0].z);
    float4 _608 = r0;
    _608.x = mad(_595.y, _601.y, _595.x * _601.x);
    r0 = _608;
    float4 _613 = r0;
    _613.x = sqrt(r0.x);
    r0 = _613;
    float4 _623 = r0;
    _623.x = asfloat((asfloat(0u) < r0.x) ? 4294967295u : 0u);
    r0 = _623;
    float4 _630 = r0;
    _630.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _630;
    float2 _637 = float2(cb1_m[0].x, cb1_m[0].z);
    r4 = float4(_637.x, r4.y, _637.y, r4.w);
    float4 _642 = r4;
    _642.y = asfloat(0u);
    r4 = _642;
    float3 _655 = r4.xyz + (-float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z));
    r0 = float4(r0.x, _655.x, _655.y, _655.z);
    float3 _671 = (r0.xxx * r0.yzw) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_671.x, _671.y, _671.z, r0.w);
    float4 _687 = r0;
    _687.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _687;
    float4 _692 = r0;
    _692.w = rsqrt(r0.w);
    r0 = _692;
    float3 _698 = r0.www * r0.xyz;
    r0 = float4(_698.x, _698.y, _698.z, r0.w);
    float3 _714 = o3;
    _714.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _714;
    float3 _729 = o3;
    _729.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _729;
    float3 _744 = o3;
    _744.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _744;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _752 = asfloat(v1);
    shader_in[1] = float4(_752.x, _752.y, shader_in[1].z, shader_in[1].w);
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
