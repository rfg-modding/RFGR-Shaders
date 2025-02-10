cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
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
static int2 v3;
static float3 v4;
static float4 v5;
static float4 v6;
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
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
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _74 = r0;
    _74.x = shader_in[6].y + shader_in[6].x;
    r0 = _74;
    float4 _82 = r0;
    _82.x = r0.x + shader_in[6].z;
    r0 = _82;
    float4 _90 = r0;
    _90.x = r0.x + shader_in[6].w;
    r0 = _90;
    float4 _97 = r0;
    _97.x = asfloat(1065353216u) / r0.x;
    r0 = _97;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _107 = r1;
    _107.w = asfloat(1065353216u);
    r1 = _107;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _124 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_124].x, cb4_m[_124].y, cb4_m[_124].z, cb4_m[_124].w);
    int _146 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_146].x, cb4_m[_146].y, cb4_m[_146].z, cb4_m[_146].w)) + r3;
    int _165 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_165].x, cb4_m[_165].y, cb4_m[_165].z, cb4_m[_165].w)) + r3;
    int _184 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_184].x, cb4_m[_184].y, cb4_m[_184].z, cb4_m[_184].w)) + r3;
    float4 _213 = r4;
    _213.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _213;
    int _222 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_222].x, cb4_m[_222].y, cb4_m[_222].z, cb4_m[_222].w);
    int _241 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_241].x, cb4_m[_241].y, cb4_m[_241].z, cb4_m[_241].w)) + r5;
    int _261 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_261].x, cb4_m[_261].y, cb4_m[_261].z, cb4_m[_261].w)) + r5;
    int _281 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_281].x, cb4_m[_281].y, cb4_m[_281].z, cb4_m[_281].w)) + r5;
    float4 _309 = r4;
    _309.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _309;
    int _318 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_318].x, cb4_m[_318].y, cb4_m[_318].z, cb4_m[_318].w);
    int _337 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_337].x, cb4_m[_337].y, cb4_m[_337].z, cb4_m[_337].w)) + r6;
    int _357 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_357].x, cb4_m[_357].y, cb4_m[_357].z, cb4_m[_357].w)) + r6;
    int _377 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_377].x, cb4_m[_377].y, cb4_m[_377].z, cb4_m[_377].w)) + r6;
    float4 _405 = r4;
    _405.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _405;
    float3 _411 = r0.xxx * r4.xyz;
    r1 = float4(_411.x, _411.y, _411.z, r1.w);
    float4 _415 = r1;
    _415.w = asfloat(1065353216u);
    r1 = _415;
    float4 _426 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _440 = r4;
    _440.x = mad(_426.w, r1.w, mad(_426.z, r1.z, mad(_426.y, r1.y, _426.x * r1.x)));
    r4 = _440;
    float4 _451 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _465 = r4;
    _465.y = mad(_451.w, r1.w, mad(_451.z, r1.z, mad(_451.y, r1.y, _451.x * r1.x)));
    r4 = _465;
    float4 _476 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _490 = r4;
    _490.z = mad(_476.w, r1.w, mad(_476.z, r1.z, mad(_476.y, r1.y, _476.x * r1.x)));
    r4 = _490;
    float4 _493 = r4;
    _493.w = asfloat(1065353216u);
    r4 = _493;
    float4 _504 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _518 = o0;
    _518.x = mad(_504.w, r4.w, mad(_504.z, r4.z, mad(_504.y, r4.y, _504.x * r4.x)));
    o0 = _518;
    float4 _529 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _543 = o0;
    _543.y = mad(_529.w, r4.w, mad(_529.z, r4.z, mad(_529.y, r4.y, _529.x * r4.x)));
    o0 = _543;
    float4 _554 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _568 = o0;
    _568.z = mad(_554.w, r4.w, mad(_554.z, r4.z, mad(_554.y, r4.y, _554.x * r4.x)));
    o0 = _568;
    float4 _580 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _594 = o0;
    _594.w = mad(_580.w, r4.w, mad(_580.z, r4.z, mad(_580.y, r4.y, _580.x * r4.x)));
    o0 = _594;
    float3 _608 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _608.x, _608.y, _608.z);
    float2 _615 = float2(asint(shader_in[3].xy));
    r1 = float4(_615.x, _615.y, r1.z, r1.w);
    float2 _629 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r1 = float4(r1.x, r1.y, _629.x, _629.y);
    o1 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r1.zw;
    float3 _654 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_654.x, _654.y, _654.z, r1.w);
    float4 _670 = r4;
    _670.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _670;
    float4 _685 = r4;
    _685.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _685;
    float4 _700 = r4;
    _700.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _700;
    float3 _706 = r0.xxx * r4.xyz;
    r1 = float4(_706.x, _706.y, _706.z, r1.w);
    float4 _722 = r1;
    _722.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _722;
    float4 _727 = r1;
    _727.w = rsqrt(r1.w);
    r1 = _727;
    float3 _733 = r1.www * r1.xyz;
    r1 = float4(_733.x, _733.y, _733.z, r1.w);
    float3 _743 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _755 = r4;
    _755.x = mad(_743.z, r1.xyz.z, mad(_743.y, r1.xyz.y, _743.x * r1.xyz.x));
    r4 = _755;
    float3 _764 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _776 = r4;
    _776.y = mad(_764.z, r1.xyz.z, mad(_764.y, r1.xyz.y, _764.x * r1.xyz.x));
    r4 = _776;
    float3 _785 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _797 = r4;
    _797.z = mad(_785.z, r1.xyz.z, mad(_785.y, r1.xyz.y, _785.x * r1.xyz.x));
    r4 = _797;
    float4 _812 = r1;
    _812.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _812;
    float4 _817 = r1;
    _817.x = rsqrt(r1.x);
    r1 = _817;
    float3 _823 = r1.xxx * r4.xyz;
    r1 = float4(_823.x, _823.y, _823.z, r1.w);
    r4 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _848 = r3;
    _848.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _848;
    float4 _863 = r3;
    _863.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _863;
    float4 _878 = r3;
    _878.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _878;
    float3 _884 = r0.xxx * r3.xyz;
    r2 = float4(_884.x, _884.y, _884.z, r2.w);
    float4 _900 = r0;
    _900.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _900;
    float4 _905 = r0;
    _905.x = rsqrt(r0.x);
    r0 = _905;
    float3 _911 = r0.xxx * r2.xyz;
    r2 = float4(_911.x, _911.y, _911.z, r2.w);
    float3 _921 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _933 = r3;
    _933.x = mad(_921.z, r2.xyz.z, mad(_921.y, r2.xyz.y, _921.x * r2.xyz.x));
    r3 = _933;
    float3 _942 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _954 = r3;
    _954.y = mad(_942.z, r2.xyz.z, mad(_942.y, r2.xyz.y, _942.x * r2.xyz.x));
    r3 = _954;
    float3 _963 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _975 = r3;
    _975.z = mad(_963.z, r2.xyz.z, mad(_963.y, r2.xyz.y, _963.x * r2.xyz.x));
    r3 = _975;
    float4 _990 = r0;
    _990.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _990;
    float4 _995 = r0;
    _995.x = rsqrt(r0.x);
    r0 = _995;
    float3 _1001 = r0.xxx * r3.xyz;
    r2 = float4(_1001.x, _1001.y, _1001.z, r2.w);
    float3 _1008 = r1.zxy * r2.yzx;
    r3 = float4(_1008.x, _1008.y, _1008.z, r3.w);
    float3 _1019 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1019.x, _1019.y, _1019.z, r3.w);
    float3 _1026 = r4.www * r3.xyz;
    r3 = float4(_1026.x, _1026.y, _1026.z, r3.w);
    float3 _1036 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1048 = o2;
    _1048.y = mad(_1036.z, r3.xyz.z, mad(_1036.y, r3.xyz.y, _1036.x * r3.xyz.x));
    o2 = _1048;
    float3 _1057 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1069 = o2;
    _1069.z = mad(_1057.z, r1.xyz.z, mad(_1057.y, r1.xyz.y, _1057.x * r1.xyz.x));
    o2 = _1069;
    float3 _1078 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1090 = o2;
    _1090.x = mad(_1078.z, r2.xyz.z, mad(_1078.y, r2.xyz.y, _1078.x * r2.xyz.x));
    o2 = _1090;
    float4 _1105 = r0;
    _1105.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1105;
    float4 _1110 = r0;
    _1110.x = rsqrt(r0.x);
    r0 = _1110;
    float3 _1116 = r0.xxx * r0.yzw;
    r0 = float4(_1116.x, _1116.y, _1116.z, r0.w);
    float3 _1132 = o3;
    _1132.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1132;
    float3 _1147 = o3;
    _1147.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1147;
    float3 _1162 = o3;
    _1162.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1162;
    float2 _1168 = float2(asint(shader_in[1].xy));
    r0 = float4(_1168.x, _1168.y, r0.z, r0.w);
    float2 _1181 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _1181.x, _1181.y);
    float2 _1190 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o4 = float4(_1190.x, _1190.y, o4.z, o4.w);
    float2 _1197 = float2(asint(shader_in[2].xy));
    r0 = float4(_1197.x, _1197.y, r0.z, r0.w);
    float2 _1210 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(r0.x, r0.y, _1210.x, _1210.y);
    float2 _1219 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    r0 = float4(_1219.x, _1219.y, r0.z, r0.w);
    float4 _1228 = o4;
    _1228.z = r0.x * cb2_m[2].w;
    o4 = _1228;
    float4 _1236 = o4;
    _1236.w = r0.y * cb2_m[3].x;
    o4 = _1236;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1244 = asfloat(v1);
    shader_in[1] = float4(_1244.x, _1244.y, shader_in[1].z, shader_in[1].w);
    float2 _1249 = asfloat(v2);
    shader_in[2] = float4(_1249.x, _1249.y, shader_in[2].z, shader_in[2].w);
    float2 _1254 = asfloat(v3);
    shader_in[3] = float4(_1254.x, _1254.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
