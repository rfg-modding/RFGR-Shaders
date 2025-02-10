cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float3 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
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
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _50 = r0;
    _50.w = asfloat(1065353216u);
    r0 = _50;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _61 = r1;
    _61.w = asfloat(1065353216u);
    r1 = _61;
    float4 _76 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _90 = r0;
    _90.x = mad(_76.w, r1.w, mad(_76.z, r1.z, mad(_76.y, r1.y, _76.x * r1.x)));
    r0 = _90;
    float4 _102 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _116 = r0;
    _116.y = mad(_102.w, r1.w, mad(_102.z, r1.z, mad(_102.y, r1.y, _102.x * r1.x)));
    r0 = _116;
    float4 _128 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _142 = r0;
    _142.z = mad(_128.w, r1.w, mad(_128.z, r1.z, mad(_128.y, r1.y, _128.x * r1.x)));
    r0 = _142;
    float4 _153 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _167 = o0;
    _167.x = mad(_153.w, r0.w, mad(_153.z, r0.z, mad(_153.y, r0.y, _153.x * r0.x)));
    o0 = _167;
    float4 _178 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _192 = o0;
    _192.y = mad(_178.w, r0.w, mad(_178.z, r0.z, mad(_178.y, r0.y, _178.x * r0.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _217 = o0;
    _217.z = mad(_203.w, r0.w, mad(_203.z, r0.z, mad(_203.y, r0.y, _203.x * r0.x)));
    o0 = _217;
    float4 _229 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _243 = o0;
    _243.w = mad(_229.w, r0.w, mad(_229.z, r0.z, mad(_229.y, r0.y, _229.x * r0.x)));
    o0 = _243;
    float3 _257 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_257.x, _257.y, _257.z, r0.w);
    float4 _262 = r0;
    _262.w = asfloat(3212836864u);
    r0 = _262;
    float3 _276 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_276.x, _276.y, _276.z, r1.w);
    float3 _288 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _298 = r1;
    _298.w = mad(r1.xyz.z, _288.z, mad(r1.xyz.y, _288.y, r1.xyz.x * _288.x));
    r1 = _298;
    float4 _307 = r1;
    _307.w = r1.w * cb5_m[5].y;
    r1 = _307;
    float4 _315 = r2;
    _315.y = r0.w * r1.w;
    r2 = _315;
    float3 _326 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _337 = r3;
    _337.x = mad(r1.xyz.z, _326.z, mad(r1.xyz.y, _326.y, r1.xyz.x * _326.x));
    r3 = _337;
    float3 _348 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _358 = r3;
    _358.z = mad(r1.xyz.z, _348.z, mad(r1.xyz.y, _348.y, r1.xyz.x * _348.x));
    r3 = _358;
    float2 _368 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_368.x, r2.y, _368.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _380 = o2;
    _380.w = r2.z;
    o2 = _380;
    float3 _392 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_392.x, _392.y, _392.z, r1.w);
    float3 _406 = r1.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_406.x, _406.y, _406.z, r2.w);
    float3 _424 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r1.zxy) + (-r2.xyz);
    r2 = float4(_424.x, _424.y, _424.z, r2.w);
    float4 _440 = r0;
    _440.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _440;
    float4 _445 = r0;
    _445.w = rsqrt(r0.w);
    r0 = _445;
    float3 _451 = r0.www * r2.xyz;
    r2 = float4(_451.x, _451.y, _451.z, r2.w);
    float3 _458 = r1.zxy * r2.yzx;
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float3 _469 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_469.x, _469.y, _469.z, r3.w);
    float4 _485 = r0;
    _485.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _485;
    float4 _490 = r0;
    _490.w = rsqrt(r0.w);
    r0 = _490;
    float3 _496 = r0.www * r3.xyz;
    r3 = float4(_496.x, _496.y, _496.z, r3.w);
    float3 _506 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _518 = o2;
    _518.x = mad(_506.z, r3.xyz.z, mad(_506.y, r3.xyz.y, _506.x * r3.xyz.x));
    o2 = _518;
    float3 _527 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _539 = o2;
    _539.y = mad(_527.z, r2.xyz.z, mad(_527.y, r2.xyz.y, _527.x * r2.xyz.x));
    o2 = _539;
    float3 _548 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _560 = o4;
    _560.y = mad(_548.z, r2.xyz.z, mad(_548.y, r2.xyz.y, _548.x * r2.xyz.x));
    o4 = _560;
    float3 _569 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _581 = o2;
    _581.z = mad(_569.z, r1.xyz.z, mad(_569.y, r1.xyz.y, _569.x * r1.xyz.x));
    o2 = _581;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    float3 _601 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _613 = r2;
    _613.x = mad(_601.z, r1.xyz.z, mad(_601.y, r1.xyz.y, _601.x * r1.xyz.x));
    r2 = _613;
    float3 _622 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _634 = r2;
    _634.y = mad(_622.z, r1.xyz.z, mad(_622.y, r1.xyz.y, _622.x * r1.xyz.x));
    r2 = _634;
    float3 _643 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _655 = r2;
    _655.z = mad(_643.z, r1.xyz.z, mad(_643.y, r1.xyz.y, _643.x * r1.xyz.x));
    r2 = _655;
    float4 _670 = r0;
    _670.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _670;
    float4 _675 = r0;
    _675.w = rsqrt(r0.w);
    r0 = _675;
    float3 _681 = r0.www * r2.xyz;
    r1 = float4(_681.x, _681.y, _681.z, r1.w);
    float3 _691 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _703 = o4;
    _703.z = mad(_691.z, r1.xyz.z, mad(_691.y, r1.xyz.y, _691.x * r1.xyz.x));
    o4 = _703;
    float4 _712 = r0;
    _712.w = r0.y * cb0_m[13].x;
    r0 = _712;
    float4 _719 = r1;
    _719.x = r0.w * asfloat(3216550459u);
    r1 = _719;
    float4 _724 = r1;
    _724.x = exp2(r1.x);
    r1 = _724;
    float4 _731 = r1;
    _731.x = (-r1.x) + asfloat(1065353216u);
    r1 = _731;
    float4 _738 = r0;
    _738.w = r1.x / r0.w;
    r0 = _738;
    float4 _750 = r1;
    _750.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _750;
    float4 _765 = r0;
    _765.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _765;
    float4 _770 = r0;
    _770.x = sqrt(r0.x);
    r0 = _770;
    float4 _778 = r0;
    _778.x = r0.x * cb0_m[13].y;
    r0 = _778;
    float4 _788 = r0;
    _788.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _788;
    float4 _800 = r0;
    _800.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _800;
    float4 _806 = r0;
    _806.x = exp2(-r0.x);
    r0 = _806;
    float4 _812 = r0;
    _812.x = min(r0.x, asfloat(1065353216u));
    r0 = _812;
    float4 _819 = o4;
    _819.w = (-r0.x) + asfloat(1065353216u);
    o4 = _819;
    float3 _828 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _840 = r0;
    _840.x = mad(_828.z, r3.xyz.z, mad(_828.y, r3.xyz.y, _828.x * r3.xyz.x));
    r0 = _840;
    float3 _849 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _861 = r0;
    _861.y = mad(_849.z, r3.xyz.z, mad(_849.y, r3.xyz.y, _849.x * r3.xyz.x));
    r0 = _861;
    float3 _870 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _882 = r0;
    _882.z = mad(_870.z, r3.xyz.z, mad(_870.y, r3.xyz.y, _870.x * r3.xyz.x));
    r0 = _882;
    float4 _897 = r0;
    _897.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _897;
    float4 _902 = r0;
    _902.w = rsqrt(r0.w);
    r0 = _902;
    float3 _908 = r0.www * r0.xyz;
    r0 = float4(_908.x, _908.y, _908.z, r0.w);
    float3 _918 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _930 = o4;
    _930.x = mad(_918.z, r0.xyz.z, mad(_918.y, r0.xyz.y, _918.x * r0.xyz.x));
    o4 = _930;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
