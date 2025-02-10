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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
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
static float4 o2;
static float4 o3;
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
    float4 _67 = r0;
    _67.x = shader_in[5].y + shader_in[5].x;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[5].z;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[5].w;
    r0 = _83;
    float4 _90 = r0;
    _90.x = asfloat(1065353216u) / r0.x;
    r0 = _90;
    float3 _105 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_105.x, _105.y, _105.z, r1.w);
    float4 _110 = r1;
    _110.w = asfloat(1065353216u);
    r1 = _110;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _127 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_127].x, cb4_m[_127].y, cb4_m[_127].z, cb4_m[_127].w);
    int _149 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_149].x, cb4_m[_149].y, cb4_m[_149].z, cb4_m[_149].w)) + r3;
    int _168 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_168].x, cb4_m[_168].y, cb4_m[_168].z, cb4_m[_168].w)) + r3;
    int _187 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_187].x, cb4_m[_187].y, cb4_m[_187].z, cb4_m[_187].w)) + r3;
    float4 _216 = r4;
    _216.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _216;
    int _225 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_225].x, cb4_m[_225].y, cb4_m[_225].z, cb4_m[_225].w);
    int _244 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_244].x, cb4_m[_244].y, cb4_m[_244].z, cb4_m[_244].w)) + r5;
    int _264 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_264].x, cb4_m[_264].y, cb4_m[_264].z, cb4_m[_264].w)) + r5;
    int _284 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_284].x, cb4_m[_284].y, cb4_m[_284].z, cb4_m[_284].w)) + r5;
    float4 _312 = r4;
    _312.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _312;
    int _321 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_321].x, cb4_m[_321].y, cb4_m[_321].z, cb4_m[_321].w);
    int _340 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_340].x, cb4_m[_340].y, cb4_m[_340].z, cb4_m[_340].w)) + r6;
    int _360 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_360].x, cb4_m[_360].y, cb4_m[_360].z, cb4_m[_360].w)) + r6;
    int _380 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_380].x, cb4_m[_380].y, cb4_m[_380].z, cb4_m[_380].w)) + r6;
    float4 _408 = r4;
    _408.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _408;
    float3 _414 = r0.xxx * r4.xyz;
    r1 = float4(_414.x, _414.y, _414.z, r1.w);
    float4 _418 = r1;
    _418.w = asfloat(1065353216u);
    r1 = _418;
    float4 _429 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _443 = r4;
    _443.x = mad(_429.w, r1.w, mad(_429.z, r1.z, mad(_429.y, r1.y, _429.x * r1.x)));
    r4 = _443;
    float4 _454 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _468 = r4;
    _468.y = mad(_454.w, r1.w, mad(_454.z, r1.z, mad(_454.y, r1.y, _454.x * r1.x)));
    r4 = _468;
    float4 _479 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _493 = r4;
    _493.z = mad(_479.w, r1.w, mad(_479.z, r1.z, mad(_479.y, r1.y, _479.x * r1.x)));
    r4 = _493;
    float4 _496 = r4;
    _496.w = asfloat(1065353216u);
    r4 = _496;
    float4 _507 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _521 = o0;
    _521.x = mad(_507.w, r4.w, mad(_507.z, r4.z, mad(_507.y, r4.y, _507.x * r4.x)));
    o0 = _521;
    float4 _532 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _546 = o0;
    _546.y = mad(_532.w, r4.w, mad(_532.z, r4.z, mad(_532.y, r4.y, _532.x * r4.x)));
    o0 = _546;
    float4 _557 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _571 = o0;
    _571.z = mad(_557.w, r4.w, mad(_557.z, r4.z, mad(_557.y, r4.y, _557.x * r4.x)));
    o0 = _571;
    float4 _582 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _596 = o0;
    _596.w = mad(_582.w, r4.w, mad(_582.z, r4.z, mad(_582.y, r4.y, _582.x * r4.x)));
    o0 = _596;
    float2 _602 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _602.x, _602.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _622 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _622.x, _622.y, _622.z);
    float3 _632 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_632.x, _632.y, _632.z, r1.w);
    float3 _641 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _641.x, _641.y, _641.z);
    float4 _657 = r1;
    _657.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _657;
    float4 _662 = r1;
    _662.x = rsqrt(r1.x);
    r1 = _662;
    float3 _668 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _668.x, _668.y, _668.z);
    float4 _684 = r1;
    _684.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _684;
    float4 _699 = r1;
    _699.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _699;
    float4 _714 = r1;
    _714.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _714;
    float3 _720 = r0.xxx * r1.xyz;
    r0 = float4(_720.x, _720.y, _720.z, r0.w);
    float4 _736 = r0;
    _736.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _736;
    float4 _741 = r0;
    _741.w = rsqrt(r0.w);
    r0 = _741;
    float3 _747 = r0.www * r0.xyz;
    r0 = float4(_747.x, _747.y, _747.z, r0.w);
    float3 _757 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _769 = r1;
    _769.x = mad(_757.z, r0.xyz.z, mad(_757.y, r0.xyz.y, _757.x * r0.xyz.x));
    r1 = _769;
    float3 _778 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _790 = r1;
    _790.y = mad(_778.z, r0.xyz.z, mad(_778.y, r0.xyz.y, _778.x * r0.xyz.x));
    r1 = _790;
    float3 _799 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _811 = r1;
    _811.z = mad(_799.z, r0.xyz.z, mad(_799.y, r0.xyz.y, _799.x * r0.xyz.x));
    r1 = _811;
    float4 _826 = r0;
    _826.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _826;
    float4 _831 = r0;
    _831.x = rsqrt(r0.x);
    r0 = _831;
    float3 _837 = r0.xxx * r1.xyz;
    r0 = float4(_837.x, _837.y, _837.z, r0.w);
    o2 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o2.w);
    float4 _854 = o4;
    _854.w = clamp((r0.y * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o4 = _854;
    float4 _857 = o2;
    _857.w = asfloat(0u);
    o2 = _857;
    float3 _871 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_871.x, _871.y, _871.z, r0.w);
    float3 _885 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_885.x, _885.y, _885.z, r1.w);
    float4 _895 = r0;
    _895.w = r0.y * cb0_m[13].x;
    r0 = _895;
    float4 _902 = r1;
    _902.w = r0.w * asfloat(3216550459u);
    r1 = _902;
    float4 _907 = r1;
    _907.w = exp2(r1.w);
    r1 = _907;
    float4 _914 = r1;
    _914.w = (-r1.w) + asfloat(1065353216u);
    r1 = _914;
    float4 _921 = r0;
    _921.w = r1.w / r0.w;
    r0 = _921;
    float4 _933 = r1;
    _933.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _933;
    float4 _948 = r0;
    _948.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _948;
    float4 _953 = r0;
    _953.x = sqrt(r0.x);
    r0 = _953;
    float4 _961 = r0;
    _961.x = r0.x * cb0_m[13].y;
    r0 = _961;
    float4 _971 = r0;
    _971.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _971;
    float4 _983 = r0;
    _983.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _983;
    float4 _989 = r0;
    _989.x = exp2(-r0.x);
    r0 = _989;
    float4 _995 = r0;
    _995.x = min(r0.x, asfloat(1065353216u));
    r0 = _995;
    float4 _1002 = o3;
    _1002.w = (-r0.x) + asfloat(1065353216u);
    o3 = _1002;
    float4 _1017 = r0;
    _1017.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _1017;
    float4 _1022 = r0;
    _1022.x = rsqrt(r0.x);
    r0 = _1022;
    float3 _1028 = r0.xxx * r1.xyz;
    o3 = float4(_1028.x, _1028.y, _1028.z, o3.w);
    float3 _1038 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o4 = float4(_1038.x, _1038.y, _1038.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1047 = asfloat(v1);
    shader_in[1] = float4(_1047.x, _1047.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
