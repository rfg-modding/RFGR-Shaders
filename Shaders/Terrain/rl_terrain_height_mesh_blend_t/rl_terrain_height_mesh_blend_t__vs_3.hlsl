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
static float4 o2;
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
    float2 _56 = float2(asint(shader_in[0].xy));
    r0 = float4(_56.x, _56.y, r0.z, r0.w);
    float4 _65 = r0;
    _65.y = r0.y + asfloat(1191182336u);
    r0 = _65;
    float4 _73 = r1;
    _73.y = r0.x * asfloat(1015021568u);
    r1 = _73;
    float4 _80 = r0;
    _80.x = r0.y * asfloat(998244352u);
    r0 = _80;
    float4 _85 = r1;
    _85.z = trunc(r0.x);
    r1 = _85;
    float4 _96 = r1;
    _96.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _96;
    float4 _100 = r1;
    _100.w = asfloat(1065353216u);
    r1 = _100;
    float4 _117 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _131 = r0;
    _131.y = mad(_117.w, r1.w, mad(_117.z, r1.z, mad(_117.y, r1.y, _117.x * r1.x)));
    r0 = _131;
    float4 _142 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _156 = r0;
    _156.x = mad(_142.w, r1.w, mad(_142.z, r1.z, mad(_142.y, r1.y, _142.x * r1.x)));
    r0 = _156;
    float4 _168 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _182 = r0;
    _182.z = mad(_168.w, r1.w, mad(_168.z, r1.z, mad(_168.y, r1.y, _168.x * r1.x)));
    r0 = _182;
    float4 _185 = r0;
    _185.w = asfloat(1065353216u);
    r0 = _185;
    float4 _196 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _210 = o0;
    _210.x = mad(_196.w, r0.w, mad(_196.z, r0.z, mad(_196.y, r0.y, _196.x * r0.x)));
    o0 = _210;
    float4 _221 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _235 = o0;
    _235.y = mad(_221.w, r0.w, mad(_221.z, r0.z, mad(_221.y, r0.y, _221.x * r0.x)));
    o0 = _235;
    float4 _246 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _260 = o0;
    _260.z = mad(_246.w, r0.w, mad(_246.z, r0.z, mad(_246.y, r0.y, _246.x * r0.x)));
    o0 = _260;
    float4 _272 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _286 = o0;
    _286.w = mad(_272.w, r0.w, mad(_272.z, r0.z, mad(_272.y, r0.y, _272.x * r0.x)));
    o0 = _286;
    float2 _297 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_297.x, _297.y, r1.z, r1.w);
    float2 _314 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r1 = float4(r1.x, r1.y, _314.x, _314.y);
    o1 = r1.zw * float2(cb2_m[6].x, cb2_m[6].y);
    float3 _338 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_338.x, _338.y, _338.z, r2.w);
    float3 _353 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_353.x, _353.y, _353.z, r0.w);
    float4 _369 = r0;
    _369.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _369;
    float4 _374 = o2;
    _374.w = sqrt(r0.w);
    o2 = _374;
    float3 _387 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_387.x, _387.y, _387.z, r2.w);
    float3 _397 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _410 = r3;
    _410.x = mad(_397.z, r2.xyz.z, mad(_397.y, r2.xyz.y, _397.x * r2.xyz.x));
    r3 = _410;
    float3 _419 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _431 = r3;
    _431.y = mad(_419.z, r2.xyz.z, mad(_419.y, r2.xyz.y, _419.x * r2.xyz.x));
    r3 = _431;
    float3 _440 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _452 = r3;
    _452.z = mad(_440.z, r2.xyz.z, mad(_440.y, r2.xyz.y, _440.x * r2.xyz.x));
    r3 = _452;
    float4 _467 = r0;
    _467.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _467;
    float4 _472 = r0;
    _472.w = rsqrt(r0.w);
    r0 = _472;
    float3 _478 = r0.www * r3.xyz;
    r2 = float4(_478.x, _478.y, _478.z, r2.w);
    float3 _485 = r2.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r3 = float4(_485.x, _485.y, _485.z, r3.w);
    float3 _496 = (r2.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r3.xyz);
    r3 = float4(_496.x, _496.y, _496.z, r3.w);
    float4 _509 = r0;
    _509.w = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _509;
    float4 _514 = r0;
    _514.w = rsqrt(r0.w);
    r0 = _514;
    float3 _520 = r0.www * r3.xyz;
    r3 = float4(_520.x, _520.y, _520.z, r3.w);
    float3 _528 = r2.yzx * (-r3.xyz);
    r4 = float4(_528.x, _528.y, _528.z, r4.w);
    float3 _541 = ((-r3.zxy) * r2.zxy) + (-r4.xyz);
    r4 = float4(_541.x, _541.y, _541.z, r4.w);
    float4 _546 = o2;
    _546.x = r4.y;
    o2 = _546;
    float3 _555 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _567 = o3;
    _567.x = mad(_555.z, r4.xyz.z, mad(_555.y, r4.xyz.y, _555.x * r4.xyz.x));
    o3 = _567;
    float4 _572 = o2;
    _572.y = -r3.z;
    o2 = _572;
    float2 _579 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _582 = -r3.xz;
    float4 _589 = o3;
    _589.y = mad(_579.y, _582.y, _579.x * _582.x);
    o3 = _589;
    float4 _593 = o2;
    _593.z = r2.y;
    o2 = _593;
    float3 _602 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _614 = o3;
    _614.z = mad(_602.z, r2.xyz.z, mad(_602.y, r2.xyz.y, _602.x * r2.xyz.x));
    o3 = _614;
    float4 _623 = r0;
    _623.w = r0.y * cb0_m[13].x;
    r0 = _623;
    float4 _630 = r1;
    _630.z = r0.w * asfloat(3216550459u);
    r1 = _630;
    float4 _635 = r1;
    _635.z = exp2(r1.z);
    r1 = _635;
    float4 _642 = r1;
    _642.z = (-r1.z) + asfloat(1065353216u);
    r1 = _642;
    float4 _649 = r0;
    _649.w = r1.z / r0.w;
    r0 = _649;
    float4 _661 = r1;
    _661.z = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _661;
    float4 _676 = r0;
    _676.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _676;
    float4 _681 = r0;
    _681.x = sqrt(r0.x);
    r0 = _681;
    float4 _689 = r0;
    _689.x = r0.x * cb0_m[13].y;
    r0 = _689;
    float4 _699 = r0;
    _699.y = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _699;
    float4 _711 = r0;
    _711.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _711;
    float4 _717 = r0;
    _717.x = exp2(-r0.x);
    r0 = _717;
    float4 _723 = r0;
    _723.x = min(r0.x, asfloat(1065353216u));
    r0 = _723;
    float4 _730 = o3;
    _730.w = (-r0.x) + asfloat(1065353216u);
    o3 = _730;
    float2 _743 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_743.x, _743.y, r0.z, r0.w);
    float2 _754 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(_754.x, _754.y, o4.z, o4.w);
    float2 _768 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r0 = float4(_768.x, _768.y, r0.z, r0.w);
    float2 _779 = r0.xy * float2(cb2_m[7].x, cb2_m[7].y);
    o4 = float4(o4.x, o4.y, _779.x, _779.y);
    float2 _789 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_789.x, _789.y, r0.z, r0.w);
    float2 _803 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(r0.x, r0.y, _803.x, _803.y);
    float2 _814 = r0.zw * float2(cb2_m[5].x, cb2_m[5].y);
    o5 = float4(o5.x, o5.y, _814.x, _814.y);
    float2 _826 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_826.x, _826.y, r0.z, r0.w);
    float2 _838 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_838.x, _838.y, o5.z, o5.w);
}

void vert_main()
{
    float2 _843 = asfloat(v0);
    shader_in[0] = float4(_843.x, _843.y, shader_in[0].z, shader_in[0].w);
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
