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
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _59 = r1;
    _59.w = asfloat(1065353216u);
    r1 = _59;
    float4 _77 = r0;
    _77.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _77;
    float4 _95 = r0;
    _95.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _95;
    float4 _113 = r0;
    _113.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _113;
    float4 _129 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _143 = o0;
    _143.x = mad(_129.w, r0.w, mad(_129.z, r0.z, mad(_129.y, r0.y, _129.x * r0.x)));
    o0 = _143;
    float4 _155 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _169 = o0;
    _169.y = mad(_155.w, r0.w, mad(_155.z, r0.z, mad(_155.y, r0.y, _155.x * r0.x)));
    o0 = _169;
    float4 _181 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _195 = o0;
    _195.z = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _220 = o0;
    _220.w = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float2 _226 = float2(asint(shader_in[1].xy));
    r1 = float4(_226.x, _226.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _256 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_256.x, _256.y, _256.z, r1.w);
    float3 _270 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_270.x, _270.y, _270.z, r0.w);
    float4 _286 = r0;
    _286.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _286;
    float4 _291 = r0;
    _291.w = rsqrt(r0.w);
    r0 = _291;
    o3 = r0.www * r1.xyz;
    float4 _305 = r0;
    _305.w = r0.y * cb0_m[13].x;
    r0 = _305;
    float4 _312 = r1;
    _312.x = r0.w * asfloat(3216550459u);
    r1 = _312;
    float4 _317 = r1;
    _317.x = exp2(r1.x);
    r1 = _317;
    float4 _324 = r1;
    _324.x = (-r1.x) + asfloat(1065353216u);
    r1 = _324;
    float4 _331 = r0;
    _331.w = r1.x / r0.w;
    r0 = _331;
    float4 _343 = r1;
    _343.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _343;
    float4 _358 = r0;
    _358.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _358;
    float4 _363 = r0;
    _363.x = sqrt(r0.x);
    r0 = _363;
    float4 _371 = r0;
    _371.x = r0.x * cb0_m[13].y;
    r0 = _371;
    float4 _381 = r0;
    _381.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _381;
    float4 _393 = r0;
    _393.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _393;
    float4 _399 = r0;
    _399.x = exp2(-r0.x);
    r0 = _399;
    float4 _405 = r0;
    _405.x = min(r0.x, asfloat(1065353216u));
    r0 = _405;
    float4 _412 = o4;
    _412.w = (-r0.x) + asfloat(1065353216u);
    o4 = _412;
    float3 _425 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_425.x, _425.y, _425.z, r0.w);
    float4 _442 = r1;
    _442.x = mad(shader_in[3].xyz.z, r0.xyz.z, mad(shader_in[3].xyz.y, r0.xyz.y, shader_in[3].xyz.x * r0.xyz.x));
    r1 = _442;
    float4 _458 = r1;
    _458.y = mad(shader_in[4].xyz.z, r0.xyz.z, mad(shader_in[4].xyz.y, r0.xyz.y, shader_in[4].xyz.x * r0.xyz.x));
    r1 = _458;
    float4 _474 = r1;
    _474.z = mad(shader_in[5].xyz.z, r0.xyz.z, mad(shader_in[5].xyz.y, r0.xyz.y, shader_in[5].xyz.x * r0.xyz.x));
    r1 = _474;
    float4 _489 = r0;
    _489.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _489;
    float4 _494 = r0;
    _494.x = rsqrt(r0.x);
    r0 = _494;
    float3 _500 = r0.xxx * r1.xyz;
    o4 = float4(_500.x, _500.y, _500.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _509 = asfloat(v1);
    shader_in[1] = float4(_509.x, _509.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
