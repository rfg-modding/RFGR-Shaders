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
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _48 = r0;
    _48.w = asfloat(1065353216u);
    r0 = _48;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _58 = r1;
    _58.w = asfloat(1065353216u);
    r1 = _58;
    float4 _76 = r0;
    _76.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _76;
    float4 _94 = r0;
    _94.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _94;
    float4 _112 = r0;
    _112.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _112;
    float4 _128 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _142 = o0;
    _142.x = mad(_128.w, r0.w, mad(_128.z, r0.z, mad(_128.y, r0.y, _128.x * r0.x)));
    o0 = _142;
    float4 _154 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _168 = o0;
    _168.y = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    o0 = _168;
    float4 _180 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _194 = o0;
    _194.z = mad(_180.w, r0.w, mad(_180.z, r0.z, mad(_180.y, r0.y, _180.x * r0.x)));
    o0 = _194;
    float4 _206 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _220 = o0;
    _220.w = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float3 _233 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_233.x, _233.y, _233.z, r1.w);
    float4 _251 = r2;
    _251.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _251;
    float4 _267 = r2;
    _267.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _267;
    float4 _283 = r2;
    _283.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _283;
    float4 _298 = r0;
    _298.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _298;
    float4 _303 = r0;
    _303.w = rsqrt(r0.w);
    r0 = _303;
    float3 _309 = r0.www * r2.xyz;
    r1 = float4(_309.x, _309.y, _309.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _337 = r3;
    _337.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _337;
    float4 _353 = r3;
    _353.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _353;
    float4 _369 = r3;
    _369.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _369;
    float4 _384 = r0;
    _384.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _384;
    float4 _389 = r0;
    _389.w = rsqrt(r0.w);
    r0 = _389;
    float3 _395 = r0.www * r3.xyz;
    r2 = float4(_395.x, _395.y, _395.z, r2.w);
    float3 _402 = r1.zxy * r2.yzx;
    r3 = float4(_402.x, _402.y, _402.z, r3.w);
    float3 _413 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_413.x, _413.y, _413.z, r3.w);
    float3 _420 = r2.www * r3.xyz;
    r3 = float4(_420.x, _420.y, _420.z, r3.w);
    float3 _434 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_434.x, _434.y, _434.z, r4.w);
    float3 _450 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_450.x, _450.y, _450.z, r0.w);
    float3 _466 = o1;
    _466.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _466;
    float3 _475 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _487 = o2;
    _487.y = mad(_475.z, r3.xyz.z, mad(_475.y, r3.xyz.y, _475.x * r3.xyz.x));
    o2 = _487;
    float3 _502 = o1;
    _502.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _502;
    float3 _511 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _523 = o2;
    _523.z = mad(_511.z, r1.xyz.z, mad(_511.y, r1.xyz.y, _511.x * r1.xyz.x));
    o2 = _523;
    float3 _538 = o1;
    _538.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _538;
    float3 _547 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _559 = o2;
    _559.x = mad(_547.z, r2.xyz.z, mad(_547.y, r2.xyz.y, _547.x * r2.xyz.x));
    o2 = _559;
    float4 _568 = r0;
    _568.w = r0.y * cb0_m[13].x;
    r0 = _568;
    float4 _575 = r1;
    _575.x = r0.w * asfloat(3216550459u);
    r1 = _575;
    float4 _580 = r1;
    _580.x = exp2(r1.x);
    r1 = _580;
    float4 _587 = r1;
    _587.x = (-r1.x) + asfloat(1065353216u);
    r1 = _587;
    float4 _594 = r0;
    _594.w = r1.x / r0.w;
    r0 = _594;
    float4 _606 = r1;
    _606.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _606;
    float4 _621 = r0;
    _621.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _621;
    float4 _626 = r0;
    _626.x = sqrt(r0.x);
    r0 = _626;
    float4 _634 = r0;
    _634.x = r0.x * cb0_m[13].y;
    r0 = _634;
    float4 _644 = r0;
    _644.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _644;
    float4 _656 = r0;
    _656.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _656;
    float4 _662 = r0;
    _662.x = exp2(-r0.x);
    r0 = _662;
    float4 _668 = r0;
    _668.x = min(r0.x, asfloat(1065353216u));
    r0 = _668;
    float4 _675 = o2;
    _675.w = (-r0.x) + asfloat(1065353216u);
    o2 = _675;
    float2 _682 = float2(asint(shader_in[1].xy));
    r0 = float4(_682.x, _682.y, r0.z, r0.w);
    float2 _691 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_691.x, _691.y, o3.z, o3.w);
    float2 _698 = float2(asint(shader_in[2].xy));
    r0 = float4(_698.x, _698.y, r0.z, r0.w);
    float2 _704 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _704.x, _704.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _713 = asfloat(v1);
    shader_in[1] = float4(_713.x, _713.y, shader_in[1].z, shader_in[1].w);
    float2 _718 = asfloat(v2);
    shader_in[2] = float4(_718.x, _718.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
