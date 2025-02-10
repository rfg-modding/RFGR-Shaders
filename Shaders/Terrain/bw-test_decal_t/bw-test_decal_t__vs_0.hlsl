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
    float3 _314 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_314.x, _314.y, _314.z, r0.w);
    float3 _329 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_329.x, _329.y, _329.z, r2.w);
    float3 _349 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r2.xyz);
    r2 = float4(_349.x, _349.y, _349.z, r2.w);
    float4 _365 = r0;
    _365.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _365;
    float4 _370 = r0;
    _370.w = rsqrt(r0.w);
    r0 = _370;
    float3 _376 = r0.www * r2.xyz;
    r2 = float4(_376.x, _376.y, _376.z, r2.w);
    float3 _384 = r2.yzx * shader_in[1].zxy;
    r3 = float4(_384.x, _384.y, _384.z, r3.w);
    float3 _397 = (shader_in[1].yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_397.x, _397.y, _397.z, r3.w);
    float3 _407 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _419 = o2;
    _419.y = mad(_407.z, r2.xyz.z, mad(_407.y, r2.xyz.y, _407.x * r2.xyz.x));
    o2 = _419;
    float4 _434 = r0;
    _434.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _434;
    float4 _439 = r0;
    _439.w = rsqrt(r0.w);
    r0 = _439;
    float3 _445 = r0.www * r3.xyz;
    r2 = float4(_445.x, _445.y, _445.z, r2.w);
    float3 _455 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _467 = r3;
    _467.x = mad(_455.z, r2.xyz.z, mad(_455.y, r2.xyz.y, _455.x * r2.xyz.x));
    r3 = _467;
    float3 _476 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _488 = r3;
    _488.y = mad(_476.z, r2.xyz.z, mad(_476.y, r2.xyz.y, _476.x * r2.xyz.x));
    r3 = _488;
    float3 _497 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _509 = r3;
    _509.z = mad(_497.z, r2.xyz.z, mad(_497.y, r2.xyz.y, _497.x * r2.xyz.x));
    r3 = _509;
    float3 _518 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _530 = o2;
    _530.x = mad(_518.z, r2.xyz.z, mad(_518.y, r2.xyz.y, _518.x * r2.xyz.x));
    o2 = _530;
    float4 _545 = r0;
    _545.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _545;
    float4 _550 = r0;
    _550.w = rsqrt(r0.w);
    r0 = _550;
    float3 _556 = r0.www * r3.xyz;
    r2 = float4(_556.x, _556.y, _556.z, r2.w);
    float3 _566 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _579 = r3;
    _579.x = mad(_566.z, shader_in[1].xyz.z, mad(_566.y, shader_in[1].xyz.y, _566.x * shader_in[1].xyz.x));
    r3 = _579;
    float3 _588 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _601 = r3;
    _601.y = mad(_588.z, shader_in[1].xyz.z, mad(_588.y, shader_in[1].xyz.y, _588.x * shader_in[1].xyz.x));
    r3 = _601;
    float3 _610 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _623 = r3;
    _623.z = mad(_610.z, shader_in[1].xyz.z, mad(_610.y, shader_in[1].xyz.y, _610.x * shader_in[1].xyz.x));
    r3 = _623;
    float4 _638 = r0;
    _638.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _638;
    float4 _643 = r0;
    _643.w = rsqrt(r0.w);
    r0 = _643;
    float3 _649 = r0.www * r3.xyz;
    r3 = float4(_649.x, _649.y, _649.z, r3.w);
    float3 _656 = r2.yzx * r3.zxy;
    r4 = float4(_656.x, _656.y, _656.z, r4.w);
    float3 _668 = (r3.yzx * r2.zxy) + (-r4.xyz);
    r4 = float4(_668.x, _668.y, _668.z, r4.w);
    float3 _678 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _681 = -r4.xyz;
    float3 _691 = o1;
    _691.y = mad(_678.z, _681.z, mad(_678.y, _681.y, _678.x * _681.x));
    o1 = _691;
    float4 _696 = o5;
    _696.y = -r4.y;
    o5 = _696;
    float3 _705 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _717 = o1;
    _717.x = mad(_705.z, r2.xyz.z, mad(_705.y, r2.xyz.y, _705.x * r2.xyz.x));
    o1 = _717;
    float4 _721 = o5;
    _721.x = r2.y;
    o5 = _721;
    float3 _730 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _742 = o1;
    _742.z = mad(_730.z, r3.xyz.z, mad(_730.y, r3.xyz.y, _730.x * r3.xyz.x));
    o1 = _742;
    float4 _746 = o5;
    _746.z = r3.y;
    o5 = _746;
    float3 _757 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _767 = r2;
    _767.x = mad(r1.xyz.z, _757.z, mad(r1.xyz.y, _757.y, r1.xyz.x * _757.x));
    r2 = _767;
    float3 _778 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _788 = r2;
    _788.z = mad(r1.xyz.z, _778.z, mad(r1.xyz.y, _778.y, r1.xyz.x * _778.x));
    r2 = _788;
    float3 _799 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _809 = r0;
    _809.w = mad(r1.xyz.z, _799.z, mad(r1.xyz.y, _799.y, r1.xyz.x * _799.x));
    r0 = _809;
    float4 _818 = r0;
    _818.w = r0.w * cb5_m[5].y;
    r0 = _818;
    float2 _828 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_828.x, r1.y, _828.y, r1.w);
    float4 _833 = o2;
    _833.w = r1.z;
    o2 = _833;
    float3 _842 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _855 = o2;
    _855.z = mad(_842.z, shader_in[1].xyz.z, mad(_842.y, shader_in[1].xyz.y, _842.x * shader_in[1].xyz.x));
    o2 = _855;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _886 = r1;
    _886.z = r0.y * cb0_m[13].x;
    r1 = _886;
    float4 _893 = r1;
    _893.w = r1.z * asfloat(3216550459u);
    r1 = _893;
    float4 _898 = r1;
    _898.w = exp2(r1.w);
    r1 = _898;
    float4 _905 = r1;
    _905.w = (-r1.w) + asfloat(1065353216u);
    r1 = _905;
    float4 _912 = r1;
    _912.z = r1.w / r1.z;
    r1 = _912;
    float4 _924 = r1;
    _924.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _924;
    float4 _939 = r0;
    _939.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _939;
    float4 _944 = r0;
    _944.x = sqrt(r0.x);
    r0 = _944;
    float4 _952 = r0;
    _952.x = r0.x * cb0_m[13].y;
    r0 = _952;
    float4 _962 = r0;
    _962.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _962;
    float4 _974 = r0;
    _974.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _974;
    float4 _980 = r0;
    _980.x = exp2(-r0.x);
    r0 = _980;
    float4 _986 = r0;
    _986.x = min(r0.x, asfloat(1065353216u));
    r0 = _986;
    float4 _993 = o5;
    _993.w = (-r0.x) + asfloat(1065353216u);
    o5 = _993;
    float4 _997 = r0;
    _997.x = asfloat(3212836864u);
    r0 = _997;
    float4 _1004 = r1;
    _1004.y = r0.w * r0.x;
    r1 = _1004;
    float2 _1012 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1012.x, _1012.y, o6.z, o6.w);
    float2 _1018 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1018.x, _1018.y);
}

void vert_main()
{
    float2 _1023 = asfloat(v0);
    shader_in[0] = float4(_1023.x, _1023.y, shader_in[0].z, shader_in[0].w);
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
