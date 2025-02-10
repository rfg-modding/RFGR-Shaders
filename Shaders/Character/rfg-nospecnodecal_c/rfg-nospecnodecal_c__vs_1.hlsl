cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static int4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float2 o1;
static float3 o2;
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
    float4 _66 = r0;
    _66.x = shader_in[4].y + shader_in[4].x;
    r0 = _66;
    float4 _74 = r0;
    _74.x = r0.x + shader_in[4].z;
    r0 = _74;
    float4 _82 = r0;
    _82.x = r0.x + shader_in[4].w;
    r0 = _82;
    float4 _89 = r0;
    _89.x = asfloat(1065353216u) / r0.x;
    r0 = _89;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _99 = r1;
    _99.w = asfloat(1065353216u);
    r1 = _99;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _116 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_116].x, cb4_m[_116].y, cb4_m[_116].z, cb4_m[_116].w);
    int _138 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_138].x, cb4_m[_138].y, cb4_m[_138].z, cb4_m[_138].w)) + r3;
    int _157 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_157].x, cb4_m[_157].y, cb4_m[_157].z, cb4_m[_157].w)) + r3;
    int _176 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_176].x, cb4_m[_176].y, cb4_m[_176].z, cb4_m[_176].w)) + r3;
    float4 _205 = r4;
    _205.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _205;
    int _214 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_214].x, cb4_m[_214].y, cb4_m[_214].z, cb4_m[_214].w);
    int _233 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_233].x, cb4_m[_233].y, cb4_m[_233].z, cb4_m[_233].w)) + r5;
    int _253 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_253].x, cb4_m[_253].y, cb4_m[_253].z, cb4_m[_253].w)) + r5;
    int _273 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_273].x, cb4_m[_273].y, cb4_m[_273].z, cb4_m[_273].w)) + r5;
    float4 _301 = r4;
    _301.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _301;
    int _310 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_310].x, cb4_m[_310].y, cb4_m[_310].z, cb4_m[_310].w);
    int _329 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w)) + r6;
    int _349 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_349].x, cb4_m[_349].y, cb4_m[_349].z, cb4_m[_349].w)) + r6;
    int _369 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_369].x, cb4_m[_369].y, cb4_m[_369].z, cb4_m[_369].w)) + r6;
    float4 _397 = r4;
    _397.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _397;
    float3 _403 = r0.xxx * r4.xyz;
    r1 = float4(_403.x, _403.y, _403.z, r1.w);
    float4 _407 = r1;
    _407.w = asfloat(1065353216u);
    r1 = _407;
    float4 _418 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _432 = r4;
    _432.x = mad(_418.w, r1.w, mad(_418.z, r1.z, mad(_418.y, r1.y, _418.x * r1.x)));
    r4 = _432;
    float4 _443 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _457 = r4;
    _457.y = mad(_443.w, r1.w, mad(_443.z, r1.z, mad(_443.y, r1.y, _443.x * r1.x)));
    r4 = _457;
    float4 _468 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _482 = r4;
    _482.z = mad(_468.w, r1.w, mad(_468.z, r1.z, mad(_468.y, r1.y, _468.x * r1.x)));
    r4 = _482;
    float4 _485 = r4;
    _485.w = asfloat(1065353216u);
    r4 = _485;
    float4 _496 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _510 = o0;
    _510.x = mad(_496.w, r4.w, mad(_496.z, r4.z, mad(_496.y, r4.y, _496.x * r4.x)));
    o0 = _510;
    float4 _521 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _535 = o0;
    _535.y = mad(_521.w, r4.w, mad(_521.z, r4.z, mad(_521.y, r4.y, _521.x * r4.x)));
    o0 = _535;
    float4 _546 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _560 = o0;
    _560.z = mad(_546.w, r4.w, mad(_546.z, r4.z, mad(_546.y, r4.y, _546.x * r4.x)));
    o0 = _560;
    float4 _572 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _586 = o0;
    _586.w = mad(_572.w, r4.w, mad(_572.z, r4.z, mad(_572.y, r4.y, _572.x * r4.x)));
    o0 = _586;
    float2 _592 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _592.x, _592.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _613 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _613.x, _613.y, _613.z);
    float4 _629 = r1;
    _629.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _629;
    float4 _644 = r1;
    _644.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _644;
    float4 _659 = r1;
    _659.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _659;
    float3 _665 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _665.x, _665.y, _665.z);
    float4 _681 = r1;
    _681.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _681;
    float4 _686 = r1;
    _686.x = rsqrt(r1.x);
    r1 = _686;
    float3 _692 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _692.x, _692.y, _692.z);
    float3 _702 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _714 = r1;
    _714.x = mad(_702.z, r0.yzw.z, mad(_702.y, r0.yzw.y, _702.x * r0.yzw.x));
    r1 = _714;
    float3 _723 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _735 = r1;
    _735.y = mad(_723.z, r0.yzw.z, mad(_723.y, r0.yzw.y, _723.x * r0.yzw.x));
    r1 = _735;
    float3 _744 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _756 = r1;
    _756.z = mad(_744.z, r0.yzw.z, mad(_744.y, r0.yzw.y, _744.x * r0.yzw.x));
    r1 = _756;
    float4 _771 = r0;
    _771.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _771;
    float4 _776 = r0;
    _776.y = rsqrt(r0.y);
    r0 = _776;
    float3 _782 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _782.x, _782.y, _782.z);
    r1 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _806 = r3;
    _806.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _806;
    float4 _821 = r3;
    _821.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _821;
    float4 _836 = r3;
    _836.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _836;
    float3 _842 = r0.xxx * r3.xyz;
    r1 = float4(_842.x, _842.y, _842.z, r1.w);
    float4 _858 = r0;
    _858.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _858;
    float4 _863 = r0;
    _863.x = rsqrt(r0.x);
    r0 = _863;
    float3 _869 = r0.xxx * r1.xyz;
    r1 = float4(_869.x, _869.y, _869.z, r1.w);
    float3 _879 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _891 = r2;
    _891.x = mad(_879.z, r1.xyz.z, mad(_879.y, r1.xyz.y, _879.x * r1.xyz.x));
    r2 = _891;
    float3 _900 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _912 = r2;
    _912.y = mad(_900.z, r1.xyz.z, mad(_900.y, r1.xyz.y, _900.x * r1.xyz.x));
    r2 = _912;
    float3 _921 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _933 = r2;
    _933.z = mad(_921.z, r1.xyz.z, mad(_921.y, r1.xyz.y, _921.x * r1.xyz.x));
    r2 = _933;
    float4 _948 = r0;
    _948.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _948;
    float4 _953 = r0;
    _953.x = rsqrt(r0.x);
    r0 = _953;
    float3 _959 = r0.xxx * r2.xyz;
    r1 = float4(_959.x, _959.y, _959.z, r1.w);
    float3 _966 = r0.wyz * r1.yzx;
    r2 = float4(_966.x, _966.y, _966.z, r2.w);
    float3 _977 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_977.x, _977.y, _977.z, r2.w);
    float3 _984 = r1.www * r2.xyz;
    r2 = float4(_984.x, _984.y, _984.z, r2.w);
    float3 _998 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_998.x, _998.y, _998.z, r3.w);
    float3 _1013 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1013.x, _1013.y, _1013.z, r4.w);
    float3 _1029 = o2;
    _1029.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o2 = _1029;
    float3 _1038 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1050 = o3;
    _1050.y = mad(_1038.z, r2.xyz.z, mad(_1038.y, r2.xyz.y, _1038.x * r2.xyz.x));
    o3 = _1050;
    float3 _1065 = o2;
    _1065.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o2 = _1065;
    float3 _1074 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1086 = o3;
    _1086.z = mad(_1074.z, r0.yzw.z, mad(_1074.y, r0.yzw.y, _1074.x * r0.yzw.x));
    o3 = _1086;
    float3 _1101 = o2;
    _1101.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o2 = _1101;
    float3 _1110 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _1122 = o3;
    _1122.x = mad(_1110.z, r1.xyz.z, mad(_1110.y, r1.xyz.y, _1110.x * r1.xyz.x));
    o3 = _1122;
    float4 _1131 = r0;
    _1131.x = r4.y * cb0_m[13].x;
    r0 = _1131;
    float4 _1138 = r0;
    _1138.y = r0.x * asfloat(3216550459u);
    r0 = _1138;
    float4 _1143 = r0;
    _1143.y = exp2(r0.y);
    r0 = _1143;
    float4 _1150 = r0;
    _1150.y = (-r0.y) + asfloat(1065353216u);
    r0 = _1150;
    float4 _1157 = r0;
    _1157.x = r0.y / r0.x;
    r0 = _1157;
    float4 _1169 = r0;
    _1169.y = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _1169;
    float4 _1184 = r0;
    _1184.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _1184;
    float4 _1189 = r0;
    _1189.z = sqrt(r0.z);
    r0 = _1189;
    float4 _1197 = r0;
    _1197.z = r0.z * cb0_m[13].y;
    r0 = _1197;
    float4 _1207 = r0;
    _1207.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1207;
    float4 _1219 = r0;
    _1219.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1219;
    float4 _1225 = r0;
    _1225.x = exp2(-r0.x);
    r0 = _1225;
    float4 _1231 = r0;
    _1231.x = min(r0.x, asfloat(1065353216u));
    r0 = _1231;
    float4 _1238 = o3;
    _1238.w = (-r0.x) + asfloat(1065353216u);
    o3 = _1238;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1246 = asfloat(v1);
    shader_in[1] = float4(_1246.x, _1246.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
