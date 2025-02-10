cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
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
    float4 _81 = r0;
    _81.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _81;
    float4 _99 = r0;
    _99.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _99;
    float4 _117 = r0;
    _117.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _117;
    float4 _132 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _146 = o0;
    _146.x = mad(_132.w, r0.w, mad(_132.z, r0.z, mad(_132.y, r0.y, _132.x * r0.x)));
    o0 = _146;
    float4 _158 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _172 = o0;
    _172.y = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _184 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _198 = o0;
    _198.z = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _210 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _224 = o0;
    _224.w = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float3 _238 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_238.x, _238.y, _238.z, r0.w);
    float3 _253 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_253.x, _253.y, _253.z, r1.w);
    float4 _271 = r2;
    _271.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _271;
    float4 _287 = r2;
    _287.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _287;
    float4 _303 = r2;
    _303.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _303;
    float4 _318 = r0;
    _318.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _318;
    float4 _323 = r0;
    _323.w = rsqrt(r0.w);
    r0 = _323;
    float3 _329 = r0.www * r2.xyz;
    r1 = float4(_329.x, _329.y, _329.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _357 = r3;
    _357.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _357;
    float4 _373 = r3;
    _373.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _373;
    float4 _389 = r3;
    _389.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _389;
    float4 _404 = r0;
    _404.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _404;
    float4 _409 = r0;
    _409.w = rsqrt(r0.w);
    r0 = _409;
    float3 _415 = r0.www * r3.xyz;
    r2 = float4(_415.x, _415.y, _415.z, r2.w);
    float3 _422 = r1.zxy * r2.yzx;
    r3 = float4(_422.x, _422.y, _422.z, r3.w);
    float3 _433 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_433.x, _433.y, _433.z, r3.w);
    float3 _440 = r2.www * r3.xyz;
    r3 = float4(_440.x, _440.y, _440.z, r3.w);
    float3 _450 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _462 = o1;
    _462.y = mad(_450.z, r3.xyz.z, mad(_450.y, r3.xyz.y, _450.x * r3.xyz.x));
    o1 = _462;
    float3 _471 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _483 = o1;
    _483.z = mad(_471.z, r1.xyz.z, mad(_471.y, r1.xyz.y, _471.x * r1.xyz.x));
    o1 = _483;
    float3 _492 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _504 = o1;
    _504.x = mad(_492.z, r2.xyz.z, mad(_492.y, r2.xyz.y, _492.x * r2.xyz.x));
    o1 = _504;
    float4 _519 = r0;
    _519.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _519;
    float4 _524 = r0;
    _524.w = rsqrt(r0.w);
    r0 = _524;
    float3 _530 = r0.www * r0.xyz;
    r0 = float4(_530.x, _530.y, _530.z, r0.w);
    float3 _546 = o2;
    _546.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _546;
    float3 _561 = o2;
    _561.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _561;
    float3 _576 = o2;
    _576.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _576;
    float2 _583 = float2(asint(shader_in[2].xy));
    r0 = float4(_583.x, _583.y, r0.z, r0.w);
    float2 _594 = r0.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_594.x, _594.y, r0.z, r0.w);
    float2 _603 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _603.x, _603.y);
    float2 _610 = float2(asint(shader_in[1].xy));
    r0 = float4(_610.x, _610.y, r0.z, r0.w);
    float2 _616 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_616.x, _616.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _625 = asfloat(v1);
    shader_in[1] = float4(_625.x, _625.y, shader_in[1].z, shader_in[1].w);
    float2 _630 = asfloat(v2);
    shader_in[2] = float4(_630.x, _630.y, shader_in[2].z, shader_in[2].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
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
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
