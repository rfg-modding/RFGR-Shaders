cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float4 o2;
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
static float4 r6;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
    float4 _82 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _96 = r0;
    _96.y = mad(_82.w, r1.w, mad(_82.z, r1.z, mad(_82.y, r1.y, _82.x * r1.x)));
    r0 = _96;
    float4 _107 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _121 = r0;
    _121.x = mad(_107.w, r1.w, mad(_107.z, r1.z, mad(_107.y, r1.y, _107.x * r1.x)));
    r0 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r0;
    _147.z = mad(_133.w, r1.w, mad(_133.z, r1.z, mad(_133.y, r1.y, _133.x * r1.x)));
    r0 = _147;
    float4 _158 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _172 = o0;
    _172.x = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _183 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _197 = o0;
    _197.y = mad(_183.w, r0.w, mad(_183.z, r0.z, mad(_183.y, r0.y, _183.x * r0.x)));
    o0 = _197;
    float4 _208 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _222 = o0;
    _222.z = mad(_208.w, r0.w, mad(_208.z, r0.z, mad(_208.y, r0.y, _208.x * r0.x)));
    o0 = _222;
    float4 _234 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _248 = o0;
    _248.w = mad(_234.w, r0.w, mad(_234.z, r0.z, mad(_234.y, r0.y, _234.x * r0.x)));
    o0 = _248;
    float2 _259 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_259.x, _259.y, r1.z, r1.w);
    float2 _276 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r1 = float4(r1.x, r1.y, _276.x, _276.y);
    o1 = r1.zw * float2(cb2_m[7].x, cb2_m[7].y);
    float3 _299 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_299.x, _299.y, _299.z, r2.w);
    float3 _310 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _323 = r3;
    _323.x = mad(_310.z, r2.xyz.z, mad(_310.y, r2.xyz.y, _310.x * r2.xyz.x));
    r3 = _323;
    float3 _332 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _344 = r3;
    _344.y = mad(_332.z, r2.xyz.z, mad(_332.y, r2.xyz.y, _332.x * r2.xyz.x));
    r3 = _344;
    float3 _353 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _365 = r3;
    _365.z = mad(_353.z, r2.xyz.z, mad(_353.y, r2.xyz.y, _353.x * r2.xyz.x));
    r3 = _365;
    float4 _380 = r0;
    _380.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _380;
    float4 _385 = r0;
    _385.w = rsqrt(r0.w);
    r0 = _385;
    float3 _391 = r0.www * r3.xyz;
    r2 = float4(_391.x, _391.y, _391.z, r2.w);
    float3 _398 = r2.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r3 = float4(_398.x, _398.y, _398.z, r3.w);
    float3 _409 = (r2.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r3.xyz);
    r3 = float4(_409.x, _409.y, _409.z, r3.w);
    float4 _422 = r0;
    _422.w = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _422;
    float4 _427 = r0;
    _427.w = rsqrt(r0.w);
    r0 = _427;
    float3 _433 = r0.www * r3.xyz;
    r3 = float4(_433.x, _433.y, _433.z, r3.w);
    float3 _441 = r2.yzx * (-r3.xyz);
    r4 = float4(_441.x, _441.y, _441.z, r4.w);
    float3 _454 = ((-r3.zxy) * r2.zxy) + (-r4.xyz);
    r4 = float4(_454.x, _454.y, _454.z, r4.w);
    float3 _464 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _476 = o2;
    _476.x = mad(_464.z, r4.xyz.z, mad(_464.y, r4.xyz.y, _464.x * r4.xyz.x));
    o2 = _476;
    float3 _490 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r5 = float4(_490.x, _490.y, _490.z, r5.w);
    float4 _507 = r0;
    _507.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _507;
    float4 _512 = o2;
    _512.w = sqrt(r0.w);
    o2 = _512;
    float4 _517 = r0;
    _517.w = rsqrt(r0.w);
    r0 = _517;
    float3 _523 = r0.www * r5.xyz;
    r5 = float4(_523.x, _523.y, _523.z, r5.w);
    float2 _531 = float2(cb1_m[1].z, cb1_m[1].y);
    float2 _534 = -r3.xz;
    float4 _541 = o2;
    _541.y = mad(_531.y, _534.y, _531.x * _534.x);
    o2 = _541;
    float3 _550 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _562 = o2;
    _562.z = mad(_550.z, r2.xyz.z, mad(_550.y, r2.xyz.y, _550.x * r2.xyz.x));
    o2 = _562;
    float3 _575 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r6 = float4(_575.x, _575.y, _575.z, r6.w);
    float3 _590 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_590.x, _590.y, _590.z, r0.w);
    float4 _600 = r0;
    _600.w = r6.y * cb0_m[13].x;
    r0 = _600;
    float4 _607 = r1;
    _607.z = r0.w * asfloat(3216550459u);
    r1 = _607;
    float4 _612 = r1;
    _612.z = exp2(r1.z);
    r1 = _612;
    float4 _619 = r1;
    _619.z = (-r1.z) + asfloat(1065353216u);
    r1 = _619;
    float4 _626 = r0;
    _626.w = r1.z / r0.w;
    r0 = _626;
    float4 _638 = r1;
    _638.z = asfloat((asfloat(1008981770u) < abs(r6.y)) ? 4294967295u : 0u);
    r1 = _638;
    float4 _653 = r1;
    _653.w = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r1 = _653;
    float4 _658 = r1;
    _658.w = sqrt(r1.w);
    r1 = _658;
    float4 _666 = r1;
    _666.w = r1.w * cb0_m[13].y;
    r1 = _666;
    float4 _676 = r0;
    _676.w = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _676;
    float4 _688 = r0;
    _688.w = (r0.w * r1.w) + (-cb0_m[13].w);
    r0 = _688;
    float4 _694 = r0;
    _694.w = exp2(-r0.w);
    r0 = _694;
    float4 _700 = r0;
    _700.w = min(r0.w, asfloat(1065353216u));
    r0 = _700;
    float4 _707 = o3;
    _707.w = (-r0.w) + asfloat(1065353216u);
    o3 = _707;
    float4 _722 = o3;
    _722.z = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _722;
    float4 _737 = o4;
    _737.z = mad(r5.xyz.z, r2.xyz.z, mad(r5.xyz.y, r2.xyz.y, r5.xyz.x * r2.xyz.x));
    o4 = _737;
    float2 _743 = -r3.xz;
    float4 _750 = o3;
    _750.y = mad(r0.zy.y, _743.y, r0.zy.x * _743.x);
    o3 = _750;
    float2 _756 = -r3.xz;
    float4 _763 = o4;
    _763.y = mad(r5.zy.y, _756.y, r5.zy.x * _756.x);
    o4 = _763;
    float4 _778 = o4;
    _778.x = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    o4 = _778;
    float4 _793 = o3;
    _793.x = mad(r0.xyz.z, r4.xyz.z, mad(r0.xyz.y, r4.xyz.y, r0.xyz.x * r4.xyz.x));
    o3 = _793;
    float4 _800 = r0;
    _800.x = float(asint(shader_in[2].x));
    r0 = _800;
    float4 _807 = o4;
    _807.w = r0.x * asfloat(981467136u);
    o4 = _807;
    float2 _816 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_816.x, _816.y, r0.z, r0.w);
    float2 _829 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_829.x, _829.y, r0.z, r0.w);
    float2 _840 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _840.x, _840.y);
    float2 _853 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_853.x, _853.y, r0.z, r0.w);
    float2 _864 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_864.x, _864.y, o5.z, o5.w);
    float2 _878 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_878.x, _878.y, r0.z, r0.w);
    float2 _892 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _892.x, _892.y);
    float2 _903 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _903.x, _903.y);
    float2 _914 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_914.x, _914.y, o6.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _929 = shader_in[2];
    _929.x = asfloat(v2);
    shader_in[2] = _929;
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
