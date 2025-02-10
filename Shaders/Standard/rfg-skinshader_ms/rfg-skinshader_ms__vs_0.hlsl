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
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float3 v4;
static float3 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _60 = r0;
    _60.x = shader_in[5].x * asfloat(1082130432u);
    r0 = _60;
    float3 _73 = (r0.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r0 = float4(_73.x, _73.y, _73.z, r0.w);
    float4 _78 = r0;
    _78.w = asfloat(1065353216u);
    r0 = _78;
    float4 _93 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _108 = r1;
    _108.x = mad(_93.w, r0.w, mad(_93.z, r0.z, mad(_93.y, r0.y, _93.x * r0.x)));
    r1 = _108;
    float4 _120 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _134 = r1;
    _134.y = mad(_120.w, r0.w, mad(_120.z, r0.z, mad(_120.y, r0.y, _120.x * r0.x)));
    r1 = _134;
    float4 _146 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _160 = r1;
    _160.z = mad(_146.w, r0.w, mad(_146.z, r0.z, mad(_146.y, r0.y, _146.x * r0.x)));
    r1 = _160;
    float4 _163 = r1;
    _163.w = asfloat(1065353216u);
    r1 = _163;
    float4 _174 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _188 = o0;
    _188.x = mad(_174.w, r1.w, mad(_174.z, r1.z, mad(_174.y, r1.y, _174.x * r1.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _213 = o0;
    _213.y = mad(_199.w, r1.w, mad(_199.z, r1.z, mad(_199.y, r1.y, _199.x * r1.x)));
    o0 = _213;
    float4 _224 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _238 = o0;
    _238.z = mad(_224.w, r1.w, mad(_224.z, r1.z, mad(_224.y, r1.y, _224.x * r1.x)));
    o0 = _238;
    float4 _250 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _264 = o0;
    _264.w = mad(_250.w, r1.w, mad(_250.z, r1.z, mad(_250.y, r1.y, _250.x * r1.x)));
    o0 = _264;
    float2 _270 = float2(asint(shader_in[1].xy));
    r0 = float4(_270.x, _270.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _291 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_291.x, _291.y, _291.z, r0.w);
    float3 _301 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_301.x, _301.y, _301.z, r2.w);
    float3 _313 = (shader_in[5].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_313.x, _313.y, _313.z, r0.w);
    float3 _323 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _335 = r2;
    _335.x = mad(_323.z, r0.xyz.z, mad(_323.y, r0.xyz.y, _323.x * r0.xyz.x));
    r2 = _335;
    float3 _344 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _356 = r2;
    _356.y = mad(_344.z, r0.xyz.z, mad(_344.y, r0.xyz.y, _344.x * r0.xyz.x));
    r2 = _356;
    float3 _365 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _377 = r2;
    _377.z = mad(_365.z, r0.xyz.z, mad(_365.y, r0.xyz.y, _365.x * r0.xyz.x));
    r2 = _377;
    float4 _392 = r0;
    _392.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _392;
    float4 _397 = r0;
    _397.x = rsqrt(r0.x);
    r0 = _397;
    float3 _403 = r0.xxx * r2.xyz;
    r0 = float4(_403.x, _403.y, _403.z, r0.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _422 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _435 = r3;
    _435.x = mad(_422.z, r2.xyz.z, mad(_422.y, r2.xyz.y, _422.x * r2.xyz.x));
    r3 = _435;
    float3 _444 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _456 = r3;
    _456.y = mad(_444.z, r2.xyz.z, mad(_444.y, r2.xyz.y, _444.x * r2.xyz.x));
    r3 = _456;
    float3 _465 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _477 = r3;
    _477.z = mad(_465.z, r2.xyz.z, mad(_465.y, r2.xyz.y, _465.x * r2.xyz.x));
    r3 = _477;
    float4 _492 = r0;
    _492.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _492;
    float4 _497 = r0;
    _497.w = rsqrt(r0.w);
    r0 = _497;
    float3 _503 = r0.www * r3.xyz;
    r2 = float4(_503.x, _503.y, _503.z, r2.w);
    float3 _510 = r0.zxy * r2.yzx;
    r3 = float4(_510.x, _510.y, _510.z, r3.w);
    float3 _521 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_521.x, _521.y, _521.z, r3.w);
    float3 _528 = r2.www * r3.xyz;
    r3 = float4(_528.x, _528.y, _528.z, r3.w);
    float3 _538 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _550 = o2;
    _550.y = mad(_538.z, r3.xyz.z, mad(_538.y, r3.xyz.y, _538.x * r3.xyz.x));
    o2 = _550;
    float3 _559 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _571 = o2;
    _571.z = mad(_559.z, r0.xyz.z, mad(_559.y, r0.xyz.y, _559.x * r0.xyz.x));
    o2 = _571;
    float3 _580 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _592 = o2;
    _592.x = mad(_580.z, r2.xyz.z, mad(_580.y, r2.xyz.y, _580.x * r2.xyz.x));
    o2 = _592;
    float3 _606 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_606.x, _606.y, _606.z, r4.w);
    float3 _621 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_621.x, _621.y, _621.z, r1.w);
    float3 _637 = o3;
    _637.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o3 = _637;
    float4 _641 = o4;
    _641.z = r0.y;
    o4 = _641;
    float3 _656 = o3;
    _656.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _656;
    float4 _660 = o4;
    _660.x = r2.y;
    o4 = _660;
    float3 _675 = o3;
    _675.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _675;
    float4 _679 = o4;
    _679.y = r3.y;
    o4 = _679;
    float4 _688 = r0;
    _688.x = r1.y * cb0_m[13].x;
    r0 = _688;
    float4 _695 = r0;
    _695.y = r0.x * asfloat(3216550459u);
    r0 = _695;
    float4 _700 = r0;
    _700.y = exp2(r0.y);
    r0 = _700;
    float4 _707 = r0;
    _707.y = (-r0.y) + asfloat(1065353216u);
    r0 = _707;
    float4 _714 = r0;
    _714.x = r0.y / r0.x;
    r0 = _714;
    float4 _726 = r0;
    _726.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _726;
    float4 _741 = r0;
    _741.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _741;
    float4 _746 = r0;
    _746.z = sqrt(r0.z);
    r0 = _746;
    float4 _754 = r0;
    _754.z = r0.z * cb0_m[13].y;
    r0 = _754;
    float4 _764 = r0;
    _764.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _764;
    float4 _776 = r0;
    _776.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _776;
    float4 _782 = r0;
    _782.x = exp2(-r0.x);
    r0 = _782;
    float4 _788 = r0;
    _788.x = min(r0.x, asfloat(1065353216u));
    r0 = _788;
    float4 _795 = o4;
    _795.w = (-r0.x) + asfloat(1065353216u);
    o4 = _795;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _803 = asfloat(v1);
    shader_in[1] = float4(_803.x, _803.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
