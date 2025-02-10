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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v5;
static float4 v7;
static int4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v5 : TEXCOORD5;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
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
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _69 = r0;
    _69.x = shader_in[7].y + shader_in[7].x;
    r0 = _69;
    float4 _77 = r0;
    _77.x = r0.x + shader_in[7].z;
    r0 = _77;
    float4 _85 = r0;
    _85.x = r0.x + shader_in[7].w;
    r0 = _85;
    float4 _92 = r0;
    _92.x = asfloat(1065353216u) / r0.x;
    r0 = _92;
    float3 _107 = (shader_in[5].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_107.x, _107.y, _107.z, r1.w);
    r2 = asfloat(asint(shader_in[8]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _126 = asint(r2.y);
    r3 = shader_in[7].yyyy * float4(cb4_m[_126].x, cb4_m[_126].y, cb4_m[_126].z, cb4_m[_126].w);
    int _148 = asint(r2.x);
    r3 = (shader_in[7].xxxx * float4(cb4_m[_148].x, cb4_m[_148].y, cb4_m[_148].z, cb4_m[_148].w)) + r3;
    int _167 = asint(r2.z);
    r3 = (shader_in[7].zzzz * float4(cb4_m[_167].x, cb4_m[_167].y, cb4_m[_167].z, cb4_m[_167].w)) + r3;
    int _186 = asint(r2.w);
    r3 = (shader_in[7].wwww * float4(cb4_m[_186].x, cb4_m[_186].y, cb4_m[_186].z, cb4_m[_186].w)) + r3;
    float4 _201 = r1;
    _201.w = asfloat(1065353216u);
    r1 = _201;
    float4 _217 = r3;
    _217.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r3 = _217;
    int _226 = asint(r2.y) + 1;
    r4 = shader_in[7].yyyy * float4(cb4_m[_226].x, cb4_m[_226].y, cb4_m[_226].z, cb4_m[_226].w);
    int _245 = asint(r2.x) + 1;
    r4 = (shader_in[7].xxxx * float4(cb4_m[_245].x, cb4_m[_245].y, cb4_m[_245].z, cb4_m[_245].w)) + r4;
    int _265 = asint(r2.z) + 1;
    r4 = (shader_in[7].zzzz * float4(cb4_m[_265].x, cb4_m[_265].y, cb4_m[_265].z, cb4_m[_265].w)) + r4;
    int _285 = asint(r2.w) + 1;
    r4 = (shader_in[7].wwww * float4(cb4_m[_285].x, cb4_m[_285].y, cb4_m[_285].z, cb4_m[_285].w)) + r4;
    float4 _313 = r3;
    _313.y = mad(r4.w, r1.w, mad(r4.z, r1.z, mad(r4.y, r1.y, r4.x * r1.x)));
    r3 = _313;
    int _322 = asint(r2.y) + 2;
    r4 = shader_in[7].yyyy * float4(cb4_m[_322].x, cb4_m[_322].y, cb4_m[_322].z, cb4_m[_322].w);
    int _340 = asint(r2.x) + 2;
    r4 = (shader_in[7].xxxx * float4(cb4_m[_340].x, cb4_m[_340].y, cb4_m[_340].z, cb4_m[_340].w)) + r4;
    int _360 = asint(r2.z) + 2;
    r4 = (shader_in[7].zzzz * float4(cb4_m[_360].x, cb4_m[_360].y, cb4_m[_360].z, cb4_m[_360].w)) + r4;
    int _380 = asint(r2.w) + 2;
    r2 = (shader_in[7].wwww * float4(cb4_m[_380].x, cb4_m[_380].y, cb4_m[_380].z, cb4_m[_380].w)) + r4;
    float4 _408 = r3;
    _408.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r3 = _408;
    float3 _414 = r0.xxx * r3.xyz;
    r0 = float4(_414.x, _414.y, _414.z, r0.w);
    float4 _418 = r0;
    _418.w = asfloat(1065353216u);
    r0 = _418;
    float4 _429 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _443 = r1;
    _443.x = mad(_429.w, r0.w, mad(_429.z, r0.z, mad(_429.y, r0.y, _429.x * r0.x)));
    r1 = _443;
    float4 _454 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _468 = r1;
    _468.y = mad(_454.w, r0.w, mad(_454.z, r0.z, mad(_454.y, r0.y, _454.x * r0.x)));
    r1 = _468;
    float4 _479 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _493 = r1;
    _493.z = mad(_479.w, r0.w, mad(_479.z, r0.z, mad(_479.y, r0.y, _479.x * r0.x)));
    r1 = _493;
    float4 _496 = r1;
    _496.w = asfloat(1065353216u);
    r1 = _496;
    float4 _507 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _521 = o0;
    _521.x = mad(_507.w, r1.w, mad(_507.z, r1.z, mad(_507.y, r1.y, _507.x * r1.x)));
    o0 = _521;
    float4 _532 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _546 = o0;
    _546.y = mad(_532.w, r1.w, mad(_532.z, r1.z, mad(_532.y, r1.y, _532.x * r1.x)));
    o0 = _546;
    float4 _557 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _571 = o0;
    _571.z = mad(_557.w, r1.w, mad(_557.z, r1.z, mad(_557.y, r1.y, _557.x * r1.x)));
    o0 = _571;
    float4 _583 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _597 = o0;
    _597.w = mad(_583.w, r1.w, mad(_583.z, r1.z, mad(_583.y, r1.y, _583.x * r1.x)));
    o0 = _597;
    float2 _603 = float2(asint(shader_in[1].xy));
    r0 = float4(_603.x, _603.y, r0.z, r0.w);
    float2 _614 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_614.x, _614.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _644 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_644.x, _644.y, _644.z, r0.w);
    float3 _658 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_658.x, _658.y, _658.z, r1.w);
    float4 _668 = r0;
    _668.w = r0.y * cb0_m[13].x;
    r0 = _668;
    float4 _675 = r1;
    _675.w = r0.w * asfloat(3216550459u);
    r1 = _675;
    float4 _680 = r1;
    _680.w = exp2(r1.w);
    r1 = _680;
    float4 _687 = r1;
    _687.w = (-r1.w) + asfloat(1065353216u);
    r1 = _687;
    float4 _694 = r0;
    _694.w = r1.w / r0.w;
    r0 = _694;
    float4 _706 = r1;
    _706.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _706;
    float4 _721 = r0;
    _721.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _721;
    float4 _726 = r0;
    _726.x = sqrt(r0.x);
    r0 = _726;
    float4 _734 = r0;
    _734.x = r0.x * cb0_m[13].y;
    r0 = _734;
    float4 _744 = r0;
    _744.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _744;
    float4 _756 = r0;
    _756.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _756;
    float4 _762 = r0;
    _762.x = exp2(-r0.x);
    r0 = _762;
    float4 _768 = r0;
    _768.x = min(r0.x, asfloat(1065353216u));
    r0 = _768;
    float4 _775 = o3;
    _775.w = (-r0.x) + asfloat(1065353216u);
    o3 = _775;
    float4 _790 = r0;
    _790.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _790;
    float4 _795 = r0;
    _795.x = rsqrt(r0.x);
    r0 = _795;
    float3 _801 = r0.xxx * r1.xyz;
    o3 = float4(_801.x, _801.y, _801.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _810 = asfloat(v1);
    shader_in[1] = float4(_810.x, _810.y, shader_in[1].z, shader_in[1].w);
    shader_in[5] = v5;
    shader_in[7] = v7;
    shader_in[8] = asfloat(v8);
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
    v5 = stage_input.v5;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
