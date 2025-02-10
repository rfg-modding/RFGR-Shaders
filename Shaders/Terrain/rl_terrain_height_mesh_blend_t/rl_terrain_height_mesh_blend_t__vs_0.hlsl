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
    float4 _119 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _133 = r0;
    _133.y = mad(_119.w, r1.w, mad(_119.z, r1.z, mad(_119.y, r1.y, _119.x * r1.x)));
    r0 = _133;
    float4 _144 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _158 = r0;
    _158.x = mad(_144.w, r1.w, mad(_144.z, r1.z, mad(_144.y, r1.y, _144.x * r1.x)));
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
    float2 _299 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_299.x, _299.y, r1.z, r1.w);
    float2 _316 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r1 = float4(r1.x, r1.y, _316.x, _316.y);
    o1 = r1.zw * float2(cb2_m[7].x, cb2_m[7].y);
    float3 _340 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_340.x, _340.y, _340.z, r2.w);
    float3 _355 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_355.x, _355.y, _355.z, r0.w);
    float4 _371 = r0;
    _371.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _371;
    float4 _376 = r1;
    _376.z = rsqrt(r0.w);
    r1 = _376;
    float4 _381 = o3;
    _381.w = sqrt(r0.w);
    o3 = _381;
    float3 _387 = r1.zzz * r2.xyz;
    r2 = float4(_387.x, _387.y, _387.z, r2.w);
    float3 _401 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_401.x, _401.y, _401.z, r3.w);
    float3 _412 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _425 = r4;
    _425.x = mad(_412.z, r3.xyz.z, mad(_412.y, r3.xyz.y, _412.x * r3.xyz.x));
    r4 = _425;
    float3 _434 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _446 = r4;
    _446.y = mad(_434.z, r3.xyz.z, mad(_434.y, r3.xyz.y, _434.x * r3.xyz.x));
    r4 = _446;
    float3 _455 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _467 = r4;
    _467.z = mad(_455.z, r3.xyz.z, mad(_455.y, r3.xyz.y, _455.x * r3.xyz.x));
    r4 = _467;
    float4 _482 = r0;
    _482.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _482;
    float4 _487 = r0;
    _487.w = rsqrt(r0.w);
    r0 = _487;
    float3 _493 = r0.www * r4.xyz;
    r3 = float4(_493.x, _493.y, _493.z, r3.w);
    float3 _500 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r4 = float4(_500.x, _500.y, _500.z, r4.w);
    float3 _511 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r4.xyz);
    r4 = float4(_511.x, _511.y, _511.z, r4.w);
    float4 _524 = r0;
    _524.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _524;
    float4 _529 = r0;
    _529.w = rsqrt(r0.w);
    r0 = _529;
    float3 _535 = r0.www * r4.xyz;
    r4 = float4(_535.x, _535.y, _535.z, r4.w);
    float3 _543 = r3.yzx * (-r4.xyz);
    r5 = float4(_543.x, _543.y, _543.z, r5.w);
    float3 _556 = ((-r4.zxy) * r3.zxy) + (-r5.xyz);
    r5 = float4(_556.x, _556.y, _556.z, r5.w);
    float3 _572 = o2;
    _572.x = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o2 = _572;
    float3 _587 = o2;
    _587.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o2 = _587;
    float2 _593 = -r4.xz;
    float3 _600 = o2;
    _600.y = mad(r2.zy.y, _593.y, r2.zy.x * _593.x);
    o2 = _600;
    float4 _604 = o3;
    _604.z = r3.y;
    o3 = _604;
    float3 _613 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _625 = o4;
    _625.z = mad(_613.z, r3.xyz.z, mad(_613.y, r3.xyz.y, _613.x * r3.xyz.x));
    o4 = _625;
    float4 _630 = o3;
    _630.y = -r4.z;
    o3 = _630;
    float2 _637 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _640 = -r4.xz;
    float4 _647 = o4;
    _647.y = mad(_637.y, _640.y, _637.x * _640.x);
    o4 = _647;
    float4 _651 = o3;
    _651.x = r5.y;
    o3 = _651;
    float3 _660 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _672 = o4;
    _672.x = mad(_660.z, r5.xyz.z, mad(_660.y, r5.xyz.y, _660.x * r5.xyz.x));
    o4 = _672;
    float4 _681 = r0;
    _681.w = r0.y * cb0_m[13].x;
    r0 = _681;
    float4 _688 = r1;
    _688.z = r0.w * asfloat(3216550459u);
    r1 = _688;
    float4 _693 = r1;
    _693.z = exp2(r1.z);
    r1 = _693;
    float4 _700 = r1;
    _700.z = (-r1.z) + asfloat(1065353216u);
    r1 = _700;
    float4 _707 = r0;
    _707.w = r1.z / r0.w;
    r0 = _707;
    float4 _719 = r1;
    _719.z = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _719;
    float4 _734 = r0;
    _734.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _734;
    float4 _739 = r0;
    _739.x = sqrt(r0.x);
    r0 = _739;
    float4 _747 = r0;
    _747.x = r0.x * cb0_m[13].y;
    r0 = _747;
    float4 _757 = r0;
    _757.y = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _757;
    float4 _769 = r0;
    _769.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _769;
    float4 _775 = r0;
    _775.x = exp2(-r0.x);
    r0 = _775;
    float4 _781 = r0;
    _781.x = min(r0.x, asfloat(1065353216u));
    r0 = _781;
    float4 _788 = o4;
    _788.w = (-r0.x) + asfloat(1065353216u);
    o4 = _788;
    float2 _797 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_797.x, _797.y, r0.z, r0.w);
    float2 _810 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_810.x, _810.y, r0.z, r0.w);
    float2 _822 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _822.x, _822.y);
    float2 _835 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_835.x, _835.y, r0.z, r0.w);
    float2 _846 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_846.x, _846.y, o5.z, o5.w);
    float2 _860 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_860.x, _860.y, r0.z, r0.w);
    float2 _874 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _874.x, _874.y);
    float2 _885 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _885.x, _885.y);
    float2 _896 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_896.x, _896.y, o6.z, o6.w);
}

void vert_main()
{
    float2 _901 = asfloat(v0);
    shader_in[0] = float4(_901.x, _901.y, shader_in[0].z, shader_in[0].w);
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
