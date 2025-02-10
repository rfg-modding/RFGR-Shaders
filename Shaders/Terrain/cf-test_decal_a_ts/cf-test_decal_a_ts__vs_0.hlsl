cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
    float3 _261 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_261.x, _261.y, _261.z, r0.w);
    float4 _266 = r0;
    _266.w = asfloat(3212836864u);
    r0 = _266;
    float3 _280 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_280.x, _280.y, _280.z, r1.w);
    float3 _292 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _302 = r1;
    _302.w = mad(r1.xyz.z, _292.z, mad(r1.xyz.y, _292.y, r1.xyz.x * _292.x));
    r1 = _302;
    float4 _311 = r1;
    _311.w = r1.w * cb5_m[5].y;
    r1 = _311;
    float4 _319 = r2;
    _319.y = r0.w * r1.w;
    r2 = _319;
    float3 _330 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _341 = r3;
    _341.x = mad(r1.xyz.z, _330.z, mad(r1.xyz.y, _330.y, r1.xyz.x * _330.x));
    r3 = _341;
    float3 _352 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _362 = r3;
    _362.z = mad(r1.xyz.z, _352.z, mad(r1.xyz.y, _352.y, r1.xyz.x * _352.x));
    r3 = _362;
    float2 _372 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_372.x, r2.y, _372.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _384 = o2;
    _384.w = r2.z;
    o2 = _384;
    float3 _396 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_396.x, _396.y, _396.z, r1.w);
    float3 _410 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_410.x, _410.y, _410.z, r2.w);
    float3 _428 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_428.x, _428.y, _428.z, r2.w);
    float4 _444 = r0;
    _444.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _444;
    float4 _449 = r0;
    _449.w = rsqrt(r0.w);
    r0 = _449;
    float3 _455 = r0.www * r2.xyz;
    r2 = float4(_455.x, _455.y, _455.z, r2.w);
    float3 _462 = r1.zxy * r2.xyz;
    r3 = float4(_462.x, _462.y, _462.z, r3.w);
    float3 _473 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_473.x, _473.y, _473.z, r2.w);
    float4 _489 = r0;
    _489.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _489;
    float4 _494 = r0;
    _494.w = rsqrt(r0.w);
    r0 = _494;
    float3 _500 = r0.www * r2.xyz;
    r2 = float4(_500.x, _500.y, _500.z, r2.w);
    float3 _510 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _522 = r3;
    _522.x = mad(_510.z, r2.xyz.z, mad(_510.y, r2.xyz.y, _510.x * r2.xyz.x));
    r3 = _522;
    float3 _531 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _543 = r3;
    _543.y = mad(_531.z, r2.xyz.z, mad(_531.y, r2.xyz.y, _531.x * r2.xyz.x));
    r3 = _543;
    float3 _552 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _564 = r3;
    _564.z = mad(_552.z, r2.xyz.z, mad(_552.y, r2.xyz.y, _552.x * r2.xyz.x));
    r3 = _564;
    float3 _573 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _585 = o2;
    _585.x = mad(_573.z, r2.xyz.z, mad(_573.y, r2.xyz.y, _573.x * r2.xyz.x));
    o2 = _585;
    float4 _600 = r0;
    _600.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _600;
    float4 _605 = r0;
    _605.w = rsqrt(r0.w);
    r0 = _605;
    float3 _611 = r0.www * r3.xyz;
    r2 = float4(_611.x, _611.y, _611.z, r2.w);
    float3 _621 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _633 = r3;
    _633.x = mad(_621.z, r1.xyz.z, mad(_621.y, r1.xyz.y, _621.x * r1.xyz.x));
    r3 = _633;
    float3 _642 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _654 = r3;
    _654.y = mad(_642.z, r1.xyz.z, mad(_642.y, r1.xyz.y, _642.x * r1.xyz.x));
    r3 = _654;
    float3 _663 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _675 = r3;
    _675.z = mad(_663.z, r1.xyz.z, mad(_663.y, r1.xyz.y, _663.x * r1.xyz.x));
    r3 = _675;
    float3 _684 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _696 = o2;
    _696.z = mad(_684.z, r1.xyz.z, mad(_684.y, r1.xyz.y, _684.x * r1.xyz.x));
    o2 = _696;
    float4 _711 = r0;
    _711.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _711;
    float4 _716 = r0;
    _716.w = rsqrt(r0.w);
    r0 = _716;
    float3 _722 = r0.www * r3.xyz;
    r1 = float4(_722.x, _722.y, _722.z, r1.w);
    float3 _729 = r2.yzx * r1.zxy;
    r3 = float4(_729.x, _729.y, _729.z, r3.w);
    float3 _740 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_740.x, _740.y, _740.z, r3.w);
    float3 _750 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _762 = o2;
    _762.y = mad(_750.z, r3.xyz.z, mad(_750.y, r3.xyz.y, _750.x * r3.xyz.x));
    o2 = _762;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _793 = r0;
    _793.w = r0.y * cb0_m[13].x;
    r0 = _793;
    float4 _800 = r1;
    _800.w = r0.w * asfloat(3216550459u);
    r1 = _800;
    float4 _805 = r1;
    _805.w = exp2(r1.w);
    r1 = _805;
    float4 _812 = r1;
    _812.w = (-r1.w) + asfloat(1065353216u);
    r1 = _812;
    float4 _819 = r0;
    _819.w = r1.w / r0.w;
    r0 = _819;
    float4 _831 = r1;
    _831.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _831;
    float4 _846 = r0;
    _846.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _846;
    float4 _851 = r0;
    _851.x = sqrt(r0.x);
    r0 = _851;
    float4 _859 = r0;
    _859.x = r0.x * cb0_m[13].y;
    r0 = _859;
    float4 _869 = r0;
    _869.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _869;
    float4 _881 = r0;
    _881.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _881;
    float4 _887 = r0;
    _887.x = exp2(-r0.x);
    r0 = _887;
    float4 _893 = r0;
    _893.x = min(r0.x, asfloat(1065353216u));
    r0 = _893;
    float4 _900 = o5;
    _900.w = (-r0.x) + asfloat(1065353216u);
    o5 = _900;
    float4 _904 = o5;
    _904.x = r2.y;
    o5 = _904;
    float3 _913 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _925 = o6;
    _925.x = mad(_913.z, r2.xyz.z, mad(_913.y, r2.xyz.y, _913.x * r2.xyz.x));
    o6 = _925;
    float4 _929 = o5;
    _929.z = r1.y;
    o5 = _929;
    float3 _938 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _950 = o6;
    _950.z = mad(_938.z, r1.xyz.z, mad(_938.y, r1.xyz.y, _938.x * r1.xyz.x));
    o6 = _950;
    float4 _955 = o5;
    _955.y = -r3.y;
    o5 = _955;
    float3 _964 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _967 = -r3.xyz;
    float4 _977 = o6;
    _977.y = mad(_964.z, _967.z, mad(_964.y, _967.y, _964.x * _967.x));
    o6 = _977;
    float4 _984 = r0;
    _984.x = float(asint(shader_in[2].x));
    r0 = _984;
    float4 _991 = o6;
    _991.w = r0.x * asfloat(981467136u);
    o6 = _991;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _1005 = shader_in[2];
    _1005.x = asfloat(v2);
    shader_in[2] = _1005;
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
