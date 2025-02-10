cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
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
static float3 o1;
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
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _119 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_119].x, cb4_m[_119].y, cb4_m[_119].z, cb4_m[_119].w);
    int _141 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_141].x, cb4_m[_141].y, cb4_m[_141].z, cb4_m[_141].w)) + r3;
    int _160 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_160].x, cb4_m[_160].y, cb4_m[_160].z, cb4_m[_160].w)) + r3;
    int _179 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_179].x, cb4_m[_179].y, cb4_m[_179].z, cb4_m[_179].w)) + r3;
    float4 _208 = r4;
    _208.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _208;
    int _217 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_217].x, cb4_m[_217].y, cb4_m[_217].z, cb4_m[_217].w);
    int _236 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_236].x, cb4_m[_236].y, cb4_m[_236].z, cb4_m[_236].w)) + r5;
    int _256 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_256].x, cb4_m[_256].y, cb4_m[_256].z, cb4_m[_256].w)) + r5;
    int _276 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_276].x, cb4_m[_276].y, cb4_m[_276].z, cb4_m[_276].w)) + r5;
    float4 _304 = r4;
    _304.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _304;
    int _313 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_313].x, cb4_m[_313].y, cb4_m[_313].z, cb4_m[_313].w);
    int _332 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_332].x, cb4_m[_332].y, cb4_m[_332].z, cb4_m[_332].w)) + r6;
    int _352 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_352].x, cb4_m[_352].y, cb4_m[_352].z, cb4_m[_352].w)) + r6;
    int _372 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_372].x, cb4_m[_372].y, cb4_m[_372].z, cb4_m[_372].w)) + r6;
    float4 _400 = r4;
    _400.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _400;
    float3 _406 = r0.xxx * r4.xyz;
    r1 = float4(_406.x, _406.y, _406.z, r1.w);
    float4 _410 = r1;
    _410.w = asfloat(1065353216u);
    r1 = _410;
    float4 _421 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _435 = r4;
    _435.x = mad(_421.w, r1.w, mad(_421.z, r1.z, mad(_421.y, r1.y, _421.x * r1.x)));
    r4 = _435;
    float4 _446 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _460 = r4;
    _460.y = mad(_446.w, r1.w, mad(_446.z, r1.z, mad(_446.y, r1.y, _446.x * r1.x)));
    r4 = _460;
    float4 _471 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _485 = r4;
    _485.z = mad(_471.w, r1.w, mad(_471.z, r1.z, mad(_471.y, r1.y, _471.x * r1.x)));
    r4 = _485;
    float4 _488 = r4;
    _488.w = asfloat(1065353216u);
    r4 = _488;
    float4 _499 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _513 = o0;
    _513.x = mad(_499.w, r4.w, mad(_499.z, r4.z, mad(_499.y, r4.y, _499.x * r4.x)));
    o0 = _513;
    float4 _524 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _538 = o0;
    _538.y = mad(_524.w, r4.w, mad(_524.z, r4.z, mad(_524.y, r4.y, _524.x * r4.x)));
    o0 = _538;
    float4 _549 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _563 = o0;
    _563.z = mad(_549.w, r4.w, mad(_549.z, r4.z, mad(_549.y, r4.y, _549.x * r4.x)));
    o0 = _563;
    float4 _575 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _589 = o0;
    _589.w = mad(_575.w, r4.w, mad(_575.z, r4.z, mad(_575.y, r4.y, _575.x * r4.x)));
    o0 = _589;
    float3 _602 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _602.x, _602.y, _602.z);
    float4 _618 = r1;
    _618.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _618;
    float4 _633 = r1;
    _633.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _633;
    float4 _648 = r1;
    _648.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _648;
    float3 _654 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _654.x, _654.y, _654.z);
    float4 _670 = r1;
    _670.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _670;
    float4 _675 = r1;
    _675.x = rsqrt(r1.x);
    r1 = _675;
    float3 _681 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _681.x, _681.y, _681.z);
    float3 _691 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _703 = r1;
    _703.x = mad(_691.z, r0.yzw.z, mad(_691.y, r0.yzw.y, _691.x * r0.yzw.x));
    r1 = _703;
    float3 _712 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _724 = r1;
    _724.y = mad(_712.z, r0.yzw.z, mad(_712.y, r0.yzw.y, _712.x * r0.yzw.x));
    r1 = _724;
    float3 _733 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _745 = r1;
    _745.z = mad(_733.z, r0.yzw.z, mad(_733.y, r0.yzw.y, _733.x * r0.yzw.x));
    r1 = _745;
    float4 _760 = r0;
    _760.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _760;
    float4 _765 = r0;
    _765.y = rsqrt(r0.y);
    r0 = _765;
    float3 _771 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _771.x, _771.y, _771.z);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _796 = r3;
    _796.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _796;
    float4 _811 = r3;
    _811.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _811;
    float4 _826 = r3;
    _826.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _826;
    float3 _832 = r0.xxx * r3.xyz;
    r1 = float4(_832.x, _832.y, _832.z, r1.w);
    float4 _848 = r0;
    _848.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _848;
    float4 _853 = r0;
    _853.x = rsqrt(r0.x);
    r0 = _853;
    float3 _859 = r0.xxx * r1.xyz;
    r1 = float4(_859.x, _859.y, _859.z, r1.w);
    float3 _869 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _881 = r2;
    _881.x = mad(_869.z, r1.xyz.z, mad(_869.y, r1.xyz.y, _869.x * r1.xyz.x));
    r2 = _881;
    float3 _890 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _902 = r2;
    _902.y = mad(_890.z, r1.xyz.z, mad(_890.y, r1.xyz.y, _890.x * r1.xyz.x));
    r2 = _902;
    float3 _911 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _923 = r2;
    _923.z = mad(_911.z, r1.xyz.z, mad(_911.y, r1.xyz.y, _911.x * r1.xyz.x));
    r2 = _923;
    float4 _938 = r0;
    _938.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _938;
    float4 _943 = r0;
    _943.x = rsqrt(r0.x);
    r0 = _943;
    float3 _949 = r0.xxx * r2.xyz;
    r1 = float4(_949.x, _949.y, _949.z, r1.w);
    float3 _956 = r0.wyz * r1.yzx;
    r2 = float4(_956.x, _956.y, _956.z, r2.w);
    float3 _967 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_967.x, _967.y, _967.z, r2.w);
    float3 _974 = r1.www * r2.xyz;
    r2 = float4(_974.x, _974.y, _974.z, r2.w);
    float3 _988 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_988.x, _988.y, _988.z, r3.w);
    float3 _1003 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1003.x, _1003.y, _1003.z, r4.w);
    float3 _1019 = o1;
    _1019.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o1 = _1019;
    float3 _1028 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1040 = o2;
    _1040.y = mad(_1028.z, r2.xyz.z, mad(_1028.y, r2.xyz.y, _1028.x * r2.xyz.x));
    o2 = _1040;
    float3 _1055 = o1;
    _1055.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o1 = _1055;
    float3 _1064 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1076 = o2;
    _1076.z = mad(_1064.z, r0.yzw.z, mad(_1064.y, r0.yzw.y, _1064.x * r0.yzw.x));
    o2 = _1076;
    float3 _1091 = o1;
    _1091.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o1 = _1091;
    float3 _1100 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1112 = o2;
    _1112.x = mad(_1100.z, r1.xyz.z, mad(_1100.y, r1.xyz.y, _1100.x * r1.xyz.x));
    o2 = _1112;
    float4 _1121 = r0;
    _1121.x = r4.y * cb0_m[13].x;
    r0 = _1121;
    float4 _1128 = r0;
    _1128.y = r0.x * asfloat(3216550459u);
    r0 = _1128;
    float4 _1133 = r0;
    _1133.y = exp2(r0.y);
    r0 = _1133;
    float4 _1140 = r0;
    _1140.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1140;
    float4 _1147 = r0;
    _1147.x = r0.y / r0.x;
    r0 = _1147;
    float4 _1159 = r0;
    _1159.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1159;
    float4 _1174 = r0;
    _1174.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1174;
    float4 _1179 = r0;
    _1179.z = sqrt(r0.z);
    r0 = _1179;
    float4 _1187 = r0;
    _1187.z = r0.z * cb0_m[13].y;
    r0 = _1187;
    float4 _1197 = r0;
    _1197.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1197;
    float4 _1209 = r0;
    _1209.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1209;
    float4 _1215 = r0;
    _1215.x = exp2(-r0.x);
    r0 = _1215;
    float4 _1221 = r0;
    _1221.x = min(r0.x, asfloat(1065353216u));
    r0 = _1221;
    float4 _1228 = o2;
    _1228.w = (-r0.x) + asfloat(1065353216u);
    o2 = _1228;
    float2 _1235 = float2(asint(shader_in[2].xy));
    r0 = float4(_1235.x, _1235.y, r0.z, r0.w);
    float2 _1246 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_1246.x, _1246.y, r0.z, r0.w);
    float2 _1255 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _1255.x, _1255.y);
    float2 _1262 = float2(asint(shader_in[1].xy));
    r0 = float4(_1262.x, _1262.y, r0.z, r0.w);
    float2 _1268 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_1268.x, _1268.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1277 = asfloat(v1);
    shader_in[1] = float4(_1277.x, _1277.y, shader_in[1].z, shader_in[1].w);
    float2 _1282 = asfloat(v2);
    shader_in[2] = float4(_1282.x, _1282.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
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
