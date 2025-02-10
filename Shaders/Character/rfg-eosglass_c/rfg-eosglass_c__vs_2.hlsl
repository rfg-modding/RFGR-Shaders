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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
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
    float4 _66 = r0;
    _66.x = shader_in[5].y + shader_in[5].x;
    r0 = _66;
    float4 _74 = r0;
    _74.x = r0.x + shader_in[5].z;
    r0 = _74;
    float4 _82 = r0;
    _82.x = r0.x + shader_in[5].w;
    r0 = _82;
    float4 _89 = r0;
    _89.x = asfloat(1065353216u) / r0.x;
    r0 = _89;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _99 = r1;
    _99.w = asfloat(1065353216u);
    r1 = _99;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _116 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_116].x, cb4_m[_116].y, cb4_m[_116].z, cb4_m[_116].w);
    int _138 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_138].x, cb4_m[_138].y, cb4_m[_138].z, cb4_m[_138].w)) + r3;
    int _157 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_157].x, cb4_m[_157].y, cb4_m[_157].z, cb4_m[_157].w)) + r3;
    int _176 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_176].x, cb4_m[_176].y, cb4_m[_176].z, cb4_m[_176].w)) + r3;
    float4 _205 = r4;
    _205.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _205;
    int _214 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_214].x, cb4_m[_214].y, cb4_m[_214].z, cb4_m[_214].w);
    int _233 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_233].x, cb4_m[_233].y, cb4_m[_233].z, cb4_m[_233].w)) + r5;
    int _253 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_253].x, cb4_m[_253].y, cb4_m[_253].z, cb4_m[_253].w)) + r5;
    int _273 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_273].x, cb4_m[_273].y, cb4_m[_273].z, cb4_m[_273].w)) + r5;
    float4 _301 = r4;
    _301.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _301;
    int _310 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_310].x, cb4_m[_310].y, cb4_m[_310].z, cb4_m[_310].w);
    int _329 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w)) + r6;
    int _349 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_349].x, cb4_m[_349].y, cb4_m[_349].z, cb4_m[_349].w)) + r6;
    int _369 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_369].x, cb4_m[_369].y, cb4_m[_369].z, cb4_m[_369].w)) + r6;
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
    float3 _600 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _600.x, _600.y, _600.z);
    float3 _614 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_614.x, _614.y, _614.z, r1.w);
    float4 _630 = r4;
    _630.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _630;
    float4 _645 = r4;
    _645.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _645;
    float4 _660 = r4;
    _660.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _660;
    float3 _666 = r0.xxx * r4.xyz;
    r1 = float4(_666.x, _666.y, _666.z, r1.w);
    float4 _682 = r1;
    _682.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _682;
    float4 _687 = r1;
    _687.w = rsqrt(r1.w);
    r1 = _687;
    float3 _693 = r1.www * r1.xyz;
    r1 = float4(_693.x, _693.y, _693.z, r1.w);
    float3 _703 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _715 = r4;
    _715.x = mad(_703.z, r1.xyz.z, mad(_703.y, r1.xyz.y, _703.x * r1.xyz.x));
    r4 = _715;
    float3 _724 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _736 = r4;
    _736.y = mad(_724.z, r1.xyz.z, mad(_724.y, r1.xyz.y, _724.x * r1.xyz.x));
    r4 = _736;
    float3 _745 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _757 = r4;
    _757.z = mad(_745.z, r1.xyz.z, mad(_745.y, r1.xyz.y, _745.x * r1.xyz.x));
    r4 = _757;
    float4 _772 = r1;
    _772.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _772;
    float4 _777 = r1;
    _777.x = rsqrt(r1.x);
    r1 = _777;
    float3 _783 = r1.xxx * r4.xyz;
    r1 = float4(_783.x, _783.y, _783.z, r1.w);
    r4 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _807 = r3;
    _807.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _807;
    float4 _822 = r3;
    _822.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _822;
    float4 _837 = r3;
    _837.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _837;
    float3 _843 = r0.xxx * r3.xyz;
    r2 = float4(_843.x, _843.y, _843.z, r2.w);
    float4 _859 = r0;
    _859.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _859;
    float4 _864 = r0;
    _864.x = rsqrt(r0.x);
    r0 = _864;
    float3 _870 = r0.xxx * r2.xyz;
    r2 = float4(_870.x, _870.y, _870.z, r2.w);
    float3 _880 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _892 = r3;
    _892.x = mad(_880.z, r2.xyz.z, mad(_880.y, r2.xyz.y, _880.x * r2.xyz.x));
    r3 = _892;
    float3 _901 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _913 = r3;
    _913.y = mad(_901.z, r2.xyz.z, mad(_901.y, r2.xyz.y, _901.x * r2.xyz.x));
    r3 = _913;
    float3 _922 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _934 = r3;
    _934.z = mad(_922.z, r2.xyz.z, mad(_922.y, r2.xyz.y, _922.x * r2.xyz.x));
    r3 = _934;
    float4 _949 = r0;
    _949.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _949;
    float4 _954 = r0;
    _954.x = rsqrt(r0.x);
    r0 = _954;
    float3 _960 = r0.xxx * r3.xyz;
    r2 = float4(_960.x, _960.y, _960.z, r2.w);
    float3 _967 = r1.zxy * r2.yzx;
    r3 = float4(_967.x, _967.y, _967.z, r3.w);
    float3 _978 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_978.x, _978.y, _978.z, r3.w);
    float3 _985 = r4.www * r3.xyz;
    r3 = float4(_985.x, _985.y, _985.z, r3.w);
    float4 _1001 = r0;
    _1001.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1001;
    float4 _1006 = r0;
    _1006.x = rsqrt(r0.x);
    r0 = _1006;
    float3 _1012 = r0.xxx * r0.yzw;
    r0 = float4(_1012.x, _1012.y, _1012.z, r0.w);
    float3 _1028 = o1;
    _1028.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o1 = _1028;
    float3 _1037 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1049 = o2;
    _1049.y = mad(_1037.z, r3.xyz.z, mad(_1037.y, r3.xyz.y, _1037.x * r3.xyz.x));
    o2 = _1049;
    float3 _1064 = o1;
    _1064.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o1 = _1064;
    float3 _1073 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1085 = o2;
    _1085.x = mad(_1073.z, r2.xyz.z, mad(_1073.y, r2.xyz.y, _1073.x * r2.xyz.x));
    o2 = _1085;
    float4 _1100 = r0;
    _1100.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _1100;
    float3 _1104 = o1;
    _1104.z = r0.w;
    o1 = _1104;
    float4 _1111 = r0;
    _1111.w = r0.w + r0.w;
    r0 = _1111;
    float3 _1121 = (r1.xyz * (-r0.www)) + r0.xyz;
    r0 = float4(_1121.x, _1121.y, _1121.z, r0.w);
    float3 _1131 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1143 = o2;
    _1143.z = mad(_1131.z, r1.xyz.z, mad(_1131.y, r1.xyz.y, _1131.x * r1.xyz.x));
    o2 = _1143;
    o3 = r0.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u));
    float2 _1155 = float2(asint(shader_in[1].xy));
    r0 = float4(_1155.x, _1155.y, r0.z, r0.w);
    float2 _1164 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_1164.x, _1164.y, o4.z, o4.w);
    float2 _1172 = float2(asint(shader_in[4].xy));
    r0 = float4(_1172.x, _1172.y, r0.z, r0.w);
    float2 _1178 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _1178.x, _1178.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1187 = asfloat(v1);
    shader_in[1] = float4(_1187.x, _1187.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _1198 = asfloat(v4);
    shader_in[4] = float4(_1198.x, _1198.y, shader_in[4].z, shader_in[4].w);
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
