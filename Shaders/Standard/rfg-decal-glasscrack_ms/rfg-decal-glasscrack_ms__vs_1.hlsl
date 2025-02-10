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
static float3 v2;
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
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
    float4 _60 = r0;
    _60.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _60;
    float3 _73 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_73.x, _73.y, _73.z, r0.w);
    float4 _78 = r0;
    _78.w = asfloat(1065353216u);
    r0 = _78;
    float4 _93 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _108 = r1;
    _108.x = mad(_93.w, r0.w, mad(_93.z, r0.z, mad(_93.y, r0.y, _93.x * r0.x)));
    r1 = _108;
    float4 _120 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _134 = r1;
    _134.y = mad(_120.w, r0.w, mad(_120.z, r0.z, mad(_120.y, r0.y, _120.x * r0.x)));
    r1 = _134;
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
    float4 _248 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _262 = o0;
    _262.w = mad(_248.w, r1.w, mad(_248.z, r1.z, mad(_248.y, r1.y, _248.x * r1.x)));
    o0 = _262;
    float3 _276 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r0 = float4(_276.x, _276.y, _276.z, r0.w);
    float3 _295 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r0.xyz);
    r0 = float4(_295.x, _295.y, _295.z, r0.w);
    float4 _311 = r0;
    _311.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _311;
    float4 _316 = r0;
    _316.w = rsqrt(r0.w);
    r0 = _316;
    float3 _322 = r0.www * r0.xyz;
    r0 = float4(_322.x, _322.y, _322.z, r0.w);
    float3 _330 = r0.yzx * shader_in[1].zxy;
    r2 = float4(_330.x, _330.y, _330.z, r2.w);
    float3 _343 = (shader_in[1].yzx * r0.zxy) + (-r2.xyz);
    r2 = float4(_343.x, _343.y, _343.z, r2.w);
    float3 _353 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _365 = o2;
    _365.y = mad(_353.z, r0.xyz.z, mad(_353.y, r0.xyz.y, _353.x * r0.xyz.x));
    o2 = _365;
    float4 _380 = r0;
    _380.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _380;
    float4 _385 = r0;
    _385.x = rsqrt(r0.x);
    r0 = _385;
    float3 _391 = r0.xxx * r2.xyz;
    r0 = float4(_391.x, _391.y, _391.z, r0.w);
    float3 _401 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _413 = r2;
    _413.x = mad(_401.z, r0.xyz.z, mad(_401.y, r0.xyz.y, _401.x * r0.xyz.x));
    r2 = _413;
    float3 _422 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _434 = r2;
    _434.y = mad(_422.z, r0.xyz.z, mad(_422.y, r0.xyz.y, _422.x * r0.xyz.x));
    r2 = _434;
    float3 _443 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _455 = r2;
    _455.z = mad(_443.z, r0.xyz.z, mad(_443.y, r0.xyz.y, _443.x * r0.xyz.x));
    r2 = _455;
    float3 _464 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _476 = o2;
    _476.x = mad(_464.z, r0.xyz.z, mad(_464.y, r0.xyz.y, _464.x * r0.xyz.x));
    o2 = _476;
    float4 _491 = r0;
    _491.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _491;
    float4 _496 = r0;
    _496.x = rsqrt(r0.x);
    r0 = _496;
    float3 _502 = r0.xxx * r2.xyz;
    r0 = float4(_502.x, _502.y, _502.z, r0.w);
    float3 _516 = (shader_in[3].xxx * shader_in[4].xyz) + shader_in[1].xyz;
    r2 = float4(_516.x, _516.y, _516.z, r2.w);
    float3 _526 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _539 = r3;
    _539.x = mad(_526.z, r2.xyz.z, mad(_526.y, r2.xyz.y, _526.x * r2.xyz.x));
    r3 = _539;
    float3 _548 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _560 = r3;
    _560.y = mad(_548.z, r2.xyz.z, mad(_548.y, r2.xyz.y, _548.x * r2.xyz.x));
    r3 = _560;
    float3 _569 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _581 = r3;
    _581.z = mad(_569.z, r2.xyz.z, mad(_569.y, r2.xyz.y, _569.x * r2.xyz.x));
    r3 = _581;
    float4 _596 = r0;
    _596.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _596;
    float4 _601 = r0;
    _601.w = rsqrt(r0.w);
    r0 = _601;
    float3 _607 = r0.www * r3.xyz;
    r2 = float4(_607.x, _607.y, _607.z, r2.w);
    float3 _614 = r0.yzx * r2.zxy;
    r3 = float4(_614.x, _614.y, _614.z, r3.w);
    float3 _625 = (r2.yzx * r0.zxy) + (-r3.xyz);
    r3 = float4(_625.x, _625.y, _625.z, r3.w);
    float3 _639 = (-r1.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_639.x, _639.y, _639.z, r4.w);
    float3 _655 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_655.x, _655.y, _655.z, r1.w);
    float3 _662 = -r3.xyz;
    float3 _672 = o1;
    _672.y = mad(r4.xyz.z, _662.z, mad(r4.xyz.y, _662.y, r4.xyz.x * _662.x));
    o1 = _672;
    float3 _681 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _684 = -r3.xyz;
    float4 _694 = o5;
    _694.y = mad(_681.z, _684.z, mad(_681.y, _684.y, _681.x * _684.x));
    o5 = _694;
    float3 _709 = o1;
    _709.x = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o1 = _709;
    float3 _718 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _730 = o5;
    _730.x = mad(_718.z, r0.xyz.z, mad(_718.y, r0.xyz.y, _718.x * r0.xyz.x));
    o5 = _730;
    float3 _745 = o1;
    _745.z = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _745;
    float3 _754 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _766 = o5;
    _766.z = mad(_754.z, r2.xyz.z, mad(_754.y, r2.xyz.y, _754.x * r2.xyz.x));
    o5 = _766;
    float3 _775 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _788 = o2;
    _788.z = mad(_775.z, shader_in[1].xyz.z, mad(_775.y, shader_in[1].xyz.y, _775.x * shader_in[1].xyz.x));
    o2 = _788;
    float3 _802 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_802.x, _802.y, _802.z, r0.w);
    float3 _814 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _824 = r2;
    _824.x = mad(r0.xyz.z, _814.z, mad(r0.xyz.y, _814.y, r0.xyz.x * _814.x));
    r2 = _824;
    float3 _835 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _845 = r2;
    _845.z = mad(r0.xyz.z, _835.z, mad(r0.xyz.y, _835.y, r0.xyz.x * _835.x));
    r2 = _845;
    float3 _856 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _866 = r0;
    _866.x = mad(r0.xyz.z, _856.z, mad(r0.xyz.y, _856.y, r0.xyz.x * _856.x));
    r0 = _866;
    float4 _875 = r0;
    _875.x = r0.x * cb5_m[5].y;
    r0 = _875;
    float2 _886 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_886.x, r2.y, _886.y, r2.w);
    float4 _891 = o2;
    _891.w = r2.z;
    o2 = _891;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _921 = r0;
    _921.y = r1.y * cb0_m[13].x;
    r0 = _921;
    float4 _928 = r0;
    _928.z = r0.y * asfloat(3216550459u);
    r0 = _928;
    float4 _933 = r0;
    _933.z = exp2(r0.z);
    r0 = _933;
    float4 _940 = r0;
    _940.z = (-r0.z) + asfloat(1065353216u);
    r0 = _940;
    float4 _947 = r0;
    _947.y = r0.z / r0.y;
    r0 = _947;
    float4 _959 = r0;
    _959.z = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _959;
    float4 _974 = r0;
    _974.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _974;
    float4 _979 = r0;
    _979.w = sqrt(r0.w);
    r0 = _979;
    float4 _987 = r0;
    _987.w = r0.w * cb0_m[13].y;
    r0 = _987;
    float4 _997 = r0;
    _997.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _997;
    float4 _1009 = r0;
    _1009.y = (r0.y * r0.w) + (-cb0_m[13].w);
    r0 = _1009;
    float4 _1015 = r0;
    _1015.y = exp2(-r0.y);
    r0 = _1015;
    float4 _1021 = r0;
    _1021.y = min(r0.y, asfloat(1065353216u));
    r0 = _1021;
    float4 _1028 = o5;
    _1028.w = (-r0.y) + asfloat(1065353216u);
    o5 = _1028;
    float4 _1032 = r0;
    _1032.y = asfloat(3212836864u);
    r0 = _1032;
    float4 _1039 = r2;
    _1039.y = r0.x * r0.y;
    r2 = _1039;
    float2 _1047 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1047.x, _1047.y, o6.z, o6.w);
    float2 _1053 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1053.x, _1053.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
