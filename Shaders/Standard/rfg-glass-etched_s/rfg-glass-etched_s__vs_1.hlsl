cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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
static float2 o1;
static float3 o2;
static float3 o3;
static float3 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _77 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _91 = r0;
    _91.x = mad(_77.w, r1.w, mad(_77.z, r1.z, mad(_77.y, r1.y, _77.x * r1.x)));
    r0 = _91;
    float4 _103 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _117 = r0;
    _117.y = mad(_103.w, r1.w, mad(_103.z, r1.z, mad(_103.y, r1.y, _103.x * r1.x)));
    r0 = _117;
    float4 _129 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _143 = r0;
    _143.z = mad(_129.w, r1.w, mad(_129.z, r1.z, mad(_129.y, r1.y, _129.x * r1.x)));
    r0 = _143;
    float4 _154 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _168 = o0;
    _168.x = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    o0 = _168;
    float4 _179 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _193 = o0;
    _193.y = mad(_179.w, r0.w, mad(_179.z, r0.z, mad(_179.y, r0.y, _179.x * r0.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _218 = o0;
    _218.z = mad(_204.w, r0.w, mad(_204.z, r0.z, mad(_204.y, r0.y, _204.x * r0.x)));
    o0 = _218;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r0.w, mad(_230.z, r0.z, mad(_230.y, r0.y, _230.x * r0.x)));
    o0 = _244;
    float2 _250 = float2(asint(shader_in[1].xy));
    r1 = float4(_250.x, _250.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _283 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_283.x, _283.y, _283.z, r1.w);
    float3 _293 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _306 = r2;
    _306.x = mad(_293.z, r1.xyz.z, mad(_293.y, r1.xyz.y, _293.x * r1.xyz.x));
    r2 = _306;
    float3 _315 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _327 = r2;
    _327.y = mad(_315.z, r1.xyz.z, mad(_315.y, r1.xyz.y, _315.x * r1.xyz.x));
    r2 = _327;
    float3 _336 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _348 = r2;
    _348.z = mad(_336.z, r1.xyz.z, mad(_336.y, r1.xyz.y, _336.x * r1.xyz.x));
    r2 = _348;
    float4 _363 = r0;
    _363.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _363;
    float4 _368 = r0;
    _368.w = rsqrt(r0.w);
    r0 = _368;
    o3 = r0.www * r2.xyz;
    o4 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o5 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o5.w);
    float3 _399 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_399.x, _399.y, _399.z, r0.w);
    float4 _403 = o5;
    _403.w = asfloat(0u);
    o5 = _403;
    float4 _412 = r0;
    _412.w = r0.y * cb0_m[13].x;
    r0 = _412;
    float4 _419 = r1;
    _419.x = r0.w * asfloat(3216550459u);
    r1 = _419;
    float4 _424 = r1;
    _424.x = exp2(r1.x);
    r1 = _424;
    float4 _431 = r1;
    _431.x = (-r1.x) + asfloat(1065353216u);
    r1 = _431;
    float4 _438 = r0;
    _438.w = r1.x / r0.w;
    r0 = _438;
    float4 _450 = r1;
    _450.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _450;
    float4 _465 = r0;
    _465.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _465;
    float4 _470 = r0;
    _470.x = sqrt(r0.x);
    r0 = _470;
    float4 _478 = r0;
    _478.x = r0.x * cb0_m[13].y;
    r0 = _478;
    float4 _488 = r0;
    _488.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _488;
    float4 _500 = r0;
    _500.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _500;
    float4 _506 = r0;
    _506.x = exp2(-r0.x);
    r0 = _506;
    float4 _512 = r0;
    _512.x = min(r0.x, asfloat(1065353216u));
    r0 = _512;
    float4 _519 = o6;
    _519.w = (-r0.x) + asfloat(1065353216u);
    o6 = _519;
    float3 _528 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o6 = float4(_528.x, _528.y, _528.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _537 = asfloat(v1);
    shader_in[1] = float4(_537.x, _537.y, shader_in[1].z, shader_in[1].w);
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
