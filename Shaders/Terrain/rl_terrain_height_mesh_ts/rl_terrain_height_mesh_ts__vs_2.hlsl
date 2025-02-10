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
    float3 _262 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_262.x, _262.y, _262.z, r1.w);
    float2 _274 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_274.x, _274.y, r0.z, r0.w);
    float2 _291 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _291.x, _291.y);
    o1 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    float3 _314 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_314.x, _314.y, _314.z, r2.w);
    float3 _325 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _338 = r3;
    _338.x = mad(_325.z, r2.xyz.z, mad(_325.y, r2.xyz.y, _325.x * r2.xyz.x));
    r3 = _338;
    float3 _347 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _359 = r3;
    _359.y = mad(_347.z, r2.xyz.z, mad(_347.y, r2.xyz.y, _347.x * r2.xyz.x));
    r3 = _359;
    float3 _368 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _380 = r3;
    _380.z = mad(_368.z, r2.xyz.z, mad(_368.y, r2.xyz.y, _368.x * r2.xyz.x));
    r3 = _380;
    float4 _395 = r0;
    _395.z = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _395;
    float4 _400 = r0;
    _400.z = rsqrt(r0.z);
    r0 = _400;
    float3 _406 = r0.zzz * r3.xyz;
    r2 = float4(_406.x, _406.y, _406.z, r2.w);
    float3 _413 = r2.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r3 = float4(_413.x, _413.y, _413.z, r3.w);
    float3 _424 = (r2.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r3.xyz);
    r3 = float4(_424.x, _424.y, _424.z, r3.w);
    float4 _437 = r0;
    _437.z = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _437;
    float4 _442 = r0;
    _442.z = rsqrt(r0.z);
    r0 = _442;
    float3 _448 = r0.zzz * r3.xyz;
    r3 = float4(_448.x, _448.y, _448.z, r3.w);
    float3 _456 = r2.yzx * (-r3.xyz);
    r4 = float4(_456.x, _456.y, _456.z, r4.w);
    float3 _469 = ((-r3.zxy) * r2.zxy) + (-r4.xyz);
    r4 = float4(_469.x, _469.y, _469.z, r4.w);
    float3 _479 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _491 = o2;
    _491.x = mad(_479.z, r4.xyz.z, mad(_479.y, r4.xyz.y, _479.x * r4.xyz.x));
    o2 = _491;
    float2 _498 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _501 = -r3.xz;
    float3 _508 = o2;
    _508.y = mad(_498.y, _501.y, _498.x * _501.x);
    o2 = _508;
    float3 _517 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _529 = o2;
    _529.z = mad(_517.z, r2.xyz.z, mad(_517.y, r2.xyz.y, _517.x * r2.xyz.x));
    o2 = _529;
    float4 _544 = r0;
    _544.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _544;
    float4 _549 = r0;
    _549.z = rsqrt(r0.z);
    r0 = _549;
    float3 _555 = r0.zzz * r1.xyz;
    r1 = float4(_555.x, _555.y, _555.z, r1.w);
    float4 _571 = o3;
    _571.z = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    o3 = _571;
    float2 _577 = -r3.xz;
    float4 _584 = o3;
    _584.y = mad(r1.zy.y, _577.y, r1.zy.x * _577.x);
    o3 = _584;
    float4 _599 = o3;
    _599.x = mad(r1.xyz.z, r4.xyz.z, mad(r1.xyz.y, r4.xyz.y, r1.xyz.x * r4.xyz.x));
    o3 = _599;
    float4 _606 = r0;
    _606.z = float(asint(shader_in[2].x));
    r0 = _606;
    float4 _613 = o3;
    _613.w = r0.z * asfloat(981467136u);
    o3 = _613;
    float2 _626 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(r0.x, r0.y, _626.x, _626.y);
    float2 _637 = r0.zw * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(_637.x, _637.y, o4.z, o4.w);
    float2 _651 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r0 = float4(r0.x, r0.y, _651.x, _651.y);
    float2 _662 = r0.zw * float2(cb2_m[7].x, cb2_m[7].y);
    o4 = float4(o4.x, o4.y, _662.x, _662.y);
    float2 _672 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(r0.x, r0.y, _672.x, _672.y);
    float2 _686 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_686.x, _686.y, r0.z, r0.w);
    float2 _697 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o5 = float4(o5.x, o5.y, _697.x, _697.y);
    float2 _709 = r0.zw + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_709.x, _709.y, r0.z, r0.w);
    float2 _720 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_720.x, _720.y, o5.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _735 = shader_in[2];
    _735.x = asfloat(v2);
    shader_in[2] = _735;
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
