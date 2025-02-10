cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float3 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
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
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _47 = r0;
    _47.w = asfloat(1065353216u);
    r0 = _47;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _57 = r1;
    _57.w = asfloat(1065353216u);
    r1 = _57;
    float4 _74 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _88 = r0;
    _88.x = mad(_74.w, r1.w, mad(_74.z, r1.z, mad(_74.y, r1.y, _74.x * r1.x)));
    r0 = _88;
    float4 _100 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _114 = r0;
    _114.y = mad(_100.w, r1.w, mad(_100.z, r1.z, mad(_100.y, r1.y, _100.x * r1.x)));
    r0 = _114;
    float4 _126 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _140 = r0;
    _140.z = mad(_126.w, r1.w, mad(_126.z, r1.z, mad(_126.y, r1.y, _126.x * r1.x)));
    r0 = _140;
    float4 _151 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _165 = o0;
    _165.x = mad(_151.w, r0.w, mad(_151.z, r0.z, mad(_151.y, r0.y, _151.x * r0.x)));
    o0 = _165;
    float4 _176 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _190 = o0;
    _190.y = mad(_176.w, r0.w, mad(_176.z, r0.z, mad(_176.y, r0.y, _176.x * r0.x)));
    o0 = _190;
    float4 _201 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _215 = o0;
    _215.z = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    o0 = _215;
    float4 _227 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _241 = o0;
    _241.w = mad(_227.w, r0.w, mad(_227.z, r0.z, mad(_227.y, r0.y, _227.x * r0.x)));
    o0 = _241;
    float2 _247 = float2(asint(shader_in[1].xy));
    r1 = float4(_247.x, _247.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _269 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_269.x, _269.y, _269.z, r1.w);
    float3 _283 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_283.x, _283.y, _283.z, r0.w);
    float4 _299 = r0;
    _299.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _299;
    float4 _304 = r0;
    _304.x = sqrt(r0.x);
    r0 = _304;
    float2 _326 = clamp((r0.xx * float2(cb6_m[3].x, cb6_m[3].z)) + float2(cb6_m[3].y, cb6_m[3].w), 0.0f.xx, 1.0f.xx);
    o2 = float3(_326.x, _326.y, o2.z);
    float4 _342 = r0;
    _342.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _342;
    float4 _347 = r0;
    _347.x = rsqrt(r0.x);
    r0 = _347;
    float3 _353 = r0.xxx * r1.xyz;
    r0 = float4(_353.x, _353.y, _353.z, r0.w);
    float3 _367 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_367.x, _367.y, _367.z, r1.w);
    float3 _377 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _390 = r2;
    _390.x = mad(_377.z, r1.xyz.z, mad(_377.y, r1.xyz.y, _377.x * r1.xyz.x));
    r2 = _390;
    float3 _399 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _411 = r2;
    _411.y = mad(_399.z, r1.xyz.z, mad(_399.y, r1.xyz.y, _399.x * r1.xyz.x));
    r2 = _411;
    float3 _420 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _432 = r2;
    _432.z = mad(_420.z, r1.xyz.z, mad(_420.y, r1.xyz.y, _420.x * r1.xyz.x));
    r2 = _432;
    float4 _447 = r0;
    _447.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _447;
    float4 _452 = r0;
    _452.w = rsqrt(r0.w);
    r0 = _452;
    float3 _458 = r0.www * r2.xyz;
    r1 = float4(_458.x, _458.y, _458.z, r1.w);
    float4 _474 = r0;
    _474.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _474;
    float4 _483 = r0;
    _483.y = abs(r0.x) * abs(r0.x);
    r0 = _483;
    float4 _495 = r0;
    _495.z = asfloat((asfloat(1056964608u) < cb2_m[3].y) ? 4294967295u : 0u);
    r0 = _495;
    float4 _504 = r0;
    _504.z = (asuint(r0.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _504;
    float4 _515 = r0;
    _515.x = (abs(r0.x) * r0.y) + r0.z;
    r0 = _515;
    float3 _521 = o2;
    _521.z = min(r0.x, asfloat(1065353216u));
    o2 = _521;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _529 = asfloat(v1);
    shader_in[1] = float4(_529.x, _529.y, shader_in[1].z, shader_in[1].w);
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
    v3 = stage_input.v3;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
