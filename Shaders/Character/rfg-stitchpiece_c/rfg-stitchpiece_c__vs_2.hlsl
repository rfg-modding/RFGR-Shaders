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
    int _145 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_145].x, cb4_m[_145].y, cb4_m[_145].z, cb4_m[_145].w)) + r3;
    int _164 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_164].x, cb4_m[_164].y, cb4_m[_164].z, cb4_m[_164].w)) + r3;
    int _183 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_183].x, cb4_m[_183].y, cb4_m[_183].z, cb4_m[_183].w)) + r3;
    float4 _212 = r4;
    _212.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _212;
    int _221 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_221].x, cb4_m[_221].y, cb4_m[_221].z, cb4_m[_221].w);
    int _240 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_240].x, cb4_m[_240].y, cb4_m[_240].z, cb4_m[_240].w)) + r5;
    int _260 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_260].x, cb4_m[_260].y, cb4_m[_260].z, cb4_m[_260].w)) + r5;
    int _280 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_280].x, cb4_m[_280].y, cb4_m[_280].z, cb4_m[_280].w)) + r5;
    float4 _308 = r4;
    _308.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _308;
    int _317 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_317].x, cb4_m[_317].y, cb4_m[_317].z, cb4_m[_317].w);
    int _336 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_336].x, cb4_m[_336].y, cb4_m[_336].z, cb4_m[_336].w)) + r6;
    int _356 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_356].x, cb4_m[_356].y, cb4_m[_356].z, cb4_m[_356].w)) + r6;
    int _376 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_376].x, cb4_m[_376].y, cb4_m[_376].z, cb4_m[_376].w)) + r6;
    float4 _404 = r4;
    _404.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _404;
    float3 _410 = r0.xxx * r4.xyz;
    r1 = float4(_410.x, _410.y, _410.z, r1.w);
    float4 _414 = r1;
    _414.w = asfloat(1065353216u);
    r1 = _414;
    float4 _425 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _439 = r4;
    _439.x = mad(_425.w, r1.w, mad(_425.z, r1.z, mad(_425.y, r1.y, _425.x * r1.x)));
    r4 = _439;
    float4 _450 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _464 = r4;
    _464.y = mad(_450.w, r1.w, mad(_450.z, r1.z, mad(_450.y, r1.y, _450.x * r1.x)));
    r4 = _464;
    float4 _475 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _489 = r4;
    _489.z = mad(_475.w, r1.w, mad(_475.z, r1.z, mad(_475.y, r1.y, _475.x * r1.x)));
    r4 = _489;
    float4 _492 = r4;
    _492.w = asfloat(1065353216u);
    r4 = _492;
    float4 _503 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _517 = o0;
    _517.x = mad(_503.w, r4.w, mad(_503.z, r4.z, mad(_503.y, r4.y, _503.x * r4.x)));
    o0 = _517;
    float4 _528 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _542 = o0;
    _542.y = mad(_528.w, r4.w, mad(_528.z, r4.z, mad(_528.y, r4.y, _528.x * r4.x)));
    o0 = _542;
    float4 _553 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _567 = o0;
    _567.z = mad(_553.w, r4.w, mad(_553.z, r4.z, mad(_553.y, r4.y, _553.x * r4.x)));
    o0 = _567;
    float4 _579 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _593 = o0;
    _593.w = mad(_579.w, r4.w, mad(_579.z, r4.z, mad(_579.y, r4.y, _579.x * r4.x)));
    o0 = _593;
    float3 _607 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _607.x, _607.y, _607.z);
    float2 _614 = float2(asint(shader_in[3].xy));
    r1 = float4(_614.x, _614.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _636 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_636.x, _636.y, _636.z, r1.w);
    float4 _652 = r4;
    _652.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _652;
    float4 _667 = r4;
    _667.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _667;
    float4 _682 = r4;
    _682.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _682;
    float3 _688 = r0.xxx * r4.xyz;
    r1 = float4(_688.x, _688.y, _688.z, r1.w);
    float4 _704 = r1;
    _704.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _704;
    float4 _709 = r1;
    _709.w = rsqrt(r1.w);
    r1 = _709;
    float3 _715 = r1.www * r1.xyz;
    r1 = float4(_715.x, _715.y, _715.z, r1.w);
    float3 _725 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _737 = r4;
    _737.x = mad(_725.z, r1.xyz.z, mad(_725.y, r1.xyz.y, _725.x * r1.xyz.x));
    r4 = _737;
    float3 _746 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _758 = r4;
    _758.y = mad(_746.z, r1.xyz.z, mad(_746.y, r1.xyz.y, _746.x * r1.xyz.x));
    r4 = _758;
    float3 _767 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _779 = r4;
    _779.z = mad(_767.z, r1.xyz.z, mad(_767.y, r1.xyz.y, _767.x * r1.xyz.x));
    r4 = _779;
    float4 _794 = r1;
    _794.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _794;
    float4 _799 = r1;
    _799.x = rsqrt(r1.x);
    r1 = _799;
    float3 _805 = r1.xxx * r4.xyz;
    r1 = float4(_805.x, _805.y, _805.z, r1.w);
    r4 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _830 = r3;
    _830.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _830;
    float4 _845 = r3;
    _845.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _845;
    float4 _860 = r3;
    _860.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _860;
    float3 _866 = r0.xxx * r3.xyz;
    r2 = float4(_866.x, _866.y, _866.z, r2.w);
    float4 _882 = r0;
    _882.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _882;
    float4 _887 = r0;
    _887.x = rsqrt(r0.x);
    r0 = _887;
    float3 _893 = r0.xxx * r2.xyz;
    r2 = float4(_893.x, _893.y, _893.z, r2.w);
    float3 _903 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _915 = r3;
    _915.x = mad(_903.z, r2.xyz.z, mad(_903.y, r2.xyz.y, _903.x * r2.xyz.x));
    r3 = _915;
    float3 _924 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _936 = r3;
    _936.y = mad(_924.z, r2.xyz.z, mad(_924.y, r2.xyz.y, _924.x * r2.xyz.x));
    r3 = _936;
    float3 _945 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _957 = r3;
    _957.z = mad(_945.z, r2.xyz.z, mad(_945.y, r2.xyz.y, _945.x * r2.xyz.x));
    r3 = _957;
    float4 _972 = r0;
    _972.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _972;
    float4 _977 = r0;
    _977.x = rsqrt(r0.x);
    r0 = _977;
    float3 _983 = r0.xxx * r3.xyz;
    r2 = float4(_983.x, _983.y, _983.z, r2.w);
    float3 _990 = r1.zxy * r2.yzx;
    r3 = float4(_990.x, _990.y, _990.z, r3.w);
    float3 _1001 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1001.x, _1001.y, _1001.z, r3.w);
    float3 _1008 = r4.www * r3.xyz;
    r3 = float4(_1008.x, _1008.y, _1008.z, r3.w);
    float3 _1018 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1030 = o2;
    _1030.y = mad(_1018.z, r3.xyz.z, mad(_1018.y, r3.xyz.y, _1018.x * r3.xyz.x));
    o2 = _1030;
    float3 _1039 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1051 = o2;
    _1051.z = mad(_1039.z, r1.xyz.z, mad(_1039.y, r1.xyz.y, _1039.x * r1.xyz.x));
    o2 = _1051;
    float3 _1060 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1072 = o2;
    _1072.x = mad(_1060.z, r2.xyz.z, mad(_1060.y, r2.xyz.y, _1060.x * r2.xyz.x));
    o2 = _1072;
    float4 _1087 = r0;
    _1087.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1087;
    float4 _1092 = r0;
    _1092.x = rsqrt(r0.x);
    r0 = _1092;
    float3 _1098 = r0.xxx * r0.yzw;
    r0 = float4(_1098.x, _1098.y, _1098.z, r0.w);
    float3 _1114 = o3;
    _1114.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1114;
    float3 _1129 = o3;
    _1129.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1129;
    float3 _1144 = o3;
    _1144.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1144;
    float2 _1150 = float2(asint(shader_in[2].xy));
    r0 = float4(_1150.x, _1150.y, r0.z, r0.w);
    float2 _1161 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_1161.x, _1161.y, r0.z, r0.w);
    float2 _1167 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _1167.x, _1167.y);
    float2 _1174 = float2(asint(shader_in[1].xy));
    r0 = float4(_1174.x, _1174.y, r0.z, r0.w);
    float2 _1180 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_1180.x, _1180.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1189 = asfloat(v1);
    shader_in[1] = float4(_1189.x, _1189.y, shader_in[1].z, shader_in[1].w);
    float2 _1194 = asfloat(v2);
    shader_in[2] = float4(_1194.x, _1194.y, shader_in[2].z, shader_in[2].w);
    float2 _1199 = asfloat(v3);
    shader_in[3] = float4(_1199.x, _1199.y, shader_in[3].z, shader_in[3].w);
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
