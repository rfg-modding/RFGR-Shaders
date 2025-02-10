cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
    float4 _70 = r0;
    _70.x = shader_in[5].y + shader_in[5].x;
    r0 = _70;
    float4 _78 = r0;
    _78.x = r0.x + shader_in[5].z;
    r0 = _78;
    float4 _86 = r0;
    _86.x = r0.x + shader_in[5].w;
    r0 = _86;
    float4 _93 = r0;
    _93.x = asfloat(1065353216u) / r0.x;
    r0 = _93;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _103 = r1;
    _103.w = asfloat(1065353216u);
    r1 = _103;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _120 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_120].x, cb4_m[_120].y, cb4_m[_120].z, cb4_m[_120].w);
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
    float3 _603 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(r0.x, _603.x, _603.y, _603.z);
    float3 _617 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_617.x, _617.y, _617.z, r1.w);
    float4 _633 = r4;
    _633.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _633;
    float4 _648 = r4;
    _648.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _648;
    float4 _663 = r4;
    _663.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _663;
    float3 _669 = r0.xxx * r4.xyz;
    r1 = float4(_669.x, _669.y, _669.z, r1.w);
    float4 _685 = r1;
    _685.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _685;
    float4 _690 = r1;
    _690.w = rsqrt(r1.w);
    r1 = _690;
    float3 _696 = r1.www * r1.xyz;
    r1 = float4(_696.x, _696.y, _696.z, r1.w);
    float3 _706 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _718 = r4;
    _718.x = mad(_706.z, r1.xyz.z, mad(_706.y, r1.xyz.y, _706.x * r1.xyz.x));
    r4 = _718;
    float3 _727 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _739 = r4;
    _739.y = mad(_727.z, r1.xyz.z, mad(_727.y, r1.xyz.y, _727.x * r1.xyz.x));
    r4 = _739;
    float3 _748 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _760 = r4;
    _760.z = mad(_748.z, r1.xyz.z, mad(_748.y, r1.xyz.y, _748.x * r1.xyz.x));
    r4 = _760;
    float4 _775 = r1;
    _775.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _775;
    float4 _780 = r1;
    _780.x = rsqrt(r1.x);
    r1 = _780;
    float3 _786 = r1.xxx * r4.xyz;
    r1 = float4(_786.x, _786.y, _786.z, r1.w);
    r4 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _811 = r3;
    _811.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _811;
    float4 _826 = r3;
    _826.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _826;
    float4 _841 = r3;
    _841.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _841;
    float3 _847 = r0.xxx * r3.xyz;
    r2 = float4(_847.x, _847.y, _847.z, r2.w);
    float4 _863 = r0;
    _863.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _863;
    float4 _868 = r0;
    _868.x = rsqrt(r0.x);
    r0 = _868;
    float3 _874 = r0.xxx * r2.xyz;
    r2 = float4(_874.x, _874.y, _874.z, r2.w);
    float3 _884 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _896 = r3;
    _896.x = mad(_884.z, r2.xyz.z, mad(_884.y, r2.xyz.y, _884.x * r2.xyz.x));
    r3 = _896;
    float3 _905 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _917 = r3;
    _917.y = mad(_905.z, r2.xyz.z, mad(_905.y, r2.xyz.y, _905.x * r2.xyz.x));
    r3 = _917;
    float3 _926 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _938 = r3;
    _938.z = mad(_926.z, r2.xyz.z, mad(_926.y, r2.xyz.y, _926.x * r2.xyz.x));
    r3 = _938;
    float4 _953 = r0;
    _953.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _953;
    float4 _958 = r0;
    _958.x = rsqrt(r0.x);
    r0 = _958;
    float3 _964 = r0.xxx * r3.xyz;
    r2 = float4(_964.x, _964.y, _964.z, r2.w);
    float3 _971 = r1.zxy * r2.yzx;
    r3 = float4(_971.x, _971.y, _971.z, r3.w);
    float3 _982 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_982.x, _982.y, _982.z, r3.w);
    float3 _989 = r4.www * r3.xyz;
    r3 = float4(_989.x, _989.y, _989.z, r3.w);
    float3 _999 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1011 = o1;
    _1011.y = mad(_999.z, r3.xyz.z, mad(_999.y, r3.xyz.y, _999.x * r3.xyz.x));
    o1 = _1011;
    float4 _1015 = o2;
    _1015.y = r3.y;
    o2 = _1015;
    float3 _1024 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1036 = o1;
    _1036.z = mad(_1024.z, r1.xyz.z, mad(_1024.y, r1.xyz.y, _1024.x * r1.xyz.x));
    o1 = _1036;
    float4 _1040 = o2;
    _1040.z = r1.y;
    o2 = _1040;
    float3 _1049 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1061 = o1;
    _1061.x = mad(_1049.z, r2.xyz.z, mad(_1049.y, r2.xyz.y, _1049.x * r2.xyz.x));
    o1 = _1061;
    float4 _1065 = o2;
    _1065.x = r2.y;
    o2 = _1065;
    float4 _1074 = r0;
    _1074.x = r0.z * cb0_m[13].x;
    r0 = _1074;
    float4 _1081 = r1;
    _1081.x = r0.x * asfloat(3216550459u);
    r1 = _1081;
    float4 _1086 = r1;
    _1086.x = exp2(r1.x);
    r1 = _1086;
    float4 _1093 = r1;
    _1093.x = (-r1.x) + asfloat(1065353216u);
    r1 = _1093;
    float4 _1100 = r0;
    _1100.x = r1.x / r0.x;
    r0 = _1100;
    float4 _1112 = r1;
    _1112.x = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _1112;
    float4 _1127 = r0;
    _1127.y = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1127;
    float4 _1132 = r0;
    _1132.y = sqrt(r0.y);
    r0 = _1132;
    float4 _1140 = r0;
    _1140.y = r0.y * cb0_m[13].y;
    r0 = _1140;
    float4 _1150 = r0;
    _1150.x = (asuint(r1.x) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1150;
    float4 _1162 = r0;
    _1162.x = (r0.x * r0.y) + (-cb0_m[13].w);
    r0 = _1162;
    float4 _1168 = r0;
    _1168.x = exp2(-r0.x);
    r0 = _1168;
    float4 _1174 = r0;
    _1174.x = min(r0.x, asfloat(1065353216u));
    r0 = _1174;
    float4 _1181 = o2;
    _1181.w = (-r0.x) + asfloat(1065353216u);
    o2 = _1181;
    float2 _1188 = float2(asint(shader_in[2].xy));
    r0 = float4(_1188.x, _1188.y, r0.z, r0.w);
    float2 _1199 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_1199.x, _1199.y, r0.z, r0.w);
    float2 _1208 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _1208.x, _1208.y);
    float2 _1215 = float2(asint(shader_in[1].xy));
    r0 = float4(_1215.x, _1215.y, r0.z, r0.w);
    float2 _1221 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_1221.x, _1221.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1230 = asfloat(v1);
    shader_in[1] = float4(_1230.x, _1230.y, shader_in[1].z, shader_in[1].w);
    float2 _1235 = asfloat(v2);
    shader_in[2] = float4(_1235.x, _1235.y, shader_in[2].z, shader_in[2].w);
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
