cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
    float3 _260 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_260.x, _260.y, _260.z, r1.w);
    float3 _274 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_274.x, _274.y, _274.z, r2.w);
    float3 _293 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_293.x, _293.y, _293.z, r2.w);
    float4 _309 = r0;
    _309.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _309;
    float4 _314 = r0;
    _314.w = rsqrt(r0.w);
    r0 = _314;
    float3 _320 = r0.www * r2.xyz;
    r2 = float4(_320.x, _320.y, _320.z, r2.w);
    float3 _327 = r1.zxy * r2.xyz;
    r3 = float4(_327.x, _327.y, _327.z, r3.w);
    float3 _339 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_339.x, _339.y, _339.z, r2.w);
    float4 _355 = r0;
    _355.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _355;
    float4 _360 = r0;
    _360.w = rsqrt(r0.w);
    r0 = _360;
    float3 _366 = r0.www * r2.xyz;
    r2 = float4(_366.x, _366.y, _366.z, r2.w);
    float3 _376 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _388 = r3;
    _388.x = mad(_376.z, r2.xyz.z, mad(_376.y, r2.xyz.y, _376.x * r2.xyz.x));
    r3 = _388;
    float3 _397 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _409 = r3;
    _409.y = mad(_397.z, r2.xyz.z, mad(_397.y, r2.xyz.y, _397.x * r2.xyz.x));
    r3 = _409;
    float3 _418 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _430 = r3;
    _430.z = mad(_418.z, r2.xyz.z, mad(_418.y, r2.xyz.y, _418.x * r2.xyz.x));
    r3 = _430;
    float3 _439 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _451 = o2;
    _451.x = mad(_439.z, r2.xyz.z, mad(_439.y, r2.xyz.y, _439.x * r2.xyz.x));
    o2 = _451;
    float4 _466 = r0;
    _466.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _466;
    float4 _471 = r0;
    _471.w = rsqrt(r0.w);
    r0 = _471;
    float3 _477 = r0.www * r3.xyz;
    r2 = float4(_477.x, _477.y, _477.z, r2.w);
    float3 _487 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _499 = r3;
    _499.x = mad(_487.z, r1.xyz.z, mad(_487.y, r1.xyz.y, _487.x * r1.xyz.x));
    r3 = _499;
    float3 _508 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _520 = r3;
    _520.y = mad(_508.z, r1.xyz.z, mad(_508.y, r1.xyz.y, _508.x * r1.xyz.x));
    r3 = _520;
    float3 _529 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _541 = r3;
    _541.z = mad(_529.z, r1.xyz.z, mad(_529.y, r1.xyz.y, _529.x * r1.xyz.x));
    r3 = _541;
    float3 _550 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _562 = o2;
    _562.z = mad(_550.z, r1.xyz.z, mad(_550.y, r1.xyz.y, _550.x * r1.xyz.x));
    o2 = _562;
    float4 _577 = r0;
    _577.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _577;
    float4 _582 = r0;
    _582.w = rsqrt(r0.w);
    r0 = _582;
    float3 _588 = r0.www * r3.xyz;
    r1 = float4(_588.x, _588.y, _588.z, r1.w);
    float3 _595 = r2.yzx * r1.zxy;
    r3 = float4(_595.x, _595.y, _595.z, r3.w);
    float3 _606 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_606.x, _606.y, _606.z, r3.w);
    float3 _621 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_621.x, _621.y, _621.z, r4.w);
    float3 _629 = -r3.xyz;
    float3 _639 = o1;
    _639.y = mad(r4.xyz.z, _629.z, mad(r4.xyz.y, _629.y, r4.xyz.x * _629.x));
    o1 = _639;
    float3 _654 = o1;
    _654.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _654;
    float3 _669 = o1;
    _669.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _669;
    float3 _678 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _690 = o2;
    _690.y = mad(_678.z, r3.xyz.z, mad(_678.y, r3.xyz.y, _678.x * r3.xyz.x));
    o2 = _690;
    float3 _704 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r4 = float4(_704.x, _704.y, _704.z, r4.w);
    float3 _716 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _727 = r5;
    _727.x = mad(r4.xyz.z, _716.z, mad(r4.xyz.y, _716.y, r4.xyz.x * _716.x));
    r5 = _727;
    float3 _738 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _748 = r5;
    _748.z = mad(r4.xyz.z, _738.z, mad(r4.xyz.y, _738.y, r4.xyz.x * _738.x));
    r5 = _748;
    float3 _759 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _769 = r0;
    _769.w = mad(r4.xyz.z, _759.z, mad(r4.xyz.y, _759.y, r4.xyz.x * _759.x));
    r0 = _769;
    float4 _778 = r0;
    _778.w = r0.w * cb5_m[5].y;
    r0 = _778;
    float2 _789 = r5.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r4 = float4(_789.x, r4.y, _789.y, r4.w);
    float4 _794 = o2;
    _794.w = r4.z;
    o2 = _794;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float3 _825 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _837 = o5;
    _837.x = mad(_825.z, r2.xyz.z, mad(_825.y, r2.xyz.y, _825.x * r2.xyz.x));
    o5 = _837;
    float3 _846 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _858 = o5;
    _858.z = mad(_846.z, r1.xyz.z, mad(_846.y, r1.xyz.y, _846.x * r1.xyz.x));
    o5 = _858;
    float3 _867 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _870 = -r3.xyz;
    float4 _880 = o5;
    _880.y = mad(_867.z, _870.z, mad(_867.y, _870.y, _867.x * _870.x));
    o5 = _880;
    float4 _887 = r1;
    _887.w = float(asint(shader_in[2].x));
    r1 = _887;
    float4 _894 = o5;
    _894.w = r1.w * asfloat(981467136u);
    o5 = _894;
    float3 _907 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r5 = float4(_907.x, _907.y, _907.z, r5.w);
    float3 _921 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_921.x, _921.y, _921.z, r0.w);
    float4 _931 = r1;
    _931.w = r5.y * cb0_m[13].x;
    r1 = _931;
    float4 _938 = r2;
    _938.w = r1.w * asfloat(3216550459u);
    r2 = _938;
    float4 _943 = r2;
    _943.w = exp2(r2.w);
    r2 = _943;
    float4 _950 = r2;
    _950.w = (-r2.w) + asfloat(1065353216u);
    r2 = _950;
    float4 _957 = r1;
    _957.w = r2.w / r1.w;
    r1 = _957;
    float4 _969 = r2;
    _969.w = asfloat((asfloat(1008981770u) < abs(r5.y)) ? 4294967295u : 0u);
    r2 = _969;
    float4 _984 = r3;
    _984.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r3 = _984;
    float4 _989 = r3;
    _989.w = sqrt(r3.w);
    r3 = _989;
    float4 _997 = r3;
    _997.w = r3.w * cb0_m[13].y;
    r3 = _997;
    float4 _1007 = r1;
    _1007.w = (asuint(r2.w) != 0u) ? r1.w : asfloat(1065353216u);
    r1 = _1007;
    float4 _1019 = r1;
    _1019.w = (r1.w * r3.w) + (-cb0_m[13].w);
    r1 = _1019;
    float4 _1025 = r1;
    _1025.w = exp2(-r1.w);
    r1 = _1025;
    float4 _1031 = r1;
    _1031.w = min(r1.w, asfloat(1065353216u));
    r1 = _1031;
    float4 _1038 = o6;
    _1038.w = (-r1.w) + asfloat(1065353216u);
    o6 = _1038;
    float4 _1053 = o6;
    _1053.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o6 = _1053;
    float3 _1059 = -r3.xyz;
    float4 _1069 = o6;
    _1069.y = mad(r0.xyz.z, _1059.z, mad(r0.xyz.y, _1059.y, r0.xyz.x * _1059.x));
    o6 = _1069;
    float4 _1084 = o6;
    _1084.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o6 = _1084;
    float4 _1087 = r0;
    _1087.x = asfloat(3212836864u);
    r0 = _1087;
    float4 _1094 = r4;
    _1094.y = r0.w * r0.x;
    r4 = _1094;
    float2 _1102 = r4.xy + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_1102.x, _1102.y, r0.z, r0.w);
    float2 _1109 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o7 = float4(_1109.x, _1109.y, o7.z, o7.w);
    float2 _1117 = cb5_m[5].w.xx * asfloat(uint2(981467136u, 981467136u));
    o7 = float4(o7.x, o7.y, _1117.x, _1117.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _1132 = shader_in[2];
    _1132.x = asfloat(v2);
    shader_in[2] = _1132;
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
