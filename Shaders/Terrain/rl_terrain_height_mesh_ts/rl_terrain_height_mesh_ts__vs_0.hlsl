cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
    float4 _83 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _97 = r0;
    _97.y = mad(_83.w, r1.w, mad(_83.z, r1.z, mad(_83.y, r1.y, _83.x * r1.x)));
    r0 = _97;
    float4 _108 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _122 = r0;
    _122.x = mad(_108.w, r1.w, mad(_108.z, r1.z, mad(_108.y, r1.y, _108.x * r1.x)));
    r0 = _122;
    float4 _134 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _148 = r0;
    _148.z = mad(_134.w, r1.w, mad(_134.z, r1.z, mad(_134.y, r1.y, _134.x * r1.x)));
    r0 = _148;
    float4 _159 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _173 = o0;
    _173.x = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _184 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _198 = o0;
    _198.y = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _209 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _223 = o0;
    _223.z = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    o0 = _223;
    float4 _235 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _249 = o0;
    _249.w = mad(_235.w, r0.w, mad(_235.z, r0.z, mad(_235.y, r0.y, _235.x * r0.x)));
    o0 = _249;
    float2 _260 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_260.x, _260.y, r1.z, r1.w);
    float2 _277 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r1 = float4(r1.x, r1.y, _277.x, _277.y);
    o1 = r1.zw * float2(cb2_m[7].x, cb2_m[7].y);
    float3 _301 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_301.x, _301.y, _301.z, r2.w);
    float3 _316 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_316.x, _316.y, _316.z, r0.w);
    float4 _332 = r0;
    _332.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _332;
    float4 _337 = r0;
    _337.w = rsqrt(r0.w);
    r0 = _337;
    float3 _343 = r0.www * r2.xyz;
    r2 = float4(_343.x, _343.y, _343.z, r2.w);
    float3 _357 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_357.x, _357.y, _357.z, r3.w);
    float3 _368 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _381 = r4;
    _381.x = mad(_368.z, r3.xyz.z, mad(_368.y, r3.xyz.y, _368.x * r3.xyz.x));
    r4 = _381;
    float3 _390 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _402 = r4;
    _402.y = mad(_390.z, r3.xyz.z, mad(_390.y, r3.xyz.y, _390.x * r3.xyz.x));
    r4 = _402;
    float3 _411 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _423 = r4;
    _423.z = mad(_411.z, r3.xyz.z, mad(_411.y, r3.xyz.y, _411.x * r3.xyz.x));
    r4 = _423;
    float4 _438 = r0;
    _438.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _438;
    float4 _443 = r0;
    _443.w = rsqrt(r0.w);
    r0 = _443;
    float3 _449 = r0.www * r4.xyz;
    r3 = float4(_449.x, _449.y, _449.z, r3.w);
    float3 _456 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r4 = float4(_456.x, _456.y, _456.z, r4.w);
    float3 _467 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r4.xyz);
    r4 = float4(_467.x, _467.y, _467.z, r4.w);
    float4 _480 = r0;
    _480.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _480;
    float4 _485 = r0;
    _485.w = rsqrt(r0.w);
    r0 = _485;
    float3 _491 = r0.www * r4.xyz;
    r4 = float4(_491.x, _491.y, _491.z, r4.w);
    float3 _499 = r3.yzx * (-r4.xyz);
    r5 = float4(_499.x, _499.y, _499.z, r5.w);
    float3 _512 = ((-r4.zxy) * r3.zxy) + (-r5.xyz);
    r5 = float4(_512.x, _512.y, _512.z, r5.w);
    float3 _528 = o2;
    _528.x = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o2 = _528;
    float3 _543 = o2;
    _543.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o2 = _543;
    float2 _549 = -r4.xz;
    float3 _556 = o2;
    _556.y = mad(r2.zy.y, _549.y, r2.zy.x * _549.x);
    o2 = _556;
    float4 _560 = o3;
    _560.z = r3.y;
    o3 = _560;
    float3 _569 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _581 = o4;
    _581.z = mad(_569.z, r3.xyz.z, mad(_569.y, r3.xyz.y, _569.x * r3.xyz.x));
    o4 = _581;
    float4 _586 = o3;
    _586.y = -r4.z;
    o3 = _586;
    float2 _593 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _596 = -r4.xz;
    float4 _603 = o4;
    _603.y = mad(_593.y, _596.y, _593.x * _596.x);
    o4 = _603;
    float4 _607 = o3;
    _607.x = r5.y;
    o3 = _607;
    float3 _616 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _628 = o4;
    _628.x = mad(_616.z, r5.xyz.z, mad(_616.y, r5.xyz.y, _616.x * r5.xyz.x));
    o4 = _628;
    float4 _635 = r0;
    _635.w = float(asint(shader_in[2].x));
    r0 = _635;
    float4 _642 = o3;
    _642.w = r0.w * asfloat(981467136u);
    o3 = _642;
    float4 _651 = r0;
    _651.w = r0.y * cb0_m[13].x;
    r0 = _651;
    float4 _658 = r1;
    _658.z = r0.w * asfloat(3216550459u);
    r1 = _658;
    float4 _663 = r1;
    _663.z = exp2(r1.z);
    r1 = _663;
    float4 _670 = r1;
    _670.z = (-r1.z) + asfloat(1065353216u);
    r1 = _670;
    float4 _677 = r0;
    _677.w = r1.z / r0.w;
    r0 = _677;
    float4 _689 = r1;
    _689.z = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _689;
    float4 _704 = r0;
    _704.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _704;
    float4 _709 = r0;
    _709.x = sqrt(r0.x);
    r0 = _709;
    float4 _717 = r0;
    _717.x = r0.x * cb0_m[13].y;
    r0 = _717;
    float4 _727 = r0;
    _727.y = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _727;
    float4 _739 = r0;
    _739.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _739;
    float4 _745 = r0;
    _745.x = exp2(-r0.x);
    r0 = _745;
    float4 _751 = r0;
    _751.x = min(r0.x, asfloat(1065353216u));
    r0 = _751;
    float4 _758 = o4;
    _758.w = (-r0.x) + asfloat(1065353216u);
    o4 = _758;
    float2 _767 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_767.x, _767.y, r0.z, r0.w);
    float2 _780 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_780.x, _780.y, r0.z, r0.w);
    float2 _791 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _791.x, _791.y);
    float2 _804 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_804.x, _804.y, r0.z, r0.w);
    float2 _815 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_815.x, _815.y, o5.z, o5.w);
    float2 _829 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_829.x, _829.y, r0.z, r0.w);
    float2 _843 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _843.x, _843.y);
    float2 _854 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _854.x, _854.y);
    float2 _865 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_865.x, _865.y, o6.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _880 = shader_in[2];
    _880.x = asfloat(v2);
    shader_in[2] = _880;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
