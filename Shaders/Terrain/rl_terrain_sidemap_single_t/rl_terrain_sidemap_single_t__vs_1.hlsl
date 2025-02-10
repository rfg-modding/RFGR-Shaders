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
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float4 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float2 _56 = float2(asint(shader_in[0].xy));
    r0 = float4(_56.x, _56.y, r0.z, r0.w);
    float4 _65 = r0;
    _65.y = r0.y + asfloat(1191182336u);
    r0 = _65;
    float4 _73 = r1;
    _73.y = r0.x * asfloat(1015021568u);
    r1 = _73;
    float4 _80 = r0;
    _80.x = r0.y * asfloat(998244352u);
    r0 = _80;
    float4 _85 = r1;
    _85.z = trunc(r0.x);
    r1 = _85;
    float4 _96 = r1;
    _96.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _96;
    float4 _100 = r1;
    _100.w = asfloat(1065353216u);
    r1 = _100;
    float4 _115 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _129 = r0;
    _129.x = mad(_115.w, r1.w, mad(_115.z, r1.z, mad(_115.y, r1.y, _115.x * r1.x)));
    r0 = _129;
    float4 _141 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _155 = r0;
    _155.y = mad(_141.w, r1.w, mad(_141.z, r1.z, mad(_141.y, r1.y, _141.x * r1.x)));
    r0 = _155;
    float4 _167 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _181 = r0;
    _181.z = mad(_167.w, r1.w, mad(_167.z, r1.z, mad(_167.y, r1.y, _167.x * r1.x)));
    r0 = _181;
    float4 _184 = r0;
    _184.w = asfloat(1065353216u);
    r0 = _184;
    float4 _195 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _209 = o0;
    _209.x = mad(_195.w, r0.w, mad(_195.z, r0.z, mad(_195.y, r0.y, _195.x * r0.x)));
    o0 = _209;
    float4 _220 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _234 = o0;
    _234.y = mad(_220.w, r0.w, mad(_220.z, r0.z, mad(_220.y, r0.y, _220.x * r0.x)));
    o0 = _234;
    float4 _245 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _259 = o0;
    _259.z = mad(_245.w, r0.w, mad(_245.z, r0.z, mad(_245.y, r0.y, _245.x * r0.x)));
    o0 = _259;
    float4 _271 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _285 = o0;
    _285.w = mad(_271.w, r0.w, mad(_271.z, r0.z, mad(_271.y, r0.y, _271.x * r0.x)));
    o0 = _285;
    float3 _298 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_298.x, _298.y, _298.z, r1.w);
    float3 _308 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _321 = r2;
    _321.x = mad(_308.z, r1.xyz.z, mad(_308.y, r1.xyz.y, _308.x * r1.xyz.x));
    r2 = _321;
    float3 _330 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _342 = r2;
    _342.y = mad(_330.z, r1.xyz.z, mad(_330.y, r1.xyz.y, _330.x * r1.xyz.x));
    r2 = _342;
    float3 _351 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _363 = r2;
    _363.z = mad(_351.z, r1.xyz.z, mad(_351.y, r1.xyz.y, _351.x * r1.xyz.x));
    r2 = _363;
    float4 _378 = r0;
    _378.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _378;
    float4 _383 = r0;
    _383.w = rsqrt(r0.w);
    r0 = _383;
    float3 _389 = r0.www * r2.xyz;
    r1 = float4(_389.x, _389.y, _389.z, r1.w);
    float4 _394 = r2;
    _394.z = r1.y;
    r2 = _394;
    float2 _398 = abs(r1.zx);
    r2 = float4(_398.x, _398.y, r2.z, r2.w);
    float3 _405 = r2.xyz * asfloat(uint3(3212836864u, 3212836864u, 1065353216u));
    r3 = float4(_405.x, _405.y, _405.z, r3.w);
    float2 _415 = r2.yx * asfloat(uint2(2147483648u, 3212836864u));
    r4 = float4(_415.x, r4.y, _415.y, r4.w);
    float4 _420 = r4;
    _420.y = asfloat(0u);
    r4 = _420;
    float3 _430 = ((-r2.xyz) * asfloat(uint3(2147483648u, 3212836864u, 0u))) + r4.xyz;
    r2 = float4(_430.x, _430.y, _430.z, r2.w);
    float3 _437 = r2.xyz * r3.xyz;
    r4 = float4(_437.x, _437.y, _437.z, r4.w);
    float3 _448 = (r3.zxy * r2.yzx) + (-r4.xyz);
    r3 = float4(_448.x, _448.y, _448.z, r3.w);
    float3 _462 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_462.x, _462.y, _462.z, r4.w);
    float3 _478 = o1;
    _478.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _478;
    float3 _493 = o1;
    _493.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _493;
    float3 _505 = o1;
    _505.x = mad(r4.zx.y, r2.yz.y, r4.zx.x * r2.yz.x);
    o1 = _505;
    float3 _519 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_519.x, _519.y, _519.z, r4.w);
    float4 _535 = r0;
    _535.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _535;
    float4 _540 = r0;
    _540.w = rsqrt(r0.w);
    r0 = _540;
    float3 _546 = r0.www * r4.xyz;
    r4 = float4(_546.x, _546.y, _546.z, r4.w);
    float3 _562 = o2;
    _562.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _562;
    float3 _574 = o2;
    _574.x = mad(r4.zx.y, r2.yz.y, r4.zx.x * r2.yz.x);
    o2 = _574;
    float2 _581 = float2(cb1_m[1].z, cb1_m[1].x);
    float4 _590 = o4;
    _590.x = mad(_581.y, r2.yz.y, _581.x * r2.yz.x);
    o4 = _590;
    float3 _605 = o2;
    _605.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _605;
    float3 _614 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _626 = o4;
    _626.y = mad(_614.z, r3.xyz.z, mad(_614.y, r3.xyz.y, _614.x * r3.xyz.x));
    o4 = _626;
    o3 = float4(r1.xyz.x, r1.xyz.y, r1.xyz.z, o3.w);
    float3 _639 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _651 = o4;
    _651.z = mad(_639.z, r1.xyz.z, mad(_639.y, r1.xyz.y, _639.x * r1.xyz.x));
    o4 = _651;
    float4 _660 = o3;
    _660.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o3 = _660;
    float3 _673 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_673.x, _673.y, _673.z, r1.w);
    float3 _687 = r0.xyz + float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z);
    r0 = float4(_687.x, _687.y, _687.z, r0.w);
    float4 _697 = r1;
    _697.w = r1.y * cb0_m[13].x;
    r1 = _697;
    float4 _704 = r2;
    _704.x = r1.w * asfloat(3216550459u);
    r2 = _704;
    float4 _709 = r2;
    _709.x = exp2(r2.x);
    r2 = _709;
    float4 _716 = r2;
    _716.x = (-r2.x) + asfloat(1065353216u);
    r2 = _716;
    float4 _723 = r1;
    _723.w = r2.x / r1.w;
    r1 = _723;
    float4 _735 = r2;
    _735.x = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r2 = _735;
    float4 _750 = r1;
    _750.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _750;
    float4 _755 = r1;
    _755.x = sqrt(r1.x);
    r1 = _755;
    float4 _763 = r1;
    _763.x = r1.x * cb0_m[13].y;
    r1 = _763;
    float4 _773 = r1;
    _773.y = (asuint(r2.x) != 0u) ? r1.w : asfloat(1065353216u);
    r1 = _773;
    float4 _785 = r1;
    _785.x = (r1.y * r1.x) + (-cb0_m[13].w);
    r1 = _785;
    float4 _791 = r1;
    _791.x = exp2(-r1.x);
    r1 = _791;
    float4 _797 = r1;
    _797.x = min(r1.x, asfloat(1065353216u));
    r1 = _797;
    float4 _804 = o4;
    _804.w = (-r1.x) + asfloat(1065353216u);
    o4 = _804;
    float4 _807 = r0;
    _807.w = asfloat(1065353216u);
    r0 = _807;
    float4 _818 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _832 = o5;
    _832.x = mad(_818.w, r0.w, mad(_818.z, r0.z, mad(_818.y, r0.y, _818.x * r0.x)));
    o5 = _832;
    float4 _843 = float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    float4 _857 = o5;
    _857.y = mad(_843.w, r0.w, mad(_843.z, r0.z, mad(_843.y, r0.y, _843.x * r0.x)));
    o5 = _857;
    float4 _869 = float4(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z, cb2_m[4].w);
    float4 _883 = o5;
    _883.z = mad(_869.w, r0.w, mad(_869.z, r0.z, mad(_869.y, r0.y, _869.x * r0.x)));
    o5 = _883;
    float4 _895 = float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    float4 _909 = o5;
    _909.w = mad(_895.w, r0.w, mad(_895.z, r0.z, mad(_895.y, r0.y, _895.x * r0.x)));
    o5 = _909;
}

void vert_main()
{
    float2 _913 = asfloat(v0);
    shader_in[0] = float4(_913.x, _913.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = v1;
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
