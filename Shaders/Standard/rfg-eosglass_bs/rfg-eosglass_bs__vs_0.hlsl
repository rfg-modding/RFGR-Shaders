cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _50 = r0;
    _50.w = asfloat(1065353216u);
    r0 = _50;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _60 = r1;
    _60.w = asfloat(1065353216u);
    r1 = _60;
    float4 _78 = r0;
    _78.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _78;
    float4 _96 = r0;
    _96.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _96;
    float4 _114 = r0;
    _114.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _114;
    float4 _130 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _144 = o0;
    _144.x = mad(_130.w, r0.w, mad(_130.z, r0.z, mad(_130.y, r0.y, _130.x * r0.x)));
    o0 = _144;
    float4 _156 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _170 = o0;
    _170.y = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _182 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _196 = o0;
    _196.z = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _208 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _222 = o0;
    _222.w = mad(_208.w, r0.w, mad(_208.z, r0.z, mad(_208.y, r0.y, _208.x * r0.x)));
    o0 = _222;
    float3 _236 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_236.x, _236.y, _236.z, r1.w);
    float3 _250 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_250.x, _250.y, _250.z, r0.w);
    float4 _266 = r0;
    _266.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _266;
    float4 _271 = r0;
    _271.w = rsqrt(r0.w);
    r0 = _271;
    float3 _277 = r0.www * r1.xyz;
    r1 = float4(_277.x, _277.y, _277.z, r1.w);
    float3 _291 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_291.x, _291.y, _291.z, r2.w);
    float4 _310 = r3;
    _310.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _310;
    float4 _326 = r3;
    _326.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _326;
    float4 _342 = r3;
    _342.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _342;
    float4 _357 = r0;
    _357.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _357;
    float4 _362 = r0;
    _362.w = rsqrt(r0.w);
    r0 = _362;
    float3 _368 = r0.www * r3.xyz;
    r2 = float4(_368.x, _368.y, _368.z, r2.w);
    r3 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _395 = r4;
    _395.x = mad(shader_in[5].xyz.z, r3.xyz.z, mad(shader_in[5].xyz.y, r3.xyz.y, shader_in[5].xyz.x * r3.xyz.x));
    r4 = _395;
    float4 _411 = r4;
    _411.y = mad(shader_in[6].xyz.z, r3.xyz.z, mad(shader_in[6].xyz.y, r3.xyz.y, shader_in[6].xyz.x * r3.xyz.x));
    r4 = _411;
    float4 _427 = r4;
    _427.z = mad(shader_in[7].xyz.z, r3.xyz.z, mad(shader_in[7].xyz.y, r3.xyz.y, shader_in[7].xyz.x * r3.xyz.x));
    r4 = _427;
    float4 _442 = r0;
    _442.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _442;
    float4 _447 = r0;
    _447.w = rsqrt(r0.w);
    r0 = _447;
    float3 _453 = r0.www * r4.xyz;
    r3 = float4(_453.x, _453.y, _453.z, r3.w);
    float3 _460 = r2.zxy * r3.yzx;
    r4 = float4(_460.x, _460.y, _460.z, r4.w);
    float3 _471 = (r2.yzx * r3.zxy) + (-r4.xyz);
    r4 = float4(_471.x, _471.y, _471.z, r4.w);
    float3 _478 = r3.www * r4.xyz;
    r4 = float4(_478.x, _478.y, _478.z, r4.w);
    float3 _494 = o1;
    _494.y = mad(r1.xyz.z, r4.xyz.z, mad(r1.xyz.y, r4.xyz.y, r1.xyz.x * r4.xyz.x));
    o1 = _494;
    float3 _509 = o1;
    _509.x = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o1 = _509;
    float4 _524 = r0;
    _524.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _524;
    float3 _528 = o1;
    _528.z = r0.w;
    o1 = _528;
    float4 _535 = r0;
    _535.w = r0.w + r0.w;
    r0 = _535;
    float3 _545 = (r2.xyz * (-r0.www)) + r1.xyz;
    r1 = float4(_545.x, _545.y, _545.z, r1.w);
    o3 = r1.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u));
    float3 _560 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _572 = o2;
    _572.x = mad(_560.z, r3.xyz.z, mad(_560.y, r3.xyz.y, _560.x * r3.xyz.x));
    o2 = _572;
    float4 _576 = o4;
    _576.x = r3.y;
    o4 = _576;
    float3 _585 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _597 = o2;
    _597.z = mad(_585.z, r2.xyz.z, mad(_585.y, r2.xyz.y, _585.x * r2.xyz.x));
    o2 = _597;
    float4 _601 = o4;
    _601.z = r2.y;
    o4 = _601;
    float3 _610 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _622 = o2;
    _622.y = mad(_610.z, r4.xyz.z, mad(_610.y, r4.xyz.y, _610.x * r4.xyz.x));
    o2 = _622;
    float4 _626 = o4;
    _626.y = r4.y;
    o4 = _626;
    float4 _635 = r0;
    _635.w = r0.y * cb0_m[13].x;
    r0 = _635;
    float4 _642 = r1;
    _642.x = r0.w * asfloat(3216550459u);
    r1 = _642;
    float4 _647 = r1;
    _647.x = exp2(r1.x);
    r1 = _647;
    float4 _654 = r1;
    _654.x = (-r1.x) + asfloat(1065353216u);
    r1 = _654;
    float4 _661 = r0;
    _661.w = r1.x / r0.w;
    r0 = _661;
    float4 _673 = r1;
    _673.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _673;
    float4 _688 = r0;
    _688.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _688;
    float4 _693 = r0;
    _693.x = sqrt(r0.x);
    r0 = _693;
    float4 _701 = r0;
    _701.x = r0.x * cb0_m[13].y;
    r0 = _701;
    float4 _711 = r0;
    _711.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _711;
    float4 _723 = r0;
    _723.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _723;
    float4 _729 = r0;
    _729.x = exp2(-r0.x);
    r0 = _729;
    float4 _735 = r0;
    _735.x = min(r0.x, asfloat(1065353216u));
    r0 = _735;
    float4 _742 = o4;
    _742.w = (-r0.x) + asfloat(1065353216u);
    o4 = _742;
    float2 _749 = float2(asint(shader_in[1].xy));
    r0 = float4(_749.x, _749.y, r0.z, r0.w);
    float2 _758 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_758.x, _758.y, o5.z, o5.w);
    float2 _766 = float2(asint(shader_in[4].xy));
    r0 = float4(_766.x, _766.y, r0.z, r0.w);
    float2 _772 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _772.x, _772.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _781 = asfloat(v1);
    shader_in[1] = float4(_781.x, _781.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _792 = asfloat(v4);
    shader_in[4] = float4(_792.x, _792.y, shader_in[4].z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
