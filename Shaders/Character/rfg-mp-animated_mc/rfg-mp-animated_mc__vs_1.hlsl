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
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static int4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _60 = r0;
    _60.x = shader_in[4].y + shader_in[4].x;
    r0 = _60;
    float4 _68 = r0;
    _68.x = r0.x + shader_in[4].z;
    r0 = _68;
    float4 _76 = r0;
    _76.x = r0.x + shader_in[4].w;
    r0 = _76;
    float4 _83 = r0;
    _83.x = asfloat(1065353216u) / r0.x;
    r0 = _83;
    float3 _98 = (shader_in[2].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_98.x, _98.y, _98.z, r1.w);
    float4 _103 = r1;
    _103.w = asfloat(1065353216u);
    r1 = _103;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _120 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_120].x, cb4_m[_120].y, cb4_m[_120].z, cb4_m[_120].w);
    int _143 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_143].x, cb4_m[_143].y, cb4_m[_143].z, cb4_m[_143].w)) + r3;
    int _162 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_162].x, cb4_m[_162].y, cb4_m[_162].z, cb4_m[_162].w)) + r3;
    int _181 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_181].x, cb4_m[_181].y, cb4_m[_181].z, cb4_m[_181].w)) + r3;
    float4 _210 = r4;
    _210.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _210;
    int _219 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_219].x, cb4_m[_219].y, cb4_m[_219].z, cb4_m[_219].w);
    int _238 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_238].x, cb4_m[_238].y, cb4_m[_238].z, cb4_m[_238].w)) + r5;
    int _258 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_258].x, cb4_m[_258].y, cb4_m[_258].z, cb4_m[_258].w)) + r5;
    int _278 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_278].x, cb4_m[_278].y, cb4_m[_278].z, cb4_m[_278].w)) + r5;
    float4 _306 = r4;
    _306.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _306;
    int _314 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_314].x, cb4_m[_314].y, cb4_m[_314].z, cb4_m[_314].w);
    int _333 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_333].x, cb4_m[_333].y, cb4_m[_333].z, cb4_m[_333].w)) + r6;
    int _353 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_353].x, cb4_m[_353].y, cb4_m[_353].z, cb4_m[_353].w)) + r6;
    int _373 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_373].x, cb4_m[_373].y, cb4_m[_373].z, cb4_m[_373].w)) + r6;
    float4 _401 = r4;
    _401.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _401;
    float3 _407 = r0.xxx * r4.xyz;
    r1 = float4(_407.x, _407.y, _407.z, r1.w);
    float4 _411 = r1;
    _411.w = asfloat(1065353216u);
    r1 = _411;
    float4 _422 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _436 = r4;
    _436.x = mad(_422.w, r1.w, mad(_422.z, r1.z, mad(_422.y, r1.y, _422.x * r1.x)));
    r4 = _436;
    float4 _447 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _461 = r4;
    _461.y = mad(_447.w, r1.w, mad(_447.z, r1.z, mad(_447.y, r1.y, _447.x * r1.x)));
    r4 = _461;
    float4 _472 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _486 = r4;
    _486.z = mad(_472.w, r1.w, mad(_472.z, r1.z, mad(_472.y, r1.y, _472.x * r1.x)));
    r4 = _486;
    float4 _489 = r4;
    _489.w = asfloat(1065353216u);
    r4 = _489;
    float4 _500 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _514 = o0;
    _514.x = mad(_500.w, r4.w, mad(_500.z, r4.z, mad(_500.y, r4.y, _500.x * r4.x)));
    o0 = _514;
    float4 _525 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _539 = o0;
    _539.y = mad(_525.w, r4.w, mad(_525.z, r4.z, mad(_525.y, r4.y, _525.x * r4.x)));
    o0 = _539;
    float4 _550 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _564 = o0;
    _564.z = mad(_550.w, r4.w, mad(_550.z, r4.z, mad(_550.y, r4.y, _550.x * r4.x)));
    o0 = _564;
    float4 _576 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _590 = o0;
    _590.w = mad(_576.w, r4.w, mad(_576.z, r4.z, mad(_576.y, r4.y, _576.x * r4.x)));
    o0 = _590;
    float3 _604 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _604.x, _604.y, _604.z);
    float3 _617 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_617.x, _617.y, _617.z, r1.w);
    float3 _626 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_626.x, _626.y, _626.z, r4.w);
    float3 _635 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_635.x, _635.y, _635.z, r1.w);
    float4 _651 = r1;
    _651.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _651;
    float4 _656 = r1;
    _656.w = rsqrt(r1.w);
    r1 = _656;
    float3 _662 = r1.www * r1.xyz;
    r1 = float4(_662.x, _662.y, _662.z, r1.w);
    float4 _678 = r3;
    _678.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _678;
    float4 _693 = r3;
    _693.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _693;
    float4 _708 = r3;
    _708.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _708;
    float3 _714 = r0.xxx * r3.xyz;
    r1 = float4(_714.x, _714.y, _714.z, r1.w);
    float4 _730 = r0;
    _730.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _730;
    float4 _735 = r0;
    _735.x = rsqrt(r0.x);
    r0 = _735;
    float3 _741 = r0.xxx * r1.xyz;
    r1 = float4(_741.x, _741.y, _741.z, r1.w);
    float3 _751 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _763 = r2;
    _763.x = mad(_751.z, r1.xyz.z, mad(_751.y, r1.xyz.y, _751.x * r1.xyz.x));
    r2 = _763;
    float3 _772 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _784 = r2;
    _784.y = mad(_772.z, r1.xyz.z, mad(_772.y, r1.xyz.y, _772.x * r1.xyz.x));
    r2 = _784;
    float3 _793 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _805 = r2;
    _805.z = mad(_793.z, r1.xyz.z, mad(_793.y, r1.xyz.y, _793.x * r1.xyz.x));
    r2 = _805;
    float4 _820 = r0;
    _820.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _820;
    float4 _825 = r0;
    _825.x = rsqrt(r0.x);
    r0 = _825;
    float3 _831 = r0.xxx * r2.xyz;
    r1 = float4(_831.x, _831.y, _831.z, r1.w);
    float4 _847 = r0;
    _847.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _847;
    float4 _852 = r0;
    _852.x = rsqrt(r0.x);
    r0 = _852;
    float3 _858 = r0.xxx * r0.yzw;
    r0 = float4(_858.x, _858.y, _858.z, r0.w);
    float3 _865 = r0.xyz * asfloat(uint3(0u, 1065353216u, 0u));
    r2 = float4(_865.x, _865.y, _865.z, r2.w);
    float3 _876 = (r0.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r2.xyz);
    r2 = float4(_876.x, _876.y, _876.z, r2.w);
    float4 _890 = r0;
    _890.w = mad(r2.yz.y, r2.yz.y, r2.yz.x * r2.yz.x);
    r0 = _890;
    float4 _895 = r0;
    _895.w = rsqrt(r0.w);
    r0 = _895;
    float3 _901 = r0.www * r2.xyz;
    r2 = float4(_901.x, _901.y, _901.z, r2.w);
    float3 _908 = r0.yzx * r2.xyz;
    r3 = float4(_908.x, _908.y, _908.z, r3.w);
    float3 _919 = (r2.zxy * r0.zxy) + (-r3.xyz);
    r2 = float4(_919.x, _919.y, _919.z, r2.w);
    float4 _935 = r0;
    _935.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _935;
    float4 _941 = r0;
    _941.x = max(r0.x, asfloat(0u));
    r0 = _941;
    float4 _956 = r0;
    _956.y = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _956;
    float4 _961 = r0;
    _961.y = rsqrt(r0.y);
    r0 = _961;
    float3 _967 = r0.yyy * r2.xyz;
    r0 = float4(r0.x, _967.x, _967.y, _967.z);
    float4 _983 = r0;
    _983.y = mad(r0.yzw.z, r1.xyz.z, mad(r0.yzw.y, r1.xyz.y, r0.yzw.x * r1.xyz.x));
    r0 = _983;
    float4 _992 = r0;
    _992.y = (r0.y * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _992;
    float2 _1002 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_1002.x, _1002.y, r1.z, r1.w);
    float4 _1010 = r0;
    _1010.x = (-r0.x) + asfloat(1065353216u);
    r0 = _1010;
    float4 _1015 = r0;
    _1015.x = log2(r0.x);
    r0 = _1015;
    float2 _1025 = r0.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_1025.x, _1025.y, r0.z, r0.w);
    float2 _1030 = exp2(r0.xy);
    r0 = float4(_1030.x, _1030.y, r0.z, r0.w);
    float2 _1047 = (cb0_m[12].x.xx * float2(cb2_m[3].x, cb2_m[3].y)) + r1.xy;
    o1 = float3(_1047.x, _1047.y, o1.z);
    float4 _1056 = r0;
    _1056.y = (-r0.x) + r0.y;
    r0 = _1056;
    float4 _1064 = r0;
    _1064.z = cb2_m[3].z + asfloat(1008981770u);
    r0 = _1064;
    float4 _1070 = r0;
    _1070.z = asfloat(1073741824u) / r0.z;
    r0 = _1070;
    float4 _1078 = r0;
    _1078.z = r0.z * cb0_m[12].z;
    r0 = _1078;
    float4 _1084 = r0;
    _1084.z = cos(r0.zzzz.z);
    r0 = _1084;
    float4 _1090 = r0;
    _1090.z = r0.z + asfloat(1065353216u);
    r0 = _1090;
    float4 _1096 = r0;
    _1096.z = r0.z * asfloat(1056964608u);
    r0 = _1096;
    float3 _1106 = o1;
    _1106.z = (r0.z * r0.y) + r0.x;
    o1 = _1106;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = asfloat(v5);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
