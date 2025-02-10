cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
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
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _59 = r1;
    _59.w = asfloat(1065353216u);
    r1 = _59;
    float4 _76 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _90 = r0;
    _90.y = mad(_76.w, r1.w, mad(_76.z, r1.z, mad(_76.y, r1.y, _76.x * r1.x)));
    r0 = _90;
    float4 _101 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _115 = r0;
    _115.x = mad(_101.w, r1.w, mad(_101.z, r1.z, mad(_101.y, r1.y, _101.x * r1.x)));
    r0 = _115;
    float4 _127 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _141 = r0;
    _141.z = mad(_127.w, r1.w, mad(_127.z, r1.z, mad(_127.y, r1.y, _127.x * r1.x)));
    r0 = _141;
    float4 _152 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _166 = o0;
    _166.x = mad(_152.w, r0.w, mad(_152.z, r0.z, mad(_152.y, r0.y, _152.x * r0.x)));
    o0 = _166;
    float4 _177 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _191 = o0;
    _191.y = mad(_177.w, r0.w, mad(_177.z, r0.z, mad(_177.y, r0.y, _177.x * r0.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _216 = o0;
    _216.z = mad(_202.w, r0.w, mad(_202.z, r0.z, mad(_202.y, r0.y, _202.x * r0.x)));
    o0 = _216;
    float4 _228 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _242 = o0;
    _242.w = mad(_228.w, r0.w, mad(_228.z, r0.z, mad(_228.y, r0.y, _228.x * r0.x)));
    o0 = _242;
    float2 _253 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_253.x, _253.y, r1.z, r1.w);
    float2 _266 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r1 = float4(_266.x, _266.y, r1.z, r1.w);
    float2 _279 = r1.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r1 = float4(_279.x, _279.y, r1.z, r1.w);
    o1 = (r1.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    float3 _303 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_303.x, _303.y, _303.z, r1.w);
    float3 _313 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _326 = r2;
    _326.x = mad(_313.z, r1.xyz.z, mad(_313.y, r1.xyz.y, _313.x * r1.xyz.x));
    r2 = _326;
    float3 _335 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _347 = r2;
    _347.y = mad(_335.z, r1.xyz.z, mad(_335.y, r1.xyz.y, _335.x * r1.xyz.x));
    r2 = _347;
    float3 _356 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _368 = r2;
    _368.z = mad(_356.z, r1.xyz.z, mad(_356.y, r1.xyz.y, _356.x * r1.xyz.x));
    r2 = _368;
    float4 _383 = r0;
    _383.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _383;
    float4 _388 = r0;
    _388.w = rsqrt(r0.w);
    r0 = _388;
    o2 = r0.www * r2.xyz;
    float3 _407 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_407.x, _407.y, _407.z, r1.w);
    float3 _421 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o4 = float4(_421.x, _421.y, _421.z, o4.w);
    float4 _431 = r0;
    _431.x = r1.y * cb0_m[13].x;
    r0 = _431;
    float4 _438 = r0;
    _438.y = r0.x * asfloat(3216550459u);
    r0 = _438;
    float4 _443 = r0;
    _443.y = exp2(r0.y);
    r0 = _443;
    float4 _450 = r0;
    _450.y = (-r0.y) + asfloat(1065353216u);
    r0 = _450;
    float4 _457 = r0;
    _457.x = r0.y / r0.x;
    r0 = _457;
    float4 _469 = r0;
    _469.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _469;
    float4 _484 = r0;
    _484.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _484;
    float4 _489 = r0;
    _489.z = sqrt(r0.z);
    r0 = _489;
    float4 _497 = r0;
    _497.z = r0.z * cb0_m[13].y;
    r0 = _497;
    float4 _507 = r0;
    _507.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _507;
    float4 _519 = r0;
    _519.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _519;
    float4 _525 = r0;
    _525.x = exp2(-r0.x);
    r0 = _525;
    float4 _531 = r0;
    _531.x = min(r0.x, asfloat(1065353216u));
    r0 = _531;
    float4 _538 = o3;
    _538.w = (-r0.x) + asfloat(1065353216u);
    o3 = _538;
    float3 _547 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o3 = float4(_547.x, _547.y, _547.z, o3.w);
    float4 _555 = r0;
    _555.x = float(asint(shader_in[2].x));
    r0 = _555;
    float4 _561 = o4;
    _561.w = r0.x * asfloat(981467136u);
    o4 = _561;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _575 = shader_in[2];
    _575.x = asfloat(v2);
    shader_in[2] = _575;
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
