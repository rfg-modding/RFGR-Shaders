cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb3_t : register(b163)
{
    float4 cb3_m[9] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v1;
static float v2;
static float2 v3;
static float2 v4;
static float3 v5;
static float3 v6;
static float v7;
static float v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float v7 : TEXCOORD7;
    float v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float4 o1;
static float o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(shader_in[5].xyz.x, shader_in[5].xyz.y, shader_in[5].xyz.z, r0.w);
    float4 _61 = r0;
    _61.w = asfloat(1065353216u);
    r0 = _61;
    float4 _78 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r1;
    _93.z = mad(_78.w, r0.w, mad(_78.z, r0.z, mad(_78.y, r0.y, _78.x * r0.x)));
    r1 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r1;
    _119.x = mad(_105.w, r0.w, mad(_105.z, r0.z, mad(_105.y, r0.y, _105.x * r0.x)));
    r1 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r1;
    _145.y = mad(_131.w, r0.w, mad(_131.z, r0.z, mad(_131.y, r0.y, _131.x * r0.x)));
    r1 = _145;
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _153 = r0;
    _153.w = asfloat(1065353216u);
    r0 = _153;
    float4 _164 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _179 = r2;
    _179.x = mad(_164.w, r0.w, mad(_164.z, r0.z, mad(_164.y, r0.y, _164.x * r0.x)));
    r2 = _179;
    float4 _190 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _204 = r2;
    _204.y = mad(_190.w, r0.w, mad(_190.z, r0.z, mad(_190.y, r0.y, _190.x * r0.x)));
    r2 = _204;
    float4 _215 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _229 = r2;
    _229.z = mad(_215.w, r0.w, mad(_215.z, r0.z, mad(_215.y, r0.y, _215.x * r0.x)));
    r2 = _229;
    float3 _236 = r1.xyz + (-r2.yzx);
    r0 = float4(_236.x, _236.y, _236.z, r0.w);
    float4 _252 = r0;
    _252.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _252;
    float4 _257 = r0;
    _257.w = rsqrt(r0.w);
    r0 = _257;
    float3 _263 = r0.www * r0.xyz;
    r0 = float4(_263.x, _263.y, _263.z, r0.w);
    r1 = float4(shader_in[6].xyz.x, shader_in[6].xyz.y, shader_in[6].xyz.z, r1.w);
    float4 _273 = r1;
    _273.w = asfloat(1065353216u);
    r1 = _273;
    float4 _284 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _299 = r3;
    _299.z = mad(_284.w, r1.w, mad(_284.z, r1.z, mad(_284.y, r1.y, _284.x * r1.x)));
    r3 = _299;
    float4 _310 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _324 = r3;
    _324.x = mad(_310.w, r1.w, mad(_310.z, r1.z, mad(_310.y, r1.y, _310.x * r1.x)));
    r3 = _324;
    float4 _335 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _349 = r3;
    _349.y = mad(_335.w, r1.w, mad(_335.z, r1.z, mad(_335.y, r1.y, _335.x * r1.x)));
    r3 = _349;
    float3 _356 = (-r2.yzx) + r3.xyz;
    r1 = float4(_356.x, _356.y, _356.z, r1.w);
    float4 _372 = r0;
    _372.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _372;
    float4 _377 = r0;
    _377.w = sqrt(r0.w);
    r0 = _377;
    float4 _387 = r0;
    _387.w = asfloat((r0.w == asfloat(0u)) ? 4294967295u : 0u);
    r0 = _387;
    uint3 _392 = asuint(r0.www);
    float3 _395 = -r0.xyz;
    bool3 _400 = bool3(_392.x != uint3(0u, 0u, 0u).x, _392.y != uint3(0u, 0u, 0u).y, _392.z != uint3(0u, 0u, 0u).z);
    float3 _401 = float3(_400.x ? _395.x : r1.xyz.x, _400.y ? _395.y : r1.xyz.y, _400.z ? _395.z : r1.xyz.z);
    r0 = float4(_401.x, _401.y, _401.z, r0.w);
    float4 _417 = r0;
    _417.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _417;
    float4 _422 = r0;
    _422.w = rsqrt(r0.w);
    r0 = _422;
    float3 _428 = r0.www * r0.xyz;
    r0 = float4(_428.x, _428.y, _428.z, r0.w);
    float3 _443 = r2.zxy + (-float3(cb0_m[11].z, cb0_m[11].x, cb0_m[11].y));
    r1 = float4(_443.x, _443.y, _443.z, r1.w);
    float4 _459 = r0;
    _459.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _459;
    float4 _464 = r0;
    _464.w = rsqrt(r0.w);
    r0 = _464;
    float3 _470 = r0.www * r1.xyz;
    r1 = float4(_470.x, _470.y, _470.z, r1.w);
    float3 _477 = r0.xyz * r1.xyz;
    r3 = float4(_477.x, _477.y, _477.z, r3.w);
    float3 _488 = (r1.zxy * r0.yzx) + (-r3.xyz);
    r0 = float4(_488.x, _488.y, _488.z, r0.w);
    float4 _504 = r0;
    _504.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _504;
    float4 _509 = r0;
    _509.w = rsqrt(r0.w);
    r0 = _509;
    float3 _515 = r0.www * r0.xyz;
    r0 = float4(_515.x, _515.y, _515.z, r0.w);
    float3 _527 = (r0.xyz * shader_in[4].xxx) + r2.xyz;
    r0 = float4(_527.x, _527.y, _527.z, r0.w);
    float4 _531 = r0;
    _531.w = asfloat(1065353216u);
    r0 = _531;
    float4 _542 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _556 = o0;
    _556.x = mad(_542.w, r0.w, mad(_542.z, r0.z, mad(_542.y, r0.y, _542.x * r0.x)));
    o0 = _556;
    float4 _567 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _581 = o0;
    _581.y = mad(_567.w, r0.w, mad(_567.z, r0.z, mad(_567.y, r0.y, _567.x * r0.x)));
    o0 = _581;
    float4 _592 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _606 = o0;
    _606.z = mad(_592.w, r0.w, mad(_592.z, r0.z, mad(_592.y, r0.y, _592.x * r0.x)));
    o0 = _606;
    float4 _618 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _632 = o0;
    _632.w = mad(_618.w, r0.w, mad(_618.z, r0.z, mad(_618.y, r0.y, _618.x * r0.x)));
    o0 = _632;
    float3 _645 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_645.x, _645.y, _645.z, r0.w);
    float3 _665 = (shader_in[1].zyx * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-shader_in[1].zyx);
    r1 = float4(_665.x, _665.y, _665.z, r1.w);
    float3 _678 = (cb3_m[7].w.xxx * r1.xyz) + shader_in[1].zyx;
    r1 = float4(_678.x, _678.y, _678.z, r1.w);
    float3 _707 = (float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z) * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z));
    r2 = float4(_707.x, _707.y, _707.z, r2.w);
    float3 _725 = (cb3_m[7].w.xxx * r2.xyz) + float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    r2 = float4(_725.x, _725.y, _725.z, r2.w);
    float3 _732 = r1.xyz + r2.xyz;
    o1 = float4(_732.x, _732.y, _732.z, o1.w);
    float4 _742 = o1;
    _742.w = shader_in[1].w * cb3_m[5].x;
    o1 = _742;
    float4 _751 = r0;
    _751.w = r0.y * cb0_m[13].x;
    r0 = _751;
    float4 _758 = r1;
    _758.x = r0.w * asfloat(3216550459u);
    r1 = _758;
    float4 _763 = r1;
    _763.x = exp2(r1.x);
    r1 = _763;
    float4 _770 = r1;
    _770.x = (-r1.x) + asfloat(1065353216u);
    r1 = _770;
    float4 _777 = r0;
    _777.w = r1.x / r0.w;
    r0 = _777;
    float4 _787 = r1;
    _787.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _787;
    float4 _802 = r0;
    _802.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _802;
    float4 _807 = r0;
    _807.x = sqrt(r0.x);
    r0 = _807;
    float4 _815 = r0;
    _815.x = r0.x * cb0_m[13].y;
    r0 = _815;
    float4 _825 = r0;
    _825.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _825;
    float4 _837 = r0;
    _837.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _837;
    float4 _843 = r0;
    _843.x = exp2(-r0.x);
    r0 = _843;
    float4 _849 = r0;
    _849.x = min(r0.x, asfloat(1065353216u));
    r0 = _849;
    o2 = (-r0.x) + asfloat(1065353216u);
    float4 _863 = r0;
    _863.x = shader_in[8].x + asfloat(841731191u);
    r0 = _863;
    float4 _872 = r0;
    _872.y = cb3_m[8].y * cb3_m[8].x;
    r0 = _872;
    float4 _877 = r0;
    _877.z = trunc(r0.y);
    r0 = _877;
    float4 _883 = r0;
    _883.y = asfloat(int(r0.y));
    r0 = _883;
    float4 _890 = r0;
    _890.x = r0.x * r0.z;
    r0 = _890;
    float4 _896 = r0;
    _896.x = asfloat(int(r0.x));
    r0 = _896;
    float2 _907 = asfloat(max(asint(r0.yx), (-asint(r0.yx))));
    r0 = float4(r0.x, _907.x, _907.y, r0.w);
    float4 _916 = r0;
    _916.x = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _916;
    uint _923 = asuint(r0.y);
    float4 _928 = r0;
    _928.y = asfloat((_923 != 0u) ? (asuint(r0.z) % _923) : 4294967295u);
    r0 = _928;
    float4 _935 = r0;
    _935.z = asfloat(-asint(r0.y));
    r0 = _935;
    float4 _946 = r0;
    _946.x = (asuint(r0.x) != 0u) ? r0.z : r0.y;
    r0 = _946;
    float4 _953 = r0;
    _953.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _953;
    float4 _964 = r0;
    _964.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _964;
    float4 _970 = r0;
    _970.x = float(asint(r0.x));
    r0 = _970;
    float4 _978 = r0;
    _978.x = r0.x / cb3_m[8].x;
    r0 = _978;
    float4 _983 = r0;
    _983.x = trunc(r0.x);
    r0 = _983;
    float4 _990 = r0;
    _990.w = asfloat(int(cb3_m[8].x));
    r0 = _990;
    float4 _1001 = r0;
    _1001.w = asfloat(max(asint(r0.w), (-asint(r0.w))));
    r0 = _1001;
    uint _1008 = asuint(r0.w);
    float4 _1013 = r0;
    _1013.z = asfloat((_1008 != 0u) ? (asuint(r0.z) % _1008) : 4294967295u);
    r0 = _1013;
    float4 _1020 = r0;
    _1020.w = asfloat(-asint(r0.z));
    r0 = _1020;
    float4 _1031 = r0;
    _1031.y = (asuint(r0.y) != 0u) ? r0.w : r0.z;
    r0 = _1031;
    float4 _1037 = r0;
    _1037.y = float(asint(r0.y));
    r0 = _1037;
    float2 _1048 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r0 = float4(r0.x, r0.y, _1048.x, _1048.y);
    float2 _1056 = r0.zw * shader_in[3].xy;
    r1 = float4(_1056.x, _1056.y, r1.z, r1.w);
    float4 _1067 = o3;
    _1067.x = (r0.y * r0.z) + r1.x;
    o3 = _1067;
    float4 _1077 = o3;
    _1077.y = (r0.x * r0.w) + r1.y;
    o3 = _1077;
    float4 _1082 = o3;
    _1082.z = shader_in[2].x;
    o3 = _1082;
    float4 _1087 = o3;
    _1087.w = shader_in[7].x;
    o3 = _1087;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float4 _1098 = shader_in[2];
    _1098.x = v2;
    shader_in[2] = _1098;
    shader_in[3] = float4(v3.x, v3.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, shader_in[4].z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    float4 _1118 = shader_in[7];
    _1118.x = v7;
    shader_in[7] = _1118;
    float4 _1122 = shader_in[8];
    _1122.x = v8;
    shader_in[8] = _1122;
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
