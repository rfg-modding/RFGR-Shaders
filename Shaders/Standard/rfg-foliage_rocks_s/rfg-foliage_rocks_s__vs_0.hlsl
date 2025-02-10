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
    float4 cb6_m[4] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float4 o1;
static float4 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _79 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r0;
    _93.x = mad(_79.w, r1.w, mad(_79.z, r1.z, mad(_79.y, r1.y, _79.x * r1.x)));
    r0 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r0;
    _119.y = mad(_105.w, r1.w, mad(_105.z, r1.z, mad(_105.y, r1.y, _105.x * r1.x)));
    r0 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r0;
    _145.z = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r0 = _145;
    float4 _156 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _170 = o0;
    _170.x = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _195 = o0;
    _195.y = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _220 = o0;
    _220.z = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float4 _232 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _246 = o0;
    _246.w = mad(_232.w, r0.w, mad(_232.z, r0.z, mad(_232.y, r0.y, _232.x * r0.x)));
    o0 = _246;
    float3 _260 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_260.x, _260.y, _260.z, r1.w);
    float3 _274 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_274.x, _274.y, _274.z, r0.w);
    float4 _290 = r0;
    _290.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _290;
    float4 _295 = r0;
    _295.w = rsqrt(r0.w);
    r0 = _295;
    float3 _301 = r0.www * r1.xyz;
    r1 = float4(_301.x, _301.y, _301.z, r1.w);
    float3 _315 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_315.x, _315.y, _315.z, r2.w);
    float3 _326 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _339 = r3;
    _339.x = mad(_326.z, r2.xyz.z, mad(_326.y, r2.xyz.y, _326.x * r2.xyz.x));
    r3 = _339;
    float3 _348 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _360 = r3;
    _360.y = mad(_348.z, r2.xyz.z, mad(_348.y, r2.xyz.y, _348.x * r2.xyz.x));
    r3 = _360;
    float3 _369 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _381 = r3;
    _381.z = mad(_369.z, r2.xyz.z, mad(_369.y, r2.xyz.y, _369.x * r2.xyz.x));
    r3 = _381;
    float4 _396 = r0;
    _396.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _396;
    float4 _401 = r0;
    _401.w = rsqrt(r0.w);
    r0 = _401;
    float3 _407 = r0.www * r3.xyz;
    r2 = float4(_407.x, _407.y, _407.z, r2.w);
    float4 _423 = r0;
    _423.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _423;
    float4 _432 = r1;
    _432.x = abs(r0.w) * abs(r0.w);
    r1 = _432;
    float4 _444 = r1;
    _444.y = asfloat((asfloat(1056964608u) < cb2_m[3].y) ? 4294967295u : 0u);
    r1 = _444;
    float4 _453 = r1;
    _453.y = (asuint(r1.y) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r1 = _453;
    float4 _464 = r0;
    _464.w = (abs(r0.w) * r1.x) + r1.y;
    r0 = _464;
    float4 _470 = o1;
    _470.z = min(r0.w, asfloat(1065353216u));
    o1 = _470;
    float3 _479 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _487 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _497 = r0;
    _497.w = mad(_479.z, _487.z, mad(_479.y, _487.y, _479.x * _487.x));
    r0 = _497;
    float4 _502 = r0;
    _502.w = rsqrt(r0.w);
    r0 = _502;
    float3 _514 = r0.www * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_514.x, _514.y, _514.z, r1.w);
    float4 _530 = r0;
    _530.w = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r0 = _530;
    float4 _538 = o1;
    _538.w = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    o1 = _538;
    float4 _544 = o2;
    _544.w = max(r0.w, asfloat(0u));
    o2 = _544;
    float4 _559 = r0;
    _559.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _559;
    float4 _564 = r0;
    _564.x = sqrt(r0.x);
    r0 = _564;
    float2 _587 = clamp((r0.xx * float2(cb6_m[3].x, cb6_m[3].z)) + float2(cb6_m[3].y, cb6_m[3].w), 0.0f.xx, 1.0f.xx);
    o1 = float4(_587.x, _587.y, o1.z, o1.w);
    float4 _597 = r0;
    _597.x = r0.x * cb0_m[13].y;
    r0 = _597;
    float3 _610 = shader_in[2].zyx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    o2 = float4(_610.x, _610.y, _610.z, o2.w);
    float4 _619 = r0;
    _619.z = r0.y * cb0_m[13].x;
    r0 = _619;
    float4 _629 = r0;
    _629.y = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r0 = _629;
    float4 _636 = r0;
    _636.w = r0.z * asfloat(3216550459u);
    r0 = _636;
    float4 _641 = r0;
    _641.w = exp2(r0.w);
    r0 = _641;
    float4 _648 = r0;
    _648.w = (-r0.w) + asfloat(1065353216u);
    r0 = _648;
    float4 _655 = r0;
    _655.z = r0.w / r0.z;
    r0 = _655;
    float4 _665 = r0;
    _665.y = (asuint(r0.y) != 0u) ? r0.z : asfloat(1065353216u);
    r0 = _665;
    float4 _677 = r0;
    _677.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _677;
    float4 _683 = r0;
    _683.x = exp2(-r0.x);
    r0 = _683;
    float4 _689 = r0;
    _689.x = min(r0.x, asfloat(1065353216u));
    r0 = _689;
    float3 _696 = o3;
    _696.z = (-r0.x) + asfloat(1065353216u);
    o3 = _696;
    float2 _702 = float2(asint(shader_in[1].xy));
    r0 = float4(_702.x, _702.y, r0.z, r0.w);
    float2 _711 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(_711.x, _711.y, o3.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _720 = asfloat(v1);
    shader_in[1] = float4(_720.x, _720.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
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
