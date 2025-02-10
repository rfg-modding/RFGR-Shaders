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
    float4 cb2_m[6] : packoffset(c0);
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
    float4 _73 = r0;
    _73.x = shader_in[5].y + shader_in[5].x;
    r0 = _73;
    float4 _81 = r0;
    _81.x = r0.x + shader_in[5].z;
    r0 = _81;
    float4 _89 = r0;
    _89.x = r0.x + shader_in[5].w;
    r0 = _89;
    float4 _96 = r0;
    _96.x = asfloat(1065353216u) / r0.x;
    r0 = _96;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _106 = r1;
    _106.w = asfloat(1065353216u);
    r1 = _106;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _123 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_123].x, cb4_m[_123].y, cb4_m[_123].z, cb4_m[_123].w);
    int _145 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_145].x, cb4_m[_145].y, cb4_m[_145].z, cb4_m[_145].w)) + r3;
    int _164 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_164].x, cb4_m[_164].y, cb4_m[_164].z, cb4_m[_164].w)) + r3;
    int _183 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_183].x, cb4_m[_183].y, cb4_m[_183].z, cb4_m[_183].w)) + r3;
    float4 _212 = r4;
    _212.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _212;
    int _221 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_221].x, cb4_m[_221].y, cb4_m[_221].z, cb4_m[_221].w);
    int _240 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_240].x, cb4_m[_240].y, cb4_m[_240].z, cb4_m[_240].w)) + r5;
    int _260 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_260].x, cb4_m[_260].y, cb4_m[_260].z, cb4_m[_260].w)) + r5;
    int _280 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_280].x, cb4_m[_280].y, cb4_m[_280].z, cb4_m[_280].w)) + r5;
    float4 _308 = r4;
    _308.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _308;
    int _317 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_317].x, cb4_m[_317].y, cb4_m[_317].z, cb4_m[_317].w);
    int _336 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_336].x, cb4_m[_336].y, cb4_m[_336].z, cb4_m[_336].w)) + r6;
    int _356 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_356].x, cb4_m[_356].y, cb4_m[_356].z, cb4_m[_356].w)) + r6;
    int _376 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_376].x, cb4_m[_376].y, cb4_m[_376].z, cb4_m[_376].w)) + r6;
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
    float2 _614 = float2(asint(shader_in[1].xy));
    r1 = float4(_614.x, _614.y, r1.z, r1.w);
    float2 _625 = r1.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r1 = float4(_625.x, _625.y, r1.z, r1.w);
    float2 _634 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r1 = float4(_634.x, _634.y, r1.z, r1.w);
    o1 = r1.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(r1.xy.x, r1.xy.y, o4.z, o4.w);
    float3 _662 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_662.x, _662.y, _662.z, r1.w);
    float4 _678 = r4;
    _678.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _678;
    float4 _693 = r4;
    _693.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _693;
    float4 _708 = r4;
    _708.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _708;
    float3 _714 = r0.xxx * r4.xyz;
    r1 = float4(_714.x, _714.y, _714.z, r1.w);
    float4 _730 = r1;
    _730.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _730;
    float4 _735 = r1;
    _735.w = rsqrt(r1.w);
    r1 = _735;
    float3 _741 = r1.www * r1.xyz;
    r1 = float4(_741.x, _741.y, _741.z, r1.w);
    float3 _751 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _763 = r4;
    _763.x = mad(_751.z, r1.xyz.z, mad(_751.y, r1.xyz.y, _751.x * r1.xyz.x));
    r4 = _763;
    float3 _772 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _784 = r4;
    _784.y = mad(_772.z, r1.xyz.z, mad(_772.y, r1.xyz.y, _772.x * r1.xyz.x));
    r4 = _784;
    float3 _793 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _805 = r4;
    _805.z = mad(_793.z, r1.xyz.z, mad(_793.y, r1.xyz.y, _793.x * r1.xyz.x));
    r4 = _805;
    float4 _820 = r1;
    _820.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _820;
    float4 _825 = r1;
    _825.x = rsqrt(r1.x);
    r1 = _825;
    float3 _831 = r1.xxx * r4.xyz;
    r1 = float4(_831.x, _831.y, _831.z, r1.w);
    r4 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _855 = r3;
    _855.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _855;
    float4 _870 = r3;
    _870.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _870;
    float4 _885 = r3;
    _885.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _885;
    float3 _891 = r0.xxx * r3.xyz;
    r2 = float4(_891.x, _891.y, _891.z, r2.w);
    float4 _907 = r0;
    _907.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _907;
    float4 _912 = r0;
    _912.x = rsqrt(r0.x);
    r0 = _912;
    float3 _918 = r0.xxx * r2.xyz;
    r2 = float4(_918.x, _918.y, _918.z, r2.w);
    float3 _928 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _940 = r3;
    _940.x = mad(_928.z, r2.xyz.z, mad(_928.y, r2.xyz.y, _928.x * r2.xyz.x));
    r3 = _940;
    float3 _949 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _961 = r3;
    _961.y = mad(_949.z, r2.xyz.z, mad(_949.y, r2.xyz.y, _949.x * r2.xyz.x));
    r3 = _961;
    float3 _970 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _982 = r3;
    _982.z = mad(_970.z, r2.xyz.z, mad(_970.y, r2.xyz.y, _970.x * r2.xyz.x));
    r3 = _982;
    float4 _997 = r0;
    _997.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _997;
    float4 _1002 = r0;
    _1002.x = rsqrt(r0.x);
    r0 = _1002;
    float3 _1008 = r0.xxx * r3.xyz;
    r2 = float4(_1008.x, _1008.y, _1008.z, r2.w);
    float3 _1015 = r1.zxy * r2.yzx;
    r3 = float4(_1015.x, _1015.y, _1015.z, r3.w);
    float3 _1026 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1026.x, _1026.y, _1026.z, r3.w);
    float3 _1033 = r4.www * r3.xyz;
    r3 = float4(_1033.x, _1033.y, _1033.z, r3.w);
    float3 _1043 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1055 = o2;
    _1055.y = mad(_1043.z, r3.xyz.z, mad(_1043.y, r3.xyz.y, _1043.x * r3.xyz.x));
    o2 = _1055;
    float3 _1064 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1076 = o2;
    _1076.z = mad(_1064.z, r1.xyz.z, mad(_1064.y, r1.xyz.y, _1064.x * r1.xyz.x));
    o2 = _1076;
    float3 _1085 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1097 = o2;
    _1097.x = mad(_1085.z, r2.xyz.z, mad(_1085.y, r2.xyz.y, _1085.x * r2.xyz.x));
    o2 = _1097;
    float4 _1112 = r0;
    _1112.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1112;
    float4 _1117 = r0;
    _1117.x = rsqrt(r0.x);
    r0 = _1117;
    float3 _1123 = r0.xxx * r0.yzw;
    r0 = float4(_1123.x, _1123.y, _1123.z, r0.w);
    float3 _1139 = o3;
    _1139.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1139;
    float3 _1154 = o3;
    _1154.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1154;
    float3 _1169 = o3;
    _1169.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1169;
    float2 _1175 = float2(asint(shader_in[2].xy));
    r0 = float4(_1175.x, _1175.y, r0.z, r0.w);
    float2 _1181 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _1181.x, _1181.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1190 = asfloat(v1);
    shader_in[1] = float4(_1190.x, _1190.y, shader_in[1].z, shader_in[1].w);
    float2 _1195 = asfloat(v2);
    shader_in[2] = float4(_1195.x, _1195.y, shader_in[2].z, shader_in[2].w);
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
