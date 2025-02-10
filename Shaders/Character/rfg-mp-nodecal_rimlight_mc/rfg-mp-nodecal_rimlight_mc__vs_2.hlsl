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
static float4 v4;
static float4 v5;
static float4 v6;
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _68 = r0;
    _68.x = shader_in[6].y + shader_in[6].x;
    r0 = _68;
    float4 _76 = r0;
    _76.x = r0.x + shader_in[6].z;
    r0 = _76;
    float4 _84 = r0;
    _84.x = r0.x + shader_in[6].w;
    r0 = _84;
    float4 _91 = r0;
    _91.x = asfloat(1065353216u) / r0.x;
    r0 = _91;
    float3 _106 = (shader_in[4].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_106.x, _106.y, _106.z, r1.w);
    float4 _111 = r1;
    _111.w = asfloat(1065353216u);
    r1 = _111;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _128 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_128].x, cb4_m[_128].y, cb4_m[_128].z, cb4_m[_128].w);
    int _150 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_150].x, cb4_m[_150].y, cb4_m[_150].z, cb4_m[_150].w)) + r3;
    int _169 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_169].x, cb4_m[_169].y, cb4_m[_169].z, cb4_m[_169].w)) + r3;
    int _188 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_188].x, cb4_m[_188].y, cb4_m[_188].z, cb4_m[_188].w)) + r3;
    float4 _217 = r4;
    _217.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _217;
    int _226 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_226].x, cb4_m[_226].y, cb4_m[_226].z, cb4_m[_226].w);
    int _245 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_245].x, cb4_m[_245].y, cb4_m[_245].z, cb4_m[_245].w)) + r5;
    int _265 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_265].x, cb4_m[_265].y, cb4_m[_265].z, cb4_m[_265].w)) + r5;
    int _285 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_285].x, cb4_m[_285].y, cb4_m[_285].z, cb4_m[_285].w)) + r5;
    float4 _313 = r4;
    _313.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _313;
    int _322 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_322].x, cb4_m[_322].y, cb4_m[_322].z, cb4_m[_322].w);
    int _341 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_341].x, cb4_m[_341].y, cb4_m[_341].z, cb4_m[_341].w)) + r6;
    int _361 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_361].x, cb4_m[_361].y, cb4_m[_361].z, cb4_m[_361].w)) + r6;
    int _381 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_381].x, cb4_m[_381].y, cb4_m[_381].z, cb4_m[_381].w)) + r6;
    float4 _409 = r4;
    _409.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _409;
    float3 _415 = r0.xxx * r4.xyz;
    r1 = float4(_415.x, _415.y, _415.z, r1.w);
    float4 _419 = r1;
    _419.w = asfloat(1065353216u);
    r1 = _419;
    float4 _430 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _444 = r4;
    _444.x = mad(_430.w, r1.w, mad(_430.z, r1.z, mad(_430.y, r1.y, _430.x * r1.x)));
    r4 = _444;
    float4 _455 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _469 = r4;
    _469.y = mad(_455.w, r1.w, mad(_455.z, r1.z, mad(_455.y, r1.y, _455.x * r1.x)));
    r4 = _469;
    float4 _480 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _494 = r4;
    _494.z = mad(_480.w, r1.w, mad(_480.z, r1.z, mad(_480.y, r1.y, _480.x * r1.x)));
    r4 = _494;
    float4 _497 = r4;
    _497.w = asfloat(1065353216u);
    r4 = _497;
    float4 _508 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _522 = o0;
    _522.x = mad(_508.w, r4.w, mad(_508.z, r4.z, mad(_508.y, r4.y, _508.x * r4.x)));
    o0 = _522;
    float4 _533 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _547 = o0;
    _547.y = mad(_533.w, r4.w, mad(_533.z, r4.z, mad(_533.y, r4.y, _533.x * r4.x)));
    o0 = _547;
    float4 _558 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _572 = o0;
    _572.z = mad(_558.w, r4.w, mad(_558.z, r4.z, mad(_558.y, r4.y, _558.x * r4.x)));
    o0 = _572;
    float4 _584 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _598 = o0;
    _598.w = mad(_584.w, r4.w, mad(_584.z, r4.z, mad(_584.y, r4.y, _584.x * r4.x)));
    o0 = _598;
    float3 _612 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _612.x, _612.y, _612.z);
    float2 _619 = float2(asint(shader_in[1].xy));
    r1 = float4(_619.x, _619.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _639 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_639.x, _639.y, _639.z, r1.w);
    float3 _649 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_649.x, _649.y, _649.z, r4.w);
    float3 _658 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_658.x, _658.y, _658.z, r1.w);
    float4 _674 = r1;
    _674.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _674;
    float4 _679 = r1;
    _679.w = rsqrt(r1.w);
    r1 = _679;
    float3 _685 = r1.www * r1.xyz;
    r1 = float4(_685.x, _685.y, _685.z, r1.w);
    float4 _701 = r4;
    _701.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _701;
    float4 _716 = r4;
    _716.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _716;
    float4 _731 = r4;
    _731.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _731;
    float3 _737 = r0.xxx * r4.xyz;
    r1 = float4(_737.x, _737.y, _737.z, r1.w);
    float4 _753 = r1;
    _753.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _753;
    float4 _758 = r1;
    _758.w = rsqrt(r1.w);
    r1 = _758;
    float3 _764 = r1.www * r1.xyz;
    r1 = float4(_764.x, _764.y, _764.z, r1.w);
    float3 _774 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _786 = r4;
    _786.x = mad(_774.z, r1.xyz.z, mad(_774.y, r1.xyz.y, _774.x * r1.xyz.x));
    r4 = _786;
    float3 _795 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _807 = r4;
    _807.y = mad(_795.z, r1.xyz.z, mad(_795.y, r1.xyz.y, _795.x * r1.xyz.x));
    r4 = _807;
    float3 _816 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _828 = r4;
    _828.z = mad(_816.z, r1.xyz.z, mad(_816.y, r1.xyz.y, _816.x * r1.xyz.x));
    r4 = _828;
    float4 _843 = r1;
    _843.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _843;
    float4 _848 = r1;
    _848.x = rsqrt(r1.x);
    r1 = _848;
    float3 _854 = r1.xxx * r4.xyz;
    r1 = float4(_854.x, _854.y, _854.z, r1.w);
    r4 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _878 = r3;
    _878.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _878;
    float4 _893 = r3;
    _893.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _893;
    float4 _908 = r3;
    _908.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _908;
    float3 _914 = r0.xxx * r3.xyz;
    r2 = float4(_914.x, _914.y, _914.z, r2.w);
    float4 _930 = r0;
    _930.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _930;
    float4 _935 = r0;
    _935.x = rsqrt(r0.x);
    r0 = _935;
    float3 _941 = r0.xxx * r2.xyz;
    r2 = float4(_941.x, _941.y, _941.z, r2.w);
    float3 _951 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _963 = r3;
    _963.x = mad(_951.z, r2.xyz.z, mad(_951.y, r2.xyz.y, _951.x * r2.xyz.x));
    r3 = _963;
    float3 _972 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _984 = r3;
    _984.y = mad(_972.z, r2.xyz.z, mad(_972.y, r2.xyz.y, _972.x * r2.xyz.x));
    r3 = _984;
    float3 _993 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1005 = r3;
    _1005.z = mad(_993.z, r2.xyz.z, mad(_993.y, r2.xyz.y, _993.x * r2.xyz.x));
    r3 = _1005;
    float4 _1020 = r0;
    _1020.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1020;
    float4 _1025 = r0;
    _1025.x = rsqrt(r0.x);
    r0 = _1025;
    float3 _1031 = r0.xxx * r3.xyz;
    r2 = float4(_1031.x, _1031.y, _1031.z, r2.w);
    float3 _1038 = r1.zxy * r2.yzx;
    r3 = float4(_1038.x, _1038.y, _1038.z, r3.w);
    float3 _1049 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1049.x, _1049.y, _1049.z, r3.w);
    float3 _1056 = r4.www * r3.xyz;
    r3 = float4(_1056.x, _1056.y, _1056.z, r3.w);
    float3 _1066 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1078 = o2;
    _1078.y = mad(_1066.z, r3.xyz.z, mad(_1066.y, r3.xyz.y, _1066.x * r3.xyz.x));
    o2 = _1078;
    float3 _1087 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1099 = o2;
    _1099.z = mad(_1087.z, r1.xyz.z, mad(_1087.y, r1.xyz.y, _1087.x * r1.xyz.x));
    o2 = _1099;
    float3 _1108 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1120 = o2;
    _1120.x = mad(_1108.z, r2.xyz.z, mad(_1108.y, r2.xyz.y, _1108.x * r2.xyz.x));
    o2 = _1120;
    float4 _1135 = r0;
    _1135.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1135;
    float4 _1140 = r0;
    _1140.x = rsqrt(r0.x);
    r0 = _1140;
    float3 _1146 = r0.xxx * r0.yzw;
    r0 = float4(_1146.x, _1146.y, _1146.z, r0.w);
    float3 _1162 = o3;
    _1162.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1162;
    float3 _1177 = o3;
    _1177.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1177;
    float3 _1192 = o3;
    _1192.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1192;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1200 = asfloat(v1);
    shader_in[1] = float4(_1200.x, _1200.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = asfloat(v7);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
