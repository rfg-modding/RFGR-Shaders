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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _69 = r0;
    _69.x = shader_in[5].y + shader_in[5].x;
    r0 = _69;
    float4 _77 = r0;
    _77.x = r0.x + shader_in[5].z;
    r0 = _77;
    float4 _85 = r0;
    _85.x = r0.x + shader_in[5].w;
    r0 = _85;
    float4 _92 = r0;
    _92.x = asfloat(1065353216u) / r0.x;
    r0 = _92;
    float3 _107 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_107.x, _107.y, _107.z, r1.w);
    float4 _112 = r1;
    _112.w = asfloat(1065353216u);
    r1 = _112;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _129 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_129].x, cb4_m[_129].y, cb4_m[_129].z, cb4_m[_129].w);
    int _151 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_151].x, cb4_m[_151].y, cb4_m[_151].z, cb4_m[_151].w)) + r3;
    int _170 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_170].x, cb4_m[_170].y, cb4_m[_170].z, cb4_m[_170].w)) + r3;
    int _189 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_189].x, cb4_m[_189].y, cb4_m[_189].z, cb4_m[_189].w)) + r3;
    float4 _218 = r4;
    _218.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _218;
    int _227 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_227].x, cb4_m[_227].y, cb4_m[_227].z, cb4_m[_227].w);
    int _246 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_246].x, cb4_m[_246].y, cb4_m[_246].z, cb4_m[_246].w)) + r5;
    int _266 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_266].x, cb4_m[_266].y, cb4_m[_266].z, cb4_m[_266].w)) + r5;
    int _286 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_286].x, cb4_m[_286].y, cb4_m[_286].z, cb4_m[_286].w)) + r5;
    float4 _314 = r4;
    _314.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _314;
    int _323 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_323].x, cb4_m[_323].y, cb4_m[_323].z, cb4_m[_323].w);
    int _342 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_342].x, cb4_m[_342].y, cb4_m[_342].z, cb4_m[_342].w)) + r6;
    int _362 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_362].x, cb4_m[_362].y, cb4_m[_362].z, cb4_m[_362].w)) + r6;
    int _382 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_382].x, cb4_m[_382].y, cb4_m[_382].z, cb4_m[_382].w)) + r6;
    float4 _410 = r4;
    _410.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _410;
    float3 _416 = r0.xxx * r4.xyz;
    r1 = float4(_416.x, _416.y, _416.z, r1.w);
    float4 _420 = r1;
    _420.w = asfloat(1065353216u);
    r1 = _420;
    float4 _431 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _445 = r4;
    _445.x = mad(_431.w, r1.w, mad(_431.z, r1.z, mad(_431.y, r1.y, _431.x * r1.x)));
    r4 = _445;
    float4 _456 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _470 = r4;
    _470.y = mad(_456.w, r1.w, mad(_456.z, r1.z, mad(_456.y, r1.y, _456.x * r1.x)));
    r4 = _470;
    float4 _481 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _495 = r4;
    _495.z = mad(_481.w, r1.w, mad(_481.z, r1.z, mad(_481.y, r1.y, _481.x * r1.x)));
    r4 = _495;
    float4 _498 = r4;
    _498.w = asfloat(1065353216u);
    r4 = _498;
    float4 _509 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _523 = o0;
    _523.x = mad(_509.w, r4.w, mad(_509.z, r4.z, mad(_509.y, r4.y, _509.x * r4.x)));
    o0 = _523;
    float4 _534 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _548 = o0;
    _548.y = mad(_534.w, r4.w, mad(_534.z, r4.z, mad(_534.y, r4.y, _534.x * r4.x)));
    o0 = _548;
    float4 _559 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _573 = o0;
    _573.z = mad(_559.w, r4.w, mad(_559.z, r4.z, mad(_559.y, r4.y, _559.x * r4.x)));
    o0 = _573;
    float4 _584 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _598 = o0;
    _598.w = mad(_584.w, r4.w, mad(_584.z, r4.z, mad(_584.y, r4.y, _584.x * r4.x)));
    o0 = _598;
    float2 _604 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _604.x, _604.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _632 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _632.x, _632.y, _632.z);
    float3 _642 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_642.x, _642.y, _642.z, r1.w);
    float3 _651 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _651.x, _651.y, _651.z);
    float4 _667 = r1;
    _667.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _667;
    float4 _672 = r1;
    _672.x = rsqrt(r1.x);
    r1 = _672;
    float3 _678 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _678.x, _678.y, _678.z);
    float4 _694 = r1;
    _694.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _694;
    float4 _709 = r1;
    _709.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _709;
    float4 _724 = r1;
    _724.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _724;
    float3 _730 = r0.xxx * r1.xyz;
    r0 = float4(_730.x, _730.y, _730.z, r0.w);
    float4 _746 = r0;
    _746.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _746;
    float4 _751 = r0;
    _751.w = rsqrt(r0.w);
    r0 = _751;
    float3 _757 = r0.www * r0.xyz;
    r0 = float4(_757.x, _757.y, _757.z, r0.w);
    float3 _767 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _779 = r1;
    _779.x = mad(_767.z, r0.xyz.z, mad(_767.y, r0.xyz.y, _767.x * r0.xyz.x));
    r1 = _779;
    float3 _788 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _800 = r1;
    _800.y = mad(_788.z, r0.xyz.z, mad(_788.y, r0.xyz.y, _788.x * r0.xyz.x));
    r1 = _800;
    float3 _809 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _821 = r1;
    _821.z = mad(_809.z, r0.xyz.z, mad(_809.y, r0.xyz.y, _809.x * r0.xyz.x));
    r1 = _821;
    float4 _836 = r0;
    _836.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _836;
    float4 _841 = r0;
    _841.x = rsqrt(r0.x);
    r0 = _841;
    o3 = r0.xxx * r1.xyz;
    o4 = float4(r4.xyz.x, r4.xyz.y, r4.xyz.z, o4.w);
    float3 _864 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_864.x, _864.y, _864.z, r0.w);
    float4 _868 = o4;
    _868.w = asfloat(0u);
    o4 = _868;
    float4 _877 = r0;
    _877.w = r0.y * cb0_m[13].x;
    r0 = _877;
    float4 _884 = r1;
    _884.x = r0.w * asfloat(3216550459u);
    r1 = _884;
    float4 _889 = r1;
    _889.x = exp2(r1.x);
    r1 = _889;
    float4 _896 = r1;
    _896.x = (-r1.x) + asfloat(1065353216u);
    r1 = _896;
    float4 _903 = r0;
    _903.w = r1.x / r0.w;
    r0 = _903;
    float4 _915 = r1;
    _915.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _915;
    float4 _930 = r0;
    _930.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _930;
    float4 _935 = r0;
    _935.x = sqrt(r0.x);
    r0 = _935;
    float4 _943 = r0;
    _943.x = r0.x * cb0_m[13].y;
    r0 = _943;
    float4 _953 = r0;
    _953.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _953;
    float4 _965 = r0;
    _965.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _965;
    float4 _971 = r0;
    _971.x = exp2(-r0.x);
    r0 = _971;
    float4 _977 = r0;
    _977.x = min(r0.x, asfloat(1065353216u));
    r0 = _977;
    float4 _984 = o5;
    _984.w = (-r0.x) + asfloat(1065353216u);
    o5 = _984;
    float3 _993 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o5 = float4(_993.x, _993.y, _993.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1002 = asfloat(v1);
    shader_in[1] = float4(_1002.x, _1002.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
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
