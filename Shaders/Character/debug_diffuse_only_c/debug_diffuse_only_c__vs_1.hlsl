cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v4;
static float4 v5;
static float4 v6;
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
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
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _60 = r0;
    _60.x = shader_in[6].y + shader_in[6].x;
    r0 = _60;
    float4 _68 = r0;
    _68.x = r0.x + shader_in[6].z;
    r0 = _68;
    float4 _76 = r0;
    _76.x = r0.x + shader_in[6].w;
    r0 = _76;
    float4 _83 = r0;
    _83.x = asfloat(1065353216u) / r0.x;
    r0 = _83;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _93 = r1;
    _93.w = asfloat(1065353216u);
    r1 = _93;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _110 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_110].x, cb4_m[_110].y, cb4_m[_110].z, cb4_m[_110].w);
    int _132 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_132].x, cb4_m[_132].y, cb4_m[_132].z, cb4_m[_132].w)) + r3;
    int _151 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_151].x, cb4_m[_151].y, cb4_m[_151].z, cb4_m[_151].w)) + r3;
    int _170 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_170].x, cb4_m[_170].y, cb4_m[_170].z, cb4_m[_170].w)) + r3;
    float4 _199 = r4;
    _199.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _199;
    int _208 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_208].x, cb4_m[_208].y, cb4_m[_208].z, cb4_m[_208].w);
    int _227 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_227].x, cb4_m[_227].y, cb4_m[_227].z, cb4_m[_227].w)) + r5;
    int _247 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_247].x, cb4_m[_247].y, cb4_m[_247].z, cb4_m[_247].w)) + r5;
    int _267 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_267].x, cb4_m[_267].y, cb4_m[_267].z, cb4_m[_267].w)) + r5;
    float4 _295 = r4;
    _295.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _295;
    int _304 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_304].x, cb4_m[_304].y, cb4_m[_304].z, cb4_m[_304].w);
    int _323 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_323].x, cb4_m[_323].y, cb4_m[_323].z, cb4_m[_323].w)) + r6;
    int _343 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_343].x, cb4_m[_343].y, cb4_m[_343].z, cb4_m[_343].w)) + r6;
    int _363 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_363].x, cb4_m[_363].y, cb4_m[_363].z, cb4_m[_363].w)) + r6;
    float4 _391 = r4;
    _391.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _391;
    float3 _397 = r0.xxx * r4.xyz;
    r1 = float4(_397.x, _397.y, _397.z, r1.w);
    float4 _401 = r1;
    _401.w = asfloat(1065353216u);
    r1 = _401;
    float4 _412 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _426 = r4;
    _426.x = mad(_412.w, r1.w, mad(_412.z, r1.z, mad(_412.y, r1.y, _412.x * r1.x)));
    r4 = _426;
    float4 _437 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _451 = r4;
    _451.y = mad(_437.w, r1.w, mad(_437.z, r1.z, mad(_437.y, r1.y, _437.x * r1.x)));
    r4 = _451;
    float4 _462 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _476 = r4;
    _476.z = mad(_462.w, r1.w, mad(_462.z, r1.z, mad(_462.y, r1.y, _462.x * r1.x)));
    r4 = _476;
    float4 _479 = r4;
    _479.w = asfloat(1065353216u);
    r4 = _479;
    float4 _490 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _504 = o0;
    _504.x = mad(_490.w, r4.w, mad(_490.z, r4.z, mad(_490.y, r4.y, _490.x * r4.x)));
    o0 = _504;
    float4 _515 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _529 = o0;
    _529.y = mad(_515.w, r4.w, mad(_515.z, r4.z, mad(_515.y, r4.y, _515.x * r4.x)));
    o0 = _529;
    float4 _540 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _554 = o0;
    _554.z = mad(_540.w, r4.w, mad(_540.z, r4.z, mad(_540.y, r4.y, _540.x * r4.x)));
    o0 = _554;
    float4 _566 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _580 = o0;
    _580.w = mad(_566.w, r4.w, mad(_566.z, r4.z, mad(_566.y, r4.y, _566.x * r4.x)));
    o0 = _580;
    float3 _593 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _593.x, _593.y, _593.z);
    float3 _608 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_608.x, _608.y, _608.z, r1.w);
    float4 _624 = r4;
    _624.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _624;
    float4 _639 = r4;
    _639.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _639;
    float4 _654 = r4;
    _654.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _654;
    float3 _660 = r0.xxx * r4.xyz;
    r1 = float4(_660.x, _660.y, _660.z, r1.w);
    float4 _676 = r1;
    _676.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _676;
    float4 _681 = r1;
    _681.w = rsqrt(r1.w);
    r1 = _681;
    float3 _687 = r1.www * r1.xyz;
    r1 = float4(_687.x, _687.y, _687.z, r1.w);
    float3 _697 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _709 = r4;
    _709.x = mad(_697.z, r1.xyz.z, mad(_697.y, r1.xyz.y, _697.x * r1.xyz.x));
    r4 = _709;
    float3 _718 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _730 = r4;
    _730.y = mad(_718.z, r1.xyz.z, mad(_718.y, r1.xyz.y, _718.x * r1.xyz.x));
    r4 = _730;
    float3 _739 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _751 = r4;
    _751.z = mad(_739.z, r1.xyz.z, mad(_739.y, r1.xyz.y, _739.x * r1.xyz.x));
    r4 = _751;
    float4 _766 = r1;
    _766.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _766;
    float4 _771 = r1;
    _771.x = rsqrt(r1.x);
    r1 = _771;
    float3 _777 = r1.xxx * r4.xyz;
    r1 = float4(_777.x, _777.y, _777.z, r1.w);
    r4 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _802 = r3;
    _802.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _802;
    float4 _817 = r3;
    _817.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _817;
    float4 _832 = r3;
    _832.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _832;
    float3 _838 = r0.xxx * r3.xyz;
    r2 = float4(_838.x, _838.y, _838.z, r2.w);
    float4 _854 = r0;
    _854.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _854;
    float4 _859 = r0;
    _859.x = rsqrt(r0.x);
    r0 = _859;
    float3 _865 = r0.xxx * r2.xyz;
    r2 = float4(_865.x, _865.y, _865.z, r2.w);
    float3 _875 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _887 = r3;
    _887.x = mad(_875.z, r2.xyz.z, mad(_875.y, r2.xyz.y, _875.x * r2.xyz.x));
    r3 = _887;
    float3 _896 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _908 = r3;
    _908.y = mad(_896.z, r2.xyz.z, mad(_896.y, r2.xyz.y, _896.x * r2.xyz.x));
    r3 = _908;
    float3 _917 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _929 = r3;
    _929.z = mad(_917.z, r2.xyz.z, mad(_917.y, r2.xyz.y, _917.x * r2.xyz.x));
    r3 = _929;
    float4 _944 = r0;
    _944.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _944;
    float4 _949 = r0;
    _949.x = rsqrt(r0.x);
    r0 = _949;
    float3 _955 = r0.xxx * r3.xyz;
    r2 = float4(_955.x, _955.y, _955.z, r2.w);
    float3 _962 = r1.zxy * r2.yzx;
    r3 = float4(_962.x, _962.y, _962.z, r3.w);
    float3 _973 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_973.x, _973.y, _973.z, r3.w);
    float3 _980 = r4.www * r3.xyz;
    r3 = float4(_980.x, _980.y, _980.z, r3.w);
    float3 _996 = o1;
    _996.y = mad(r0.yzw.z, r3.xyz.z, mad(r0.yzw.y, r3.xyz.y, r0.yzw.x * r3.xyz.x));
    o1 = _996;
    float3 _1005 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1017 = o2;
    _1017.y = mad(_1005.z, r3.xyz.z, mad(_1005.y, r3.xyz.y, _1005.x * r3.xyz.x));
    o2 = _1017;
    float3 _1032 = o1;
    _1032.z = mad(r0.yzw.z, r1.xyz.z, mad(r0.yzw.y, r1.xyz.y, r0.yzw.x * r1.xyz.x));
    o1 = _1032;
    float3 _1041 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1053 = o2;
    _1053.z = mad(_1041.z, r1.xyz.z, mad(_1041.y, r1.xyz.y, _1041.x * r1.xyz.x));
    o2 = _1053;
    float3 _1068 = o1;
    _1068.x = mad(r0.yzw.z, r2.xyz.z, mad(r0.yzw.y, r2.xyz.y, r0.yzw.x * r2.xyz.x));
    o1 = _1068;
    float3 _1077 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1089 = o2;
    _1089.x = mad(_1077.z, r2.xyz.z, mad(_1077.y, r2.xyz.y, _1077.x * r2.xyz.x));
    o2 = _1089;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = asfloat(v7);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
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
