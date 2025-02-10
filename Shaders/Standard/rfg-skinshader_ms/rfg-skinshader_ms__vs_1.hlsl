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
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    float4 _65 = r1;
    _65.x = shader_in[5].x * asfloat(1082130432u);
    r1 = _65;
    float3 _78 = (r1.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r1 = float4(_78.x, _78.y, _78.z, r1.w);
    float4 _82 = r1;
    _82.w = asfloat(1065353216u);
    r1 = _82;
    float4 _97 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _111 = r0;
    _111.x = mad(_97.w, r1.w, mad(_97.z, r1.z, mad(_97.y, r1.y, _97.x * r1.x)));
    r0 = _111;
    float4 _123 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _137 = r0;
    _137.y = mad(_123.w, r1.w, mad(_123.z, r1.z, mad(_123.y, r1.y, _123.x * r1.x)));
    r0 = _137;
    float4 _149 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _163 = r0;
    _163.z = mad(_149.w, r1.w, mad(_149.z, r1.z, mad(_149.y, r1.y, _149.x * r1.x)));
    r0 = _163;
    float4 _174 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _188 = o0;
    _188.x = mad(_174.w, r0.w, mad(_174.z, r0.z, mad(_174.y, r0.y, _174.x * r0.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _213 = o0;
    _213.y = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    o0 = _213;
    float4 _224 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _238 = o0;
    _238.z = mad(_224.w, r0.w, mad(_224.z, r0.z, mad(_224.y, r0.y, _224.x * r0.x)));
    o0 = _238;
    float4 _250 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _264 = o0;
    _264.w = mad(_250.w, r0.w, mad(_250.z, r0.z, mad(_250.y, r0.y, _250.x * r0.x)));
    o0 = _264;
    float2 _270 = float2(asint(shader_in[1].xy));
    r1 = float4(_270.x, _270.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _291 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_291.x, _291.y, _291.z, r1.w);
    float3 _301 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_301.x, _301.y, _301.z, r2.w);
    float3 _313 = (shader_in[5].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_313.x, _313.y, _313.z, r1.w);
    float3 _323 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _335 = r2;
    _335.x = mad(_323.z, r1.xyz.z, mad(_323.y, r1.xyz.y, _323.x * r1.xyz.x));
    r2 = _335;
    float3 _344 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _356 = r2;
    _356.y = mad(_344.z, r1.xyz.z, mad(_344.y, r1.xyz.y, _344.x * r1.xyz.x));
    r2 = _356;
    float3 _365 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _377 = r2;
    _377.z = mad(_365.z, r1.xyz.z, mad(_365.y, r1.xyz.y, _365.x * r1.xyz.x));
    r2 = _377;
    float4 _392 = r0;
    _392.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _392;
    float4 _397 = r0;
    _397.w = rsqrt(r0.w);
    r0 = _397;
    float3 _403 = r0.www * r2.xyz;
    r1 = float4(_403.x, _403.y, _403.z, r1.w);
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
    float3 _510 = r1.zxy * r2.yzx;
    r3 = float4(_510.x, _510.y, _510.z, r3.w);
    float3 _521 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_521.x, _521.y, _521.z, r3.w);
    float3 _528 = r2.www * r3.xyz;
    r3 = float4(_528.x, _528.y, _528.z, r3.w);
    float3 _542 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_542.x, _542.y, _542.z, r4.w);
    float3 _559 = o2;
    _559.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _559;
    float3 _574 = o2;
    _574.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _574;
    float3 _589 = o2;
    _589.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _589;
    float3 _603 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_603.x, _603.y, _603.z, r4.w);
    float3 _617 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_617.x, _617.y, _617.z, r0.w);
    float3 _633 = o3;
    _633.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _633;
    float3 _642 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _654 = o4;
    _654.z = mad(_642.z, r1.xyz.z, mad(_642.y, r1.xyz.y, _642.x * r1.xyz.x));
    o4 = _654;
    float3 _669 = o3;
    _669.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _669;
    float3 _678 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _690 = o4;
    _690.x = mad(_678.z, r2.xyz.z, mad(_678.y, r2.xyz.y, _678.x * r2.xyz.x));
    o4 = _690;
    float3 _705 = o3;
    _705.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _705;
    float3 _714 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _726 = o4;
    _726.y = mad(_714.z, r3.xyz.z, mad(_714.y, r3.xyz.y, _714.x * r3.xyz.x));
    o4 = _726;
    float4 _735 = r0;
    _735.w = r0.y * cb0_m[13].x;
    r0 = _735;
    float4 _742 = r1;
    _742.x = r0.w * asfloat(3216550459u);
    r1 = _742;
    float4 _747 = r1;
    _747.x = exp2(r1.x);
    r1 = _747;
    float4 _754 = r1;
    _754.x = (-r1.x) + asfloat(1065353216u);
    r1 = _754;
    float4 _761 = r0;
    _761.w = r1.x / r0.w;
    r0 = _761;
    float4 _773 = r1;
    _773.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _773;
    float4 _788 = r0;
    _788.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _788;
    float4 _793 = r0;
    _793.x = sqrt(r0.x);
    r0 = _793;
    float4 _801 = r0;
    _801.x = r0.x * cb0_m[13].y;
    r0 = _801;
    float4 _811 = r0;
    _811.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _811;
    float4 _823 = r0;
    _823.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _823;
    float4 _829 = r0;
    _829.x = exp2(-r0.x);
    r0 = _829;
    float4 _835 = r0;
    _835.x = min(r0.x, asfloat(1065353216u));
    r0 = _835;
    float4 _842 = o4;
    _842.w = (-r0.x) + asfloat(1065353216u);
    o4 = _842;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _850 = asfloat(v1);
    shader_in[1] = float4(_850.x, _850.y, shader_in[1].z, shader_in[1].w);
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
