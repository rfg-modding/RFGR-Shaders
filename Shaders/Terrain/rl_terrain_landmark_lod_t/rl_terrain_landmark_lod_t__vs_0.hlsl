cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int4 v0;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[1];
static float4 o0;
static float o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(asint(shader_in[0]));
    r1 = r0 * asfloat(uint4(1065353216u, 1048576000u, 1031798784u, 1015021568u));
    r1 = frac(r1);
    float3 _61 = (r0.xyz * asfloat(uint3(1065353216u, 1048576000u, 1031798784u))) + (-r1.xyz);
    r0 = float4(_61.x, _61.y, _61.z, r0.w);
    float3 _72 = (r1.yzw * asfloat(uint3(1149239296u, 1149239296u, 1149239296u))) + r0.xyz;
    r0 = float4(_72.x, _72.y, _72.z, r0.w);
    float3 _80 = r0.xyz + asfloat(uint3(3296722944u, 3296722944u, 3296722944u));
    r1 = float4(_80.x, _80.y, _80.z, r1.w);
    float3 _93 = (r1.xyz * asfloat(uint3(1056931840u, 1056931840u, 1056931840u))) + asfloat(uint3(1132429312u, 0u, 1132429312u));
    r1 = float4(_93.x, _93.y, _93.z, r1.w);
    float3 _98 = asfloat(uint3(1140834304u, 1140834304u, 1140834304u));
    bool3 _103 = bool3(_98.x < r0.xyz.x, _98.y < r0.xyz.y, _98.z < r0.xyz.z);
    float3 _109 = asfloat(uint3(_103.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _103.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _103.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(_109.x, _109.y, _109.z, r2.w);
    float3 _119 = (r0.xyz * asfloat(uint3(1056964608u, 1056964608u, 1056964608u))) + asfloat(uint3(1132429312u, 0u, 1132429312u));
    r0 = float4(_119.x, _119.y, _119.z, r0.w);
    uint3 _124 = asuint(r2.xyz);
    bool3 _129 = bool3(_124.x != uint3(0u, 0u, 0u).x, _124.y != uint3(0u, 0u, 0u).y, _124.z != uint3(0u, 0u, 0u).z);
    float3 _130 = float3(_129.x ? r1.xyz.x : r0.xyz.x, _129.y ? r1.xyz.y : r0.xyz.y, _129.z ? r1.xyz.z : r0.xyz.z);
    r0 = float4(_130.x, _130.y, _130.z, r0.w);
    float4 _134 = r0;
    _134.w = asfloat(1065353216u);
    r0 = _134;
    float4 _149 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _163 = r1;
    _163.x = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    r1 = _163;
    float4 _175 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _189 = r1;
    _189.y = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    r1 = _189;
    float4 _201 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _215 = r1;
    _215.z = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    r1 = _215;
    float4 _218 = r1;
    _218.w = asfloat(1065353216u);
    r1 = _218;
    float4 _229 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _243 = o0;
    _243.x = mad(_229.w, r1.w, mad(_229.z, r1.z, mad(_229.y, r1.y, _229.x * r1.x)));
    o0 = _243;
    float4 _254 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _268 = o0;
    _268.y = mad(_254.w, r1.w, mad(_254.z, r1.z, mad(_254.y, r1.y, _254.x * r1.x)));
    o0 = _268;
    float4 _279 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _293 = o0;
    _293.z = mad(_279.w, r1.w, mad(_279.z, r1.z, mad(_279.y, r1.y, _279.x * r1.x)));
    o0 = _293;
    float4 _305 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _319 = o0;
    _319.w = mad(_305.w, r1.w, mad(_305.z, r1.z, mad(_305.y, r1.y, _305.x * r1.x)));
    o0 = _319;
    float3 _333 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_333.x, _333.y, _333.z, r0.w);
    float4 _343 = r0;
    _343.w = r0.y * cb0_m[13].x;
    r0 = _343;
    float4 _350 = r1;
    _350.x = r0.w * asfloat(3216550459u);
    r1 = _350;
    float4 _355 = r1;
    _355.x = exp2(r1.x);
    r1 = _355;
    float4 _362 = r1;
    _362.x = (-r1.x) + asfloat(1065353216u);
    r1 = _362;
    float4 _369 = r0;
    _369.w = r1.x / r0.w;
    r0 = _369;
    float4 _379 = r1;
    _379.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _379;
    float4 _394 = r0;
    _394.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _394;
    float4 _399 = r0;
    _399.x = sqrt(r0.x);
    r0 = _399;
    float4 _407 = r0;
    _407.x = r0.x * cb0_m[13].y;
    r0 = _407;
    float4 _417 = r0;
    _417.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _417;
    float4 _429 = r0;
    _429.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _429;
    float4 _435 = r0;
    _435.x = exp2(-r0.x);
    r0 = _435;
    float4 _441 = r0;
    _441.x = min(r0.x, asfloat(1065353216u));
    r0 = _441;
    o1 = (-r0.x) + asfloat(1065353216u);
}

void vert_main()
{
    shader_in[0] = asfloat(v0);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
