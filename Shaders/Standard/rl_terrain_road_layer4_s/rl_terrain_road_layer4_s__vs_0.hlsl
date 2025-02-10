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
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[12] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v1;
static int2 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
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
    float4 _59 = r0;
    _59.w = asfloat(1065353216u);
    r0 = _59;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _69 = r1;
    _69.w = asfloat(1065353216u);
    r1 = _69;
    float4 _85 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _99 = r0;
    _99.y = mad(_85.w, r1.w, mad(_85.z, r1.z, mad(_85.y, r1.y, _85.x * r1.x)));
    r0 = _99;
    float4 _110 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _124 = r0;
    _124.x = mad(_110.w, r1.w, mad(_110.z, r1.z, mad(_110.y, r1.y, _110.x * r1.x)));
    r0 = _124;
    float4 _136 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _150 = r0;
    _150.z = mad(_136.w, r1.w, mad(_136.z, r1.z, mad(_136.y, r1.y, _136.x * r1.x)));
    r0 = _150;
    float4 _161 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _175 = o0;
    _175.x = mad(_161.w, r0.w, mad(_161.z, r0.z, mad(_161.y, r0.y, _161.x * r0.x)));
    o0 = _175;
    float4 _186 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _200 = o0;
    _200.y = mad(_186.w, r0.w, mad(_186.z, r0.z, mad(_186.y, r0.y, _186.x * r0.x)));
    o0 = _200;
    float4 _211 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _225 = o0;
    _225.z = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float4 _237 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _251 = o0;
    _251.w = mad(_237.w, r0.w, mad(_237.z, r0.z, mad(_237.y, r0.y, _237.x * r0.x)));
    o0 = _251;
    float2 _257 = float2(asint(shader_in[2].xy));
    r1 = float4(_257.x, _257.y, r1.z, r1.w);
    float2 _266 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r1 = float4(_266.x, _266.y, r1.z, r1.w);
    o1 = r1.xy;
    float4 _282 = o4;
    _282.w = (r1.x * cb2_m[11].x) + cb2_m[11].y;
    o4 = _282;
    float4 _293 = o2;
    _293.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o2 = _293;
    float3 _304 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_304.x, _304.y, _304.z, r1.w);
    float3 _314 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _327 = r2;
    _327.y = mad(_314.z, r1.xyz.z, mad(_314.y, r1.xyz.y, _314.x * r1.xyz.x));
    r2 = _327;
    float3 _336 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _348 = r2;
    _348.z = mad(_336.z, r1.xyz.z, mad(_336.y, r1.xyz.y, _336.x * r1.xyz.x));
    r2 = _348;
    float3 _357 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _369 = r2;
    _369.x = mad(_357.z, r1.xyz.z, mad(_357.y, r1.xyz.y, _357.x * r1.xyz.x));
    r2 = _369;
    float4 _384 = r0;
    _384.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _384;
    float4 _389 = r0;
    _389.w = rsqrt(r0.w);
    r0 = _389;
    float3 _395 = r0.www * r2.xyz;
    r1 = float4(_395.x, _395.y, _395.z, r1.w);
    float3 _402 = r1.zxy * asfloat(uint3(1065353216u, 0u, 0u));
    r2 = float4(_402.x, _402.y, _402.z, r2.w);
    float3 _413 = (r1.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r2.xyz);
    r2 = float4(_413.x, _413.y, _413.z, r2.w);
    float4 _426 = r0;
    _426.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r0 = _426;
    float4 _431 = r0;
    _431.w = rsqrt(r0.w);
    r0 = _431;
    float3 _437 = r0.www * r2.xyz;
    r2 = float4(_437.x, _437.y, _437.z, r2.w);
    float3 _445 = r1.zxy * (-r2.xyz);
    r3 = float4(_445.x, _445.y, _445.z, r3.w);
    float3 _458 = ((-r2.zxy) * r1.xyz) + (-r3.xyz);
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float4 _463 = o2;
    _463.x = r3.y;
    o2 = _463;
    float4 _468 = o2;
    _468.y = -r2.z;
    o2 = _468;
    float4 _472 = o2;
    _472.z = r1.z;
    o2 = _472;
    float3 _485 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_485.x, _485.y, _485.z, r4.w);
    float3 _500 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r5 = float4(_500.x, _500.y, _500.z, r5.w);
    float2 _513 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_513.x, _513.y, r0.z, r0.w);
    float4 _523 = r0;
    _523.z = r4.y * cb0_m[13].x;
    r0 = _523;
    float4 _530 = r0;
    _530.w = r0.z * asfloat(3216550459u);
    r0 = _530;
    float4 _535 = r0;
    _535.w = exp2(r0.w);
    r0 = _535;
    float4 _542 = r0;
    _542.w = (-r0.w) + asfloat(1065353216u);
    r0 = _542;
    float4 _549 = r0;
    _549.z = r0.w / r0.z;
    r0 = _549;
    float4 _561 = r0;
    _561.w = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r0 = _561;
    float4 _576 = r1;
    _576.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _576;
    float4 _581 = r1;
    _581.w = sqrt(r1.w);
    r1 = _581;
    float4 _589 = r1;
    _589.w = r1.w * cb0_m[13].y;
    r1 = _589;
    float4 _599 = r0;
    _599.z = (asuint(r0.w) != 0u) ? r0.z : asfloat(1065353216u);
    r0 = _599;
    float4 _611 = r0;
    _611.z = (r0.z * r1.w) + (-cb0_m[13].w);
    r0 = _611;
    float4 _617 = r0;
    _617.z = exp2(-r0.z);
    r0 = _617;
    float4 _623 = r0;
    _623.z = min(r0.z, asfloat(1065353216u));
    r0 = _623;
    float4 _630 = o3;
    _630.w = (-r0.z) + asfloat(1065353216u);
    o3 = _630;
    float3 _639 = float3(cb1_m[0].z, cb1_m[0].x, cb1_m[0].y);
    float4 _651 = o3;
    _651.z = mad(_639.z, r1.xyz.z, mad(_639.y, r1.xyz.y, _639.x * r1.xyz.x));
    o3 = _651;
    float2 _658 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _661 = -r2.xz;
    float4 _668 = o3;
    _668.y = mad(_658.y, _661.y, _658.x * _661.x);
    o3 = _668;
    float3 _677 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _689 = o3;
    _689.x = mad(_677.z, r3.xyz.z, mad(_677.y, r3.xyz.y, _677.x * r3.xyz.x));
    o3 = _689;
    float4 _704 = r0;
    _704.z = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _704;
    float4 _709 = r0;
    _709.z = rsqrt(r0.z);
    r0 = _709;
    float3 _715 = r0.zzz * r5.xyz;
    r4 = float4(_715.x, _715.y, _715.z, r4.w);
    float4 _731 = o4;
    _731.z = mad(r4.zxy.z, r1.xyz.z, mad(r4.zxy.y, r1.xyz.y, r4.zxy.x * r1.xyz.x));
    o4 = _731;
    float2 _737 = -r2.xz;
    float4 _744 = o4;
    _744.y = mad(r4.zy.y, _737.y, r4.zy.x * _737.x);
    o4 = _744;
    float4 _759 = o4;
    _759.x = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o4 = _759;
    float2 _775 = (float2(cb2_m[10].x, cb2_m[10].z) * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(r0.x, r0.y, _775.x, _775.y);
    float2 _780 = floor(r0.zw);
    r0 = float4(r0.x, r0.y, _780.x, _780.y);
    float2 _788 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r2 = float4(r2.x, _788.x, r2.z, _788.y);
    float2 _796 = (-r0.zw) + r2.yw;
    r0 = float4(r0.x, r0.y, _796.x, _796.y);
    float2 _806 = (r0.zw * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _806.x, _806.y);
    float2 _820 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(r0.x, r0.y, _820.x, _820.y);
    float2 _831 = r0.zw * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_831.x, _831.y, o5.z, o5.w);
    float2 _845 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(r0.x, r0.y, _845.x, _845.y);
    float2 _859 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(_859.x, _859.y, r0.z, r0.w);
    float2 _870 = r0.xy * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _870.x, _870.y);
    float2 _881 = r0.zw * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_881.x, _881.y, o6.z, o6.w);
    float3 _890 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_890.x, _890.y, _890.z, r0.w);
    float3 _900 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _912 = r4;
    _912.x = mad(_900.z, r0.xyz.z, mad(_900.y, r0.xyz.y, _900.x * r0.xyz.x));
    r4 = _912;
    float3 _921 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _933 = r4;
    _933.y = mad(_921.z, r0.xyz.z, mad(_921.y, r0.xyz.y, _921.x * r0.xyz.x));
    r4 = _933;
    float3 _942 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _954 = r4;
    _954.z = mad(_942.z, r0.xyz.z, mad(_942.y, r0.xyz.y, _942.x * r0.xyz.x));
    r4 = _954;
    float4 _969 = r0;
    _969.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _969;
    float4 _974 = r0;
    _974.x = rsqrt(r0.x);
    r0 = _974;
    float3 _980 = r0.xxx * r4.xyz;
    r0 = float4(_980.x, _980.y, _980.z, r0.w);
    float3 _987 = r0.yzx * r1.xyz;
    r4 = float4(_987.x, _987.y, _987.z, r4.w);
    float3 _998 = (r1.zxy * r0.zxy) + (-r4.xyz);
    r1 = float4(_998.x, _998.y, _998.z, r1.w);
    float2 _1005 = -r2.xz;
    float4 _1012 = o7;
    _1012.w = mad(r1.zy.y, _1005.y, r1.zy.x * _1005.x);
    o7 = _1012;
    float4 _1027 = o7;
    _1027.z = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o7 = _1027;
    float4 _1042 = o7;
    _1042.x = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o7 = _1042;
    float2 _1048 = -r2.xz;
    float4 _1055 = o7;
    _1055.y = mad(r0.zy.y, _1048.y, r0.zy.x * _1048.x);
    o7 = _1055;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float2 _1065 = asfloat(v2);
    shader_in[2] = float4(_1065.x, _1065.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = v3;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
