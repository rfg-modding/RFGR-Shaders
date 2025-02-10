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
    float4 cb2_m[3] : packoffset(c0);
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
static float4 v7;
static float4 v8;
static int4 v9;

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
    float4 v8 : TEXCOORD8;
    float4 v9 : TEXCOORD9;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[10];
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
    float4 _75 = r0;
    _75.x = shader_in[8].y + shader_in[8].x;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[8].z;
    r0 = _83;
    float4 _91 = r0;
    _91.x = r0.x + shader_in[8].w;
    r0 = _91;
    float4 _98 = r0;
    _98.x = asfloat(1065353216u) / r0.x;
    r0 = _98;
    float3 _113 = (shader_in[6].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_113.x, _113.y, _113.z, r1.w);
    float4 _118 = r1;
    _118.w = asfloat(1065353216u);
    r1 = _118;
    r2 = asfloat(asint(shader_in[9]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _135 = asint(r2.y);
    r3 = shader_in[8].yyyy * float4(cb4_m[_135].x, cb4_m[_135].y, cb4_m[_135].z, cb4_m[_135].w);
    int _157 = asint(r2.x);
    r3 = (shader_in[8].xxxx * float4(cb4_m[_157].x, cb4_m[_157].y, cb4_m[_157].z, cb4_m[_157].w)) + r3;
    int _176 = asint(r2.z);
    r3 = (shader_in[8].zzzz * float4(cb4_m[_176].x, cb4_m[_176].y, cb4_m[_176].z, cb4_m[_176].w)) + r3;
    int _195 = asint(r2.w);
    r3 = (shader_in[8].wwww * float4(cb4_m[_195].x, cb4_m[_195].y, cb4_m[_195].z, cb4_m[_195].w)) + r3;
    float4 _224 = r4;
    _224.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _224;
    int _233 = asint(r2.y) + 1;
    r5 = shader_in[8].yyyy * float4(cb4_m[_233].x, cb4_m[_233].y, cb4_m[_233].z, cb4_m[_233].w);
    int _252 = asint(r2.x) + 1;
    r5 = (shader_in[8].xxxx * float4(cb4_m[_252].x, cb4_m[_252].y, cb4_m[_252].z, cb4_m[_252].w)) + r5;
    int _272 = asint(r2.z) + 1;
    r5 = (shader_in[8].zzzz * float4(cb4_m[_272].x, cb4_m[_272].y, cb4_m[_272].z, cb4_m[_272].w)) + r5;
    int _292 = asint(r2.w) + 1;
    r5 = (shader_in[8].wwww * float4(cb4_m[_292].x, cb4_m[_292].y, cb4_m[_292].z, cb4_m[_292].w)) + r5;
    float4 _320 = r4;
    _320.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _320;
    int _329 = asint(r2.y) + 2;
    r6 = shader_in[8].yyyy * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w);
    int _348 = asint(r2.x) + 2;
    r6 = (shader_in[8].xxxx * float4(cb4_m[_348].x, cb4_m[_348].y, cb4_m[_348].z, cb4_m[_348].w)) + r6;
    int _368 = asint(r2.z) + 2;
    r6 = (shader_in[8].zzzz * float4(cb4_m[_368].x, cb4_m[_368].y, cb4_m[_368].z, cb4_m[_368].w)) + r6;
    int _388 = asint(r2.w) + 2;
    r2 = (shader_in[8].wwww * float4(cb4_m[_388].x, cb4_m[_388].y, cb4_m[_388].z, cb4_m[_388].w)) + r6;
    float4 _416 = r4;
    _416.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _416;
    float3 _422 = r0.xxx * r4.xyz;
    r1 = float4(_422.x, _422.y, _422.z, r1.w);
    float4 _426 = r1;
    _426.w = asfloat(1065353216u);
    r1 = _426;
    float4 _437 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _451 = r4;
    _451.x = mad(_437.w, r1.w, mad(_437.z, r1.z, mad(_437.y, r1.y, _437.x * r1.x)));
    r4 = _451;
    float4 _462 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _476 = r4;
    _476.y = mad(_462.w, r1.w, mad(_462.z, r1.z, mad(_462.y, r1.y, _462.x * r1.x)));
    r4 = _476;
    float4 _487 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _501 = r4;
    _501.z = mad(_487.w, r1.w, mad(_487.z, r1.z, mad(_487.y, r1.y, _487.x * r1.x)));
    r4 = _501;
    float4 _504 = r4;
    _504.w = asfloat(1065353216u);
    r4 = _504;
    float4 _515 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _529 = o0;
    _529.x = mad(_515.w, r4.w, mad(_515.z, r4.z, mad(_515.y, r4.y, _515.x * r4.x)));
    o0 = _529;
    float4 _540 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _554 = o0;
    _554.y = mad(_540.w, r4.w, mad(_540.z, r4.z, mad(_540.y, r4.y, _540.x * r4.x)));
    o0 = _554;
    float4 _565 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _579 = o0;
    _579.z = mad(_565.w, r4.w, mad(_565.z, r4.z, mad(_565.y, r4.y, _565.x * r4.x)));
    o0 = _579;
    float4 _591 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _605 = o0;
    _605.w = mad(_591.w, r4.w, mad(_591.z, r4.z, mad(_591.y, r4.y, _591.x * r4.x)));
    o0 = _605;
    float3 _619 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _619.x, _619.y, _619.z);
    float2 _626 = float2(asint(shader_in[3].xy));
    r1 = float4(_626.x, _626.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _647 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_647.x, _647.y, _647.z, r1.w);
    float3 _657 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_657.x, _657.y, _657.z, r4.w);
    float3 _666 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_666.x, _666.y, _666.z, r1.w);
    float4 _682 = r1;
    _682.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _682;
    float4 _687 = r1;
    _687.w = rsqrt(r1.w);
    r1 = _687;
    float3 _693 = r1.www * r1.xyz;
    r1 = float4(_693.x, _693.y, _693.z, r1.w);
    float4 _709 = r4;
    _709.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _709;
    float4 _724 = r4;
    _724.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _724;
    float4 _739 = r4;
    _739.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _739;
    float3 _745 = r0.xxx * r4.xyz;
    r1 = float4(_745.x, _745.y, _745.z, r1.w);
    float4 _761 = r1;
    _761.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _761;
    float4 _766 = r1;
    _766.w = rsqrt(r1.w);
    r1 = _766;
    float3 _772 = r1.www * r1.xyz;
    r1 = float4(_772.x, _772.y, _772.z, r1.w);
    float3 _782 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _794 = r4;
    _794.x = mad(_782.z, r1.xyz.z, mad(_782.y, r1.xyz.y, _782.x * r1.xyz.x));
    r4 = _794;
    float3 _803 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _815 = r4;
    _815.y = mad(_803.z, r1.xyz.z, mad(_803.y, r1.xyz.y, _803.x * r1.xyz.x));
    r4 = _815;
    float3 _824 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _836 = r4;
    _836.z = mad(_824.z, r1.xyz.z, mad(_824.y, r1.xyz.y, _824.x * r1.xyz.x));
    r4 = _836;
    float4 _851 = r1;
    _851.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _851;
    float4 _856 = r1;
    _856.x = rsqrt(r1.x);
    r1 = _856;
    float3 _862 = r1.xxx * r4.xyz;
    r1 = float4(_862.x, _862.y, _862.z, r1.w);
    r4 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _887 = r3;
    _887.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _887;
    float4 _902 = r3;
    _902.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _902;
    float4 _917 = r3;
    _917.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _917;
    float3 _923 = r0.xxx * r3.xyz;
    r2 = float4(_923.x, _923.y, _923.z, r2.w);
    float4 _939 = r0;
    _939.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _939;
    float4 _944 = r0;
    _944.x = rsqrt(r0.x);
    r0 = _944;
    float3 _950 = r0.xxx * r2.xyz;
    r2 = float4(_950.x, _950.y, _950.z, r2.w);
    float3 _960 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _972 = r3;
    _972.x = mad(_960.z, r2.xyz.z, mad(_960.y, r2.xyz.y, _960.x * r2.xyz.x));
    r3 = _972;
    float3 _981 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _993 = r3;
    _993.y = mad(_981.z, r2.xyz.z, mad(_981.y, r2.xyz.y, _981.x * r2.xyz.x));
    r3 = _993;
    float3 _1002 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1014 = r3;
    _1014.z = mad(_1002.z, r2.xyz.z, mad(_1002.y, r2.xyz.y, _1002.x * r2.xyz.x));
    r3 = _1014;
    float4 _1029 = r0;
    _1029.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1029;
    float4 _1034 = r0;
    _1034.x = rsqrt(r0.x);
    r0 = _1034;
    float3 _1040 = r0.xxx * r3.xyz;
    r2 = float4(_1040.x, _1040.y, _1040.z, r2.w);
    float3 _1047 = r1.zxy * r2.yzx;
    r3 = float4(_1047.x, _1047.y, _1047.z, r3.w);
    float3 _1058 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1058.x, _1058.y, _1058.z, r3.w);
    float3 _1065 = r4.www * r3.xyz;
    r3 = float4(_1065.x, _1065.y, _1065.z, r3.w);
    float3 _1075 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1087 = o2;
    _1087.y = mad(_1075.z, r3.xyz.z, mad(_1075.y, r3.xyz.y, _1075.x * r3.xyz.x));
    o2 = _1087;
    float3 _1102 = o3;
    _1102.y = mad(r0.yzw.z, r3.xyz.z, mad(r0.yzw.y, r3.xyz.y, r0.yzw.x * r3.xyz.x));
    o3 = _1102;
    float3 _1111 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1123 = o2;
    _1123.z = mad(_1111.z, r1.xyz.z, mad(_1111.y, r1.xyz.y, _1111.x * r1.xyz.x));
    o2 = _1123;
    float3 _1138 = o3;
    _1138.z = mad(r0.yzw.z, r1.xyz.z, mad(r0.yzw.y, r1.xyz.y, r0.yzw.x * r1.xyz.x));
    o3 = _1138;
    float3 _1153 = o3;
    _1153.x = mad(r0.yzw.z, r2.xyz.z, mad(r0.yzw.y, r2.xyz.y, r0.yzw.x * r2.xyz.x));
    o3 = _1153;
    float3 _1162 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1174 = o2;
    _1174.x = mad(_1162.z, r2.xyz.z, mad(_1162.y, r2.xyz.y, _1162.x * r2.xyz.x));
    o2 = _1174;
    float2 _1180 = float2(asint(shader_in[2].xy));
    r0 = float4(_1180.x, _1180.y, r0.z, r0.w);
    float2 _1191 = r0.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_1191.x, _1191.y, r0.z, r0.w);
    float2 _1197 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _1197.x, _1197.y);
    float2 _1204 = float2(asint(shader_in[1].xy));
    r0 = float4(_1204.x, _1204.y, r0.z, r0.w);
    float2 _1210 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_1210.x, _1210.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1219 = asfloat(v1);
    shader_in[1] = float4(_1219.x, _1219.y, shader_in[1].z, shader_in[1].w);
    float2 _1224 = asfloat(v2);
    shader_in[2] = float4(_1224.x, _1224.y, shader_in[2].z, shader_in[2].w);
    float2 _1229 = asfloat(v3);
    shader_in[3] = float4(_1229.x, _1229.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
    shader_in[9] = asfloat(v9);
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
    v9 = stage_input.v9;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
