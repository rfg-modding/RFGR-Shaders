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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
static float3 o3;
static float4 o4;
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
    float3 _106 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_106.x, _106.y, _106.z, r1.w);
    float4 _111 = r1;
    _111.w = asfloat(1065353216u);
    r1 = _111;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _128 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_128].x, cb4_m[_128].y, cb4_m[_128].z, cb4_m[_128].w);
    int _150 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_150].x, cb4_m[_150].y, cb4_m[_150].z, cb4_m[_150].w)) + r3;
    int _169 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_169].x, cb4_m[_169].y, cb4_m[_169].z, cb4_m[_169].w)) + r3;
    int _188 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_188].x, cb4_m[_188].y, cb4_m[_188].z, cb4_m[_188].w)) + r3;
    float4 _217 = r4;
    _217.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _217;
    int _226 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_226].x, cb4_m[_226].y, cb4_m[_226].z, cb4_m[_226].w);
    int _245 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_245].x, cb4_m[_245].y, cb4_m[_245].z, cb4_m[_245].w)) + r5;
    int _265 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_265].x, cb4_m[_265].y, cb4_m[_265].z, cb4_m[_265].w)) + r5;
    int _285 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_285].x, cb4_m[_285].y, cb4_m[_285].z, cb4_m[_285].w)) + r5;
    float4 _313 = r4;
    _313.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _313;
    int _322 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_322].x, cb4_m[_322].y, cb4_m[_322].z, cb4_m[_322].w);
    int _341 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_341].x, cb4_m[_341].y, cb4_m[_341].z, cb4_m[_341].w)) + r6;
    int _361 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_361].x, cb4_m[_361].y, cb4_m[_361].z, cb4_m[_361].w)) + r6;
    int _381 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_381].x, cb4_m[_381].y, cb4_m[_381].z, cb4_m[_381].w)) + r6;
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
    float4 _583 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _597 = o0;
    _597.w = mad(_583.w, r4.w, mad(_583.z, r4.z, mad(_583.y, r4.y, _583.x * r4.x)));
    o0 = _597;
    float2 _603 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _603.x, _603.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _633 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _633.x, _633.y, _633.z);
    float3 _647 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_647.x, _647.y, _647.z, r1.w);
    float4 _663 = r1;
    _663.w = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _663;
    float4 _668 = r1;
    _668.w = rsqrt(r1.w);
    r1 = _668;
    o3 = r0.yzw * r1.www;
    float3 _685 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _685.x, _685.y, _685.z);
    float3 _695 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_695.x, _695.y, _695.z, r4.w);
    float3 _704 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _704.x, _704.y, _704.z);
    float4 _720 = r1;
    _720.w = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _720;
    float4 _725 = r1;
    _725.w = rsqrt(r1.w);
    r1 = _725;
    float3 _731 = r0.yzw * r1.www;
    r0 = float4(r0.x, _731.x, _731.y, _731.z);
    float4 _747 = r3;
    _747.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r3 = _747;
    float4 _762 = r3;
    _762.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r3 = _762;
    float4 _777 = r3;
    _777.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r3 = _777;
    float3 _783 = r0.xxx * r3.xyz;
    r0 = float4(_783.x, _783.y, _783.z, r0.w);
    float4 _799 = r0;
    _799.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _799;
    float4 _804 = r0;
    _804.w = rsqrt(r0.w);
    r0 = _804;
    float3 _810 = r0.www * r0.xyz;
    r0 = float4(_810.x, _810.y, _810.z, r0.w);
    float3 _820 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _832 = r2;
    _832.x = mad(_820.z, r0.xyz.z, mad(_820.y, r0.xyz.y, _820.x * r0.xyz.x));
    r2 = _832;
    float3 _841 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _853 = r2;
    _853.y = mad(_841.z, r0.xyz.z, mad(_841.y, r0.xyz.y, _841.x * r0.xyz.x));
    r2 = _853;
    float3 _862 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _874 = r2;
    _874.z = mad(_862.z, r0.xyz.z, mad(_862.y, r0.xyz.y, _862.x * r0.xyz.x));
    r2 = _874;
    float4 _889 = r0;
    _889.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _889;
    float4 _894 = r0;
    _894.x = rsqrt(r0.x);
    r0 = _894;
    float3 _900 = r0.xxx * r2.xyz;
    o4 = float4(_900.x, _900.y, _900.z, o4.w);
    float4 _910 = r0;
    _910.x = r1.y * cb0_m[13].x;
    r0 = _910;
    float4 _917 = r0;
    _917.y = r0.x * asfloat(3216550459u);
    r0 = _917;
    float4 _922 = r0;
    _922.y = exp2(r0.y);
    r0 = _922;
    float4 _929 = r0;
    _929.y = (-r0.y) + asfloat(1065353216u);
    r0 = _929;
    float4 _936 = r0;
    _936.x = r0.y / r0.x;
    r0 = _936;
    float4 _948 = r0;
    _948.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _948;
    float4 _963 = r0;
    _963.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _963;
    float4 _968 = r0;
    _968.z = sqrt(r0.z);
    r0 = _968;
    float4 _976 = r0;
    _976.z = r0.z * cb0_m[13].y;
    r0 = _976;
    float4 _986 = r0;
    _986.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _986;
    float4 _998 = r0;
    _998.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _998;
    float4 _1004 = r0;
    _1004.x = exp2(-r0.x);
    r0 = _1004;
    float4 _1010 = r0;
    _1010.x = min(r0.x, asfloat(1065353216u));
    r0 = _1010;
    float4 _1017 = o4;
    _1017.w = (-r0.x) + asfloat(1065353216u);
    o4 = _1017;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1025 = asfloat(v1);
    shader_in[1] = float4(_1025.x, _1025.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
