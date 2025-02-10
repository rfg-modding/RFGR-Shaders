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
    float4 cb2_m[15] : packoffset(c0);
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
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 o7;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float2 _58 = float2(asint(shader_in[0].xy));
    r0 = float4(_58.x, _58.y, r0.z, r0.w);
    float4 _67 = r0;
    _67.y = r0.y + asfloat(1191182336u);
    r0 = _67;
    float4 _75 = r1;
    _75.y = r0.x * asfloat(1015021568u);
    r1 = _75;
    float4 _82 = r0;
    _82.x = r0.y * asfloat(998244352u);
    r0 = _82;
    float4 _87 = r1;
    _87.z = trunc(r0.x);
    r1 = _87;
    float4 _98 = r1;
    _98.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _98;
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    float4 _118 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _132 = r0;
    _132.x = mad(_118.w, r1.w, mad(_118.z, r1.z, mad(_118.y, r1.y, _118.x * r1.x)));
    r0 = _132;
    float4 _144 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _158 = r0;
    _158.y = mad(_144.w, r1.w, mad(_144.z, r1.z, mad(_144.y, r1.y, _144.x * r1.x)));
    r0 = _158;
    float4 _170 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _184 = r0;
    _184.z = mad(_170.w, r1.w, mad(_170.z, r1.z, mad(_170.y, r1.y, _170.x * r1.x)));
    r0 = _184;
    float4 _187 = r0;
    _187.w = asfloat(1065353216u);
    r0 = _187;
    float4 _198 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _212 = o0;
    _212.x = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _237 = o0;
    _237.y = mad(_223.w, r0.w, mad(_223.z, r0.z, mad(_223.y, r0.y, _223.x * r0.x)));
    o0 = _237;
    float4 _248 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _262 = o0;
    _262.z = mad(_248.w, r0.w, mad(_248.z, r0.z, mad(_248.y, r0.y, _248.x * r0.x)));
    o0 = _262;
    float4 _274 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _288 = o0;
    _288.w = mad(_274.w, r0.w, mad(_274.z, r0.z, mad(_274.y, r0.y, _274.x * r0.x)));
    o0 = _288;
    float3 _301 = r0.xyz + float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z);
    r1 = float4(_301.x, _301.y, _301.z, r1.w);
    float4 _305 = r1;
    _305.w = asfloat(1065353216u);
    r1 = _305;
    float4 _317 = float4(cb2_m[12].x, cb2_m[12].y, cb2_m[12].z, cb2_m[12].w);
    float2 _331 = o1;
    _331.x = mad(_317.w, r1.w, mad(_317.z, r1.z, mad(_317.y, r1.y, _317.x * r1.x)));
    o1 = _331;
    float4 _342 = float4(cb2_m[14].x, cb2_m[14].y, cb2_m[14].z, cb2_m[14].w);
    float2 _356 = o1;
    _356.y = mad(_342.w, r1.w, mad(_342.z, r1.z, mad(_342.y, r1.y, _342.x * r1.x)));
    o1 = _356;
    float4 _360 = r2;
    _360.y = asfloat(0u);
    r2 = _360;
    float3 _373 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_373.x, _373.y, _373.z, r3.w);
    float3 _384 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _397 = r4;
    _397.x = mad(_384.z, r3.xyz.z, mad(_384.y, r3.xyz.y, _384.x * r3.xyz.x));
    r4 = _397;
    float3 _406 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _418 = r4;
    _418.y = mad(_406.z, r3.xyz.z, mad(_406.y, r3.xyz.y, _406.x * r3.xyz.x));
    r4 = _418;
    float3 _427 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _439 = r4;
    _439.z = mad(_427.z, r3.xyz.z, mad(_427.y, r3.xyz.y, _427.x * r3.xyz.x));
    r4 = _439;
    float4 _454 = r0;
    _454.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _454;
    float4 _459 = r0;
    _459.w = rsqrt(r0.w);
    r0 = _459;
    float3 _465 = r0.www * r4.xyz;
    r3 = float4(_465.x, _465.y, _465.z, r3.w);
    float4 _470 = r4;
    _470.z = r3.y;
    r4 = _470;
    float2 _474 = abs(r3.zx);
    r4 = float4(_474.x, _474.y, r4.z, r4.w);
    float2 _483 = r4.yx * asfloat(uint2(2147483648u, 3212836864u));
    r2 = float4(_483.x, r2.y, _483.y, r2.w);
    float3 _494 = ((-r4.xyz) * asfloat(uint3(2147483648u, 3212836864u, 0u))) + r2.xyz;
    r2 = float4(_494.x, _494.y, _494.z, r2.w);
    float3 _501 = r4.xyz * asfloat(uint3(3212836864u, 3212836864u, 1065353216u));
    r4 = float4(_501.x, _501.y, _501.z, r4.w);
    float3 _508 = r2.xyz * r4.xyz;
    r5 = float4(_508.x, _508.y, _508.z, r5.w);
    float3 _520 = (r4.zxy * r2.yzx) + (-r5.xyz);
    r4 = float4(_520.x, _520.y, r4.z, _520.z);
    float3 _530 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _542 = o2;
    _542.y = mad(_530.z, r4.xyw.z, mad(_530.y, r4.xyw.y, _530.x * r4.xyw.x));
    o2 = _542;
    float3 _551 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _563 = o2;
    _563.z = mad(_551.z, r3.xyz.z, mad(_551.y, r3.xyz.y, _551.x * r3.xyz.x));
    o2 = _563;
    float2 _570 = float2(cb1_m[0].z, cb1_m[0].x);
    float3 _579 = o2;
    _579.x = mad(_570.y, r2.yz.y, _570.x * r2.yz.x);
    o2 = _579;
    float3 _593 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r5 = float4(_593.x, _593.y, _593.z, r5.w);
    float3 _607 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_607.x, _607.y, _607.z, r0.w);
    float4 _623 = r0;
    _623.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _623;
    float4 _628 = r0;
    _628.w = rsqrt(r0.w);
    r0 = _628;
    float3 _634 = r0.www * r5.xyz;
    r5 = float4(_634.x, _634.y, _634.z, r5.w);
    float3 _650 = o3;
    _650.z = mad(r5.xyz.z, r3.xyz.z, mad(r5.xyz.y, r3.xyz.y, r5.xyz.x * r3.xyz.x));
    o3 = _650;
    o4 = float4(r3.xyz.x, r3.xyz.y, r3.xyz.z, o4.w);
    float3 _666 = o3;
    _666.x = mad(r5.zx.y, r2.yz.y, r5.zx.x * r2.yz.x);
    o3 = _666;
    float3 _681 = o3;
    _681.y = mad(r5.xyz.z, r4.xyw.z, mad(r5.xyz.y, r4.xyw.y, r5.xyz.x * r4.xyw.x));
    o3 = _681;
    o5 = float4(o5.x, r4.yz.x, r4.yz.y, o5.w);
    float4 _694 = o4;
    _694.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o4 = _694;
    float4 _703 = r0;
    _703.w = r0.y * cb0_m[13].x;
    r0 = _703;
    float4 _710 = r2;
    _710.x = r0.w * asfloat(3216550459u);
    r2 = _710;
    float4 _715 = r2;
    _715.x = exp2(r2.x);
    r2 = _715;
    float4 _722 = r2;
    _722.x = (-r2.x) + asfloat(1065353216u);
    r2 = _722;
    float4 _729 = r0;
    _729.w = r2.x / r0.w;
    r0 = _729;
    float4 _741 = r2;
    _741.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r2 = _741;
    float4 _756 = r0;
    _756.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _756;
    float4 _761 = r0;
    _761.x = sqrt(r0.x);
    r0 = _761;
    float4 _769 = r0;
    _769.x = r0.x * cb0_m[13].y;
    r0 = _769;
    float4 _779 = r0;
    _779.y = (asuint(r2.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _779;
    float4 _791 = r0;
    _791.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _791;
    float4 _797 = r0;
    _797.x = exp2(-r0.x);
    r0 = _797;
    float4 _803 = r0;
    _803.x = min(r0.x, asfloat(1065353216u));
    r0 = _803;
    float4 _810 = o5;
    _810.w = (-r0.x) + asfloat(1065353216u);
    o5 = _810;
    float4 _813 = o5;
    _813.x = asfloat(0u);
    o5 = _813;
    float2 _824 = (r1.xz * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_824.x, _824.y, r0.z, r0.w);
    float2 _837 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_837.x, _837.y, r0.z, r0.w);
    float2 _849 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o6 = float4(o6.x, o6.y, _849.x, _849.y);
    float4 _861 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _875 = o6;
    _875.x = mad(_861.w, r1.w, mad(_861.z, r1.z, mad(_861.y, r1.y, _861.x * r1.x)));
    o6 = _875;
    float4 _886 = float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    float4 _900 = o6;
    _900.y = mad(_886.w, r1.w, mad(_886.z, r1.z, mad(_886.y, r1.y, _886.x * r1.x)));
    o6 = _900;
    float4 _911 = float4(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z, cb2_m[4].w);
    float4 _925 = o7;
    _925.x = mad(_911.w, r1.w, mad(_911.z, r1.z, mad(_911.y, r1.y, _911.x * r1.x)));
    o7 = _925;
    float4 _937 = float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    float4 _951 = o7;
    _951.y = mad(_937.w, r1.w, mad(_937.z, r1.z, mad(_937.y, r1.y, _937.x * r1.x)));
    o7 = _951;
    float4 _963 = float4(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z, cb2_m[8].w);
    float4 _977 = o7;
    _977.z = mad(_963.w, r1.w, mad(_963.z, r1.z, mad(_963.y, r1.y, _963.x * r1.x)));
    o7 = _977;
    float4 _989 = float4(cb2_m[10].x, cb2_m[10].y, cb2_m[10].z, cb2_m[10].w);
    float4 _1003 = o7;
    _1003.w = mad(_989.w, r1.w, mad(_989.z, r1.z, mad(_989.y, r1.y, _989.x * r1.x)));
    o7 = _1003;
}

void vert_main()
{
    float2 _1007 = asfloat(v0);
    shader_in[0] = float4(_1007.x, _1007.y, shader_in[0].z, shader_in[0].w);
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
