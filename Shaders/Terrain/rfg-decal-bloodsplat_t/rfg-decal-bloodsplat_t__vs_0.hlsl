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
    float3 _552 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _564 = o1;
    _564.x = mad(_552.z, r2.xyz.z, mad(_552.y, r2.xyz.y, _552.x * r2.xyz.x));
    o1 = _564;
    float3 _573 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _586 = r3;
    _586.x = mad(_573.z, shader_in[1].xyz.z, mad(_573.y, shader_in[1].xyz.y, _573.x * shader_in[1].xyz.x));
    r3 = _586;
    float3 _595 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _608 = r3;
    _608.y = mad(_595.z, shader_in[1].xyz.z, mad(_595.y, shader_in[1].xyz.y, _595.x * shader_in[1].xyz.x));
    r3 = _608;
    float3 _617 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _630 = r3;
    _630.z = mad(_617.z, shader_in[1].xyz.z, mad(_617.y, shader_in[1].xyz.y, _617.x * shader_in[1].xyz.x));
    r3 = _630;
    float4 _645 = r0;
    _645.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _645;
    float4 _650 = r0;
    _650.w = rsqrt(r0.w);
    r0 = _650;
    float3 _656 = r0.www * r3.xyz;
    r3 = float4(_656.x, _656.y, _656.z, r3.w);
    float3 _663 = r2.yzx * r3.zxy;
    r4 = float4(_663.x, _663.y, _663.z, r4.w);
    float3 _675 = (r3.yzx * r2.zxy) + (-r4.xyz);
    r4 = float4(_675.x, _675.y, _675.z, r4.w);
    float3 _685 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _688 = -r4.xyz;
    float3 _698 = o1;
    _698.y = mad(_685.z, _688.z, mad(_685.y, _688.y, _685.x * _688.x));
    o1 = _698;
    float3 _707 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _719 = o1;
    _719.z = mad(_707.z, r3.xyz.z, mad(_707.y, r3.xyz.y, _707.x * r3.xyz.x));
    o1 = _719;
    float3 _733 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r5 = float4(_733.x, _733.y, _733.z, r5.w);
    float3 _748 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_748.x, _748.y, _748.z, r0.w);
    float3 _764 = o2;
    _764.x = mad(r5.xyz.z, r2.xyz.z, mad(r5.xyz.y, r2.xyz.y, r5.xyz.x * r2.xyz.x));
    o2 = _764;
    float4 _768 = o6;
    _768.x = r2.y;
    o6 = _768;
    float3 _783 = o2;
    _783.z = mad(r5.xyz.z, r3.xyz.z, mad(r5.xyz.y, r3.xyz.y, r5.xyz.x * r3.xyz.x));
    o2 = _783;
    float4 _787 = o6;
    _787.z = r3.y;
    o6 = _787;
    float3 _793 = -r4.xyz;
    float3 _803 = o2;
    _803.y = mad(r5.xyz.z, _793.z, mad(r5.xyz.y, _793.y, r5.xyz.x * _793.x));
    o2 = _803;
    float4 _808 = o6;
    _808.y = -r4.y;
    o6 = _808;
    float3 _819 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _829 = r2;
    _829.x = mad(r1.xyz.z, _819.z, mad(r1.xyz.y, _819.y, r1.xyz.x * _819.x));
    r2 = _829;
    float3 _840 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _850 = r2;
    _850.z = mad(r1.xyz.z, _840.z, mad(r1.xyz.y, _840.y, r1.xyz.x * _840.x));
    r2 = _850;
    float3 _861 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _871 = r0;
    _871.w = mad(r1.xyz.z, _861.z, mad(r1.xyz.y, _861.y, r1.xyz.x * _861.x));
    r0 = _871;
    float4 _880 = r0;
    _880.w = r0.w * cb5_m[5].y;
    r0 = _880;
    float2 _890 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_890.x, r1.y, _890.y, r1.w);
    float4 _895 = o3;
    _895.w = r1.z;
    o3 = _895;
    float3 _904 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _917 = o3;
    _917.z = mad(_904.z, shader_in[1].xyz.z, mad(_904.y, shader_in[1].xyz.y, _904.x * shader_in[1].xyz.x));
    o3 = _917;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _948 = r1;
    _948.z = r0.y * cb0_m[13].x;
    r1 = _948;
    float4 _955 = r1;
    _955.w = r1.z * asfloat(3216550459u);
    r1 = _955;
    float4 _960 = r1;
    _960.w = exp2(r1.w);
    r1 = _960;
    float4 _967 = r1;
    _967.w = (-r1.w) + asfloat(1065353216u);
    r1 = _967;
    float4 _974 = r1;
    _974.z = r1.w / r1.z;
    r1 = _974;
    float4 _986 = r1;
    _986.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _986;
    float4 _1001 = r0;
    _1001.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _1001;
    float4 _1006 = r0;
    _1006.x = sqrt(r0.x);
    r0 = _1006;
    float4 _1014 = r0;
    _1014.x = r0.x * cb0_m[13].y;
    r0 = _1014;
    float4 _1024 = r0;
    _1024.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _1024;
    float4 _1036 = r0;
    _1036.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _1036;
    float4 _1042 = r0;
    _1042.x = exp2(-r0.x);
    r0 = _1042;
    float4 _1048 = r0;
    _1048.x = min(r0.x, asfloat(1065353216u));
    r0 = _1048;
    float4 _1055 = o6;
    _1055.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1055;
    float4 _1059 = r0;
    _1059.x = asfloat(3212836864u);
    r0 = _1059;
    float4 _1066 = r1;
    _1066.y = r0.w * r0.x;
    r1 = _1066;
    float2 _1074 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o7 = float4(_1074.x, _1074.y, o7.z, o7.w);
    float2 _1080 = cb5_m[5].w.xx;
    o7 = float4(o7.x, o7.y, _1080.x, _1080.y);
}

void vert_main()
{
    float2 _1085 = asfloat(v0);
    shader_in[0] = float4(_1085.x, _1085.y, shader_in[0].z, shader_in[0].w);
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
