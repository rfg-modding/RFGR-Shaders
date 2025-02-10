cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _47 = r0;
    _47.w = asfloat(1065353216u);
    r0 = _47;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _57 = r1;
    _57.w = asfloat(1065353216u);
    r1 = _57;
    float4 _73 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _87 = r0;
    _87.x = mad(_73.w, r1.w, mad(_73.z, r1.z, mad(_73.y, r1.y, _73.x * r1.x)));
    r0 = _87;
    float4 _99 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _113 = r0;
    _113.y = mad(_99.w, r1.w, mad(_99.z, r1.z, mad(_99.y, r1.y, _99.x * r1.x)));
    r0 = _113;
    float4 _125 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _139 = r0;
    _139.z = mad(_125.w, r1.w, mad(_125.z, r1.z, mad(_125.y, r1.y, _125.x * r1.x)));
    r0 = _139;
    float4 _150 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _164 = r1;
    _164.x = mad(_150.w, r0.w, mad(_150.z, r0.z, mad(_150.y, r0.y, _150.x * r0.x)));
    r1 = _164;
    float4 _175 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _189 = r1;
    _189.y = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    r1 = _189;
    float4 _201 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _215 = r1;
    _215.z = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    r1 = _215;
    o0 = r1.xyzz;
    o1 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    float3 _249 = (-float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z)) + float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(_249.x, _249.y, _249.z, r1.w);
    float3 _257 = r0.xyz + (-r1.xyz);
    r0 = float4(_257.x, _257.y, _257.z, r0.w);
    float4 _273 = r0;
    _273.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _273;
    float4 _278 = r0;
    _278.w = rsqrt(r0.w);
    r0 = _278;
    float3 _284 = r0.www * r0.xyz;
    o2 = float4(_284.x, _284.y, _284.z, o2.w);
    float4 _294 = r0;
    _294.y = shader_in[0].y + cb2_m[1].w;
    r0 = _294;
    r0 = float4(shader_in[0].xz.x, r0.y, shader_in[0].xz.y, r0.w);
    float3 _312 = r0.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_312.x, _312.y, _312.z, r0.w);
    float4 _316 = r0;
    _316.w = asfloat(1065353216u);
    r0 = _316;
    float4 _327 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _341 = r1;
    _341.x = mad(_327.w, r0.w, mad(_327.z, r0.z, mad(_327.y, r0.y, _327.x * r0.x)));
    r1 = _341;
    float4 _351 = r1;
    _351.x = r1.x + (-cb0_m[11].y);
    r1 = _351;
    float4 _360 = r1;
    _360.y = r1.x + cb2_m[7].x;
    r1 = _360;
    float4 _371 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _385 = r1;
    _385.x = mad(_371.w, r0.w, mad(_371.z, r0.z, mad(_371.y, r0.y, _371.x * r0.x)));
    r1 = _385;
    float4 _396 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _410 = r1;
    _410.z = mad(_396.w, r0.w, mad(_396.z, r0.z, mad(_396.y, r0.y, _396.x * r0.x)));
    r1 = _410;
    float3 _423 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_423.x, _423.y, _423.z, r0.w);
    float4 _433 = r0;
    _433.w = r0.y * cb0_m[13].x;
    r0 = _433;
    float4 _440 = r1;
    _440.x = r0.w * asfloat(3216550459u);
    r1 = _440;
    float4 _445 = r1;
    _445.x = exp2(r1.x);
    r1 = _445;
    float4 _452 = r1;
    _452.x = (-r1.x) + asfloat(1065353216u);
    r1 = _452;
    float4 _459 = r0;
    _459.w = r1.x / r0.w;
    r0 = _459;
    float4 _471 = r1;
    _471.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _471;
    float4 _486 = r0;
    _486.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _486;
    float4 _491 = r0;
    _491.x = sqrt(r0.x);
    r0 = _491;
    float4 _499 = r0;
    _499.x = r0.x * cb0_m[13].y;
    r0 = _499;
    float4 _509 = r0;
    _509.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _509;
    float4 _521 = r0;
    _521.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _521;
    float4 _527 = r0;
    _527.x = exp2(-r0.x);
    r0 = _527;
    float4 _533 = r0;
    _533.x = min(r0.x, asfloat(1065353216u));
    r0 = _533;
    float4 _540 = o2;
    _540.w = (-r0.x) + asfloat(1065353216u);
    o2 = _540;
    float2 _553 = float2(cb2_m[6].x, cb2_m[6].y) * asfloat(uint2(3226013648u, 3226013648u));
    r0 = float4(_553.x, _553.y, r0.z, r0.w);
    float4 _556 = r0;
    float4 _560 = r0;
    _560.x = sin(_556.xxxx.x);
    r0 = _560;
    float4 _564 = r1;
    _564.x = cos(_556.xxxx.x);
    r1 = _564;
    float4 _571 = r2;
    _571.x = sin(r0.yyyy.x);
    r2 = _571;
    float4 _576 = r3;
    _576.x = cos(r0.yyyy.x);
    r3 = _576;
    float2 _582 = float2(asint(shader_in[1].yx));
    r0 = float4(r0.x, _582.x, _582.y, r0.w);
    float2 _595 = (r0.yz * asfloat(uint2(981467136u, 981467136u))) + asfloat(uint2(1056964608u, 3204448256u));
    r0 = float4(r0.x, _595.x, _595.y, r0.w);
    float2 _602 = r0.xx * r0.yz;
    r0 = float4(_602.x, r0.y, r0.z, _602.y);
    float4 _614 = r0;
    _614.x = (r0.z * r1.x) + (-r0.x);
    r0 = _614;
    float4 _624 = r0;
    _624.w = (r0.y * r1.x) + r0.w;
    r0 = _624;
    float2 _630 = r0.xw + asfloat(uint2(1056964608u, 1056964608u));
    r1 = float4(_630.x, _630.y, r1.z, r1.w);
    float2 _638 = r1.xy * asfloat(uint2(1082130432u, 1082130432u));
    o3 = float4(_638.x, _638.y, o3.z, o3.w);
    float2 _645 = r2.xx * r0.yz;
    r0 = float4(_645.x, r0.y, r0.z, _645.y);
    float4 _657 = r0;
    _657.x = (r0.z * r3.x) + (-r0.x);
    r0 = _657;
    float4 _667 = r0;
    _667.y = (r0.y * r3.x) + r0.w;
    r0 = _667;
    float2 _672 = r0.xy + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(r0.x, r0.y, _672.x, _672.y);
    float2 _680 = r0.zw * asfloat(uint2(1083179008u, 1083179008u));
    o3 = float4(o3.x, o3.y, _680.x, _680.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _689 = asfloat(v1);
    shader_in[1] = float4(_689.x, _689.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
