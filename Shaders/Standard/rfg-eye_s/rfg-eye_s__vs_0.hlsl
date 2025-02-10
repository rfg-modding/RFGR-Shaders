cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
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
    float2 _249 = float2(asint(shader_in[1].xy));
    r1 = float4(_249.x, _249.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _270 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_270.x, _270.y, _270.z, r1.w);
    float3 _280 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _293 = r2;
    _293.x = mad(_280.z, r1.xyz.z, mad(_280.y, r1.xyz.y, _280.x * r1.xyz.x));
    r2 = _293;
    float3 _302 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _314 = r2;
    _314.y = mad(_302.z, r1.xyz.z, mad(_302.y, r1.xyz.y, _302.x * r1.xyz.x));
    r2 = _314;
    float3 _323 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _335 = r2;
    _335.z = mad(_323.z, r1.xyz.z, mad(_323.y, r1.xyz.y, _323.x * r1.xyz.x));
    r2 = _335;
    float4 _350 = r0;
    _350.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _350;
    float4 _355 = r0;
    _355.w = rsqrt(r0.w);
    r0 = _355;
    float3 _361 = r0.www * r2.xyz;
    r1 = float4(_361.x, _361.y, _361.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _380 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _393 = r3;
    _393.x = mad(_380.z, r2.xyz.z, mad(_380.y, r2.xyz.y, _380.x * r2.xyz.x));
    r3 = _393;
    float3 _402 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _414 = r3;
    _414.y = mad(_402.z, r2.xyz.z, mad(_402.y, r2.xyz.y, _402.x * r2.xyz.x));
    r3 = _414;
    float3 _423 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _435 = r3;
    _435.z = mad(_423.z, r2.xyz.z, mad(_423.y, r2.xyz.y, _423.x * r2.xyz.x));
    r3 = _435;
    float4 _450 = r0;
    _450.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _450;
    float4 _455 = r0;
    _455.w = rsqrt(r0.w);
    r0 = _455;
    float3 _461 = r0.www * r3.xyz;
    r2 = float4(_461.x, _461.y, _461.z, r2.w);
    float3 _468 = r1.zxy * r2.yzx;
    r3 = float4(_468.x, _468.y, _468.z, r3.w);
    float3 _479 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_479.x, _479.y, _479.z, r3.w);
    float3 _486 = r2.www * r3.xyz;
    r3 = float4(_486.x, _486.y, _486.z, r3.w);
    float3 _501 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_501.x, _501.y, _501.z, r4.w);
    float3 _516 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_516.x, _516.y, _516.z, r0.w);
    float3 _532 = o2;
    _532.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _532;
    float3 _547 = o2;
    _547.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _547;
    float3 _562 = o2;
    _562.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _562;
    float4 _571 = r0;
    _571.w = r0.y * cb0_m[13].x;
    r0 = _571;
    float4 _578 = r1;
    _578.w = r0.w * asfloat(3216550459u);
    r1 = _578;
    float4 _583 = r1;
    _583.w = exp2(r1.w);
    r1 = _583;
    float4 _590 = r1;
    _590.w = (-r1.w) + asfloat(1065353216u);
    r1 = _590;
    float4 _597 = r0;
    _597.w = r1.w / r0.w;
    r0 = _597;
    float4 _609 = r1;
    _609.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _609;
    float4 _624 = r0;
    _624.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _624;
    float4 _629 = r0;
    _629.x = sqrt(r0.x);
    r0 = _629;
    float4 _637 = r0;
    _637.x = r0.x * cb0_m[13].y;
    r0 = _637;
    float4 _647 = r0;
    _647.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _647;
    float4 _659 = r0;
    _659.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _659;
    float4 _665 = r0;
    _665.x = exp2(-r0.x);
    r0 = _665;
    float4 _671 = r0;
    _671.x = min(r0.x, asfloat(1065353216u));
    r0 = _671;
    float4 _678 = o3;
    _678.w = (-r0.x) + asfloat(1065353216u);
    o3 = _678;
    float2 _685 = float2(cb1_m[0].x, cb1_m[0].z);
    float2 _691 = float2(cb1_m[0].x, cb1_m[0].z);
    float4 _698 = r0;
    _698.x = mad(_685.y, _691.y, _685.x * _691.x);
    r0 = _698;
    float4 _703 = r0;
    _703.x = sqrt(r0.x);
    r0 = _703;
    float4 _711 = r0;
    _711.x = asfloat((asfloat(0u) < r0.x) ? 4294967295u : 0u);
    r0 = _711;
    float4 _718 = r0;
    _718.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _718;
    float2 _725 = float2(cb1_m[0].x, cb1_m[0].z);
    r4 = float4(_725.x, r4.y, _725.y, r4.w);
    float4 _729 = r4;
    _729.y = asfloat(0u);
    r4 = _729;
    float3 _742 = r4.xyz + (-float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z));
    r0 = float4(r0.x, _742.x, _742.y, _742.z);
    float3 _758 = (r0.xxx * r0.yzw) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_758.x, _758.y, _758.z, r0.w);
    float4 _774 = r0;
    _774.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _774;
    float4 _779 = r0;
    _779.w = rsqrt(r0.w);
    r0 = _779;
    float3 _785 = r0.www * r0.xyz;
    r0 = float4(_785.x, _785.y, _785.z, r0.w);
    float4 _801 = o3;
    _801.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _801;
    float4 _816 = o3;
    _816.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _816;
    float4 _831 = o3;
    _831.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _831;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _839 = asfloat(v1);
    shader_in[1] = float4(_839.x, _839.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
