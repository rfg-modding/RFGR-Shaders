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
static float v4;
static float v5;
static float v6;
static float v7;
static float3 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float v4 : TEXCOORD4;
    float v5 : TEXCOORD5;
    float v6 : TEXCOORD6;
    float v7 : TEXCOORD7;
    float3 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 o3;
static float3 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _62 = r0;
    _62.w = asfloat(1065353216u);
    r0 = _62;
    float4 _78 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r1;
    _93.x = mad(_78.w, r0.w, mad(_78.z, r0.z, mad(_78.y, r0.y, _78.x * r0.x)));
    r1 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r1;
    _119.y = mad(_105.w, r0.w, mad(_105.z, r0.z, mad(_105.y, r0.y, _105.x * r0.x)));
    r1 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r1;
    _145.z = mad(_131.w, r0.w, mad(_131.z, r0.z, mad(_131.y, r0.y, _131.x * r0.x)));
    r1 = _145;
    float3 _159 = (-r1.zxy) + float3(cb0_m[11].z, cb0_m[11].x, cb0_m[11].y);
    r0 = float4(_159.x, _159.y, _159.z, r0.w);
    float4 _175 = r0;
    _175.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _175;
    float4 _180 = r0;
    _180.w = rsqrt(r0.w);
    r0 = _180;
    float3 _186 = r0.www * r0.xyz;
    r0 = float4(_186.x, _186.y, _186.z, r0.w);
    float4 _205 = r0;
    _205.w = mad(shader_in[8].xyz.z, shader_in[8].xyz.z, mad(shader_in[8].xyz.y, shader_in[8].xyz.y, shader_in[8].xyz.x * shader_in[8].xyz.x));
    r0 = _205;
    float4 _210 = r1;
    _210.w = rsqrt(r0.w);
    r1 = _210;
    float4 _215 = r0;
    _215.w = sqrt(r0.w);
    r0 = _215;
    float4 _221 = r0;
    _221.w = r0.w + asfloat(1065353216u);
    r0 = _221;
    float4 _236 = r0;
    _236.w = (shader_in[5].x * r0.w) + (-shader_in[4].x);
    r0 = _236;
    float3 _243 = r1.www * shader_in[8].zxy;
    r2 = float4(_243.x, _243.y, _243.z, r2.w);
    float3 _251 = r0.zxy * r2.xyz;
    r3 = float4(_251.x, _251.y, _251.z, r3.w);
    float3 _263 = (r2.zxy * r0.xyz) + (-r3.xyz);
    r3 = float4(_263.x, _263.y, _263.z, r3.w);
    float4 _279 = r1;
    _279.w = mad(r2.xyz.z, r0.xyz.z, mad(r2.xyz.y, r0.xyz.y, r2.xyz.x * r0.xyz.x));
    r1 = _279;
    float4 _287 = r1;
    _287.w = (-abs(r1.w)) + asfloat(1065353216u);
    r1 = _287;
    float4 _298 = r0;
    _298.w = (r1.w * r0.w) + shader_in[4].x;
    r0 = _298;
    float4 _313 = r1;
    _313.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _313;
    float4 _318 = r1;
    _318.w = rsqrt(r1.w);
    r1 = _318;
    float3 _324 = r1.www * r3.xyz;
    r2 = float4(_324.x, _324.y, _324.z, r2.w);
    float3 _331 = r0.xyz * r2.yzx;
    r3 = float4(_331.x, _331.y, _331.z, r3.w);
    float3 _342 = (r0.zxy * r2.zxy) + (-r3.xyz);
    r0 = float4(_342.x, _342.y, _342.z, r0.w);
    float4 _358 = r1;
    _358.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r1 = _358;
    float4 _363 = r1;
    _363.w = rsqrt(r1.w);
    r1 = _363;
    float3 _369 = r0.xyz * r1.www;
    r0 = float4(_369.x, _369.y, _369.z, r0.w);
    float2 _380 = shader_in[3].xy + asfloat(uint2(3204448256u, 3204448256u));
    r3 = float4(_380.x, _380.y, r3.z, r3.w);
    float4 _388 = r0;
    _388.w = r0.w * r3.x;
    r0 = _388;
    float4 _396 = r1;
    _396.w = r3.y * shader_in[4].x;
    r1 = _396;
    float3 _403 = (-r2.xyz) * r1.www;
    r2 = float4(_403.x, _403.y, _403.z, r2.w);
    float3 _414 = (r0.www * (-r0.xyz)) + r2.xyz;
    r0 = float4(_414.x, _414.y, _414.z, r0.w);
    float3 _421 = r0.xyz + r1.xyz;
    r1 = float4(_421.x, _421.y, _421.z, r1.w);
    float4 _425 = r1;
    _425.w = asfloat(1065353216u);
    r1 = _425;
    float4 _436 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _450 = r2;
    _450.x = mad(_436.w, r1.w, mad(_436.z, r1.z, mad(_436.y, r1.y, _436.x * r1.x)));
    r2 = _450;
    float4 _461 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _475 = r2;
    _475.y = mad(_461.w, r1.w, mad(_461.z, r1.z, mad(_461.y, r1.y, _461.x * r1.x)));
    r2 = _475;
    float4 _486 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _500 = r2;
    _500.w = mad(_486.w, r1.w, mad(_486.z, r1.z, mad(_486.y, r1.y, _486.x * r1.x)));
    r2 = _500;
    float4 _511 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _525 = o0;
    _525.z = mad(_511.w, r1.w, mad(_511.z, r1.z, mad(_511.y, r1.y, _511.x * r1.x)));
    o0 = _525;
    float3 _538 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_538.x, _538.y, _538.z, r1.w);
    o0 = float4(r2.xyw.x, r2.xyw.y, o0.z, r2.xyw.z);
    float2 _549 = r2.xy / r2.ww;
    r2 = float4(_549.x, _549.y, r2.z, r2.w);
    float3 _554 = o4;
    _554.x = r2.w;
    o4 = _554;
    float2 _563 = (r2.xy * asfloat(uint2(1056964608u, 1056964608u))) + asfloat(uint2(1056964608u, 1056964608u));
    r2 = float4(_563.x, _563.y, r2.z, r2.w);
    float2 _574 = (r2.xy * asfloat(uint2(1065353216u, 3212836864u))) + asfloat(uint2(0u, 1065353216u));
    o3 = float4(o3.x, o3.y, _574.x, _574.y);
    float3 _594 = (shader_in[1].zyx * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-shader_in[1].zyx);
    r2 = float4(_594.x, _594.y, _594.z, r2.w);
    float3 _607 = (cb3_m[7].w.xxx * r2.xyz) + shader_in[1].zyx;
    r2 = float4(_607.x, _607.y, _607.z, r2.w);
    float3 _637 = (float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z) * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z));
    r3 = float4(_637.x, _637.y, _637.z, r3.w);
    float3 _655 = (cb3_m[7].w.xxx * r3.xyz) + float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    r3 = float4(_655.x, _655.y, _655.z, r3.w);
    float3 _662 = r2.xyz + r3.xyz;
    o1 = float4(_662.x, _662.y, _662.z, o1.w);
    float4 _672 = o1;
    _672.w = shader_in[1].w * cb3_m[5].x;
    o1 = _672;
    float4 _687 = r0;
    _687.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _687;
    float4 _692 = r0;
    _692.w = rsqrt(r0.w);
    r0 = _692;
    float3 _698 = r0.www * r0.xyz;
    r0 = float4(_698.x, _698.y, _698.z, r0.w);
    float4 _714 = r0;
    _714.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _714;
    float4 _719 = r1;
    _719.w = rsqrt(r0.w);
    r1 = _719;
    float4 _724 = r0;
    _724.w = sqrt(r0.w);
    r0 = _724;
    float4 _733 = r0;
    _733.w = r0.w * cb0_m[13].y;
    r0 = _733;
    float3 _744 = ((-r1.xyz) * r1.www) + (-r0.xyz);
    r1 = float4(_744.x, r1.y, _744.y, _744.z);
    float3 _756 = (r1.xzw * asfloat(uint3(1048576000u, 1048576000u, 1048576000u))) + r0.xyz;
    r0 = float4(_756.x, _756.y, _756.z, r0.w);
    float4 _772 = r1;
    _772.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r1 = _772;
    float4 _777 = r1;
    _777.x = rsqrt(r1.x);
    r1 = _777;
    float3 _783 = r0.xyz * r1.xxx;
    r0 = float4(_783.x, _783.y, _783.z, r0.w);
    float3 _791 = r0.xyz * asfloat(uint3(1050253722u, 1050253722u, 1050253722u));
    r0 = float4(_791.x, _791.y, _791.z, r0.w);
    float4 _807 = r1;
    _807.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r1 = _807;
    float4 _812 = r1;
    _812.x = rsqrt(r1.x);
    r1 = _812;
    float3 _818 = r0.xyz * r1.xxx;
    o2 = float4(_818.x, _818.y, _818.z, o2.w);
    float4 _824 = o2;
    _824.w = shader_in[6].x;
    o2 = _824;
    float4 _832 = r0;
    _832.x = shader_in[7].x + asfloat(841731191u);
    r0 = _832;
    float4 _841 = r0;
    _841.y = cb3_m[8].y * cb3_m[8].x;
    r0 = _841;
    float4 _846 = r0;
    _846.z = trunc(r0.y);
    r0 = _846;
    float4 _852 = r0;
    _852.y = asfloat(int(r0.y));
    r0 = _852;
    float4 _859 = r0;
    _859.x = r0.x * r0.z;
    r0 = _859;
    float4 _865 = r0;
    _865.x = asfloat(int(r0.x));
    r0 = _865;
    float2 _876 = asfloat(max(asint(r0.yx), (-asint(r0.yx))));
    r0 = float4(r0.x, _876.x, _876.y, r0.w);
    float4 _885 = r0;
    _885.x = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _885;
    uint _892 = asuint(r0.y);
    float4 _899 = r0;
    _899.y = asfloat((_892 != 0u) ? (asuint(r0.z) % _892) : 4294967295u);
    r0 = _899;
    float4 _906 = r0;
    _906.z = asfloat(-asint(r0.y));
    r0 = _906;
    float4 _917 = r0;
    _917.x = (asuint(r0.x) != 0u) ? r0.z : r0.y;
    r0 = _917;
    float4 _924 = r0;
    _924.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _924;
    float4 _935 = r0;
    _935.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _935;
    float4 _941 = r0;
    _941.x = float(asint(r0.x));
    r0 = _941;
    float4 _949 = r0;
    _949.x = r0.x / cb3_m[8].x;
    r0 = _949;
    float4 _954 = r0;
    _954.x = trunc(r0.x);
    r0 = _954;
    float4 _961 = r1;
    _961.x = asfloat(int(cb3_m[8].x));
    r1 = _961;
    float4 _972 = r1;
    _972.x = asfloat(max(asint(r1.x), (-asint(r1.x))));
    r1 = _972;
    uint _979 = asuint(r1.x);
    float4 _984 = r0;
    _984.z = asfloat((_979 != 0u) ? (asuint(r0.z) % _979) : 4294967295u);
    r0 = _984;
    float4 _991 = r1;
    _991.x = asfloat(-asint(r0.z));
    r1 = _991;
    float4 _1002 = r0;
    _1002.y = (asuint(r0.y) != 0u) ? r1.x : r0.z;
    r0 = _1002;
    float4 _1008 = r0;
    _1008.y = float(asint(r0.y));
    r0 = _1008;
    float2 _1018 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r1 = float4(_1018.x, r1.y, _1018.y, r1.w);
    float2 _1026 = r1.xz * shader_in[3].xy;
    r2 = float4(_1026.x, _1026.y, r2.z, r2.w);
    float4 _1037 = o3;
    _1037.x = (r0.y * r1.x) + r2.x;
    o3 = _1037;
    float4 _1047 = o3;
    _1047.y = (r0.x * r1.z) + r2.y;
    o3 = _1047;
    float4 _1055 = r0;
    _1055.x = r1.y * cb0_m[13].x;
    r0 = _1055;
    float4 _1065 = r0;
    _1065.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _1065;
    float4 _1072 = r0;
    _1072.z = r0.x * asfloat(3216550459u);
    r0 = _1072;
    float4 _1077 = r0;
    _1077.z = exp2(r0.z);
    r0 = _1077;
    float4 _1084 = r0;
    _1084.z = (-r0.z) + asfloat(1065353216u);
    r0 = _1084;
    float4 _1091 = r0;
    _1091.x = r0.z / r0.x;
    r0 = _1091;
    float4 _1101 = r0;
    _1101.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1101;
    float4 _1113 = r0;
    _1113.x = (r0.x * r0.w) + (-cb0_m[13].w);
    r0 = _1113;
    float4 _1119 = r0;
    _1119.x = exp2(-r0.x);
    r0 = _1119;
    float4 _1125 = r0;
    _1125.x = min(r0.x, asfloat(1065353216u));
    r0 = _1125;
    float3 _1132 = o4;
    _1132.z = (-r0.x) + asfloat(1065353216u);
    o4 = _1132;
    float3 _1137 = o4;
    _1137.y = shader_in[2].x;
    o4 = _1137;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float4 _1148 = shader_in[2];
    _1148.x = v2;
    shader_in[2] = _1148;
    shader_in[3] = float4(v3.x, v3.y, shader_in[3].z, shader_in[3].w);
    float4 _1156 = shader_in[4];
    _1156.x = v4;
    shader_in[4] = _1156;
    float4 _1160 = shader_in[5];
    _1160.x = v5;
    shader_in[5] = _1160;
    float4 _1164 = shader_in[6];
    _1164.x = v6;
    shader_in[6] = _1164;
    float4 _1168 = shader_in[7];
    _1168.x = v7;
    shader_in[7] = _1168;
    shader_in[8] = float4(v8.x, v8.y, v8.z, shader_in[8].w);
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
