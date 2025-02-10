cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _80 = r0;
    _80.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _80;
    float4 _98 = r0;
    _98.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _98;
    float4 _116 = r0;
    _116.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _116;
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
    float3 _237 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_237.x, _237.y, _237.z, r1.w);
    float4 _255 = r2;
    _255.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _255;
    float4 _271 = r2;
    _271.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _271;
    float4 _287 = r2;
    _287.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _287;
    float4 _302 = r0;
    _302.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _302;
    float4 _307 = r0;
    _307.w = rsqrt(r0.w);
    r0 = _307;
    float3 _313 = r0.www * r2.xyz;
    r1 = float4(_313.x, _313.y, _313.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _341 = r3;
    _341.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _341;
    float4 _357 = r3;
    _357.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _357;
    float4 _373 = r3;
    _373.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _373;
    float4 _388 = r0;
    _388.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _388;
    float4 _393 = r0;
    _393.w = rsqrt(r0.w);
    r0 = _393;
    float3 _399 = r0.www * r3.xyz;
    r2 = float4(_399.x, _399.y, _399.z, r2.w);
    float3 _406 = r1.zxy * r2.yzx;
    r3 = float4(_406.x, _406.y, _406.z, r3.w);
    float3 _417 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_417.x, _417.y, _417.z, r3.w);
    float3 _424 = r2.www * r3.xyz;
    r3 = float4(_424.x, _424.y, _424.z, r3.w);
    float3 _438 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_438.x, _438.y, _438.z, r4.w);
    float3 _454 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_454.x, _454.y, _454.z, r0.w);
    float3 _470 = o1;
    _470.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _470;
    float3 _479 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _491 = o2;
    _491.y = mad(_479.z, r3.xyz.z, mad(_479.y, r3.xyz.y, _479.x * r3.xyz.x));
    o2 = _491;
    float3 _506 = o1;
    _506.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _506;
    float3 _515 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _527 = o2;
    _527.z = mad(_515.z, r1.xyz.z, mad(_515.y, r1.xyz.y, _515.x * r1.xyz.x));
    o2 = _527;
    float3 _542 = o1;
    _542.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _542;
    float3 _551 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _563 = o2;
    _563.x = mad(_551.z, r2.xyz.z, mad(_551.y, r2.xyz.y, _551.x * r2.xyz.x));
    o2 = _563;
    float4 _572 = r0;
    _572.w = r0.y * cb0_m[13].x;
    r0 = _572;
    float4 _579 = r1;
    _579.x = r0.w * asfloat(3216550459u);
    r1 = _579;
    float4 _584 = r1;
    _584.x = exp2(r1.x);
    r1 = _584;
    float4 _591 = r1;
    _591.x = (-r1.x) + asfloat(1065353216u);
    r1 = _591;
    float4 _598 = r0;
    _598.w = r1.x / r0.w;
    r0 = _598;
    float4 _610 = r1;
    _610.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _610;
    float4 _625 = r0;
    _625.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _625;
    float4 _630 = r0;
    _630.x = sqrt(r0.x);
    r0 = _630;
    float4 _638 = r0;
    _638.x = r0.x * cb0_m[13].y;
    r0 = _638;
    float4 _648 = r0;
    _648.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _648;
    float4 _660 = r0;
    _660.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _660;
    float4 _666 = r0;
    _666.x = exp2(-r0.x);
    r0 = _666;
    float4 _672 = r0;
    _672.x = min(r0.x, asfloat(1065353216u));
    r0 = _672;
    float4 _679 = o2;
    _679.w = (-r0.x) + asfloat(1065353216u);
    o2 = _679;
    float2 _686 = float2(asint(shader_in[2].xy));
    r0 = float4(_686.x, _686.y, r0.z, r0.w);
    float2 _697 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_697.x, _697.y, r0.z, r0.w);
    float2 _706 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _706.x, _706.y);
    float2 _713 = float2(asint(shader_in[1].xy));
    r0 = float4(_713.x, _713.y, r0.z, r0.w);
    float2 _719 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_719.x, _719.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _728 = asfloat(v1);
    shader_in[1] = float4(_728.x, _728.y, shader_in[1].z, shader_in[1].w);
    float2 _733 = asfloat(v2);
    shader_in[2] = float4(_733.x, _733.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
