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
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 o7;
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
    float4 _117 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _131 = r0;
    _131.x = mad(_117.w, r1.w, mad(_117.z, r1.z, mad(_117.y, r1.y, _117.x * r1.x)));
    r0 = _131;
    float4 _143 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _157 = r0;
    _157.y = mad(_143.w, r1.w, mad(_143.z, r1.z, mad(_143.y, r1.y, _143.x * r1.x)));
    r0 = _157;
    float4 _169 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _183 = r0;
    _183.z = mad(_169.w, r1.w, mad(_169.z, r1.z, mad(_169.y, r1.y, _169.x * r1.x)));
    r0 = _183;
    float3 _197 = r1.xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_197.x, _197.y, _197.z, r1.w);
    float4 _201 = r0;
    _201.w = asfloat(1065353216u);
    r0 = _201;
    float4 _212 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _226 = o0;
    _226.x = mad(_212.w, r0.w, mad(_212.z, r0.z, mad(_212.y, r0.y, _212.x * r0.x)));
    o0 = _226;
    float4 _237 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _251 = o0;
    _251.y = mad(_237.w, r0.w, mad(_237.z, r0.z, mad(_237.y, r0.y, _237.x * r0.x)));
    o0 = _251;
    float4 _262 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _276 = o0;
    _276.z = mad(_262.w, r0.w, mad(_262.z, r0.z, mad(_262.y, r0.y, _262.x * r0.x)));
    o0 = _276;
    float4 _287 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _301 = o0;
    _301.w = mad(_287.w, r0.w, mad(_287.z, r0.z, mad(_287.y, r0.y, _287.x * r0.x)));
    o0 = _301;
    float3 _315 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_315.x, _315.y, _315.z, r2.w);
    float3 _335 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r2.xyz);
    r2 = float4(_335.x, _335.y, _335.z, r2.w);
    float4 _351 = r0;
    _351.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _351;
    float4 _356 = r0;
    _356.w = rsqrt(r0.w);
    r0 = _356;
    float3 _362 = r0.www * r2.xyz;
    r2 = float4(_362.x, _362.y, _362.z, r2.w);
    float3 _370 = r2.yzx * shader_in[1].zxy;
    r3 = float4(_370.x, _370.y, _370.z, r3.w);
    float3 _383 = (shader_in[1].yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_383.x, _383.y, _383.z, r3.w);
    float3 _393 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _405 = o3;
    _405.y = mad(_393.z, r2.xyz.z, mad(_393.y, r2.xyz.y, _393.x * r2.xyz.x));
    o3 = _405;
    float4 _420 = r0;
    _420.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _420;
    float4 _425 = r0;
    _425.w = rsqrt(r0.w);
    r0 = _425;
    float3 _431 = r0.www * r3.xyz;
    r2 = float4(_431.x, _431.y, _431.z, r2.w);
    float3 _441 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _453 = r3;
    _453.x = mad(_441.z, r2.xyz.z, mad(_441.y, r2.xyz.y, _441.x * r2.xyz.x));
    r3 = _453;
    float3 _462 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _474 = r3;
    _474.y = mad(_462.z, r2.xyz.z, mad(_462.y, r2.xyz.y, _462.x * r2.xyz.x));
    r3 = _474;
    float3 _483 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _495 = r3;
    _495.z = mad(_483.z, r2.xyz.z, mad(_483.y, r2.xyz.y, _483.x * r2.xyz.x));
    r3 = _495;
    float3 _504 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _516 = o3;
    _516.x = mad(_504.z, r2.xyz.z, mad(_504.y, r2.xyz.y, _504.x * r2.xyz.x));
    o3 = _516;
    float4 _531 = r0;
    _531.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _531;
    float4 _536 = r0;
    _536.w = rsqrt(r0.w);
    r0 = _536;
    float3 _542 = r0.www * r3.xyz;
    r2 = float4(_542.x, _542.y, _542.z, r2.w);
    float3 _556 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_556.x, _556.y, _556.z, r3.w);
    float3 _572 = o1;
    _572.x = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o1 = _572;
    float3 _581 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _595 = r4;
    _595.x = mad(_581.z, shader_in[1].xyz.z, mad(_581.y, shader_in[1].xyz.y, _581.x * shader_in[1].xyz.x));
    r4 = _595;
    float3 _604 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _617 = r4;
    _617.y = mad(_604.z, shader_in[1].xyz.z, mad(_604.y, shader_in[1].xyz.y, _604.x * shader_in[1].xyz.x));
    r4 = _617;
    float3 _626 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _639 = r4;
    _639.z = mad(_626.z, shader_in[1].xyz.z, mad(_626.y, shader_in[1].xyz.y, _626.x * shader_in[1].xyz.x));
    r4 = _639;
    float4 _654 = r0;
    _654.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _654;
    float4 _659 = r0;
    _659.w = rsqrt(r0.w);
    r0 = _659;
    float3 _665 = r0.www * r4.xyz;
    r4 = float4(_665.x, _665.y, _665.z, r4.w);
    float3 _672 = r2.yzx * r4.zxy;
    r5 = float4(_672.x, _672.y, _672.z, r5.w);
    float3 _684 = (r4.yzx * r2.zxy) + (-r5.xyz);
    r5 = float4(_684.x, _684.y, _684.z, r5.w);
    float3 _691 = -r5.xyz;
    float3 _701 = o1;
    _701.y = mad(r3.xyz.z, _691.z, mad(r3.xyz.y, _691.y, r3.xyz.x * _691.x));
    o1 = _701;
    float3 _716 = o1;
    _716.z = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    o1 = _716;
    float3 _730 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r3 = float4(_730.x, _730.y, _730.z, r3.w);
    float3 _744 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_744.x, _744.y, _744.z, r0.w);
    float3 _760 = o2;
    _760.x = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o2 = _760;
    float3 _769 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _781 = o6;
    _781.x = mad(_769.z, r2.xyz.z, mad(_769.y, r2.xyz.y, _769.x * r2.xyz.x));
    o6 = _781;
    float3 _796 = o2;
    _796.z = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    o2 = _796;
    float3 _805 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _817 = o6;
    _817.z = mad(_805.z, r4.xyz.z, mad(_805.y, r4.xyz.y, _805.x * r4.xyz.x));
    o6 = _817;
    float3 _823 = -r5.xyz;
    float3 _833 = o2;
    _833.y = mad(r3.xyz.z, _823.z, mad(r3.xyz.y, _823.y, r3.xyz.x * _823.x));
    o2 = _833;
    float3 _842 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _845 = -r5.xyz;
    float4 _855 = o6;
    _855.y = mad(_842.z, _845.z, mad(_842.y, _845.y, _842.x * _845.x));
    o6 = _855;
    float3 _866 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _876 = r2;
    _876.x = mad(r1.xyz.z, _866.z, mad(r1.xyz.y, _866.y, r1.xyz.x * _866.x));
    r2 = _876;
    float3 _887 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _897 = r2;
    _897.z = mad(r1.xyz.z, _887.z, mad(r1.xyz.y, _887.y, r1.xyz.x * _887.x));
    r2 = _897;
    float3 _908 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _918 = r0;
    _918.w = mad(r1.xyz.z, _908.z, mad(r1.xyz.y, _908.y, r1.xyz.x * _908.x));
    r0 = _918;
    float4 _927 = r0;
    _927.w = r0.w * cb5_m[5].y;
    r0 = _927;
    float2 _937 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_937.x, r1.y, _937.y, r1.w);
    float4 _942 = o3;
    _942.w = r1.z;
    o3 = _942;
    float3 _951 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _964 = o3;
    _964.z = mad(_951.z, shader_in[1].xyz.z, mad(_951.y, shader_in[1].xyz.y, _951.x * shader_in[1].xyz.x));
    o3 = _964;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _995 = r1;
    _995.z = r0.y * cb0_m[13].x;
    r1 = _995;
    float4 _1002 = r1;
    _1002.w = r1.z * asfloat(3216550459u);
    r1 = _1002;
    float4 _1007 = r1;
    _1007.w = exp2(r1.w);
    r1 = _1007;
    float4 _1014 = r1;
    _1014.w = (-r1.w) + asfloat(1065353216u);
    r1 = _1014;
    float4 _1021 = r1;
    _1021.z = r1.w / r1.z;
    r1 = _1021;
    float4 _1033 = r1;
    _1033.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _1033;
    float4 _1048 = r0;
    _1048.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _1048;
    float4 _1053 = r0;
    _1053.x = sqrt(r0.x);
    r0 = _1053;
    float4 _1061 = r0;
    _1061.x = r0.x * cb0_m[13].y;
    r0 = _1061;
    float4 _1071 = r0;
    _1071.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _1071;
    float4 _1083 = r0;
    _1083.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _1083;
    float4 _1089 = r0;
    _1089.x = exp2(-r0.x);
    r0 = _1089;
    float4 _1095 = r0;
    _1095.x = min(r0.x, asfloat(1065353216u));
    r0 = _1095;
    float4 _1102 = o6;
    _1102.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1102;
    float4 _1106 = r0;
    _1106.x = asfloat(3212836864u);
    r0 = _1106;
    float4 _1113 = r1;
    _1113.y = r0.w * r0.x;
    r1 = _1113;
    float2 _1121 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o7 = float4(_1121.x, _1121.y, o7.z, o7.w);
    float2 _1127 = cb5_m[5].w.xx;
    o7 = float4(o7.x, o7.y, _1127.x, _1127.y);
}

void vert_main()
{
    float2 _1132 = asfloat(v0);
    shader_in[0] = float4(_1132.x, _1132.y, shader_in[0].z, shader_in[0].w);
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
