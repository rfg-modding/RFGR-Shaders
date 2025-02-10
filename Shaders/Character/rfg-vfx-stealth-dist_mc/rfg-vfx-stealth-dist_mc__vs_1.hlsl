cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
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
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float2 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _63 = r0;
    _63.x = shader_in[5].y + shader_in[5].x;
    r0 = _63;
    float4 _71 = r0;
    _71.x = r0.x + shader_in[5].z;
    r0 = _71;
    float4 _79 = r0;
    _79.x = r0.x + shader_in[5].w;
    r0 = _79;
    float4 _86 = r0;
    _86.x = asfloat(1065353216u) / r0.x;
    r0 = _86;
    float3 _101 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_101.x, _101.y, _101.z, r1.w);
    float4 _106 = r1;
    _106.w = asfloat(1065353216u);
    r1 = _106;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _124 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_124].x, cb4_m[_124].y, cb4_m[_124].z, cb4_m[_124].w);
    int _147 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_147].x, cb4_m[_147].y, cb4_m[_147].z, cb4_m[_147].w)) + r3;
    int _166 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_166].x, cb4_m[_166].y, cb4_m[_166].z, cb4_m[_166].w)) + r3;
    int _185 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_185].x, cb4_m[_185].y, cb4_m[_185].z, cb4_m[_185].w)) + r3;
    float4 _214 = r4;
    _214.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _214;
    int _223 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_223].x, cb4_m[_223].y, cb4_m[_223].z, cb4_m[_223].w);
    int _242 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_242].x, cb4_m[_242].y, cb4_m[_242].z, cb4_m[_242].w)) + r5;
    int _262 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_262].x, cb4_m[_262].y, cb4_m[_262].z, cb4_m[_262].w)) + r5;
    int _282 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_282].x, cb4_m[_282].y, cb4_m[_282].z, cb4_m[_282].w)) + r5;
    float4 _310 = r4;
    _310.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _310;
    int _319 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_319].x, cb4_m[_319].y, cb4_m[_319].z, cb4_m[_319].w);
    int _338 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_338].x, cb4_m[_338].y, cb4_m[_338].z, cb4_m[_338].w)) + r6;
    int _358 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_358].x, cb4_m[_358].y, cb4_m[_358].z, cb4_m[_358].w)) + r6;
    int _378 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_378].x, cb4_m[_378].y, cb4_m[_378].z, cb4_m[_378].w)) + r6;
    float4 _406 = r4;
    _406.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _406;
    float3 _412 = r0.xxx * r4.xyz;
    r1 = float4(_412.x, _412.y, _412.z, r1.w);
    float4 _416 = r1;
    _416.w = asfloat(1065353216u);
    r1 = _416;
    float4 _427 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _441 = r4;
    _441.x = mad(_427.w, r1.w, mad(_427.z, r1.z, mad(_427.y, r1.y, _427.x * r1.x)));
    r4 = _441;
    float4 _452 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _466 = r4;
    _466.z = mad(_452.w, r1.w, mad(_452.z, r1.z, mad(_452.y, r1.y, _452.x * r1.x)));
    r4 = _466;
    float4 _477 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _491 = r4;
    _491.y = mad(_477.w, r1.w, mad(_477.z, r1.z, mad(_477.y, r1.y, _477.x * r1.x)));
    r4 = _491;
    float4 _494 = r4;
    _494.w = asfloat(1065353216u);
    r4 = _494;
    float4 _505 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _519 = o0;
    _519.x = mad(_505.w, r4.w, mad(_505.z, r4.z, mad(_505.y, r4.y, _505.x * r4.x)));
    o0 = _519;
    float4 _530 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _544 = o0;
    _544.y = mad(_530.w, r4.w, mad(_530.z, r4.z, mad(_530.y, r4.y, _530.x * r4.x)));
    o0 = _544;
    float4 _555 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _569 = o0;
    _569.z = mad(_555.w, r4.w, mad(_555.z, r4.z, mad(_555.y, r4.y, _555.x * r4.x)));
    o0 = _569;
    float4 _580 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _594 = o0;
    _594.w = mad(_580.w, r4.w, mad(_580.z, r4.z, mad(_580.y, r4.y, _580.x * r4.x)));
    o0 = _594;
    float3 _608 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _608.x, _608.y, _608.z);
    float4 _621 = r1;
    _621.x = asfloat((cb6_m[3].w < r4.y) ? 4294967295u : 0u);
    r1 = _621;
    float2 _628 = o5;
    _628.x = asfloat(asuint(r1.x) & 1065353216u);
    o5 = _628;
    float3 _640 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_640.x, _640.y, _640.z, r1.w);
    float3 _650 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_650.x, _650.y, _650.z, r4.w);
    float3 _659 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_659.x, _659.y, _659.z, r1.w);
    float4 _675 = r1;
    _675.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _675;
    float4 _680 = r1;
    _680.w = rsqrt(r1.w);
    r1 = _680;
    float3 _686 = r1.www * r1.xyz;
    r1 = float4(_686.x, _686.y, _686.z, r1.w);
    float4 _702 = r3;
    _702.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _702;
    float4 _717 = r3;
    _717.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _717;
    float4 _732 = r3;
    _732.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _732;
    float3 _738 = r0.xxx * r3.xyz;
    r1 = float4(_738.x, _738.y, _738.z, r1.w);
    float4 _754 = r0;
    _754.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _754;
    float4 _759 = r0;
    _759.x = rsqrt(r0.x);
    r0 = _759;
    float3 _765 = r0.xxx * r1.xyz;
    r1 = float4(_765.x, _765.y, _765.z, r1.w);
    float3 _775 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _787 = r2;
    _787.x = mad(_775.z, r1.xyz.z, mad(_775.y, r1.xyz.y, _775.x * r1.xyz.x));
    r2 = _787;
    float3 _796 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _808 = r2;
    _808.y = mad(_796.z, r1.xyz.z, mad(_796.y, r1.xyz.y, _796.x * r1.xyz.x));
    r2 = _808;
    float3 _817 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _829 = r2;
    _829.z = mad(_817.z, r1.xyz.z, mad(_817.y, r1.xyz.y, _817.x * r1.xyz.x));
    r2 = _829;
    float4 _844 = r0;
    _844.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _844;
    float4 _849 = r0;
    _849.x = rsqrt(r0.x);
    r0 = _849;
    float3 _855 = r0.xxx * r2.xyz;
    r1 = float4(_855.x, _855.y, _855.z, r1.w);
    float4 _871 = r0;
    _871.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _871;
    float4 _876 = r1;
    _876.w = rsqrt(r0.x);
    r1 = _876;
    float4 _881 = r0;
    _881.x = sqrt(r0.x);
    r0 = _881;
    float4 _888 = r0;
    _888.x = r0.x + asfloat(3221225472u);
    r0 = _888;
    float4 _898 = o3;
    _898.w = clamp(r0.x * asfloat(1015889355u), 0.0f, 1.0f);
    o3 = _898;
    float4 _908 = r0;
    _908.x = ((-r0.z) * r1.w) + asfloat(1065353216u);
    r0 = _908;
    float3 _914 = r0.yzw * r1.www;
    r0 = float4(r0.x, _914.x, _914.y, _914.z);
    float4 _925 = r0;
    _925.x = asfloat((abs(r0.x) < asfloat(981668463u)) ? 4294967295u : 0u);
    r0 = _925;
    float4 _934 = r1;
    _934.w = asfloat((abs(r0.y) < asfloat(981668463u)) ? 4294967295u : 0u);
    r1 = _934;
    float4 _943 = r2;
    _943.x = asfloat((asfloat(0u) == abs(r0.w)) ? 0u : 4294967295u);
    r2 = _943;
    float4 _953 = r1;
    _953.w = asfloat(asuint(r1.w) & asuint(r2.x));
    r1 = _953;
    float4 _963 = r0;
    _963.x = asfloat(asuint(r0.x) & asuint(r1.w));
    r0 = _963;
    uint3 _967 = asuint(r0.xxx);
    float3 _969 = asfloat(uint3(0u, 0u, 1065353216u));
    float3 _971 = asfloat(uint3(1065353216u, 0u, 0u));
    bool3 _974 = bool3(_967.x != uint3(0u, 0u, 0u).x, _967.y != uint3(0u, 0u, 0u).y, _967.z != uint3(0u, 0u, 0u).z);
    float3 _975 = float3(_974.x ? _969.x : _971.x, _974.y ? _969.y : _971.y, _974.z ? _969.z : _971.z);
    r2 = float4(_975.x, _975.y, _975.z, r2.w);
    float3 _982 = r0.wyz * r2.xyz;
    r3 = float4(_982.x, _982.y, _982.z, r3.w);
    float3 _993 = (r0.zwy * r2.yzx) + (-r3.xyz);
    r2 = float4(_993.x, _993.y, _993.z, r2.w);
    float4 _1009 = r0;
    _1009.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1009;
    float4 _1014 = r0;
    _1014.x = rsqrt(r0.x);
    r0 = _1014;
    float3 _1020 = r0.xxx * r2.xyz;
    r2 = float4(_1020.x, _1020.y, _1020.z, r2.w);
    float3 _1027 = r0.zwy * r2.zxy;
    r3 = float4(_1027.x, _1027.y, _1027.z, r3.w);
    float3 _1038 = (r2.yzx * r0.wyz) + (-r3.xyz);
    r3 = float4(_1038.x, _1038.y, _1038.z, r3.w);
    float4 _1054 = r0;
    _1054.x = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r0 = _1054;
    float4 _1063 = r0;
    _1063.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _1063;
    float4 _1070 = o1;
    _1070.x = (-r0.x) + asfloat(1065353216u);
    o1 = _1070;
    float4 _1085 = r0;
    _1085.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1085;
    float4 _1090 = r0;
    _1090.x = rsqrt(r0.x);
    r0 = _1090;
    float3 _1096 = r0.xxx * r3.xyz;
    r2 = float4(_1096.x, _1096.y, _1096.z, r2.w);
    float4 _1112 = r0;
    _1112.x = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r0 = _1112;
    float4 _1120 = r0;
    _1120.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _1120;
    float4 _1127 = o1;
    _1127.y = (-r0.x) + asfloat(1065353216u);
    o1 = _1127;
    float2 _1131 = asfloat(uint2(0u, 1065353216u));
    o1 = float4(o1.x, o1.y, _1131.x, _1131.y);
    float4 _1148 = o2;
    _1148.w = clamp(mad(r0.yzw.z, r1.xyz.z, mad(r0.yzw.y, r1.xyz.y, r0.yzw.x * r1.xyz.x)), 0.0f, 1.0f);
    o2 = _1148;
    o3 = float4(r1.xyz.x, r1.xyz.y, r1.xyz.z, o3.w);
    o2 = float4(r0.yzw.x, r0.yzw.y, r0.yzw.z, o2.w);
    float3 _1163 = float3(asint(shader_in[1].xxy));
    r0 = float4(_1163.x, _1163.y, _1163.z, r0.w);
    float3 _1172 = r0.xyz * asfloat(uint3(989855744u, 989855744u, 981467136u));
    r0 = float4(_1172.x, _1172.y, _1172.z, r0.w);
    float3 _1188 = (cb0_m[12].x.xxx * asfloat(uint3(1041865114u, 3189348762u, 1028443341u))) + r0.xyz;
    o4 = float4(_1188.x, o4.y, _1188.y, _1188.z);
    float4 _1193 = o4;
    _1193.y = r0.z;
    o4 = _1193;
    float4 _1203 = r0;
    _1203.x = asfloat((cb6_m[3].w < asfloat(3323739136u)) ? 4294967295u : 0u);
    r0 = _1203;
    float4 _1213 = r0;
    _1213.y = asfloat((asfloat(3323741184u) < cb6_m[3].w) ? 4294967295u : 0u);
    r0 = _1213;
    float4 _1223 = r0;
    _1223.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _1223;
    float2 _1232 = o5;
    _1232.y = (asuint(r0.x) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    o5 = _1232;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1240 = asfloat(v1);
    shader_in[1] = float4(_1240.x, _1240.y, shader_in[1].z, shader_in[1].w);
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
