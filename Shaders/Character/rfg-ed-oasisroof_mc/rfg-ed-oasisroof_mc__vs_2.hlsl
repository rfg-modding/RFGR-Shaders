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
    float4 cb2_m[5] : packoffset(c0);
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
static float4 v6;
static float4 v7;
static int4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
static float3 o2;
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
    float4 _72 = r0;
    _72.x = shader_in[7].y + shader_in[7].x;
    r0 = _72;
    float4 _80 = r0;
    _80.x = r0.x + shader_in[7].z;
    r0 = _80;
    float4 _88 = r0;
    _88.x = r0.x + shader_in[7].w;
    r0 = _88;
    float4 _95 = r0;
    _95.x = asfloat(1065353216u) / r0.x;
    r0 = _95;
    float3 _110 = (shader_in[5].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_110.x, _110.y, _110.z, r1.w);
    float4 _115 = r1;
    _115.w = asfloat(1065353216u);
    r1 = _115;
    r2 = asfloat(asint(shader_in[8]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _132 = asint(r2.y);
    r3 = shader_in[7].yyyy * float4(cb4_m[_132].x, cb4_m[_132].y, cb4_m[_132].z, cb4_m[_132].w);
    int _154 = asint(r2.x);
    r3 = (shader_in[7].xxxx * float4(cb4_m[_154].x, cb4_m[_154].y, cb4_m[_154].z, cb4_m[_154].w)) + r3;
    int _173 = asint(r2.z);
    r3 = (shader_in[7].zzzz * float4(cb4_m[_173].x, cb4_m[_173].y, cb4_m[_173].z, cb4_m[_173].w)) + r3;
    int _192 = asint(r2.w);
    r3 = (shader_in[7].wwww * float4(cb4_m[_192].x, cb4_m[_192].y, cb4_m[_192].z, cb4_m[_192].w)) + r3;
    float4 _221 = r4;
    _221.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _221;
    int _230 = asint(r2.y) + 1;
    r5 = shader_in[7].yyyy * float4(cb4_m[_230].x, cb4_m[_230].y, cb4_m[_230].z, cb4_m[_230].w);
    int _249 = asint(r2.x) + 1;
    r5 = (shader_in[7].xxxx * float4(cb4_m[_249].x, cb4_m[_249].y, cb4_m[_249].z, cb4_m[_249].w)) + r5;
    int _269 = asint(r2.z) + 1;
    r5 = (shader_in[7].zzzz * float4(cb4_m[_269].x, cb4_m[_269].y, cb4_m[_269].z, cb4_m[_269].w)) + r5;
    int _289 = asint(r2.w) + 1;
    r5 = (shader_in[7].wwww * float4(cb4_m[_289].x, cb4_m[_289].y, cb4_m[_289].z, cb4_m[_289].w)) + r5;
    float4 _317 = r4;
    _317.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _317;
    int _326 = asint(r2.y) + 2;
    r6 = shader_in[7].yyyy * float4(cb4_m[_326].x, cb4_m[_326].y, cb4_m[_326].z, cb4_m[_326].w);
    int _345 = asint(r2.x) + 2;
    r6 = (shader_in[7].xxxx * float4(cb4_m[_345].x, cb4_m[_345].y, cb4_m[_345].z, cb4_m[_345].w)) + r6;
    int _365 = asint(r2.z) + 2;
    r6 = (shader_in[7].zzzz * float4(cb4_m[_365].x, cb4_m[_365].y, cb4_m[_365].z, cb4_m[_365].w)) + r6;
    int _385 = asint(r2.w) + 2;
    r2 = (shader_in[7].wwww * float4(cb4_m[_385].x, cb4_m[_385].y, cb4_m[_385].z, cb4_m[_385].w)) + r6;
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
    float3 _629 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_629.x, _629.y, _629.z, r1.w);
    float3 _639 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_639.x, _639.y, _639.z, r4.w);
    float3 _648 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_648.x, _648.y, _648.z, r1.w);
    float4 _664 = r1;
    _664.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _664;
    float4 _669 = r1;
    _669.w = rsqrt(r1.w);
    r1 = _669;
    float3 _675 = r1.www * r1.xyz;
    r1 = float4(_675.x, _675.y, _675.z, r1.w);
    float4 _691 = r4;
    _691.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _691;
    float4 _706 = r4;
    _706.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _706;
    float4 _721 = r4;
    _721.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _721;
    float3 _727 = r0.xxx * r4.xyz;
    r1 = float4(_727.x, _727.y, _727.z, r1.w);
    float4 _743 = r1;
    _743.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _743;
    float4 _748 = r1;
    _748.w = rsqrt(r1.w);
    r1 = _748;
    float3 _754 = r1.www * r1.xyz;
    r1 = float4(_754.x, _754.y, _754.z, r1.w);
    float3 _764 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _776 = r4;
    _776.x = mad(_764.z, r1.xyz.z, mad(_764.y, r1.xyz.y, _764.x * r1.xyz.x));
    r4 = _776;
    float3 _785 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _797 = r4;
    _797.y = mad(_785.z, r1.xyz.z, mad(_785.y, r1.xyz.y, _785.x * r1.xyz.x));
    r4 = _797;
    float3 _806 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _818 = r4;
    _818.z = mad(_806.z, r1.xyz.z, mad(_806.y, r1.xyz.y, _806.x * r1.xyz.x));
    r4 = _818;
    float4 _833 = r1;
    _833.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _833;
    float4 _838 = r1;
    _838.x = rsqrt(r1.x);
    r1 = _838;
    float3 _844 = r1.xxx * r4.xyz;
    r1 = float4(_844.x, _844.y, _844.z, r1.w);
    r4 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _869 = r3;
    _869.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _869;
    float4 _884 = r3;
    _884.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _884;
    float4 _899 = r3;
    _899.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _899;
    float3 _905 = r0.xxx * r3.xyz;
    r2 = float4(_905.x, _905.y, _905.z, r2.w);
    float4 _921 = r0;
    _921.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _921;
    float4 _926 = r0;
    _926.x = rsqrt(r0.x);
    r0 = _926;
    float3 _932 = r0.xxx * r2.xyz;
    r2 = float4(_932.x, _932.y, _932.z, r2.w);
    float3 _942 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _954 = r3;
    _954.x = mad(_942.z, r2.xyz.z, mad(_942.y, r2.xyz.y, _942.x * r2.xyz.x));
    r3 = _954;
    float3 _963 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _975 = r3;
    _975.y = mad(_963.z, r2.xyz.z, mad(_963.y, r2.xyz.y, _963.x * r2.xyz.x));
    r3 = _975;
    float3 _984 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _996 = r3;
    _996.z = mad(_984.z, r2.xyz.z, mad(_984.y, r2.xyz.y, _984.x * r2.xyz.x));
    r3 = _996;
    float4 _1011 = r0;
    _1011.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1011;
    float4 _1016 = r0;
    _1016.x = rsqrt(r0.x);
    r0 = _1016;
    float3 _1022 = r0.xxx * r3.xyz;
    r2 = float4(_1022.x, _1022.y, _1022.z, r2.w);
    float3 _1029 = r1.zxy * r2.yzx;
    r3 = float4(_1029.x, _1029.y, _1029.z, r3.w);
    float3 _1040 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1040.x, _1040.y, _1040.z, r3.w);
    float3 _1047 = r4.www * r3.xyz;
    r3 = float4(_1047.x, _1047.y, _1047.z, r3.w);
    float3 _1057 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1069 = o1;
    _1069.y = mad(_1057.z, r3.xyz.z, mad(_1057.y, r3.xyz.y, _1057.x * r3.xyz.x));
    o1 = _1069;
    float3 _1078 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1090 = o1;
    _1090.z = mad(_1078.z, r1.xyz.z, mad(_1078.y, r1.xyz.y, _1078.x * r1.xyz.x));
    o1 = _1090;
    float3 _1099 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1111 = o1;
    _1111.x = mad(_1099.z, r2.xyz.z, mad(_1099.y, r2.xyz.y, _1099.x * r2.xyz.x));
    o1 = _1111;
    float4 _1126 = r0;
    _1126.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1126;
    float4 _1131 = r0;
    _1131.x = rsqrt(r0.x);
    r0 = _1131;
    float3 _1137 = r0.xxx * r0.yzw;
    r0 = float4(_1137.x, _1137.y, _1137.z, r0.w);
    float3 _1153 = o2;
    _1153.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _1153;
    float3 _1168 = o2;
    _1168.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _1168;
    float3 _1183 = o2;
    _1183.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _1183;
    float2 _1190 = float2(asint(shader_in[2].xy));
    r0 = float4(_1190.x, _1190.y, r0.z, r0.w);
    float2 _1201 = r0.xy * float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_1201.x, _1201.y, r0.z, r0.w);
    float2 _1210 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _1210.x, _1210.y);
    float2 _1217 = float2(asint(shader_in[1].xy));
    r0 = float4(_1217.x, _1217.y, r0.z, r0.w);
    float2 _1223 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_1223.x, _1223.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1232 = asfloat(v1);
    shader_in[1] = float4(_1232.x, _1232.y, shader_in[1].z, shader_in[1].w);
    float2 _1237 = asfloat(v2);
    shader_in[2] = float4(_1237.x, _1237.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = asfloat(v8);
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
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
