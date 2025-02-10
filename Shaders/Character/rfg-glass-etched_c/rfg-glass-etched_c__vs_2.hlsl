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
static int4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _67 = r0;
    _67.x = shader_in[3].y + shader_in[3].x;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[3].z;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[3].w;
    r0 = _83;
    float4 _90 = r0;
    _90.x = asfloat(1065353216u) / r0.x;
    r0 = _90;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _100 = r1;
    _100.w = asfloat(1065353216u);
    r1 = _100;
    r2 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _117 = asint(r2.y);
    r3 = shader_in[3].yyyy * float4(cb4_m[_117].x, cb4_m[_117].y, cb4_m[_117].z, cb4_m[_117].w);
    int _139 = asint(r2.x);
    r3 = (shader_in[3].xxxx * float4(cb4_m[_139].x, cb4_m[_139].y, cb4_m[_139].z, cb4_m[_139].w)) + r3;
    int _158 = asint(r2.z);
    r3 = (shader_in[3].zzzz * float4(cb4_m[_158].x, cb4_m[_158].y, cb4_m[_158].z, cb4_m[_158].w)) + r3;
    int _177 = asint(r2.w);
    r3 = (shader_in[3].wwww * float4(cb4_m[_177].x, cb4_m[_177].y, cb4_m[_177].z, cb4_m[_177].w)) + r3;
    float4 _206 = r4;
    _206.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _206;
    int _215 = asint(r2.y) + 1;
    r5 = shader_in[3].yyyy * float4(cb4_m[_215].x, cb4_m[_215].y, cb4_m[_215].z, cb4_m[_215].w);
    int _234 = asint(r2.x) + 1;
    r5 = (shader_in[3].xxxx * float4(cb4_m[_234].x, cb4_m[_234].y, cb4_m[_234].z, cb4_m[_234].w)) + r5;
    int _254 = asint(r2.z) + 1;
    r5 = (shader_in[3].zzzz * float4(cb4_m[_254].x, cb4_m[_254].y, cb4_m[_254].z, cb4_m[_254].w)) + r5;
    int _274 = asint(r2.w) + 1;
    r5 = (shader_in[3].wwww * float4(cb4_m[_274].x, cb4_m[_274].y, cb4_m[_274].z, cb4_m[_274].w)) + r5;
    float4 _302 = r4;
    _302.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _302;
    int _311 = asint(r2.y) + 2;
    r6 = shader_in[3].yyyy * float4(cb4_m[_311].x, cb4_m[_311].y, cb4_m[_311].z, cb4_m[_311].w);
    int _330 = asint(r2.x) + 2;
    r6 = (shader_in[3].xxxx * float4(cb4_m[_330].x, cb4_m[_330].y, cb4_m[_330].z, cb4_m[_330].w)) + r6;
    int _350 = asint(r2.z) + 2;
    r6 = (shader_in[3].zzzz * float4(cb4_m[_350].x, cb4_m[_350].y, cb4_m[_350].z, cb4_m[_350].w)) + r6;
    int _370 = asint(r2.w) + 2;
    r2 = (shader_in[3].wwww * float4(cb4_m[_370].x, cb4_m[_370].y, cb4_m[_370].z, cb4_m[_370].w)) + r6;
    float4 _398 = r4;
    _398.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _398;
    float3 _404 = r0.xxx * r4.xyz;
    r1 = float4(_404.x, _404.y, _404.z, r1.w);
    float4 _408 = r1;
    _408.w = asfloat(1065353216u);
    r1 = _408;
    float4 _419 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _433 = r4;
    _433.x = mad(_419.w, r1.w, mad(_419.z, r1.z, mad(_419.y, r1.y, _419.x * r1.x)));
    r4 = _433;
    float4 _444 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _458 = r4;
    _458.y = mad(_444.w, r1.w, mad(_444.z, r1.z, mad(_444.y, r1.y, _444.x * r1.x)));
    r4 = _458;
    float4 _469 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _483 = r4;
    _483.z = mad(_469.w, r1.w, mad(_469.z, r1.z, mad(_469.y, r1.y, _469.x * r1.x)));
    r4 = _483;
    float4 _486 = r4;
    _486.w = asfloat(1065353216u);
    r4 = _486;
    float4 _497 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _511 = o0;
    _511.x = mad(_497.w, r4.w, mad(_497.z, r4.z, mad(_497.y, r4.y, _497.x * r4.x)));
    o0 = _511;
    float4 _522 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _536 = o0;
    _536.y = mad(_522.w, r4.w, mad(_522.z, r4.z, mad(_522.y, r4.y, _522.x * r4.x)));
    o0 = _536;
    float4 _547 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _561 = o0;
    _561.z = mad(_547.w, r4.w, mad(_547.z, r4.z, mad(_547.y, r4.y, _547.x * r4.x)));
    o0 = _561;
    float4 _572 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _586 = o0;
    _586.w = mad(_572.w, r4.w, mad(_572.z, r4.z, mad(_572.y, r4.y, _572.x * r4.x)));
    o0 = _586;
    float2 _592 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _592.x, _592.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _621 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _621.x, _621.y, _621.z);
    float4 _637 = r1;
    _637.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _637;
    float4 _652 = r1;
    _652.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _652;
    float4 _667 = r1;
    _667.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _667;
    float3 _673 = r0.xxx * r1.xyz;
    r0 = float4(_673.x, _673.y, _673.z, r0.w);
    float4 _689 = r0;
    _689.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _689;
    float4 _694 = r0;
    _694.w = rsqrt(r0.w);
    r0 = _694;
    float3 _700 = r0.www * r0.xyz;
    r0 = float4(_700.x, _700.y, _700.z, r0.w);
    float3 _710 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _722 = r1;
    _722.x = mad(_710.z, r0.xyz.z, mad(_710.y, r0.xyz.y, _710.x * r0.xyz.x));
    r1 = _722;
    float3 _731 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _743 = r1;
    _743.y = mad(_731.z, r0.xyz.z, mad(_731.y, r0.xyz.y, _731.x * r0.xyz.x));
    r1 = _743;
    float3 _752 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _764 = r1;
    _764.z = mad(_752.z, r0.xyz.z, mad(_752.y, r0.xyz.y, _752.x * r0.xyz.x));
    r1 = _764;
    float4 _779 = r0;
    _779.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _779;
    float4 _784 = r0;
    _784.x = rsqrt(r0.x);
    r0 = _784;
    o3 = r0.xxx * r1.xyz;
    o4 = float4(r4.xyz.x, r4.xyz.y, r4.xyz.z, o4.w);
    float3 _807 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_807.x, _807.y, _807.z, r0.w);
    float4 _811 = o4;
    _811.w = asfloat(0u);
    o4 = _811;
    float4 _820 = r0;
    _820.w = r0.y * cb0_m[13].x;
    r0 = _820;
    float4 _827 = r1;
    _827.x = r0.w * asfloat(3216550459u);
    r1 = _827;
    float4 _832 = r1;
    _832.x = exp2(r1.x);
    r1 = _832;
    float4 _839 = r1;
    _839.x = (-r1.x) + asfloat(1065353216u);
    r1 = _839;
    float4 _846 = r0;
    _846.w = r1.x / r0.w;
    r0 = _846;
    float4 _858 = r1;
    _858.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _858;
    float4 _873 = r0;
    _873.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _873;
    float4 _878 = r0;
    _878.x = sqrt(r0.x);
    r0 = _878;
    float4 _886 = r0;
    _886.x = r0.x * cb0_m[13].y;
    r0 = _886;
    float4 _896 = r0;
    _896.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _896;
    float4 _908 = r0;
    _908.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _908;
    float4 _914 = r0;
    _914.x = exp2(-r0.x);
    r0 = _914;
    float4 _920 = r0;
    _920.x = min(r0.x, asfloat(1065353216u));
    r0 = _920;
    float4 _927 = o5;
    _927.w = (-r0.x) + asfloat(1065353216u);
    o5 = _927;
    float3 _936 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o5 = float4(_936.x, _936.y, _936.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _945 = asfloat(v1);
    shader_in[1] = float4(_945.x, _945.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = asfloat(v4);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
