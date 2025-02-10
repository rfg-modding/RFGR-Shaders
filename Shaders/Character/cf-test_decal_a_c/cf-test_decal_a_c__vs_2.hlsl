cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
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
static float4 v2;
static int4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
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
    _69.x = shader_in[2].y + shader_in[2].x;
    r0 = _69;
    float4 _77 = r0;
    _77.x = r0.x + shader_in[2].z;
    r0 = _77;
    float4 _85 = r0;
    _85.x = r0.x + shader_in[2].w;
    r0 = _85;
    float4 _92 = r0;
    _92.x = asfloat(1065353216u) / r0.x;
    r0 = _92;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    r2 = asfloat(asint(shader_in[3]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _119 = asint(r2.y);
    r3 = shader_in[2].yyyy * float4(cb4_m[_119].x, cb4_m[_119].y, cb4_m[_119].z, cb4_m[_119].w);
    int _141 = asint(r2.x);
    r3 = (shader_in[2].xxxx * float4(cb4_m[_141].x, cb4_m[_141].y, cb4_m[_141].z, cb4_m[_141].w)) + r3;
    int _160 = asint(r2.z);
    r3 = (shader_in[2].zzzz * float4(cb4_m[_160].x, cb4_m[_160].y, cb4_m[_160].z, cb4_m[_160].w)) + r3;
    int _179 = asint(r2.w);
    r3 = (shader_in[2].wwww * float4(cb4_m[_179].x, cb4_m[_179].y, cb4_m[_179].z, cb4_m[_179].w)) + r3;
    float4 _208 = r4;
    _208.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _208;
    int _217 = asint(r2.y) + 1;
    r5 = shader_in[2].yyyy * float4(cb4_m[_217].x, cb4_m[_217].y, cb4_m[_217].z, cb4_m[_217].w);
    int _236 = asint(r2.x) + 1;
    r5 = (shader_in[2].xxxx * float4(cb4_m[_236].x, cb4_m[_236].y, cb4_m[_236].z, cb4_m[_236].w)) + r5;
    int _256 = asint(r2.z) + 1;
    r5 = (shader_in[2].zzzz * float4(cb4_m[_256].x, cb4_m[_256].y, cb4_m[_256].z, cb4_m[_256].w)) + r5;
    int _276 = asint(r2.w) + 1;
    r5 = (shader_in[2].wwww * float4(cb4_m[_276].x, cb4_m[_276].y, cb4_m[_276].z, cb4_m[_276].w)) + r5;
    float4 _304 = r4;
    _304.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _304;
    int _312 = asint(r2.y) + 2;
    r6 = shader_in[2].yyyy * float4(cb4_m[_312].x, cb4_m[_312].y, cb4_m[_312].z, cb4_m[_312].w);
    int _331 = asint(r2.x) + 2;
    r6 = (shader_in[2].xxxx * float4(cb4_m[_331].x, cb4_m[_331].y, cb4_m[_331].z, cb4_m[_331].w)) + r6;
    int _351 = asint(r2.z) + 2;
    r6 = (shader_in[2].zzzz * float4(cb4_m[_351].x, cb4_m[_351].y, cb4_m[_351].z, cb4_m[_351].w)) + r6;
    int _371 = asint(r2.w) + 2;
    r2 = (shader_in[2].wwww * float4(cb4_m[_371].x, cb4_m[_371].y, cb4_m[_371].z, cb4_m[_371].w)) + r6;
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
    float4 _573 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _587 = o0;
    _587.w = mad(_573.w, r4.w, mad(_573.z, r4.z, mad(_573.y, r4.y, _573.x * r4.x)));
    o0 = _587;
    float4 _591 = r0;
    _591.y = asfloat(3212836864u);
    r0 = _591;
    float3 _605 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_605.x, _605.y, _605.z, r1.w);
    float3 _617 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _627 = r0;
    _627.z = mad(r1.xyz.z, _617.z, mad(r1.xyz.y, _617.y, r1.xyz.x * _617.x));
    r0 = _627;
    float4 _636 = r0;
    _636.z = r0.z * cb5_m[5].y;
    r0 = _636;
    float4 _643 = r4;
    _643.y = r0.z * r0.y;
    r4 = _643;
    float3 _654 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _664 = r6;
    _664.x = mad(r1.xyz.z, _654.z, mad(r1.xyz.y, _654.y, r1.xyz.x * _654.x));
    r6 = _664;
    float3 _675 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _685 = r6;
    _685.z = mad(r1.xyz.z, _675.z, mad(r1.xyz.y, _675.y, r1.xyz.x * _675.x));
    r6 = _685;
    float2 _695 = r6.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r4 = float4(_695.x, r4.y, _695.y, r4.w);
    o1 = r4.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _707 = o3;
    _707.w = r4.z;
    o3 = _707;
    float3 _719 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _719.x, _719.y, _719.z);
    float3 _733 = r0.zwy * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_733.x, _733.y, _733.z, r1.w);
    float3 _751 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r0.wyz) + (-r1.xyz);
    r1 = float4(_751.x, _751.y, _751.z, r1.w);
    float4 _767 = r1;
    _767.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _767;
    float4 _772 = r1;
    _772.w = rsqrt(r1.w);
    r1 = _772;
    float3 _778 = r1.www * r1.xyz;
    r1 = float4(_778.x, _778.y, _778.z, r1.w);
    float3 _785 = r0.wyz * r1.yzx;
    r4 = float4(_785.x, _785.y, _785.z, r4.w);
    float3 _796 = (r0.zwy * r1.zxy) + (-r4.xyz);
    r4 = float4(_796.x, _796.y, _796.z, r4.w);
    float3 _806 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _818 = o3;
    _818.y = mad(_806.z, r1.xyz.z, mad(_806.y, r1.xyz.y, _806.x * r1.xyz.x));
    o3 = _818;
    float4 _833 = r1;
    _833.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _833;
    float4 _838 = r1;
    _838.x = rsqrt(r1.x);
    r1 = _838;
    float3 _844 = r1.xxx * r4.xyz;
    r1 = float4(_844.x, _844.y, _844.z, r1.w);
    float4 _860 = r4;
    _860.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _860;
    float4 _875 = r3;
    _875.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r3 = _875;
    float4 _890 = r4;
    _890.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _890;
    float4 _905 = r3;
    _905.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r3 = _905;
    float4 _920 = r4;
    _920.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _920;
    float4 _935 = r3;
    _935.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r3 = _935;
    float3 _944 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _956 = o3;
    _956.z = mad(_944.z, r0.yzw.z, mad(_944.y, r0.yzw.y, _944.x * r0.yzw.x));
    o3 = _956;
    float3 _962 = r0.xxx * r3.xyz;
    r0 = float4(r0.x, _962.x, _962.y, _962.z);
    float3 _969 = r0.xxx * r4.xyz;
    r2 = float4(_969.x, _969.y, _969.z, r2.w);
    float3 _979 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _991 = o3;
    _991.x = mad(_979.z, r1.xyz.z, mad(_979.y, r1.xyz.y, _979.x * r1.xyz.x));
    o3 = _991;
    float4 _1006 = r0;
    _1006.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1006;
    float4 _1011 = r0;
    _1011.x = rsqrt(r0.x);
    r0 = _1011;
    float3 _1017 = r0.xxx * r2.xyz;
    r1 = float4(_1017.x, _1017.y, _1017.z, r1.w);
    float3 _1027 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1039 = r2;
    _1039.x = mad(_1027.z, r1.xyz.z, mad(_1027.y, r1.xyz.y, _1027.x * r1.xyz.x));
    r2 = _1039;
    float3 _1048 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1060 = r2;
    _1060.y = mad(_1048.z, r1.xyz.z, mad(_1048.y, r1.xyz.y, _1048.x * r1.xyz.x));
    r2 = _1060;
    float3 _1069 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1081 = r2;
    _1081.z = mad(_1069.z, r1.xyz.z, mad(_1069.y, r1.xyz.y, _1069.x * r1.xyz.x));
    r2 = _1081;
    float4 _1096 = r0;
    _1096.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1096;
    float4 _1101 = r0;
    _1101.x = rsqrt(r0.x);
    r0 = _1101;
    float3 _1107 = r0.xxx * r2.xyz;
    r1 = float4(_1107.x, _1107.y, _1107.z, r1.w);
    float4 _1123 = r0;
    _1123.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1123;
    float4 _1128 = r0;
    _1128.x = rsqrt(r0.x);
    r0 = _1128;
    float3 _1134 = r0.xxx * r0.yzw;
    r0 = float4(_1134.x, _1134.y, _1134.z, r0.w);
    float3 _1144 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _1156 = r2;
    _1156.x = mad(_1144.z, r0.xyz.z, mad(_1144.y, r0.xyz.y, _1144.x * r0.xyz.x));
    r2 = _1156;
    float3 _1165 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _1177 = r2;
    _1177.y = mad(_1165.z, r0.xyz.z, mad(_1165.y, r0.xyz.y, _1165.x * r0.xyz.x));
    r2 = _1177;
    float3 _1186 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1198 = r2;
    _1198.z = mad(_1186.z, r0.xyz.z, mad(_1186.y, r0.xyz.y, _1186.x * r0.xyz.x));
    r2 = _1198;
    float4 _1213 = r0;
    _1213.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1213;
    float4 _1218 = r0;
    _1218.x = rsqrt(r0.x);
    r0 = _1218;
    float3 _1224 = r0.xxx * r2.xyz;
    r0 = float4(_1224.x, _1224.y, _1224.z, r0.w);
    float3 _1231 = r1.yzx * r0.zxy;
    r2 = float4(_1231.x, _1231.y, _1231.z, r2.w);
    float3 _1242 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_1242.x, _1242.y, _1242.z, r2.w);
    float3 _1252 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1264 = o2;
    _1264.x = mad(_1252.z, r1.xyz.z, mad(_1252.y, r1.xyz.y, _1252.x * r1.xyz.x));
    o2 = _1264;
    float3 _1273 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1285 = o2;
    _1285.z = mad(_1273.z, r0.xyz.z, mad(_1273.y, r0.xyz.y, _1273.x * r0.xyz.x));
    o2 = _1285;
    float3 _1294 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1297 = -r2.xyz;
    float3 _1307 = o2;
    _1307.y = mad(_1294.z, _1297.z, mad(_1294.y, _1297.y, _1294.x * _1297.x));
    o2 = _1307;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = asfloat(v3);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
