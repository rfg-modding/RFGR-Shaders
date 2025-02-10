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

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float4 o2;
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
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
    float4 _80 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _94 = r0;
    _94.x = mad(_80.w, r1.w, mad(_80.z, r1.z, mad(_80.y, r1.y, _80.x * r1.x)));
    r0 = _94;
    float4 _106 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _120 = r0;
    _120.y = mad(_106.w, r1.w, mad(_106.z, r1.z, mad(_106.y, r1.y, _106.x * r1.x)));
    r0 = _120;
    float4 _132 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _146 = r0;
    _146.z = mad(_132.w, r1.w, mad(_132.z, r1.z, mad(_132.y, r1.y, _132.x * r1.x)));
    r0 = _146;
    float4 _157 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _171 = o0;
    _171.x = mad(_157.w, r0.w, mad(_157.z, r0.z, mad(_157.y, r0.y, _157.x * r0.x)));
    o0 = _171;
    float4 _182 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _196 = o0;
    _196.y = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _221 = o0;
    _221.z = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float4 _233 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _247 = o0;
    _247.w = mad(_233.w, r0.w, mad(_233.z, r0.z, mad(_233.y, r0.y, _233.x * r0.x)));
    o0 = _247;
    float4 _251 = r0;
    _251.w = asfloat(3212836864u);
    r0 = _251;
    float3 _265 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_265.x, _265.y, _265.z, r1.w);
    float3 _277 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _287 = r1;
    _287.w = mad(r1.xyz.z, _277.z, mad(r1.xyz.y, _277.y, r1.xyz.x * _277.x));
    r1 = _287;
    float4 _296 = r1;
    _296.w = r1.w * cb5_m[5].y;
    r1 = _296;
    float4 _304 = r2;
    _304.y = r0.w * r1.w;
    r2 = _304;
    float3 _315 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _326 = r3;
    _326.x = mad(r1.xyz.z, _315.z, mad(r1.xyz.y, _315.y, r1.xyz.x * _315.x));
    r3 = _326;
    float3 _337 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _347 = r3;
    _347.z = mad(r1.xyz.z, _337.z, mad(r1.xyz.y, _337.y, r1.xyz.x * _337.x));
    r3 = _347;
    float2 _357 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_357.x, r2.y, _357.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _369 = o2;
    _369.w = r2.z;
    o2 = _369;
    float3 _381 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_381.x, _381.y, _381.z, r1.w);
    float3 _395 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_395.x, _395.y, _395.z, r2.w);
    float3 _413 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_413.x, _413.y, _413.z, r2.w);
    float4 _429 = r0;
    _429.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _429;
    float4 _434 = r0;
    _434.w = rsqrt(r0.w);
    r0 = _434;
    float3 _440 = r0.www * r2.xyz;
    r2 = float4(_440.x, _440.y, _440.z, r2.w);
    float3 _447 = r1.zxy * r2.xyz;
    r3 = float4(_447.x, _447.y, _447.z, r3.w);
    float3 _458 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_458.x, _458.y, _458.z, r2.w);
    float4 _474 = r0;
    _474.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _474;
    float4 _479 = r0;
    _479.w = rsqrt(r0.w);
    r0 = _479;
    float3 _485 = r0.www * r2.xyz;
    r2 = float4(_485.x, _485.y, _485.z, r2.w);
    float3 _495 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _507 = r3;
    _507.x = mad(_495.z, r2.xyz.z, mad(_495.y, r2.xyz.y, _495.x * r2.xyz.x));
    r3 = _507;
    float3 _516 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _528 = r3;
    _528.y = mad(_516.z, r2.xyz.z, mad(_516.y, r2.xyz.y, _516.x * r2.xyz.x));
    r3 = _528;
    float3 _537 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _549 = r3;
    _549.z = mad(_537.z, r2.xyz.z, mad(_537.y, r2.xyz.y, _537.x * r2.xyz.x));
    r3 = _549;
    float3 _558 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _570 = o2;
    _570.x = mad(_558.z, r2.xyz.z, mad(_558.y, r2.xyz.y, _558.x * r2.xyz.x));
    o2 = _570;
    float4 _585 = r0;
    _585.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _585;
    float4 _590 = r0;
    _590.w = rsqrt(r0.w);
    r0 = _590;
    float3 _596 = r0.www * r3.xyz;
    r2 = float4(_596.x, _596.y, _596.z, r2.w);
    float3 _606 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _618 = r3;
    _618.x = mad(_606.z, r1.xyz.z, mad(_606.y, r1.xyz.y, _606.x * r1.xyz.x));
    r3 = _618;
    float3 _627 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _639 = r3;
    _639.y = mad(_627.z, r1.xyz.z, mad(_627.y, r1.xyz.y, _627.x * r1.xyz.x));
    r3 = _639;
    float3 _648 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _660 = r3;
    _660.z = mad(_648.z, r1.xyz.z, mad(_648.y, r1.xyz.y, _648.x * r1.xyz.x));
    r3 = _660;
    float3 _669 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _681 = o2;
    _681.z = mad(_669.z, r1.xyz.z, mad(_669.y, r1.xyz.y, _669.x * r1.xyz.x));
    o2 = _681;
    float4 _696 = r0;
    _696.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _696;
    float4 _701 = r0;
    _701.w = rsqrt(r0.w);
    r0 = _701;
    float3 _707 = r0.www * r3.xyz;
    r1 = float4(_707.x, _707.y, _707.z, r1.w);
    float3 _714 = r2.yzx * r1.zxy;
    r3 = float4(_714.x, _714.y, _714.z, r3.w);
    float3 _725 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_725.x, _725.y, _725.z, r3.w);
    float3 _735 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _747 = o2;
    _747.y = mad(_735.z, r3.xyz.z, mad(_735.y, r3.xyz.y, _735.x * r3.xyz.x));
    o2 = _747;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float3 _783 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_783.x, _783.y, _783.z, r4.w);
    float3 _798 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_798.x, _798.y, _798.z, r0.w);
    float4 _808 = r0;
    _808.w = r4.y * cb0_m[13].x;
    r0 = _808;
    float4 _815 = r1;
    _815.w = r0.w * asfloat(3216550459u);
    r1 = _815;
    float4 _820 = r1;
    _820.w = exp2(r1.w);
    r1 = _820;
    float4 _827 = r1;
    _827.w = (-r1.w) + asfloat(1065353216u);
    r1 = _827;
    float4 _834 = r0;
    _834.w = r1.w / r0.w;
    r0 = _834;
    float4 _846 = r1;
    _846.w = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r1 = _846;
    float4 _861 = r2;
    _861.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r2 = _861;
    float4 _866 = r2;
    _866.w = sqrt(r2.w);
    r2 = _866;
    float4 _874 = r2;
    _874.w = r2.w * cb0_m[13].y;
    r2 = _874;
    float4 _884 = r0;
    _884.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _884;
    float4 _896 = r0;
    _896.w = (r0.w * r2.w) + (-cb0_m[13].w);
    r0 = _896;
    float4 _902 = r0;
    _902.w = exp2(-r0.w);
    r0 = _902;
    float4 _908 = r0;
    _908.w = min(r0.w, asfloat(1065353216u));
    r0 = _908;
    float4 _915 = o5;
    _915.w = (-r0.w) + asfloat(1065353216u);
    o5 = _915;
    float3 _924 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _936 = o5;
    _936.x = mad(_924.z, r2.xyz.z, mad(_924.y, r2.xyz.y, _924.x * r2.xyz.x));
    o5 = _936;
    float4 _951 = o6;
    _951.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o6 = _951;
    float3 _960 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _972 = o5;
    _972.z = mad(_960.z, r1.xyz.z, mad(_960.y, r1.xyz.y, _960.x * r1.xyz.x));
    o5 = _972;
    float4 _987 = o6;
    _987.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o6 = _987;
    float3 _993 = -r3.xyz;
    float4 _1003 = o6;
    _1003.y = mad(r0.xyz.z, _993.z, mad(r0.xyz.y, _993.y, r0.xyz.x * _993.x));
    o6 = _1003;
    float3 _1012 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1015 = -r3.xyz;
    float4 _1025 = o5;
    _1025.y = mad(_1012.z, _1015.z, mad(_1012.y, _1015.y, _1012.x * _1015.x));
    o5 = _1025;
    float4 _1032 = r0;
    _1032.x = float(asint(shader_in[2].x));
    r0 = _1032;
    float4 _1039 = o6;
    _1039.w = r0.x * asfloat(981467136u);
    o6 = _1039;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _1053 = shader_in[2];
    _1053.x = asfloat(v2);
    shader_in[2] = _1053;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
