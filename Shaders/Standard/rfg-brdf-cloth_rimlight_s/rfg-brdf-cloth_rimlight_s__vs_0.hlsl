cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
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

void vs_main()
{
    float4 _57 = r0;
    _57.w = asfloat(1065353216u);
    r0 = _57;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _67 = r1;
    _67.w = asfloat(1065353216u);
    r1 = _67;
    float4 _82 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _96 = r0;
    _96.x = mad(_82.w, r1.w, mad(_82.z, r1.z, mad(_82.y, r1.y, _82.x * r1.x)));
    r0 = _96;
    float4 _108 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _122 = r0;
    _122.y = mad(_108.w, r1.w, mad(_108.z, r1.z, mad(_108.y, r1.y, _108.x * r1.x)));
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
    float2 _255 = float2(asint(shader_in[1].xy));
    r1 = float4(_255.x, _255.y, r1.z, r1.w);
    float2 _267 = r1.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r1 = float4(_267.x, _267.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _288 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_288.x, _288.y, _288.z, r1.w);
    float3 _298 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _311 = r2;
    _311.x = mad(_298.z, r1.xyz.z, mad(_298.y, r1.xyz.y, _298.x * r1.xyz.x));
    r2 = _311;
    float3 _320 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _332 = r2;
    _332.y = mad(_320.z, r1.xyz.z, mad(_320.y, r1.xyz.y, _320.x * r1.xyz.x));
    r2 = _332;
    float3 _341 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _353 = r2;
    _353.z = mad(_341.z, r1.xyz.z, mad(_341.y, r1.xyz.y, _341.x * r1.xyz.x));
    r2 = _353;
    float4 _368 = r0;
    _368.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _368;
    float4 _373 = r0;
    _373.w = rsqrt(r0.w);
    r0 = _373;
    float3 _379 = r0.www * r2.xyz;
    r1 = float4(_379.x, _379.y, _379.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _398 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _411 = r3;
    _411.x = mad(_398.z, r2.xyz.z, mad(_398.y, r2.xyz.y, _398.x * r2.xyz.x));
    r3 = _411;
    float3 _420 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _432 = r3;
    _432.y = mad(_420.z, r2.xyz.z, mad(_420.y, r2.xyz.y, _420.x * r2.xyz.x));
    r3 = _432;
    float3 _441 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _453 = r3;
    _453.z = mad(_441.z, r2.xyz.z, mad(_441.y, r2.xyz.y, _441.x * r2.xyz.x));
    r3 = _453;
    float4 _468 = r0;
    _468.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _468;
    float4 _473 = r0;
    _473.w = rsqrt(r0.w);
    r0 = _473;
    float3 _479 = r0.www * r3.xyz;
    r2 = float4(_479.x, _479.y, _479.z, r2.w);
    float3 _486 = r1.zxy * r2.yzx;
    r3 = float4(_486.x, _486.y, _486.z, r3.w);
    float3 _497 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_497.x, _497.y, _497.z, r3.w);
    float3 _504 = r2.www * r3.xyz;
    r3 = float4(_504.x, _504.y, _504.z, r3.w);
    float3 _514 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _526 = o2;
    _526.y = mad(_514.z, r3.xyz.z, mad(_514.y, r3.xyz.y, _514.x * r3.xyz.x));
    o2 = _526;
    float3 _535 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _547 = o2;
    _547.z = mad(_535.z, r1.xyz.z, mad(_535.y, r1.xyz.y, _535.x * r1.xyz.x));
    o2 = _547;
    float3 _556 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _568 = o2;
    _568.x = mad(_556.z, r2.xyz.z, mad(_556.y, r2.xyz.y, _556.x * r2.xyz.x));
    o2 = _568;
    float3 _582 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_582.x, _582.y, _582.z, r4.w);
    float3 _597 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_597.x, _597.y, _597.z, r0.w);
    float4 _613 = r0;
    _613.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _613;
    float4 _618 = r0;
    _618.w = rsqrt(r0.w);
    r0 = _618;
    float3 _624 = r0.www * r4.xyz;
    r4 = float4(_624.x, _624.y, _624.z, r4.w);
    float3 _640 = o3;
    _640.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _640;
    float4 _644 = o4;
    _644.x = r2.y;
    o4 = _644;
    float3 _659 = o3;
    _659.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _659;
    float4 _663 = o4;
    _663.z = r1.y;
    o4 = _663;
    float3 _678 = o3;
    _678.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _678;
    float4 _682 = o4;
    _682.y = r3.y;
    o4 = _682;
    float4 _691 = r0;
    _691.w = r0.y * cb0_m[13].x;
    r0 = _691;
    float4 _698 = r1;
    _698.x = r0.w * asfloat(3216550459u);
    r1 = _698;
    float4 _703 = r1;
    _703.x = exp2(r1.x);
    r1 = _703;
    float4 _710 = r1;
    _710.x = (-r1.x) + asfloat(1065353216u);
    r1 = _710;
    float4 _717 = r0;
    _717.w = r1.x / r0.w;
    r0 = _717;
    float4 _729 = r1;
    _729.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _729;
    float4 _744 = r0;
    _744.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _744;
    float4 _749 = r0;
    _749.x = sqrt(r0.x);
    r0 = _749;
    float4 _757 = r0;
    _757.x = r0.x * cb0_m[13].y;
    r0 = _757;
    float4 _767 = r0;
    _767.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _767;
    float4 _779 = r0;
    _779.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _779;
    float4 _785 = r0;
    _785.x = exp2(-r0.x);
    r0 = _785;
    float4 _791 = r0;
    _791.x = min(r0.x, asfloat(1065353216u));
    r0 = _791;
    float4 _798 = o4;
    _798.w = (-r0.x) + asfloat(1065353216u);
    o4 = _798;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _806 = asfloat(v1);
    shader_in[1] = float4(_806.x, _806.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
