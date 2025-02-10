cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v3;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _68 = r0;
    _68.x = shader_in[5].y + shader_in[5].x;
    r0 = _68;
    float4 _76 = r0;
    _76.x = r0.x + shader_in[5].z;
    r0 = _76;
    float4 _84 = r0;
    _84.x = r0.x + shader_in[5].w;
    r0 = _84;
    float4 _91 = r0;
    _91.x = asfloat(1065353216u) / r0.x;
    r0 = _91;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _101 = r1;
    _101.w = asfloat(1065353216u);
    r1 = _101;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _118 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_118].x, cb4_m[_118].y, cb4_m[_118].z, cb4_m[_118].w);
    int _140 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_140].x, cb4_m[_140].y, cb4_m[_140].z, cb4_m[_140].w)) + r3;
    int _159 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_159].x, cb4_m[_159].y, cb4_m[_159].z, cb4_m[_159].w)) + r3;
    int _178 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_178].x, cb4_m[_178].y, cb4_m[_178].z, cb4_m[_178].w)) + r3;
    float4 _207 = r4;
    _207.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _207;
    int _216 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_216].x, cb4_m[_216].y, cb4_m[_216].z, cb4_m[_216].w);
    int _235 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_235].x, cb4_m[_235].y, cb4_m[_235].z, cb4_m[_235].w)) + r5;
    int _255 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_255].x, cb4_m[_255].y, cb4_m[_255].z, cb4_m[_255].w)) + r5;
    int _275 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_275].x, cb4_m[_275].y, cb4_m[_275].z, cb4_m[_275].w)) + r5;
    float4 _303 = r4;
    _303.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _303;
    int _312 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_312].x, cb4_m[_312].y, cb4_m[_312].z, cb4_m[_312].w);
    int _331 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_331].x, cb4_m[_331].y, cb4_m[_331].z, cb4_m[_331].w)) + r6;
    int _351 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_351].x, cb4_m[_351].y, cb4_m[_351].z, cb4_m[_351].w)) + r6;
    int _371 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_371].x, cb4_m[_371].y, cb4_m[_371].z, cb4_m[_371].w)) + r6;
    float4 _399 = r4;
    _399.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _399;
    float3 _405 = r0.xxx * r4.xyz;
    r1 = float4(_405.x, _405.y, _405.z, r1.w);
    float4 _409 = r1;
    _409.w = asfloat(1065353216u);
    r1 = _409;
    float4 _420 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _434 = r4;
    _434.x = mad(_420.w, r1.w, mad(_420.z, r1.z, mad(_420.y, r1.y, _420.x * r1.x)));
    r4 = _434;
    float4 _445 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _459 = r4;
    _459.y = mad(_445.w, r1.w, mad(_445.z, r1.z, mad(_445.y, r1.y, _445.x * r1.x)));
    r4 = _459;
    float4 _470 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _484 = r4;
    _484.z = mad(_470.w, r1.w, mad(_470.z, r1.z, mad(_470.y, r1.y, _470.x * r1.x)));
    r4 = _484;
    float4 _487 = r4;
    _487.w = asfloat(1065353216u);
    r4 = _487;
    float4 _498 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _512 = o0;
    _512.x = mad(_498.w, r4.w, mad(_498.z, r4.z, mad(_498.y, r4.y, _498.x * r4.x)));
    o0 = _512;
    float4 _523 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _537 = o0;
    _537.y = mad(_523.w, r4.w, mad(_523.z, r4.z, mad(_523.y, r4.y, _523.x * r4.x)));
    o0 = _537;
    float4 _548 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _562 = o0;
    _562.z = mad(_548.w, r4.w, mad(_548.z, r4.z, mad(_548.y, r4.y, _548.x * r4.x)));
    o0 = _562;
    float4 _574 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _588 = o0;
    _588.w = mad(_574.w, r4.w, mad(_574.z, r4.z, mad(_574.y, r4.y, _574.x * r4.x)));
    o0 = _588;
    float2 _594 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _594.x, _594.y, r0.w);
    float2 _605 = r0.yz * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(r0.x, _605.x, _605.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _627 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(r0.x, _627.x, _627.y, _627.z);
    float3 _641 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_641.x, _641.y, _641.z, r1.w);
    float4 _651 = r1;
    _651.w = r0.z * cb0_m[13].x;
    r1 = _651;
    float4 _658 = r2;
    _658.w = r1.w * asfloat(3216550459u);
    r2 = _658;
    float4 _663 = r2;
    _663.w = exp2(r2.w);
    r2 = _663;
    float4 _670 = r2;
    _670.w = (-r2.w) + asfloat(1065353216u);
    r2 = _670;
    float4 _677 = r1;
    _677.w = r2.w / r1.w;
    r1 = _677;
    float4 _689 = r2;
    _689.w = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r2 = _689;
    float4 _704 = r0;
    _704.y = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _704;
    float4 _709 = r0;
    _709.y = sqrt(r0.y);
    r0 = _709;
    float4 _717 = r0;
    _717.y = r0.y * cb0_m[13].y;
    r0 = _717;
    float4 _727 = r0;
    _727.z = (asuint(r2.w) != 0u) ? r1.w : asfloat(1065353216u);
    r0 = _727;
    float4 _739 = r0;
    _739.y = (r0.z * r0.y) + (-cb0_m[13].w);
    r0 = _739;
    float4 _745 = r0;
    _745.y = exp2(-r0.y);
    r0 = _745;
    float4 _751 = r0;
    _751.y = min(r0.y, asfloat(1065353216u));
    r0 = _751;
    float4 _758 = o2;
    _758.w = (-r0.y) + asfloat(1065353216u);
    o2 = _758;
    float4 _773 = r0;
    _773.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _773;
    float4 _778 = r0;
    _778.y = rsqrt(r0.y);
    r0 = _778;
    float3 _784 = r0.yyy * r1.xyz;
    o2 = float4(_784.x, _784.y, _784.z, o2.w);
    float3 _798 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _798.x, _798.y, _798.z);
    float4 _814 = r1;
    _814.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _814;
    float4 _829 = r1;
    _829.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _829;
    float4 _844 = r1;
    _844.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _844;
    float3 _850 = r0.xxx * r1.xyz;
    r0 = float4(_850.x, _850.y, _850.z, r0.w);
    float4 _866 = r0;
    _866.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _866;
    float4 _871 = r0;
    _871.w = rsqrt(r0.w);
    r0 = _871;
    float3 _877 = r0.www * r0.xyz;
    r0 = float4(_877.x, _877.y, _877.z, r0.w);
    float3 _887 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _899 = r1;
    _899.x = mad(_887.z, r0.xyz.z, mad(_887.y, r0.xyz.y, _887.x * r0.xyz.x));
    r1 = _899;
    float3 _908 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _920 = r1;
    _920.z = mad(_908.z, r0.xyz.z, mad(_908.y, r0.xyz.y, _908.x * r0.xyz.x));
    r1 = _920;
    float3 _929 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _941 = r1;
    _941.y = mad(_929.z, r0.xyz.z, mad(_929.y, r0.xyz.y, _929.x * r0.xyz.x));
    r1 = _941;
    float4 _956 = r0;
    _956.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _956;
    float4 _961 = r0;
    _961.x = rsqrt(r0.x);
    r0 = _961;
    float4 _968 = r0;
    _968.x = r0.x * r1.y;
    r0 = _968;
    float4 _980 = o3;
    _980.w = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o3 = _980;
    float3 _989 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o3 = float4(_989.x, _989.y, _989.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _998 = asfloat(v1);
    shader_in[1] = float4(_998.x, _998.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[5] = v5;
    shader_in[6] = asfloat(v6);
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
    v3 = stage_input.v3;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
