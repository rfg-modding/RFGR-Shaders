cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float3 v2;
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _50 = r0;
    _50.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _50;
    float3 _63 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_63.x, _63.y, _63.z, r0.w);
    float4 _68 = r0;
    _68.w = asfloat(1065353216u);
    r0 = _68;
    float4 _84 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _99 = r1;
    _99.x = mad(_84.w, r0.w, mad(_84.z, r0.z, mad(_84.y, r0.y, _84.x * r0.x)));
    r1 = _99;
    float4 _111 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _125 = r1;
    _125.y = mad(_111.w, r0.w, mad(_111.z, r0.z, mad(_111.y, r0.y, _111.x * r0.x)));
    r1 = _125;
    float4 _136 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _150 = r1;
    _150.z = mad(_136.w, r0.w, mad(_136.z, r0.z, mad(_136.y, r0.y, _136.x * r0.x)));
    r1 = _150;
    float4 _153 = r1;
    _153.w = asfloat(1065353216u);
    r1 = _153;
    float4 _164 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _178 = o0;
    _178.x = mad(_164.w, r1.w, mad(_164.z, r1.z, mad(_164.y, r1.y, _164.x * r1.x)));
    o0 = _178;
    float4 _189 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _203 = o0;
    _203.y = mad(_189.w, r1.w, mad(_189.z, r1.z, mad(_189.y, r1.y, _189.x * r1.x)));
    o0 = _203;
    float4 _214 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _228 = o0;
    _228.z = mad(_214.w, r1.w, mad(_214.z, r1.z, mad(_214.y, r1.y, _214.x * r1.x)));
    o0 = _228;
    float4 _239 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _253 = o0;
    _253.w = mad(_239.w, r1.w, mad(_239.z, r1.z, mad(_239.y, r1.y, _239.x * r1.x)));
    o0 = _253;
    float3 _267 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_267.x, _267.y, _267.z, r0.w);
    float4 _283 = r0;
    _283.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _283;
    float4 _288 = r0;
    _288.w = rsqrt(r0.w);
    r0 = _288;
    float3 _294 = r0.www * r0.xyz;
    r0 = float4(_294.x, _294.y, _294.z, r0.w);
    float3 _302 = r0.xyz * asfloat(uint3(0u, 1065353216u, 0u));
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float3 _313 = (r0.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r1.xyz);
    r1 = float4(_313.x, _313.y, _313.z, r1.w);
    float4 _327 = r0;
    _327.w = mad(r1.yz.y, r1.yz.y, r1.yz.x * r1.yz.x);
    r0 = _327;
    float4 _332 = r0;
    _332.w = rsqrt(r0.w);
    r0 = _332;
    float3 _338 = r0.www * r1.xyz;
    r1 = float4(_338.x, _338.y, _338.z, r1.w);
    float3 _345 = r0.yzx * r1.xyz;
    r2 = float4(_345.x, _345.y, _345.z, r2.w);
    float3 _357 = (r1.zxy * r0.zxy) + (-r2.xyz);
    r1 = float4(_357.x, _357.y, _357.z, r1.w);
    float4 _373 = r0;
    _373.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _373;
    float4 _378 = r0;
    _378.w = rsqrt(r0.w);
    r0 = _378;
    float3 _384 = r0.www * r1.xyz;
    r1 = float4(_384.x, _384.y, _384.z, r1.w);
    float3 _397 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_397.x, _397.y, _397.z, r2.w);
    float3 _407 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_407.x, _407.y, _407.z, r3.w);
    float3 _419 = (shader_in[3].xxx * r3.xyz) + r2.xyz;
    r2 = float4(_419.x, _419.y, _419.z, r2.w);
    float3 _429 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _441 = r3;
    _441.x = mad(_429.z, r2.xyz.z, mad(_429.y, r2.xyz.y, _429.x * r2.xyz.x));
    r3 = _441;
    float3 _450 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _462 = r3;
    _462.y = mad(_450.z, r2.xyz.z, mad(_450.y, r2.xyz.y, _450.x * r2.xyz.x));
    r3 = _462;
    float3 _471 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _483 = r3;
    _483.z = mad(_471.z, r2.xyz.z, mad(_471.y, r2.xyz.y, _471.x * r2.xyz.x));
    r3 = _483;
    float4 _498 = r0;
    _498.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _498;
    float4 _503 = r0;
    _503.w = rsqrt(r0.w);
    r0 = _503;
    float3 _509 = r0.www * r3.xyz;
    r2 = float4(_509.x, _509.y, _509.z, r2.w);
    float4 _525 = r0;
    _525.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _525;
    float4 _540 = r0;
    _540.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _540;
    float4 _546 = r0;
    _546.x = max(r0.x, asfloat(0u));
    r0 = _546;
    float4 _555 = r0;
    _555.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _555;
    float2 _565 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_565.x, _565.y, r1.z, r1.w);
    float4 _573 = r0;
    _573.x = (-r0.x) + asfloat(1065353216u);
    r0 = _573;
    float4 _578 = r0;
    _578.x = log2(r0.x);
    r0 = _578;
    float2 _588 = r0.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_588.x, _588.y, r0.z, r0.w);
    float2 _593 = exp2(r0.xy);
    r0 = float4(_593.x, _593.y, r0.z, r0.w);
    float2 _610 = (cb0_m[12].x.xx * float2(cb2_m[3].x, cb2_m[3].y)) + r1.xy;
    o1 = float3(_610.x, _610.y, o1.z);
    float4 _619 = r0;
    _619.y = (-r0.x) + r0.y;
    r0 = _619;
    float4 _627 = r0;
    _627.z = cb2_m[3].z + asfloat(1008981770u);
    r0 = _627;
    float4 _633 = r0;
    _633.z = asfloat(1073741824u) / r0.z;
    r0 = _633;
    float4 _641 = r0;
    _641.z = r0.z * cb0_m[12].z;
    r0 = _641;
    float4 _647 = r0;
    _647.z = cos(r0.zzzz.z);
    r0 = _647;
    float4 _653 = r0;
    _653.z = r0.z + asfloat(1065353216u);
    r0 = _653;
    float4 _659 = r0;
    _659.z = r0.z * asfloat(1056964608u);
    r0 = _659;
    float3 _669 = o1;
    _669.z = (r0.z * r0.y) + r0.x;
    o1 = _669;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
