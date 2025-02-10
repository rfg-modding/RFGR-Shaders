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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
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
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _68 = r0;
    _68.x = shader_in[5].y + shader_in[5].x;
    r0 = _68;
    float4 _76 = r0;
    _76.x = r0.x + shader_in[5].z;
    r0 = _76;
    float4 _84 = r0;
    _84.x = r0.x + shader_in[5].w;
    r0 = _84;
    float4 _91 = r0;
    _91.x = asfloat(1065353216u) / r0.x;
    r0 = _91;
    r1 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _108 = asint(r1.y);
    r2 = shader_in[5].yyyy * float4(cb4_m[_108].x, cb4_m[_108].y, cb4_m[_108].z, cb4_m[_108].w);
    int _131 = asint(r1.x);
    r2 = (shader_in[5].xxxx * float4(cb4_m[_131].x, cb4_m[_131].y, cb4_m[_131].z, cb4_m[_131].w)) + r2;
    int _150 = asint(r1.z);
    r2 = (shader_in[5].zzzz * float4(cb4_m[_150].x, cb4_m[_150].y, cb4_m[_150].z, cb4_m[_150].w)) + r2;
    int _169 = asint(r1.w);
    r2 = (shader_in[5].wwww * float4(cb4_m[_169].x, cb4_m[_169].y, cb4_m[_169].z, cb4_m[_169].w)) + r2;
    r3 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r3.w);
    float4 _190 = r3;
    _190.w = asfloat(1065353216u);
    r3 = _190;
    float4 _206 = r2;
    _206.x = mad(r2.w, r3.w, mad(r2.z, r3.z, mad(r2.y, r3.y, r2.x * r3.x)));
    r2 = _206;
    int _215 = asint(r1.y) + 1;
    r4 = shader_in[5].yyyy * float4(cb4_m[_215].x, cb4_m[_215].y, cb4_m[_215].z, cb4_m[_215].w);
    int _234 = asint(r1.x) + 1;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_234].x, cb4_m[_234].y, cb4_m[_234].z, cb4_m[_234].w)) + r4;
    int _254 = asint(r1.z) + 1;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_254].x, cb4_m[_254].y, cb4_m[_254].z, cb4_m[_254].w)) + r4;
    int _274 = asint(r1.w) + 1;
    r4 = (shader_in[5].wwww * float4(cb4_m[_274].x, cb4_m[_274].y, cb4_m[_274].z, cb4_m[_274].w)) + r4;
    float4 _302 = r2;
    _302.y = mad(r4.w, r3.w, mad(r4.z, r3.z, mad(r4.y, r3.y, r4.x * r3.x)));
    r2 = _302;
    int _311 = asint(r1.y) + 2;
    r4 = shader_in[5].yyyy * float4(cb4_m[_311].x, cb4_m[_311].y, cb4_m[_311].z, cb4_m[_311].w);
    int _329 = asint(r1.x) + 2;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_329].x, cb4_m[_329].y, cb4_m[_329].z, cb4_m[_329].w)) + r4;
    int _349 = asint(r1.z) + 2;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_349].x, cb4_m[_349].y, cb4_m[_349].z, cb4_m[_349].w)) + r4;
    int _369 = asint(r1.w) + 2;
    r1 = (shader_in[5].wwww * float4(cb4_m[_369].x, cb4_m[_369].y, cb4_m[_369].z, cb4_m[_369].w)) + r4;
    float4 _397 = r2;
    _397.z = mad(r1.w, r3.w, mad(r1.z, r3.z, mad(r1.y, r3.y, r1.x * r3.x)));
    r2 = _397;
    float3 _403 = r0.xxx * r2.xyz;
    r0 = float4(_403.x, _403.y, _403.z, r0.w);
    float4 _407 = r0;
    _407.w = asfloat(1065353216u);
    r0 = _407;
    float4 _418 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _432 = r1;
    _432.x = mad(_418.w, r0.w, mad(_418.z, r0.z, mad(_418.y, r0.y, _418.x * r0.x)));
    r1 = _432;
    float4 _443 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _457 = r1;
    _457.y = mad(_443.w, r0.w, mad(_443.z, r0.z, mad(_443.y, r0.y, _443.x * r0.x)));
    r1 = _457;
    float4 _468 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _482 = r1;
    _482.z = mad(_468.w, r0.w, mad(_468.z, r0.z, mad(_468.y, r0.y, _468.x * r0.x)));
    r1 = _482;
    float4 _485 = r1;
    _485.w = asfloat(1065353216u);
    r1 = _485;
    float4 _496 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _510 = o0;
    _510.x = mad(_496.w, r1.w, mad(_496.z, r1.z, mad(_496.y, r1.y, _496.x * r1.x)));
    o0 = _510;
    float4 _521 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _535 = o0;
    _535.y = mad(_521.w, r1.w, mad(_521.z, r1.z, mad(_521.y, r1.y, _521.x * r1.x)));
    o0 = _535;
    float4 _546 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _560 = o0;
    _560.z = mad(_546.w, r1.w, mad(_546.z, r1.z, mad(_546.y, r1.y, _546.x * r1.x)));
    o0 = _560;
    float4 _572 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _586 = o0;
    _586.w = mad(_572.w, r1.w, mad(_572.z, r1.z, mad(_572.y, r1.y, _572.x * r1.x)));
    o0 = _586;
    float2 _592 = float2(asint(shader_in[1].xy));
    r0 = float4(_592.x, _592.y, r0.z, r0.w);
    float2 _603 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_603.x, _603.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _633 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_633.x, _633.y, _633.z, r0.w);
    float3 _647 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_647.x, _647.y, _647.z, r1.w);
    float4 _657 = r0;
    _657.w = r0.y * cb0_m[13].x;
    r0 = _657;
    float4 _664 = r1;
    _664.w = r0.w * asfloat(3216550459u);
    r1 = _664;
    float4 _669 = r1;
    _669.w = exp2(r1.w);
    r1 = _669;
    float4 _676 = r1;
    _676.w = (-r1.w) + asfloat(1065353216u);
    r1 = _676;
    float4 _683 = r0;
    _683.w = r1.w / r0.w;
    r0 = _683;
    float4 _695 = r1;
    _695.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _695;
    float4 _710 = r0;
    _710.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _710;
    float4 _715 = r0;
    _715.x = sqrt(r0.x);
    r0 = _715;
    float4 _723 = r0;
    _723.x = r0.x * cb0_m[13].y;
    r0 = _723;
    float4 _733 = r0;
    _733.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _733;
    float4 _745 = r0;
    _745.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _745;
    float4 _751 = r0;
    _751.x = exp2(-r0.x);
    r0 = _751;
    float4 _757 = r0;
    _757.x = min(r0.x, asfloat(1065353216u));
    r0 = _757;
    float4 _764 = o3;
    _764.w = (-r0.x) + asfloat(1065353216u);
    o3 = _764;
    float4 _779 = r0;
    _779.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _779;
    float4 _784 = r0;
    _784.x = rsqrt(r0.x);
    r0 = _784;
    float3 _790 = r0.xxx * r1.xyz;
    o3 = float4(_790.x, _790.y, _790.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _799 = asfloat(v1);
    shader_in[1] = float4(_799.x, _799.y, shader_in[1].z, shader_in[1].w);
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
