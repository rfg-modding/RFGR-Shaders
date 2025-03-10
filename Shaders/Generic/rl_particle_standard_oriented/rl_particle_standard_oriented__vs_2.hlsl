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
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _60 = r0;
    _60.w = asfloat(1065353216u);
    r0 = _60;
    float4 _76 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _91 = r1;
    _91.x = mad(_76.w, r0.w, mad(_76.z, r0.z, mad(_76.y, r0.y, _76.x * r0.x)));
    r1 = _91;
    float4 _103 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _117 = r1;
    _117.y = mad(_103.w, r0.w, mad(_103.z, r0.z, mad(_103.y, r0.y, _103.x * r0.x)));
    r1 = _117;
    float4 _129 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _143 = r1;
    _143.z = mad(_129.w, r0.w, mad(_129.z, r0.z, mad(_129.y, r0.y, _129.x * r0.x)));
    r1 = _143;
    float3 _157 = (-r1.zxy) + float3(cb0_m[11].z, cb0_m[11].x, cb0_m[11].y);
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float4 _173 = r0;
    _173.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _173;
    float4 _178 = r0;
    _178.w = rsqrt(r0.w);
    r0 = _178;
    float3 _184 = r0.www * r0.xyz;
    r0 = float4(_184.x, _184.y, _184.z, r0.w);
    float4 _203 = r0;
    _203.w = mad(shader_in[8].xyz.z, shader_in[8].xyz.z, mad(shader_in[8].xyz.y, shader_in[8].xyz.y, shader_in[8].xyz.x * shader_in[8].xyz.x));
    r0 = _203;
    float4 _208 = r1;
    _208.w = rsqrt(r0.w);
    r1 = _208;
    float4 _213 = r0;
    _213.w = sqrt(r0.w);
    r0 = _213;
    float4 _219 = r0;
    _219.w = r0.w + asfloat(1065353216u);
    r0 = _219;
    float4 _234 = r0;
    _234.w = (shader_in[5].x * r0.w) + (-shader_in[4].x);
    r0 = _234;
    float3 _241 = r1.www * shader_in[8].zxy;
    r2 = float4(_241.x, _241.y, _241.z, r2.w);
    float3 _249 = r0.zxy * r2.xyz;
    r3 = float4(_249.x, _249.y, _249.z, r3.w);
    float3 _261 = (r2.zxy * r0.xyz) + (-r3.xyz);
    r3 = float4(_261.x, _261.y, _261.z, r3.w);
    float4 _277 = r1;
    _277.w = mad(r2.xyz.z, r0.xyz.z, mad(r2.xyz.y, r0.xyz.y, r2.xyz.x * r0.xyz.x));
    r1 = _277;
    float4 _285 = r1;
    _285.w = (-abs(r1.w)) + asfloat(1065353216u);
    r1 = _285;
    float4 _296 = r0;
    _296.w = (r1.w * r0.w) + shader_in[4].x;
    r0 = _296;
    float4 _311 = r1;
    _311.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _311;
    float4 _316 = r1;
    _316.w = rsqrt(r1.w);
    r1 = _316;
    float3 _322 = r1.www * r3.xyz;
    r2 = float4(_322.x, _322.y, _322.z, r2.w);
    float3 _329 = r0.xyz * r2.yzx;
    r3 = float4(_329.x, _329.y, _329.z, r3.w);
    float3 _340 = (r0.zxy * r2.zxy) + (-r3.xyz);
    r0 = float4(_340.x, _340.y, _340.z, r0.w);
    float4 _356 = r1;
    _356.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r1 = _356;
    float4 _361 = r1;
    _361.w = rsqrt(r1.w);
    r1 = _361;
    float3 _367 = r0.xyz * r1.www;
    r0 = float4(_367.x, _367.y, _367.z, r0.w);
    float2 _378 = shader_in[3].xy + asfloat(uint2(3204448256u, 3204448256u));
    r3 = float4(_378.x, _378.y, r3.z, r3.w);
    float4 _386 = r0;
    _386.w = r0.w * r3.x;
    r0 = _386;
    float4 _394 = r1;
    _394.w = r3.y * shader_in[4].x;
    r1 = _394;
    float3 _401 = (-r2.xyz) * r1.www;
    r2 = float4(_401.x, _401.y, _401.z, r2.w);
    float3 _412 = (r0.www * (-r0.xyz)) + r2.xyz;
    r0 = float4(_412.x, _412.y, _412.z, r0.w);
    float3 _419 = r0.xyz + r1.xyz;
    r1 = float4(_419.x, _419.y, _419.z, r1.w);
    float4 _423 = r1;
    _423.w = asfloat(1065353216u);
    r1 = _423;
    float4 _434 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _448 = o0;
    _448.x = mad(_434.w, r1.w, mad(_434.z, r1.z, mad(_434.y, r1.y, _434.x * r1.x)));
    o0 = _448;
    float4 _459 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _473 = o0;
    _473.y = mad(_459.w, r1.w, mad(_459.z, r1.z, mad(_459.y, r1.y, _459.x * r1.x)));
    o0 = _473;
    float4 _484 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _498 = o0;
    _498.z = mad(_484.w, r1.w, mad(_484.z, r1.z, mad(_484.y, r1.y, _484.x * r1.x)));
    o0 = _498;
    float4 _509 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _523 = o0;
    _523.w = mad(_509.w, r1.w, mad(_509.z, r1.z, mad(_509.y, r1.y, _509.x * r1.x)));
    o0 = _523;
    float3 _536 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_536.x, _536.y, _536.z, r1.w);
    float3 _556 = (shader_in[1].zyx * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-shader_in[1].zyx);
    r2 = float4(_556.x, _556.y, _556.z, r2.w);
    float3 _569 = (cb3_m[7].w.xxx * r2.xyz) + shader_in[1].zyx;
    r2 = float4(_569.x, _569.y, _569.z, r2.w);
    float3 _599 = (float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z) * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z));
    r3 = float4(_599.x, _599.y, _599.z, r3.w);
    float3 _617 = (cb3_m[7].w.xxx * r3.xyz) + float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    r3 = float4(_617.x, _617.y, _617.z, r3.w);
    float3 _624 = r2.xyz + r3.xyz;
    o1 = float4(_624.x, _624.y, _624.z, o1.w);
    float4 _634 = o1;
    _634.w = shader_in[1].w * cb3_m[5].x;
    o1 = _634;
    float4 _649 = r0;
    _649.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _649;
    float4 _654 = r0;
    _654.w = rsqrt(r0.w);
    r0 = _654;
    float3 _660 = r0.www * r0.xyz;
    r0 = float4(_660.x, _660.y, _660.z, r0.w);
    float4 _676 = r0;
    _676.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _676;
    float4 _681 = r1;
    _681.w = rsqrt(r0.w);
    r1 = _681;
    float4 _686 = r0;
    _686.w = sqrt(r0.w);
    r0 = _686;
    float4 _695 = r0;
    _695.w = r0.w * cb0_m[13].y;
    r0 = _695;
    float3 _706 = ((-r1.xyz) * r1.www) + (-r0.xyz);
    r1 = float4(_706.x, r1.y, _706.y, _706.z);
    float3 _718 = (r1.xzw * asfloat(uint3(1048576000u, 1048576000u, 1048576000u))) + r0.xyz;
    r0 = float4(_718.x, _718.y, _718.z, r0.w);
    float4 _734 = r1;
    _734.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r1 = _734;
    float4 _739 = r1;
    _739.x = rsqrt(r1.x);
    r1 = _739;
    float3 _745 = r0.xyz * r1.xxx;
    r0 = float4(_745.x, _745.y, _745.z, r0.w);
    float3 _753 = r0.xyz * asfloat(uint3(1050253722u, 1050253722u, 1050253722u));
    r0 = float4(_753.x, _753.y, _753.z, r0.w);
    float4 _769 = r1;
    _769.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r1 = _769;
    float4 _774 = r1;
    _774.x = rsqrt(r1.x);
    r1 = _774;
    float3 _780 = r0.xyz * r1.xxx;
    o2 = float4(_780.x, _780.y, _780.z, o2.w);
    float4 _786 = o2;
    _786.w = shader_in[6].x;
    o2 = _786;
    float4 _794 = r0;
    _794.x = r1.y * cb0_m[13].x;
    r0 = _794;
    float4 _806 = r0;
    _806.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _806;
    float4 _813 = r0;
    _813.z = r0.x * asfloat(3216550459u);
    r0 = _813;
    float4 _818 = r0;
    _818.z = exp2(r0.z);
    r0 = _818;
    float4 _825 = r0;
    _825.z = (-r0.z) + asfloat(1065353216u);
    r0 = _825;
    float4 _832 = r0;
    _832.x = r0.z / r0.x;
    r0 = _832;
    float4 _842 = r0;
    _842.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _842;
    float4 _854 = r0;
    _854.x = (r0.x * r0.w) + (-cb0_m[13].w);
    r0 = _854;
    float4 _860 = r0;
    _860.x = exp2(-r0.x);
    r0 = _860;
    float4 _866 = r0;
    _866.x = min(r0.x, asfloat(1065353216u));
    r0 = _866;
    float4 _873 = o3;
    _873.w = (-r0.x) + asfloat(1065353216u);
    o3 = _873;
    float4 _881 = r0;
    _881.x = shader_in[7].x + asfloat(841731191u);
    r0 = _881;
    float4 _890 = r0;
    _890.y = cb3_m[8].y * cb3_m[8].x;
    r0 = _890;
    float4 _895 = r0;
    _895.z = trunc(r0.y);
    r0 = _895;
    float4 _901 = r0;
    _901.y = asfloat(int(r0.y));
    r0 = _901;
    float4 _908 = r0;
    _908.x = r0.x * r0.z;
    r0 = _908;
    float4 _914 = r0;
    _914.x = asfloat(int(r0.x));
    r0 = _914;
    float2 _925 = asfloat(max(asint(r0.yx), (-asint(r0.yx))));
    r0 = float4(r0.x, _925.x, _925.y, r0.w);
    float4 _934 = r0;
    _934.x = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _934;
    uint _941 = asuint(r0.y);
    float4 _946 = r0;
    _946.y = asfloat((_941 != 0u) ? (asuint(r0.z) % _941) : 4294967295u);
    r0 = _946;
    float4 _953 = r0;
    _953.z = asfloat(-asint(r0.y));
    r0 = _953;
    float4 _964 = r0;
    _964.x = (asuint(r0.x) != 0u) ? r0.z : r0.y;
    r0 = _964;
    float4 _971 = r0;
    _971.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _971;
    float4 _982 = r0;
    _982.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _982;
    float4 _988 = r0;
    _988.x = float(asint(r0.x));
    r0 = _988;
    float4 _996 = r0;
    _996.x = r0.x / cb3_m[8].x;
    r0 = _996;
    float4 _1001 = r0;
    _1001.x = trunc(r0.x);
    r0 = _1001;
    float4 _1008 = r0;
    _1008.w = asfloat(int(cb3_m[8].x));
    r0 = _1008;
    float4 _1019 = r0;
    _1019.w = asfloat(max(asint(r0.w), (-asint(r0.w))));
    r0 = _1019;
    uint _1026 = asuint(r0.w);
    float4 _1031 = r0;
    _1031.z = asfloat((_1026 != 0u) ? (asuint(r0.z) % _1026) : 4294967295u);
    r0 = _1031;
    float4 _1038 = r0;
    _1038.w = asfloat(-asint(r0.z));
    r0 = _1038;
    float4 _1049 = r0;
    _1049.y = (asuint(r0.y) != 0u) ? r0.w : r0.z;
    r0 = _1049;
    float4 _1055 = r0;
    _1055.y = float(asint(r0.y));
    r0 = _1055;
    float2 _1065 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r0 = float4(r0.x, r0.y, _1065.x, _1065.y);
    float2 _1073 = r0.zw * shader_in[3].xy;
    r1 = float4(_1073.x, _1073.y, r1.z, r1.w);
    float4 _1084 = o3;
    _1084.x = (r0.y * r0.z) + r1.x;
    o3 = _1084;
    float4 _1094 = o3;
    _1094.y = (r0.x * r0.w) + r1.y;
    o3 = _1094;
    float4 _1099 = o3;
    _1099.z = shader_in[2].x;
    o3 = _1099;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float4 _1110 = shader_in[2];
    _1110.x = v2;
    shader_in[2] = _1110;
    shader_in[3] = float4(v3.x, v3.y, shader_in[3].z, shader_in[3].w);
    float4 _1118 = shader_in[4];
    _1118.x = v4;
    shader_in[4] = _1118;
    float4 _1122 = shader_in[5];
    _1122.x = v5;
    shader_in[5] = _1122;
    float4 _1126 = shader_in[6];
    _1126.x = v6;
    shader_in[6] = _1126;
    float4 _1130 = shader_in[7];
    _1130.x = v7;
    shader_in[7] = _1130;
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
