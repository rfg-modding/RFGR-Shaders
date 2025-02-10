cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float4 o2;
static float4 o3;
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
    float4 _74 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _88 = r0;
    _88.y = mad(_74.w, r1.w, mad(_74.z, r1.z, mad(_74.y, r1.y, _74.x * r1.x)));
    r0 = _88;
    float4 _99 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _113 = r0;
    _113.x = mad(_99.w, r1.w, mad(_99.z, r1.z, mad(_99.y, r1.y, _99.x * r1.x)));
    r0 = _113;
    float4 _125 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _139 = r0;
    _139.z = mad(_125.w, r1.w, mad(_125.z, r1.z, mad(_125.y, r1.y, _125.x * r1.x)));
    r0 = _139;
    float4 _150 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _164 = o0;
    _164.x = mad(_150.w, r0.w, mad(_150.z, r0.z, mad(_150.y, r0.y, _150.x * r0.x)));
    o0 = _164;
    float4 _175 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _189 = o0;
    _189.y = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    o0 = _189;
    float4 _200 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _214 = o0;
    _214.z = mad(_200.w, r0.w, mad(_200.z, r0.z, mad(_200.y, r0.y, _200.x * r0.x)));
    o0 = _214;
    float4 _226 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _240 = o0;
    _240.w = mad(_226.w, r0.w, mad(_226.z, r0.z, mad(_226.y, r0.y, _226.x * r0.x)));
    o0 = _240;
    float3 _254 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_254.x, _254.y, _254.z, r1.w);
    float2 _266 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_266.x, _266.y, r0.z, r0.w);
    float2 _279 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_279.x, _279.y, r0.z, r0.w);
    float2 _292 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_292.x, _292.y, r0.z, r0.w);
    o1 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    float3 _316 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_316.x, _316.y, _316.z, r0.w);
    float3 _326 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _339 = r2;
    _339.x = mad(_326.z, r0.xyz.z, mad(_326.y, r0.xyz.y, _326.x * r0.xyz.x));
    r2 = _339;
    float3 _348 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _360 = r2;
    _360.y = mad(_348.z, r0.xyz.z, mad(_348.y, r0.xyz.y, _348.x * r0.xyz.x));
    r2 = _360;
    float3 _369 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _381 = r2;
    _381.z = mad(_369.z, r0.xyz.z, mad(_369.y, r0.xyz.y, _369.x * r0.xyz.x));
    r2 = _381;
    float4 _396 = r0;
    _396.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _396;
    float4 _401 = r0;
    _401.x = rsqrt(r0.x);
    r0 = _401;
    float3 _407 = r0.xxx * r2.xyz;
    o2 = float4(_407.x, _407.y, _407.z, o2.w);
    float4 _415 = r0;
    _415.x = float(asint(shader_in[2].x));
    r0 = _415;
    float4 _421 = o2;
    _421.w = r0.x * asfloat(981467136u);
    o2 = _421;
    float4 _430 = r0;
    _430.x = r1.y * cb0_m[13].x;
    r0 = _430;
    float4 _437 = r0;
    _437.y = r0.x * asfloat(3216550459u);
    r0 = _437;
    float4 _442 = r0;
    _442.y = exp2(r0.y);
    r0 = _442;
    float4 _449 = r0;
    _449.y = (-r0.y) + asfloat(1065353216u);
    r0 = _449;
    float4 _456 = r0;
    _456.x = r0.y / r0.x;
    r0 = _456;
    float4 _468 = r0;
    _468.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _468;
    float4 _483 = r0;
    _483.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _483;
    float4 _488 = r0;
    _488.z = sqrt(r0.z);
    r0 = _488;
    float4 _496 = r0;
    _496.z = r0.z * cb0_m[13].y;
    r0 = _496;
    float4 _506 = r0;
    _506.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _506;
    float4 _518 = r0;
    _518.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _518;
    float4 _524 = r0;
    _524.x = exp2(-r0.x);
    r0 = _524;
    float4 _530 = r0;
    _530.x = min(r0.x, asfloat(1065353216u));
    r0 = _530;
    float4 _537 = o3;
    _537.w = (-r0.x) + asfloat(1065353216u);
    o3 = _537;
    float3 _546 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o3 = float4(_546.x, _546.y, _546.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _561 = shader_in[2];
    _561.x = asfloat(v2);
    shader_in[2] = _561;
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
