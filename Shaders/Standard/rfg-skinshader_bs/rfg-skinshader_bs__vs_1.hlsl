cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
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
    _78.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _78;
    float4 _96 = r0;
    _96.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _96;
    float4 _114 = r0;
    _114.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
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
    float2 _228 = float2(asint(shader_in[1].xy));
    r1 = float4(_228.x, _228.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _249 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_249.x, _249.y, _249.z, r1.w);
    float4 _267 = r2;
    _267.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _267;
    float4 _283 = r2;
    _283.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _283;
    float4 _299 = r2;
    _299.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _299;
    float4 _314 = r0;
    _314.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _314;
    float4 _319 = r0;
    _319.w = rsqrt(r0.w);
    r0 = _319;
    float3 _325 = r0.www * r2.xyz;
    r1 = float4(_325.x, _325.y, _325.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _352 = r3;
    _352.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _352;
    float4 _368 = r3;
    _368.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _368;
    float4 _384 = r3;
    _384.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _384;
    float4 _399 = r0;
    _399.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _399;
    float4 _404 = r0;
    _404.w = rsqrt(r0.w);
    r0 = _404;
    float3 _410 = r0.www * r3.xyz;
    r2 = float4(_410.x, _410.y, _410.z, r2.w);
    float3 _417 = r1.zxy * r2.yzx;
    r3 = float4(_417.x, _417.y, _417.z, r3.w);
    float3 _428 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_428.x, _428.y, _428.z, r3.w);
    float3 _435 = r2.www * r3.xyz;
    r3 = float4(_435.x, _435.y, _435.z, r3.w);
    float3 _449 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_449.x, _449.y, _449.z, r4.w);
    float3 _466 = o2;
    _466.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _466;
    float3 _481 = o2;
    _481.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _481;
    float3 _496 = o2;
    _496.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _496;
    float3 _510 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_510.x, _510.y, _510.z, r4.w);
    float3 _524 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_524.x, _524.y, _524.z, r0.w);
    float3 _540 = o3;
    _540.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _540;
    float3 _549 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _561 = o4;
    _561.x = mad(_549.z, r2.xyz.z, mad(_549.y, r2.xyz.y, _549.x * r2.xyz.x));
    o4 = _561;
    float3 _576 = o3;
    _576.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _576;
    float3 _585 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _597 = o4;
    _597.z = mad(_585.z, r1.xyz.z, mad(_585.y, r1.xyz.y, _585.x * r1.xyz.x));
    o4 = _597;
    float3 _612 = o3;
    _612.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _612;
    float3 _621 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _633 = o4;
    _633.y = mad(_621.z, r3.xyz.z, mad(_621.y, r3.xyz.y, _621.x * r3.xyz.x));
    o4 = _633;
    float4 _642 = r0;
    _642.w = r0.y * cb0_m[13].x;
    r0 = _642;
    float4 _649 = r1;
    _649.x = r0.w * asfloat(3216550459u);
    r1 = _649;
    float4 _654 = r1;
    _654.x = exp2(r1.x);
    r1 = _654;
    float4 _661 = r1;
    _661.x = (-r1.x) + asfloat(1065353216u);
    r1 = _661;
    float4 _668 = r0;
    _668.w = r1.x / r0.w;
    r0 = _668;
    float4 _680 = r1;
    _680.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _680;
    float4 _695 = r0;
    _695.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _695;
    float4 _700 = r0;
    _700.x = sqrt(r0.x);
    r0 = _700;
    float4 _708 = r0;
    _708.x = r0.x * cb0_m[13].y;
    r0 = _708;
    float4 _718 = r0;
    _718.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _718;
    float4 _730 = r0;
    _730.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _730;
    float4 _736 = r0;
    _736.x = exp2(-r0.x);
    r0 = _736;
    float4 _742 = r0;
    _742.x = min(r0.x, asfloat(1065353216u));
    r0 = _742;
    float4 _749 = o4;
    _749.w = (-r0.x) + asfloat(1065353216u);
    o4 = _749;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _757 = asfloat(v1);
    shader_in[1] = float4(_757.x, _757.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
