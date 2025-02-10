cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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
static float3 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 o7;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
    float4 _80 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _94 = r0;
    _94.x = mad(_80.w, r1.w, mad(_80.z, r1.z, mad(_80.y, r1.y, _80.x * r1.x)));
    r0 = _94;
    float4 _106 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _120 = r0;
    _120.y = mad(_106.w, r1.w, mad(_106.z, r1.z, mad(_106.y, r1.y, _106.x * r1.x)));
    r0 = _120;
    float4 _132 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _146 = r0;
    _146.z = mad(_132.w, r1.w, mad(_132.z, r1.z, mad(_132.y, r1.y, _132.x * r1.x)));
    r0 = _146;
    float4 _157 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _171 = o0;
    _171.x = mad(_157.w, r0.w, mad(_157.z, r0.z, mad(_157.y, r0.y, _157.x * r0.x)));
    o0 = _171;
    float4 _182 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _196 = o0;
    _196.y = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _221 = o0;
    _221.z = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float4 _233 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _247 = o0;
    _247.w = mad(_233.w, r0.w, mad(_233.z, r0.z, mad(_233.y, r0.y, _233.x * r0.x)));
    o0 = _247;
    float3 _261 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_261.x, _261.y, _261.z, r1.w);
    float3 _275 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_275.x, _275.y, _275.z, r0.w);
    float3 _289 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_289.x, _289.y, _289.z, r2.w);
    float3 _304 = r2.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r3 = float4(_304.x, _304.y, _304.z, r3.w);
    float3 _323 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r2.xyz) + (-r3.xyz);
    r3 = float4(_323.x, _323.y, _323.z, r3.w);
    float4 _339 = r0;
    _339.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _339;
    float4 _344 = r0;
    _344.w = rsqrt(r0.w);
    r0 = _344;
    float3 _350 = r0.www * r3.xyz;
    r3 = float4(_350.x, _350.y, _350.z, r3.w);
    float3 _357 = r2.zxy * r3.xyz;
    r4 = float4(_357.x, _357.y, _357.z, r4.w);
    float3 _369 = (r2.yzx * r3.yzx) + (-r4.xyz);
    r3 = float4(_369.x, _369.y, _369.z, r3.w);
    float4 _385 = r0;
    _385.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _385;
    float4 _390 = r0;
    _390.w = rsqrt(r0.w);
    r0 = _390;
    float3 _396 = r0.www * r3.xyz;
    r3 = float4(_396.x, _396.y, _396.z, r3.w);
    float3 _406 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _418 = r4;
    _418.x = mad(_406.z, r3.xyz.z, mad(_406.y, r3.xyz.y, _406.x * r3.xyz.x));
    r4 = _418;
    float3 _427 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _439 = r4;
    _439.y = mad(_427.z, r3.xyz.z, mad(_427.y, r3.xyz.y, _427.x * r3.xyz.x));
    r4 = _439;
    float3 _448 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _460 = r4;
    _460.z = mad(_448.z, r3.xyz.z, mad(_448.y, r3.xyz.y, _448.x * r3.xyz.x));
    r4 = _460;
    float3 _469 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _481 = o2;
    _481.x = mad(_469.z, r3.xyz.z, mad(_469.y, r3.xyz.y, _469.x * r3.xyz.x));
    o2 = _481;
    float4 _496 = r0;
    _496.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _496;
    float4 _501 = r0;
    _501.w = rsqrt(r0.w);
    r0 = _501;
    float3 _507 = r0.www * r4.xyz;
    r3 = float4(_507.x, _507.y, _507.z, r3.w);
    float3 _517 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _529 = r4;
    _529.x = mad(_517.z, r2.xyz.z, mad(_517.y, r2.xyz.y, _517.x * r2.xyz.x));
    r4 = _529;
    float3 _538 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _550 = r4;
    _550.y = mad(_538.z, r2.xyz.z, mad(_538.y, r2.xyz.y, _538.x * r2.xyz.x));
    r4 = _550;
    float3 _559 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _571 = r4;
    _571.z = mad(_559.z, r2.xyz.z, mad(_559.y, r2.xyz.y, _559.x * r2.xyz.x));
    r4 = _571;
    float3 _580 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _592 = o2;
    _592.z = mad(_580.z, r2.xyz.z, mad(_580.y, r2.xyz.y, _580.x * r2.xyz.x));
    o2 = _592;
    float4 _607 = r0;
    _607.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _607;
    float4 _612 = r0;
    _612.w = rsqrt(r0.w);
    r0 = _612;
    float3 _618 = r0.www * r4.xyz;
    r2 = float4(_618.x, _618.y, _618.z, r2.w);
    float3 _625 = r3.yzx * r2.zxy;
    r4 = float4(_625.x, _625.y, _625.z, r4.w);
    float3 _636 = (r2.yzx * r3.zxy) + (-r4.xyz);
    r4 = float4(_636.x, _636.y, _636.z, r4.w);
    float3 _643 = -r4.xyz;
    float3 _653 = o1;
    _653.y = mad(r1.xyz.z, _643.z, mad(r1.xyz.y, _643.y, r1.xyz.x * _643.x));
    o1 = _653;
    float3 _668 = o1;
    _668.x = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o1 = _668;
    float3 _683 = o1;
    _683.z = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    o1 = _683;
    float3 _692 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _704 = o2;
    _704.y = mad(_692.z, r4.xyz.z, mad(_692.y, r4.xyz.y, _692.x * r4.xyz.x));
    o2 = _704;
    float3 _718 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_718.x, _718.y, _718.z, r1.w);
    float3 _730 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _741 = r5;
    _741.x = mad(r1.xyz.z, _730.z, mad(r1.xyz.y, _730.y, r1.xyz.x * _730.x));
    r5 = _741;
    float3 _752 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _762 = r5;
    _762.z = mad(r1.xyz.z, _752.z, mad(r1.xyz.y, _752.y, r1.xyz.x * _752.x));
    r5 = _762;
    float3 _773 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _783 = r0;
    _783.w = mad(r1.xyz.z, _773.z, mad(r1.xyz.y, _773.y, r1.xyz.x * _773.x));
    r0 = _783;
    float4 _792 = r0;
    _792.w = r0.w * cb5_m[5].y;
    r0 = _792;
    float2 _803 = r5.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_803.x, r1.y, _803.y, r1.w);
    float4 _808 = o2;
    _808.w = r1.z;
    o2 = _808;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _834 = o5;
    _834.x = r3.y;
    o5 = _834;
    float3 _843 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _855 = o6;
    _855.x = mad(_843.z, r3.xyz.z, mad(_843.y, r3.xyz.y, _843.x * r3.xyz.x));
    o6 = _855;
    float4 _859 = o5;
    _859.z = r2.y;
    o5 = _859;
    float3 _868 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _880 = o6;
    _880.z = mad(_868.z, r2.xyz.z, mad(_868.y, r2.xyz.y, _868.x * r2.xyz.x));
    o6 = _880;
    float4 _885 = o5;
    _885.y = -r4.y;
    o5 = _885;
    float3 _894 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _897 = -r4.xyz;
    float4 _907 = o6;
    _907.y = mad(_894.z, _897.z, mad(_894.y, _897.y, _894.x * _897.x));
    o6 = _907;
    float4 _914 = r1;
    _914.z = float(asint(shader_in[2].x));
    r1 = _914;
    float4 _921 = o5;
    _921.w = r1.z * asfloat(981467136u);
    o5 = _921;
    float4 _930 = r1;
    _930.z = r0.y * cb0_m[13].x;
    r1 = _930;
    float4 _937 = r1;
    _937.w = r1.z * asfloat(3216550459u);
    r1 = _937;
    float4 _942 = r1;
    _942.w = exp2(r1.w);
    r1 = _942;
    float4 _949 = r1;
    _949.w = (-r1.w) + asfloat(1065353216u);
    r1 = _949;
    float4 _956 = r1;
    _956.z = r1.w / r1.z;
    r1 = _956;
    float4 _968 = r1;
    _968.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _968;
    float4 _983 = r0;
    _983.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _983;
    float4 _988 = r0;
    _988.x = sqrt(r0.x);
    r0 = _988;
    float4 _996 = r0;
    _996.x = r0.x * cb0_m[13].y;
    r0 = _996;
    float4 _1006 = r0;
    _1006.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _1006;
    float4 _1018 = r0;
    _1018.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _1018;
    float4 _1024 = r0;
    _1024.x = exp2(-r0.x);
    r0 = _1024;
    float4 _1030 = r0;
    _1030.x = min(r0.x, asfloat(1065353216u));
    r0 = _1030;
    float4 _1037 = o6;
    _1037.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1037;
    float4 _1040 = r0;
    _1040.x = asfloat(3212836864u);
    r0 = _1040;
    float4 _1047 = r1;
    _1047.y = r0.w * r0.x;
    r1 = _1047;
    float2 _1055 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_1055.x, _1055.y, r0.z, r0.w);
    float2 _1062 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o7 = float4(_1062.x, _1062.y, o7.z, o7.w);
    float2 _1070 = cb5_m[5].w.xx * asfloat(uint2(981467136u, 981467136u));
    o7 = float4(o7.x, o7.y, _1070.x, _1070.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _1085 = shader_in[2];
    _1085.x = asfloat(v2);
    shader_in[2] = _1085;
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
