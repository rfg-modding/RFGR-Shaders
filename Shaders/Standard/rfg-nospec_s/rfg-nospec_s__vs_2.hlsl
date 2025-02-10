cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
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
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _64 = r0;
    _64.w = asfloat(1065353216u);
    r0 = _64;
    float4 _78 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r1;
    _93.x = mad(_78.w, r0.w, mad(_78.z, r0.z, mad(_78.y, r0.y, _78.x * r0.x)));
    r1 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r1;
    _119.y = mad(_105.w, r0.w, mad(_105.z, r0.z, mad(_105.y, r0.y, _105.x * r0.x)));
    r1 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r1;
    _145.z = mad(_131.w, r0.w, mad(_131.z, r0.z, mad(_131.y, r0.y, _131.x * r0.x)));
    r1 = _145;
    float4 _148 = r1;
    _148.w = asfloat(1065353216u);
    r1 = _148;
    float4 _159 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _173 = o0;
    _173.x = mad(_159.w, r1.w, mad(_159.z, r1.z, mad(_159.y, r1.y, _159.x * r1.x)));
    o0 = _173;
    float4 _184 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _198 = o0;
    _198.y = mad(_184.w, r1.w, mad(_184.z, r1.z, mad(_184.y, r1.y, _184.x * r1.x)));
    o0 = _198;
    float4 _209 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _223 = o0;
    _223.z = mad(_209.w, r1.w, mad(_209.z, r1.z, mad(_209.y, r1.y, _209.x * r1.x)));
    o0 = _223;
    float4 _235 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _249 = o0;
    _249.w = mad(_235.w, r1.w, mad(_235.z, r1.z, mad(_235.y, r1.y, _235.x * r1.x)));
    o0 = _249;
    float2 _255 = float2(asint(shader_in[2].xy));
    r0 = float4(_255.x, _255.y, r0.z, r0.w);
    float2 _266 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_266.x, _266.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _288 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_288.x, _288.y, _288.z, r0.w);
    float3 _298 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _310 = r1;
    _310.x = mad(_298.z, r0.xyz.z, mad(_298.y, r0.xyz.y, _298.x * r0.xyz.x));
    r1 = _310;
    float3 _319 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _331 = r1;
    _331.y = mad(_319.z, r0.xyz.z, mad(_319.y, r0.xyz.y, _319.x * r0.xyz.x));
    r1 = _331;
    float3 _340 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _352 = r1;
    _352.z = mad(_340.z, r0.xyz.z, mad(_340.y, r0.xyz.y, _340.x * r0.xyz.x));
    r1 = _352;
    float4 _367 = r0;
    _367.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _367;
    float4 _372 = r0;
    _372.x = rsqrt(r0.x);
    r0 = _372;
    float3 _378 = r0.xxx * r1.xyz;
    r0 = float4(_378.x, _378.y, _378.z, r0.w);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _398 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _411 = r2;
    _411.x = mad(_398.z, r1.xyz.z, mad(_398.y, r1.xyz.y, _398.x * r1.xyz.x));
    r2 = _411;
    float3 _420 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _432 = r2;
    _432.y = mad(_420.z, r1.xyz.z, mad(_420.y, r1.xyz.y, _420.x * r1.xyz.x));
    r2 = _432;
    float3 _441 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _453 = r2;
    _453.z = mad(_441.z, r1.xyz.z, mad(_441.y, r1.xyz.y, _441.x * r1.xyz.x));
    r2 = _453;
    float4 _468 = r0;
    _468.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _468;
    float4 _473 = r0;
    _473.w = rsqrt(r0.w);
    r0 = _473;
    float3 _479 = r0.www * r2.xyz;
    r1 = float4(_479.x, _479.y, _479.z, r1.w);
    float3 _486 = r0.zxy * r1.yzx;
    r2 = float4(_486.x, _486.y, _486.z, r2.w);
    float3 _497 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_497.x, _497.y, _497.z, r2.w);
    float3 _507 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _519 = o2;
    _519.z = mad(_507.z, r0.xyz.z, mad(_507.y, r0.xyz.y, _507.x * r0.xyz.x));
    o2 = _519;
    float3 _528 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _540 = o2;
    _540.x = mad(_528.z, r1.xyz.z, mad(_528.y, r1.xyz.y, _528.x * r1.xyz.x));
    o2 = _540;
    float3 _546 = r1.www * r2.xyz;
    r0 = float4(_546.x, _546.y, _546.z, r0.w);
    float3 _556 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _568 = o2;
    _568.y = mad(_556.z, r0.xyz.z, mad(_556.y, r0.xyz.y, _556.x * r0.xyz.x));
    o2 = _568;
    float2 _574 = float2(asint(shader_in[1].xy));
    r0 = float4(_574.x, _574.y, r0.z, r0.w);
    float2 _580 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_580.x, _580.y, o3.z, o3.w);
    float2 _587 = float2(asint(shader_in[3].xy));
    r0 = float4(_587.x, _587.y, r0.z, r0.w);
    float2 _593 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _593.x, _593.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _602 = asfloat(v1);
    shader_in[1] = float4(_602.x, _602.y, shader_in[1].z, shader_in[1].w);
    float2 _607 = asfloat(v2);
    shader_in[2] = float4(_607.x, _607.y, shader_in[2].z, shader_in[2].w);
    float2 _612 = asfloat(v3);
    shader_in[3] = float4(_612.x, _612.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
