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
static float3 v0;
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float4 o1;
static float4 o2;
static float2 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _39 = r0;
    _39.w = asfloat(1065353216u);
    r0 = _39;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _50 = r1;
    _50.w = asfloat(1065353216u);
    r1 = _50;
    float4 _66 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _80 = r0;
    _80.x = mad(_66.w, r1.w, mad(_66.z, r1.z, mad(_66.y, r1.y, _66.x * r1.x)));
    r0 = _80;
    float4 _92 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _106 = r0;
    _106.y = mad(_92.w, r1.w, mad(_92.z, r1.z, mad(_92.y, r1.y, _92.x * r1.x)));
    r0 = _106;
    float4 _118 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _132 = r0;
    _132.z = mad(_118.w, r1.w, mad(_118.z, r1.z, mad(_118.y, r1.y, _118.x * r1.x)));
    r0 = _132;
    float4 _143 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _157 = r1;
    _157.x = mad(_143.w, r0.w, mad(_143.z, r0.z, mad(_143.y, r0.y, _143.x * r0.x)));
    r1 = _157;
    float4 _168 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _182 = r1;
    _182.y = mad(_168.w, r0.w, mad(_168.z, r0.z, mad(_168.y, r0.y, _168.x * r0.x)));
    r1 = _182;
    float4 _193 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _207 = r1;
    _207.z = mad(_193.w, r0.w, mad(_193.z, r0.z, mad(_193.y, r0.y, _193.x * r0.x)));
    r1 = _207;
    float4 _219 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _233 = r1;
    _233.w = mad(_219.w, r0.w, mad(_219.z, r0.z, mad(_219.y, r0.y, _219.x * r0.x)));
    r1 = _233;
    float3 _247 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_247.x, _247.y, _247.z, r0.w);
    o0 = r1;
    o1 = r1;
    float3 _263 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_263.x, _263.y, _263.z, r1.w);
    float3 _273 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _286 = r2;
    _286.x = mad(_273.z, r1.xyz.z, mad(_273.y, r1.xyz.y, _273.x * r1.xyz.x));
    r2 = _286;
    float3 _295 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _307 = r2;
    _307.y = mad(_295.z, r1.xyz.z, mad(_295.y, r1.xyz.y, _295.x * r1.xyz.x));
    r2 = _307;
    float3 _316 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _328 = r2;
    _328.z = mad(_316.z, r1.xyz.z, mad(_316.y, r1.xyz.y, _316.x * r1.xyz.x));
    r2 = _328;
    float4 _343 = r0;
    _343.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _343;
    float4 _348 = r0;
    _348.w = rsqrt(r0.w);
    r0 = _348;
    float3 _354 = r0.www * r2.xyz;
    o2 = float4(_354.x, _354.y, _354.z, o2.w);
    float4 _358 = o2;
    _358.w = asfloat(0u);
    o2 = _358;
    float4 _367 = r0;
    _367.w = r0.y * cb0_m[13].x;
    r0 = _367;
    float4 _374 = r1;
    _374.x = r0.w * asfloat(3216550459u);
    r1 = _374;
    float4 _379 = r1;
    _379.x = exp2(r1.x);
    r1 = _379;
    float4 _386 = r1;
    _386.x = (-r1.x) + asfloat(1065353216u);
    r1 = _386;
    float4 _393 = r0;
    _393.w = r1.x / r0.w;
    r0 = _393;
    float4 _405 = r1;
    _405.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _405;
    float4 _420 = r0;
    _420.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _420;
    float4 _425 = r0;
    _425.x = sqrt(r0.x);
    r0 = _425;
    float4 _433 = r0;
    _433.x = r0.x * cb0_m[13].y;
    r0 = _433;
    float4 _443 = r0;
    _443.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _443;
    float4 _455 = r0;
    _455.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _455;
    float4 _461 = r0;
    _461.x = exp2(-r0.x);
    r0 = _461;
    float4 _467 = r0;
    _467.x = min(r0.x, asfloat(1065353216u));
    r0 = _467;
    float2 _474 = o3;
    _474.y = (-r0.x) + asfloat(1065353216u);
    o3 = _474;
    float2 _480 = o3;
    _480.x = cb0_m[12].x;
    o3 = _480;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
    v2 = stage_input.v2;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
