cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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
static float3 o1;
static float4 o2;
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
    float2 _57 = float2(asint(shader_in[0].xy));
    r0 = float4(_57.x, _57.y, r0.z, r0.w);
    float4 _66 = r0;
    _66.y = r0.y + asfloat(1191182336u);
    r0 = _66;
    float4 _74 = r1;
    _74.y = r0.x * asfloat(1015021568u);
    r1 = _74;
    float4 _81 = r0;
    _81.x = r0.y * asfloat(998244352u);
    r0 = _81;
    float4 _86 = r1;
    _86.z = trunc(r0.x);
    r1 = _86;
    float4 _97 = r1;
    _97.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _97;
    float4 _101 = r1;
    _101.w = asfloat(1065353216u);
    r1 = _101;
    float4 _116 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _130 = r0;
    _130.x = mad(_116.w, r1.w, mad(_116.z, r1.z, mad(_116.y, r1.y, _116.x * r1.x)));
    r0 = _130;
    float4 _142 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _156 = r0;
    _156.y = mad(_142.w, r1.w, mad(_142.z, r1.z, mad(_142.y, r1.y, _142.x * r1.x)));
    r0 = _156;
    float4 _168 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _182 = r0;
    _182.z = mad(_168.w, r1.w, mad(_168.z, r1.z, mad(_168.y, r1.y, _168.x * r1.x)));
    r0 = _182;
    float3 _196 = r1.xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_196.x, _196.y, _196.z, r1.w);
    float4 _200 = r0;
    _200.w = asfloat(1065353216u);
    r0 = _200;
    float4 _211 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _225 = o0;
    _225.x = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float4 _236 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _250 = o0;
    _250.y = mad(_236.w, r0.w, mad(_236.z, r0.z, mad(_236.y, r0.y, _236.x * r0.x)));
    o0 = _250;
    float4 _261 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _275 = o0;
    _275.z = mad(_261.w, r0.w, mad(_261.z, r0.z, mad(_261.y, r0.y, _261.x * r0.x)));
    o0 = _275;
    float4 _286 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _300 = o0;
    _300.w = mad(_286.w, r0.w, mad(_286.z, r0.z, mad(_286.y, r0.y, _286.x * r0.x)));
    o0 = _300;
    float3 _313 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_313.x, _313.y, _313.z, r2.w);
    float3 _329 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_329.x, _329.y, _329.z, r0.w);
    float3 _344 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r3 = float4(_344.x, _344.y, _344.z, r3.w);
    float3 _364 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r3.xyz);
    r3 = float4(_364.x, _364.y, _364.z, r3.w);
    float4 _380 = r0;
    _380.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _380;
    float4 _385 = r0;
    _385.w = rsqrt(r0.w);
    r0 = _385;
    float3 _391 = r0.www * r3.xyz;
    r3 = float4(_391.x, _391.y, _391.z, r3.w);
    float3 _399 = r3.yzx * shader_in[1].zxy;
    r4 = float4(_399.x, _399.y, _399.z, r4.w);
    float3 _412 = (shader_in[1].yzx * r3.zxy) + (-r4.xyz);
    r4 = float4(_412.x, _412.y, _412.z, r4.w);
    float3 _422 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _434 = o2;
    _434.y = mad(_422.z, r3.xyz.z, mad(_422.y, r3.xyz.y, _422.x * r3.xyz.x));
    o2 = _434;
    float4 _449 = r0;
    _449.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _449;
    float4 _454 = r0;
    _454.w = rsqrt(r0.w);
    r0 = _454;
    float3 _460 = r0.www * r4.xyz;
    r3 = float4(_460.x, _460.y, _460.z, r3.w);
    float3 _470 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _482 = r4;
    _482.x = mad(_470.z, r3.xyz.z, mad(_470.y, r3.xyz.y, _470.x * r3.xyz.x));
    r4 = _482;
    float3 _491 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _503 = r4;
    _503.y = mad(_491.z, r3.xyz.z, mad(_491.y, r3.xyz.y, _491.x * r3.xyz.x));
    r4 = _503;
    float3 _512 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _524 = r4;
    _524.z = mad(_512.z, r3.xyz.z, mad(_512.y, r3.xyz.y, _512.x * r3.xyz.x));
    r4 = _524;
    float3 _533 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _545 = o2;
    _545.x = mad(_533.z, r3.xyz.z, mad(_533.y, r3.xyz.y, _533.x * r3.xyz.x));
    o2 = _545;
    float4 _560 = r0;
    _560.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _560;
    float4 _565 = r0;
    _565.w = rsqrt(r0.w);
    r0 = _565;
    float3 _571 = r0.www * r4.xyz;
    r3 = float4(_571.x, _571.y, _571.z, r3.w);
    float3 _581 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _594 = r4;
    _594.x = mad(_581.z, shader_in[1].xyz.z, mad(_581.y, shader_in[1].xyz.y, _581.x * shader_in[1].xyz.x));
    r4 = _594;
    float3 _603 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _616 = r4;
    _616.y = mad(_603.z, shader_in[1].xyz.z, mad(_603.y, shader_in[1].xyz.y, _603.x * shader_in[1].xyz.x));
    r4 = _616;
    float3 _625 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _638 = r4;
    _638.z = mad(_625.z, shader_in[1].xyz.z, mad(_625.y, shader_in[1].xyz.y, _625.x * shader_in[1].xyz.x));
    r4 = _638;
    float4 _653 = r0;
    _653.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _653;
    float4 _658 = r0;
    _658.w = rsqrt(r0.w);
    r0 = _658;
    float3 _664 = r0.www * r4.xyz;
    r4 = float4(_664.x, _664.y, _664.z, r4.w);
    float3 _671 = r3.yzx * r4.zxy;
    r5 = float4(_671.x, _671.y, _671.z, r5.w);
    float3 _683 = (r4.yzx * r3.zxy) + (-r5.xyz);
    r5 = float4(_683.x, _683.y, _683.z, r5.w);
    float3 _690 = -r5.xyz;
    float3 _700 = o1;
    _700.y = mad(r2.xyz.z, _690.z, mad(r2.xyz.y, _690.y, r2.xyz.x * _690.x));
    o1 = _700;
    float3 _709 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _712 = -r5.xyz;
    float4 _722 = o5;
    _722.y = mad(_709.z, _712.z, mad(_709.y, _712.y, _709.x * _712.x));
    o5 = _722;
    float3 _737 = o1;
    _737.x = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o1 = _737;
    float3 _746 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _758 = o5;
    _758.x = mad(_746.z, r3.xyz.z, mad(_746.y, r3.xyz.y, _746.x * r3.xyz.x));
    o5 = _758;
    float3 _773 = o1;
    _773.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    o1 = _773;
    float3 _782 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _794 = o5;
    _794.z = mad(_782.z, r4.xyz.z, mad(_782.y, r4.xyz.y, _782.x * r4.xyz.x));
    o5 = _794;
    float3 _805 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _815 = r2;
    _815.x = mad(r1.xyz.z, _805.z, mad(r1.xyz.y, _805.y, r1.xyz.x * _805.x));
    r2 = _815;
    float3 _826 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _836 = r2;
    _836.z = mad(r1.xyz.z, _826.z, mad(r1.xyz.y, _826.y, r1.xyz.x * _826.x));
    r2 = _836;
    float3 _847 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _857 = r0;
    _857.w = mad(r1.xyz.z, _847.z, mad(r1.xyz.y, _847.y, r1.xyz.x * _847.x));
    r0 = _857;
    float4 _866 = r0;
    _866.w = r0.w * cb5_m[5].y;
    r0 = _866;
    float2 _876 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_876.x, r1.y, _876.y, r1.w);
    float4 _881 = o2;
    _881.w = r1.z;
    o2 = _881;
    float3 _890 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _903 = o2;
    _903.z = mad(_890.z, shader_in[1].xyz.z, mad(_890.y, shader_in[1].xyz.y, _890.x * shader_in[1].xyz.x));
    o2 = _903;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _934 = r1;
    _934.z = r0.y * cb0_m[13].x;
    r1 = _934;
    float4 _941 = r1;
    _941.w = r1.z * asfloat(3216550459u);
    r1 = _941;
    float4 _946 = r1;
    _946.w = exp2(r1.w);
    r1 = _946;
    float4 _953 = r1;
    _953.w = (-r1.w) + asfloat(1065353216u);
    r1 = _953;
    float4 _960 = r1;
    _960.z = r1.w / r1.z;
    r1 = _960;
    float4 _972 = r1;
    _972.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _972;
    float4 _987 = r0;
    _987.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _987;
    float4 _992 = r0;
    _992.x = sqrt(r0.x);
    r0 = _992;
    float4 _1000 = r0;
    _1000.x = r0.x * cb0_m[13].y;
    r0 = _1000;
    float4 _1010 = r0;
    _1010.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _1010;
    float4 _1022 = r0;
    _1022.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _1022;
    float4 _1028 = r0;
    _1028.x = exp2(-r0.x);
    r0 = _1028;
    float4 _1034 = r0;
    _1034.x = min(r0.x, asfloat(1065353216u));
    r0 = _1034;
    float4 _1041 = o5;
    _1041.w = (-r0.x) + asfloat(1065353216u);
    o5 = _1041;
    float4 _1045 = r0;
    _1045.x = asfloat(3212836864u);
    r0 = _1045;
    float4 _1052 = r1;
    _1052.y = r0.w * r0.x;
    r1 = _1052;
    float2 _1060 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1060.x, _1060.y, o6.z, o6.w);
    float2 _1066 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1066.x, _1066.y);
}

void vert_main()
{
    float2 _1071 = asfloat(v0);
    shader_in[0] = float4(_1071.x, _1071.y, shader_in[0].z, shader_in[0].w);
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
