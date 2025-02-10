cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
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
static float4 v6;
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _73 = r0;
    _73.x = shader_in[6].y + shader_in[6].x;
    r0 = _73;
    float4 _81 = r0;
    _81.x = r0.x + shader_in[6].z;
    r0 = _81;
    float4 _89 = r0;
    _89.x = r0.x + shader_in[6].w;
    r0 = _89;
    float4 _96 = r0;
    _96.x = asfloat(1065353216u) / r0.x;
    r0 = _96;
    float3 _111 = (shader_in[4].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_111.x, _111.y, _111.z, r1.w);
    float4 _116 = r1;
    _116.w = asfloat(1065353216u);
    r1 = _116;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _133 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_133].x, cb4_m[_133].y, cb4_m[_133].z, cb4_m[_133].w);
    int _154 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_154].x, cb4_m[_154].y, cb4_m[_154].z, cb4_m[_154].w)) + r3;
    int _173 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_173].x, cb4_m[_173].y, cb4_m[_173].z, cb4_m[_173].w)) + r3;
    int _192 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_192].x, cb4_m[_192].y, cb4_m[_192].z, cb4_m[_192].w)) + r3;
    float4 _221 = r4;
    _221.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _221;
    int _230 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_230].x, cb4_m[_230].y, cb4_m[_230].z, cb4_m[_230].w);
    int _249 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_249].x, cb4_m[_249].y, cb4_m[_249].z, cb4_m[_249].w)) + r5;
    int _269 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_269].x, cb4_m[_269].y, cb4_m[_269].z, cb4_m[_269].w)) + r5;
    int _289 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_289].x, cb4_m[_289].y, cb4_m[_289].z, cb4_m[_289].w)) + r5;
    float4 _317 = r4;
    _317.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _317;
    int _326 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_326].x, cb4_m[_326].y, cb4_m[_326].z, cb4_m[_326].w);
    int _345 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_345].x, cb4_m[_345].y, cb4_m[_345].z, cb4_m[_345].w)) + r6;
    int _365 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_365].x, cb4_m[_365].y, cb4_m[_365].z, cb4_m[_365].w)) + r6;
    int _385 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_385].x, cb4_m[_385].y, cb4_m[_385].z, cb4_m[_385].w)) + r6;
    float4 _413 = r4;
    _413.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _413;
    float3 _419 = r0.xxx * r4.xyz;
    r1 = float4(_419.x, _419.y, _419.z, r1.w);
    float4 _423 = r1;
    _423.w = asfloat(1065353216u);
    r1 = _423;
    float4 _434 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _448 = r4;
    _448.x = mad(_434.w, r1.w, mad(_434.z, r1.z, mad(_434.y, r1.y, _434.x * r1.x)));
    r4 = _448;
    float4 _459 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _473 = r4;
    _473.y = mad(_459.w, r1.w, mad(_459.z, r1.z, mad(_459.y, r1.y, _459.x * r1.x)));
    r4 = _473;
    float4 _484 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _498 = r4;
    _498.z = mad(_484.w, r1.w, mad(_484.z, r1.z, mad(_484.y, r1.y, _484.x * r1.x)));
    r4 = _498;
    float4 _501 = r4;
    _501.w = asfloat(1065353216u);
    r4 = _501;
    float4 _512 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _526 = o0;
    _526.x = mad(_512.w, r4.w, mad(_512.z, r4.z, mad(_512.y, r4.y, _512.x * r4.x)));
    o0 = _526;
    float4 _537 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _551 = o0;
    _551.y = mad(_537.w, r4.w, mad(_537.z, r4.z, mad(_537.y, r4.y, _537.x * r4.x)));
    o0 = _551;
    float4 _562 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _576 = o0;
    _576.z = mad(_562.w, r4.w, mad(_562.z, r4.z, mad(_562.y, r4.y, _562.x * r4.x)));
    o0 = _576;
    float4 _588 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _602 = o0;
    _602.w = mad(_588.w, r4.w, mad(_588.z, r4.z, mad(_588.y, r4.y, _588.x * r4.x)));
    o0 = _602;
    float3 _616 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _616.x, _616.y, _616.z);
    float2 _623 = float2(asint(shader_in[1].xy));
    r1 = float4(_623.x, _623.y, r1.z, r1.w);
    float2 _634 = r1.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r1 = float4(_634.x, _634.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _654 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_654.x, _654.y, _654.z, r1.w);
    float3 _664 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_664.x, _664.y, _664.z, r4.w);
    float3 _673 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_673.x, _673.y, _673.z, r1.w);
    float4 _689 = r1;
    _689.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _689;
    float4 _694 = r1;
    _694.w = rsqrt(r1.w);
    r1 = _694;
    float3 _700 = r1.www * r1.xyz;
    r1 = float4(_700.x, _700.y, _700.z, r1.w);
    float4 _716 = r4;
    _716.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _716;
    float4 _731 = r4;
    _731.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _731;
    float4 _746 = r4;
    _746.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _746;
    float3 _752 = r0.xxx * r4.xyz;
    r1 = float4(_752.x, _752.y, _752.z, r1.w);
    float4 _768 = r1;
    _768.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _768;
    float4 _773 = r1;
    _773.w = rsqrt(r1.w);
    r1 = _773;
    float3 _779 = r1.www * r1.xyz;
    r1 = float4(_779.x, _779.y, _779.z, r1.w);
    float3 _789 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _801 = r4;
    _801.x = mad(_789.z, r1.xyz.z, mad(_789.y, r1.xyz.y, _789.x * r1.xyz.x));
    r4 = _801;
    float3 _810 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _822 = r4;
    _822.y = mad(_810.z, r1.xyz.z, mad(_810.y, r1.xyz.y, _810.x * r1.xyz.x));
    r4 = _822;
    float3 _831 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _843 = r4;
    _843.z = mad(_831.z, r1.xyz.z, mad(_831.y, r1.xyz.y, _831.x * r1.xyz.x));
    r4 = _843;
    float4 _858 = r1;
    _858.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _858;
    float4 _863 = r1;
    _863.x = rsqrt(r1.x);
    r1 = _863;
    float3 _869 = r1.xxx * r4.xyz;
    r1 = float4(_869.x, _869.y, _869.z, r1.w);
    r4 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _893 = r3;
    _893.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _893;
    float4 _908 = r3;
    _908.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _908;
    float4 _923 = r3;
    _923.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _923;
    float3 _929 = r0.xxx * r3.xyz;
    r2 = float4(_929.x, _929.y, _929.z, r2.w);
    float4 _945 = r0;
    _945.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _945;
    float4 _950 = r0;
    _950.x = rsqrt(r0.x);
    r0 = _950;
    float3 _956 = r0.xxx * r2.xyz;
    r2 = float4(_956.x, _956.y, _956.z, r2.w);
    float3 _966 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _978 = r3;
    _978.x = mad(_966.z, r2.xyz.z, mad(_966.y, r2.xyz.y, _966.x * r2.xyz.x));
    r3 = _978;
    float3 _987 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _999 = r3;
    _999.y = mad(_987.z, r2.xyz.z, mad(_987.y, r2.xyz.y, _987.x * r2.xyz.x));
    r3 = _999;
    float3 _1008 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1020 = r3;
    _1020.z = mad(_1008.z, r2.xyz.z, mad(_1008.y, r2.xyz.y, _1008.x * r2.xyz.x));
    r3 = _1020;
    float4 _1035 = r0;
    _1035.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1035;
    float4 _1040 = r0;
    _1040.x = rsqrt(r0.x);
    r0 = _1040;
    float3 _1046 = r0.xxx * r3.xyz;
    r2 = float4(_1046.x, _1046.y, _1046.z, r2.w);
    float3 _1053 = r1.zxy * r2.yzx;
    r3 = float4(_1053.x, _1053.y, _1053.z, r3.w);
    float3 _1064 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1064.x, _1064.y, _1064.z, r3.w);
    float3 _1071 = r4.www * r3.xyz;
    r3 = float4(_1071.x, _1071.y, _1071.z, r3.w);
    float3 _1081 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1093 = o2;
    _1093.y = mad(_1081.z, r3.xyz.z, mad(_1081.y, r3.xyz.y, _1081.x * r3.xyz.x));
    o2 = _1093;
    float3 _1102 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1114 = o2;
    _1114.z = mad(_1102.z, r1.xyz.z, mad(_1102.y, r1.xyz.y, _1102.x * r1.xyz.x));
    o2 = _1114;
    float3 _1123 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1135 = o2;
    _1135.x = mad(_1123.z, r2.xyz.z, mad(_1123.y, r2.xyz.y, _1123.x * r2.xyz.x));
    o2 = _1135;
    float4 _1150 = r0;
    _1150.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1150;
    float4 _1155 = r0;
    _1155.x = rsqrt(r0.x);
    r0 = _1155;
    float3 _1161 = r0.xxx * r0.yzw;
    r0 = float4(_1161.x, _1161.y, _1161.z, r0.w);
    float3 _1177 = o3;
    _1177.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1177;
    float3 _1192 = o3;
    _1192.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1192;
    float3 _1207 = o3;
    _1207.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1207;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1215 = asfloat(v1);
    shader_in[1] = float4(_1215.x, _1215.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = asfloat(v7);
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
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
