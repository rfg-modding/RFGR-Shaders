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
static int2 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
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
    float2 _58 = float2(asint(shader_in[0].xy));
    r0 = float4(_58.x, _58.y, r0.z, r0.w);
    float4 _67 = r0;
    _67.y = r0.y + asfloat(1191182336u);
    r0 = _67;
    float4 _75 = r1;
    _75.y = r0.x * asfloat(1015021568u);
    r1 = _75;
    float4 _82 = r0;
    _82.x = r0.y * asfloat(998244352u);
    r0 = _82;
    float4 _87 = r1;
    _87.z = trunc(r0.x);
    r1 = _87;
    float4 _98 = r1;
    _98.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _98;
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    float4 _119 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _133 = r0;
    _133.y = mad(_119.w, r1.w, mad(_119.z, r1.z, mad(_119.y, r1.y, _119.x * r1.x)));
    r0 = _133;
    float4 _144 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _158 = r0;
    _158.x = mad(_144.w, r1.w, mad(_144.z, r1.z, mad(_144.y, r1.y, _144.x * r1.x)));
    r0 = _158;
    float4 _170 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _184 = r0;
    _184.z = mad(_170.w, r1.w, mad(_170.z, r1.z, mad(_170.y, r1.y, _170.x * r1.x)));
    r0 = _184;
    float4 _187 = r0;
    _187.w = asfloat(1065353216u);
    r0 = _187;
    float4 _198 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _212 = o0;
    _212.x = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _237 = o0;
    _237.y = mad(_223.w, r0.w, mad(_223.z, r0.z, mad(_223.y, r0.y, _223.x * r0.x)));
    o0 = _237;
    float4 _248 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _262 = o0;
    _262.z = mad(_248.w, r0.w, mad(_248.z, r0.z, mad(_248.y, r0.y, _248.x * r0.x)));
    o0 = _262;
    float4 _274 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _288 = o0;
    _288.w = mad(_274.w, r0.w, mad(_274.z, r0.z, mad(_274.y, r0.y, _274.x * r0.x)));
    o0 = _288;
    float2 _299 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_299.x, _299.y, r1.z, r1.w);
    float2 _316 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r1 = float4(r1.x, r1.y, _316.x, _316.y);
    o1 = r1.zw * float2(cb2_m[7].x, cb2_m[7].y);
    float3 _339 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_339.x, _339.y, _339.z, r2.w);
    float3 _354 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_354.x, _354.y, _354.z, r3.w);
    float3 _365 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _378 = r4;
    _378.x = mad(_365.z, r3.xyz.z, mad(_365.y, r3.xyz.y, _365.x * r3.xyz.x));
    r4 = _378;
    float3 _387 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _399 = r4;
    _399.y = mad(_387.z, r3.xyz.z, mad(_387.y, r3.xyz.y, _387.x * r3.xyz.x));
    r4 = _399;
    float3 _408 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _420 = r4;
    _420.z = mad(_408.z, r3.xyz.z, mad(_408.y, r3.xyz.y, _408.x * r3.xyz.x));
    r4 = _420;
    float4 _435 = r0;
    _435.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _435;
    float4 _440 = r0;
    _440.w = rsqrt(r0.w);
    r0 = _440;
    float3 _446 = r0.www * r4.xyz;
    r3 = float4(_446.x, _446.y, _446.z, r3.w);
    float3 _453 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r4 = float4(_453.x, _453.y, _453.z, r4.w);
    float3 _464 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r4.xyz);
    r4 = float4(_464.x, _464.y, _464.z, r4.w);
    float4 _477 = r0;
    _477.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _477;
    float4 _482 = r0;
    _482.w = rsqrt(r0.w);
    r0 = _482;
    float3 _488 = r0.www * r4.xyz;
    r4 = float4(_488.x, _488.y, _488.z, r4.w);
    float3 _496 = r3.yzx * (-r4.xyz);
    r5 = float4(_496.x, _496.y, _496.z, r5.w);
    float3 _509 = ((-r4.zxy) * r3.zxy) + (-r5.xyz);
    r5 = float4(_509.x, _509.y, _509.z, r5.w);
    float3 _525 = o2;
    _525.x = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o2 = _525;
    float2 _531 = -r4.xz;
    float3 _538 = o2;
    _538.y = mad(r2.zy.y, _531.y, r2.zy.x * _531.x);
    o2 = _538;
    float3 _553 = o2;
    _553.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o2 = _553;
    float3 _567 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_567.x, _567.y, _567.z, r2.w);
    float3 _581 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_581.x, _581.y, _581.z, r0.w);
    float4 _597 = r0;
    _597.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _597;
    float4 _602 = r0;
    _602.w = rsqrt(r0.w);
    r0 = _602;
    float3 _608 = r0.www * r2.xyz;
    r2 = float4(_608.x, _608.y, _608.z, r2.w);
    float3 _624 = o3;
    _624.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o3 = _624;
    float3 _633 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _645 = o4;
    _645.z = mad(_633.z, r3.xyz.z, mad(_633.y, r3.xyz.y, _633.x * r3.xyz.x));
    o4 = _645;
    float2 _651 = -r4.xz;
    float3 _658 = o3;
    _658.y = mad(r2.zy.y, _651.y, r2.zy.x * _651.x);
    o3 = _658;
    float2 _665 = float2(cb1_m[1].z, cb1_m[1].y);
    float2 _668 = -r4.xz;
    float4 _675 = o4;
    _675.y = mad(_665.y, _668.y, _665.x * _668.x);
    o4 = _675;
    float3 _690 = o3;
    _690.x = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o3 = _690;
    float3 _699 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _711 = o4;
    _711.x = mad(_699.z, r5.xyz.z, mad(_699.y, r5.xyz.y, _699.x * r5.xyz.x));
    o4 = _711;
    float4 _720 = r0;
    _720.w = r0.y * cb0_m[13].x;
    r0 = _720;
    float4 _727 = r1;
    _727.z = r0.w * asfloat(3216550459u);
    r1 = _727;
    float4 _732 = r1;
    _732.z = exp2(r1.z);
    r1 = _732;
    float4 _739 = r1;
    _739.z = (-r1.z) + asfloat(1065353216u);
    r1 = _739;
    float4 _746 = r0;
    _746.w = r1.z / r0.w;
    r0 = _746;
    float4 _758 = r1;
    _758.z = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _758;
    float4 _773 = r0;
    _773.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _773;
    float4 _778 = r0;
    _778.x = sqrt(r0.x);
    r0 = _778;
    float4 _786 = r0;
    _786.x = r0.x * cb0_m[13].y;
    r0 = _786;
    float4 _796 = r0;
    _796.y = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _796;
    float4 _808 = r0;
    _808.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _808;
    float4 _814 = r0;
    _814.x = exp2(-r0.x);
    r0 = _814;
    float4 _820 = r0;
    _820.x = min(r0.x, asfloat(1065353216u));
    r0 = _820;
    float4 _827 = o4;
    _827.w = (-r0.x) + asfloat(1065353216u);
    o4 = _827;
    float2 _836 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_836.x, _836.y, r0.z, r0.w);
    float2 _849 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_849.x, _849.y, r0.z, r0.w);
    float2 _861 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _861.x, _861.y);
    float2 _874 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_874.x, _874.y, r0.z, r0.w);
    float2 _885 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_885.x, _885.y, o5.z, o5.w);
    float2 _899 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_899.x, _899.y, r0.z, r0.w);
    float2 _913 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _913.x, _913.y);
    float2 _924 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _924.x, _924.y);
    float2 _935 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_935.x, _935.y, o6.z, o6.w);
}

void vert_main()
{
    float2 _940 = asfloat(v0);
    shader_in[0] = float4(_940.x, _940.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
