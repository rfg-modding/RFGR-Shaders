cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
    o2 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _626 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _626.x, _626.y, _626.z);
    float3 _640 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_640.x, _640.y, _640.z, r1.w);
    float4 _656 = r1;
    _656.w = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _656;
    float4 _661 = r1;
    _661.w = rsqrt(r1.w);
    r1 = _661;
    o3 = r0.yzw * r1.www;
    float3 _679 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _679.x, _679.y, _679.z);
    float4 _695 = r3;
    _695.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r3 = _695;
    float4 _710 = r3;
    _710.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r3 = _710;
    float4 _725 = r3;
    _725.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r3 = _725;
    float3 _731 = r0.xxx * r3.xyz;
    r0 = float4(_731.x, _731.y, _731.z, r0.w);
    float4 _747 = r0;
    _747.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _747;
    float4 _752 = r0;
    _752.w = rsqrt(r0.w);
    r0 = _752;
    float3 _758 = r0.www * r0.xyz;
    r0 = float4(_758.x, _758.y, _758.z, r0.w);
    float3 _768 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _780 = r2;
    _780.x = mad(_768.z, r0.xyz.z, mad(_768.y, r0.xyz.y, _768.x * r0.xyz.x));
    r2 = _780;
    float3 _789 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _801 = r2;
    _801.y = mad(_789.z, r0.xyz.z, mad(_789.y, r0.xyz.y, _789.x * r0.xyz.x));
    r2 = _801;
    float3 _810 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _822 = r2;
    _822.z = mad(_810.z, r0.xyz.z, mad(_810.y, r0.xyz.y, _810.x * r0.xyz.x));
    r2 = _822;
    float4 _837 = r0;
    _837.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _837;
    float4 _842 = r0;
    _842.x = rsqrt(r0.x);
    r0 = _842;
    float3 _848 = r0.xxx * r2.xyz;
    o4 = float4(_848.x, _848.y, _848.z, o4.w);
    float4 _852 = o4;
    _852.w = asfloat(0u);
    o4 = _852;
    float4 _861 = r0;
    _861.x = r1.y * cb0_m[13].x;
    r0 = _861;
    float4 _868 = r0;
    _868.y = r0.x * asfloat(3216550459u);
    r0 = _868;
    float4 _873 = r0;
    _873.y = exp2(r0.y);
    r0 = _873;
    float4 _880 = r0;
    _880.y = (-r0.y) + asfloat(1065353216u);
    r0 = _880;
    float4 _887 = r0;
    _887.x = r0.y / r0.x;
    r0 = _887;
    float4 _899 = r0;
    _899.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _899;
    float4 _914 = r0;
    _914.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _914;
    float4 _919 = r0;
    _919.z = sqrt(r0.z);
    r0 = _919;
    float4 _927 = r0;
    _927.z = r0.z * cb0_m[13].y;
    r0 = _927;
    float4 _937 = r0;
    _937.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _937;
    float4 _949 = r0;
    _949.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _949;
    float4 _955 = r0;
    _955.x = exp2(-r0.x);
    r0 = _955;
    float4 _961 = r0;
    _961.x = min(r0.x, asfloat(1065353216u));
    r0 = _961;
    float4 _968 = o5;
    _968.w = (-r0.x) + asfloat(1065353216u);
    o5 = _968;
    float3 _977 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o5 = float4(_977.x, _977.y, _977.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _986 = asfloat(v1);
    shader_in[1] = float4(_986.x, _986.y, shader_in[1].z, shader_in[1].w);
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
