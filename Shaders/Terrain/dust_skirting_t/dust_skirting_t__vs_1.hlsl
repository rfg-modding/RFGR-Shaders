cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float2 _55 = float2(asint(shader_in[0].xy));
    r0 = float4(_55.x, _55.y, r0.z, r0.w);
    float4 _64 = r0;
    _64.y = r0.y + asfloat(1191182336u);
    r0 = _64;
    float4 _72 = r1;
    _72.y = r0.x * asfloat(1015021568u);
    r1 = _72;
    float4 _79 = r0;
    _79.x = r0.y * asfloat(998244352u);
    r0 = _79;
    float4 _84 = r1;
    _84.z = trunc(r0.x);
    r1 = _84;
    float4 _95 = r1;
    _95.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _95;
    float4 _99 = r1;
    _99.w = asfloat(1065353216u);
    r1 = _99;
    float4 _114 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _128 = r0;
    _128.x = mad(_114.w, r1.w, mad(_114.z, r1.z, mad(_114.y, r1.y, _114.x * r1.x)));
    r0 = _128;
    float4 _140 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _154 = r0;
    _154.y = mad(_140.w, r1.w, mad(_140.z, r1.z, mad(_140.y, r1.y, _140.x * r1.x)));
    r0 = _154;
    float4 _166 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _180 = r0;
    _180.z = mad(_166.w, r1.w, mad(_166.z, r1.z, mad(_166.y, r1.y, _166.x * r1.x)));
    r0 = _180;
    float3 _194 = r1.xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_194.x, _194.y, _194.z, r1.w);
    float4 _198 = r0;
    _198.w = asfloat(1065353216u);
    r0 = _198;
    float4 _209 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _223 = o0;
    _223.x = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    o0 = _223;
    float4 _234 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _248 = o0;
    _248.y = mad(_234.w, r0.w, mad(_234.z, r0.z, mad(_234.y, r0.y, _234.x * r0.x)));
    o0 = _248;
    float4 _259 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _273 = o0;
    _273.z = mad(_259.w, r0.w, mad(_259.z, r0.z, mad(_259.y, r0.y, _259.x * r0.x)));
    o0 = _273;
    float4 _284 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _298 = o0;
    _298.w = mad(_284.w, r0.w, mad(_284.z, r0.z, mad(_284.y, r0.y, _284.x * r0.x)));
    o0 = _298;
    float3 _312 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_312.x, _312.y, _312.z, r0.w);
    float3 _324 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _335 = r2;
    _335.x = mad(r1.xyz.z, _324.z, mad(r1.xyz.y, _324.y, r1.xyz.x * _324.x));
    r2 = _335;
    float3 _346 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _356 = r2;
    _356.z = mad(r1.xyz.z, _346.z, mad(r1.xyz.y, _346.y, r1.xyz.x * _346.x));
    r2 = _356;
    float3 _367 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _377 = r0;
    _377.w = mad(r1.xyz.z, _367.z, mad(r1.xyz.y, _367.y, r1.xyz.x * _367.x));
    r0 = _377;
    float4 _386 = r0;
    _386.w = r0.w * cb5_m[5].y;
    r0 = _386;
    float2 _396 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_396.x, r1.y, _396.y, r1.w);
    float4 _401 = r1;
    _401.w = asfloat(3212836864u);
    r1 = _401;
    float4 _408 = r1;
    _408.y = r0.w * r1.w;
    r1 = _408;
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _419 = o2;
    _419.w = r1.z;
    o2 = _419;
    float3 _433 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_433.x, _433.y, _433.z, r1.w);
    float3 _452 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_452.x, _452.y, _452.z, r1.w);
    float4 _468 = r0;
    _468.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _468;
    float4 _473 = r0;
    _473.w = rsqrt(r0.w);
    r0 = _473;
    float3 _479 = r0.www * r1.xyz;
    r1 = float4(_479.x, _479.y, _479.z, r1.w);
    float3 _487 = r1.yzx * shader_in[1].zxy;
    r2 = float4(_487.x, _487.y, _487.z, r2.w);
    float3 _499 = (shader_in[1].yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_499.x, _499.y, _499.z, r2.w);
    float4 _515 = r0;
    _515.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _515;
    float4 _520 = r0;
    _520.w = rsqrt(r0.w);
    r0 = _520;
    float3 _526 = r0.www * r2.xyz;
    r2 = float4(_526.x, _526.y, _526.z, r2.w);
    float3 _536 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _548 = o2;
    _548.x = mad(_536.z, r2.xyz.z, mad(_536.y, r2.xyz.y, _536.x * r2.xyz.x));
    o2 = _548;
    float3 _557 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _570 = o2;
    _570.z = mad(_557.z, shader_in[1].xyz.z, mad(_557.y, shader_in[1].xyz.y, _557.x * shader_in[1].xyz.x));
    o2 = _570;
    float3 _579 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _591 = o2;
    _591.y = mad(_579.z, r1.xyz.z, mad(_579.y, r1.xyz.y, _579.x * r1.xyz.x));
    o2 = _591;
    float3 _600 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _612 = o4;
    _612.y = mad(_600.z, r1.xyz.z, mad(_600.y, r1.xyz.y, _600.x * r1.xyz.x));
    o4 = _612;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    float3 _632 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _644 = r1;
    _644.x = mad(_632.z, r2.xyz.z, mad(_632.y, r2.xyz.y, _632.x * r2.xyz.x));
    r1 = _644;
    float3 _653 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _665 = r1;
    _665.y = mad(_653.z, r2.xyz.z, mad(_653.y, r2.xyz.y, _653.x * r2.xyz.x));
    r1 = _665;
    float3 _674 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _686 = r1;
    _686.z = mad(_674.z, r2.xyz.z, mad(_674.y, r2.xyz.y, _674.x * r2.xyz.x));
    r1 = _686;
    float4 _701 = r0;
    _701.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _701;
    float4 _706 = r0;
    _706.w = rsqrt(r0.w);
    r0 = _706;
    float3 _712 = r0.www * r1.xyz;
    r1 = float4(_712.x, _712.y, _712.z, r1.w);
    float3 _722 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _734 = o4;
    _734.x = mad(_722.z, r1.xyz.z, mad(_722.y, r1.xyz.y, _722.x * r1.xyz.x));
    o4 = _734;
    float4 _743 = r0;
    _743.w = r0.y * cb0_m[13].x;
    r0 = _743;
    float4 _750 = r1;
    _750.x = r0.w * asfloat(3216550459u);
    r1 = _750;
    float4 _755 = r1;
    _755.x = exp2(r1.x);
    r1 = _755;
    float4 _762 = r1;
    _762.x = (-r1.x) + asfloat(1065353216u);
    r1 = _762;
    float4 _769 = r0;
    _769.w = r1.x / r0.w;
    r0 = _769;
    float4 _781 = r1;
    _781.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _781;
    float4 _796 = r0;
    _796.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _796;
    float4 _801 = r0;
    _801.x = sqrt(r0.x);
    r0 = _801;
    float4 _809 = r0;
    _809.x = r0.x * cb0_m[13].y;
    r0 = _809;
    float4 _819 = r0;
    _819.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _819;
    float4 _831 = r0;
    _831.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _831;
    float4 _837 = r0;
    _837.x = exp2(-r0.x);
    r0 = _837;
    float4 _843 = r0;
    _843.x = min(r0.x, asfloat(1065353216u));
    r0 = _843;
    float4 _850 = o4;
    _850.w = (-r0.x) + asfloat(1065353216u);
    o4 = _850;
    float3 _859 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _872 = r0;
    _872.x = mad(_859.z, shader_in[1].xyz.z, mad(_859.y, shader_in[1].xyz.y, _859.x * shader_in[1].xyz.x));
    r0 = _872;
    float3 _881 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _894 = r0;
    _894.y = mad(_881.z, shader_in[1].xyz.z, mad(_881.y, shader_in[1].xyz.y, _881.x * shader_in[1].xyz.x));
    r0 = _894;
    float3 _903 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _916 = r0;
    _916.z = mad(_903.z, shader_in[1].xyz.z, mad(_903.y, shader_in[1].xyz.y, _903.x * shader_in[1].xyz.x));
    r0 = _916;
    float4 _931 = r0;
    _931.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _931;
    float4 _936 = r0;
    _936.w = rsqrt(r0.w);
    r0 = _936;
    float3 _942 = r0.www * r0.xyz;
    r0 = float4(_942.x, _942.y, _942.z, r0.w);
    float3 _952 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _964 = o4;
    _964.z = mad(_952.z, r0.xyz.z, mad(_952.y, r0.xyz.y, _952.x * r0.xyz.x));
    o4 = _964;
}

void vert_main()
{
    float2 _968 = asfloat(v0);
    shader_in[0] = float4(_968.x, _968.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
