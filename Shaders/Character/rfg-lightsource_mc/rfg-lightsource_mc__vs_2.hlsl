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
    float3 _611 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _611.x, _611.y, _611.z);
    float2 _618 = float2(asint(shader_in[1].xy));
    r1 = float4(_618.x, _618.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _649 = r1;
    _649.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _649;
    float4 _654 = r1;
    _654.x = rsqrt(r1.x);
    r1 = _654;
    o3 = r0.yzw * r1.xxx;
    float3 _671 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _671.x, _671.y, _671.z);
    float3 _681 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_681.x, _681.y, _681.z, r1.w);
    float3 _690 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _690.x, _690.y, _690.z);
    float4 _706 = r1;
    _706.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _706;
    float4 _711 = r1;
    _711.x = rsqrt(r1.x);
    r1 = _711;
    float3 _717 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _717.x, _717.y, _717.z);
    float4 _733 = r1;
    _733.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _733;
    float4 _748 = r1;
    _748.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _748;
    float4 _763 = r1;
    _763.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _763;
    float3 _769 = r0.xxx * r1.xyz;
    r0 = float4(_769.x, _769.y, _769.z, r0.w);
    float4 _785 = r0;
    _785.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _785;
    float4 _790 = r0;
    _790.w = rsqrt(r0.w);
    r0 = _790;
    float3 _796 = r0.www * r0.xyz;
    r0 = float4(_796.x, _796.y, _796.z, r0.w);
    float3 _806 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _818 = r1;
    _818.x = mad(_806.z, r0.xyz.z, mad(_806.y, r0.xyz.y, _806.x * r0.xyz.x));
    r1 = _818;
    float3 _827 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _839 = r1;
    _839.y = mad(_827.z, r0.xyz.z, mad(_827.y, r0.xyz.y, _827.x * r0.xyz.x));
    r1 = _839;
    float3 _848 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _860 = r1;
    _860.z = mad(_848.z, r0.xyz.z, mad(_848.y, r0.xyz.y, _848.x * r0.xyz.x));
    r1 = _860;
    float4 _875 = r0;
    _875.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _875;
    float4 _880 = r0;
    _880.x = rsqrt(r0.x);
    r0 = _880;
    float3 _886 = r0.xxx * r1.xyz;
    o4 = float4(_886.x, _886.y, _886.z, o4.w);
    float4 _890 = o4;
    _890.w = asfloat(0u);
    o4 = _890;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _898 = asfloat(v1);
    shader_in[1] = float4(_898.x, _898.y, shader_in[1].z, shader_in[1].w);
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
