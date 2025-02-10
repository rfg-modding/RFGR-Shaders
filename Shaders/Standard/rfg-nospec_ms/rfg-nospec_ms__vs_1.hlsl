cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float3 v6;
static float3 v7;
static float3 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
    float3 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _66 = r0;
    _66.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _66;
    float3 _79 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_79.x, _79.y, _79.z, r0.w);
    float4 _84 = r0;
    _84.w = asfloat(1065353216u);
    r0 = _84;
    float4 _99 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _114 = r1;
    _114.x = mad(_99.w, r0.w, mad(_99.z, r0.z, mad(_99.y, r0.y, _99.x * r0.x)));
    r1 = _114;
    float4 _126 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _140 = r1;
    _140.y = mad(_126.w, r0.w, mad(_126.z, r0.z, mad(_126.y, r0.y, _126.x * r0.x)));
    r1 = _140;
    float4 _152 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _166 = r1;
    _166.z = mad(_152.w, r0.w, mad(_152.z, r0.z, mad(_152.y, r0.y, _152.x * r0.x)));
    r1 = _166;
    float4 _169 = r1;
    _169.w = asfloat(1065353216u);
    r1 = _169;
    float4 _180 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _194 = o0;
    _194.x = mad(_180.w, r1.w, mad(_180.z, r1.z, mad(_180.y, r1.y, _180.x * r1.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _219 = o0;
    _219.y = mad(_205.w, r1.w, mad(_205.z, r1.z, mad(_205.y, r1.y, _205.x * r1.x)));
    o0 = _219;
    float4 _230 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _244 = o0;
    _244.z = mad(_230.w, r1.w, mad(_230.z, r1.z, mad(_230.y, r1.y, _230.x * r1.x)));
    o0 = _244;
    float4 _256 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _270 = o0;
    _270.w = mad(_256.w, r1.w, mad(_256.z, r1.z, mad(_256.y, r1.y, _256.x * r1.x)));
    o0 = _270;
    float2 _276 = float2(asint(shader_in[3].xy));
    r0 = float4(_276.x, _276.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _298 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_298.x, _298.y, _298.z, r0.w);
    float3 _308 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_308.x, _308.y, _308.z, r2.w);
    float3 _320 = (shader_in[7].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_320.x, _320.y, _320.z, r0.w);
    float3 _330 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _342 = r2;
    _342.x = mad(_330.z, r0.xyz.z, mad(_330.y, r0.xyz.y, _330.x * r0.xyz.x));
    r2 = _342;
    float3 _351 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _363 = r2;
    _363.y = mad(_351.z, r0.xyz.z, mad(_351.y, r0.xyz.y, _351.x * r0.xyz.x));
    r2 = _363;
    float3 _372 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _384 = r2;
    _384.z = mad(_372.z, r0.xyz.z, mad(_372.y, r0.xyz.y, _372.x * r0.xyz.x));
    r2 = _384;
    float4 _399 = r0;
    _399.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _399;
    float4 _404 = r0;
    _404.x = rsqrt(r0.x);
    r0 = _404;
    float3 _410 = r0.xxx * r2.xyz;
    r0 = float4(_410.x, _410.y, _410.z, r0.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _430 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _443 = r3;
    _443.x = mad(_430.z, r2.xyz.z, mad(_430.y, r2.xyz.y, _430.x * r2.xyz.x));
    r3 = _443;
    float3 _452 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _464 = r3;
    _464.y = mad(_452.z, r2.xyz.z, mad(_452.y, r2.xyz.y, _452.x * r2.xyz.x));
    r3 = _464;
    float3 _473 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _485 = r3;
    _485.z = mad(_473.z, r2.xyz.z, mad(_473.y, r2.xyz.y, _473.x * r2.xyz.x));
    r3 = _485;
    float4 _500 = r0;
    _500.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _500;
    float4 _505 = r0;
    _505.w = rsqrt(r0.w);
    r0 = _505;
    float3 _511 = r0.www * r3.xyz;
    r2 = float4(_511.x, _511.y, _511.z, r2.w);
    float3 _518 = r0.zxy * r2.yzx;
    r3 = float4(_518.x, _518.y, _518.z, r3.w);
    float3 _529 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_529.x, _529.y, _529.z, r3.w);
    float3 _536 = r2.www * r3.xyz;
    r3 = float4(_536.x, _536.y, _536.z, r3.w);
    float3 _550 = (-r1.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_550.x, _550.y, _550.z, r4.w);
    float3 _566 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_566.x, _566.y, _566.z, r1.w);
    float3 _582 = o2;
    _582.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _582;
    float3 _591 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _603 = o3;
    _603.y = mad(_591.z, r3.xyz.z, mad(_591.y, r3.xyz.y, _591.x * r3.xyz.x));
    o3 = _603;
    float3 _618 = o2;
    _618.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o2 = _618;
    float3 _627 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _639 = o3;
    _639.z = mad(_627.z, r0.xyz.z, mad(_627.y, r0.xyz.y, _627.x * r0.xyz.x));
    o3 = _639;
    float3 _654 = o2;
    _654.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _654;
    float3 _663 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _675 = o3;
    _675.x = mad(_663.z, r2.xyz.z, mad(_663.y, r2.xyz.y, _663.x * r2.xyz.x));
    o3 = _675;
    float4 _684 = r0;
    _684.x = r1.y * cb0_m[13].x;
    r0 = _684;
    float4 _691 = r0;
    _691.y = r0.x * asfloat(3216550459u);
    r0 = _691;
    float4 _696 = r0;
    _696.y = exp2(r0.y);
    r0 = _696;
    float4 _703 = r0;
    _703.y = (-r0.y) + asfloat(1065353216u);
    r0 = _703;
    float4 _710 = r0;
    _710.x = r0.y / r0.x;
    r0 = _710;
    float4 _722 = r0;
    _722.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _722;
    float4 _737 = r0;
    _737.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _737;
    float4 _742 = r0;
    _742.z = sqrt(r0.z);
    r0 = _742;
    float4 _750 = r0;
    _750.z = r0.z * cb0_m[13].y;
    r0 = _750;
    float4 _760 = r0;
    _760.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _760;
    float4 _772 = r0;
    _772.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _772;
    float4 _778 = r0;
    _778.x = exp2(-r0.x);
    r0 = _778;
    float4 _784 = r0;
    _784.x = min(r0.x, asfloat(1065353216u));
    r0 = _784;
    float4 _791 = o3;
    _791.w = (-r0.x) + asfloat(1065353216u);
    o3 = _791;
    float2 _797 = float2(asint(shader_in[2].xy));
    r0 = float4(_797.x, _797.y, r0.z, r0.w);
    float2 _808 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_808.x, _808.y, r0.z, r0.w);
    float2 _814 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _814.x, _814.y);
    float2 _821 = float2(asint(shader_in[1].xy));
    r0 = float4(_821.x, _821.y, r0.z, r0.w);
    float2 _827 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_827.x, _827.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _836 = asfloat(v1);
    shader_in[1] = float4(_836.x, _836.y, shader_in[1].z, shader_in[1].w);
    float2 _841 = asfloat(v2);
    shader_in[2] = float4(_841.x, _841.y, shader_in[2].z, shader_in[2].w);
    float2 _846 = asfloat(v3);
    shader_in[3] = float4(_846.x, _846.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
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
