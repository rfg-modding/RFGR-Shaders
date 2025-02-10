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
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _78 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _92 = r0;
    _92.x = mad(_78.w, r1.w, mad(_78.z, r1.z, mad(_78.y, r1.y, _78.x * r1.x)));
    r0 = _92;
    float4 _104 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _118 = r0;
    _118.y = mad(_104.w, r1.w, mad(_104.z, r1.z, mad(_104.y, r1.y, _104.x * r1.x)));
    r0 = _118;
    float4 _130 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _144 = r0;
    _144.z = mad(_130.w, r1.w, mad(_130.z, r1.z, mad(_130.y, r1.y, _130.x * r1.x)));
    r0 = _144;
    float4 _155 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _169 = o0;
    _169.x = mad(_155.w, r0.w, mad(_155.z, r0.z, mad(_155.y, r0.y, _155.x * r0.x)));
    o0 = _169;
    float4 _180 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _194 = o0;
    _194.y = mad(_180.w, r0.w, mad(_180.z, r0.z, mad(_180.y, r0.y, _180.x * r0.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _219 = o0;
    _219.z = mad(_205.w, r0.w, mad(_205.z, r0.z, mad(_205.y, r0.y, _205.x * r0.x)));
    o0 = _219;
    float4 _231 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _245 = o0;
    _245.w = mad(_231.w, r0.w, mad(_231.z, r0.z, mad(_231.y, r0.y, _231.x * r0.x)));
    o0 = _245;
    float3 _259 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_259.x, _259.y, _259.z, r0.w);
    float3 _273 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_273.x, _273.y, _273.z, r1.w);
    float3 _287 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_287.x, _287.y, _287.z, r2.w);
    float3 _306 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_306.x, _306.y, _306.z, r2.w);
    float4 _322 = r0;
    _322.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _322;
    float4 _327 = r0;
    _327.w = rsqrt(r0.w);
    r0 = _327;
    float3 _333 = r0.www * r2.xyz;
    r2 = float4(_333.x, _333.y, _333.z, r2.w);
    float3 _340 = r1.zxy * r2.xyz;
    r3 = float4(_340.x, _340.y, _340.z, r3.w);
    float3 _352 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_352.x, _352.y, _352.z, r2.w);
    float4 _368 = r0;
    _368.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _368;
    float4 _373 = r0;
    _373.w = rsqrt(r0.w);
    r0 = _373;
    float3 _379 = r0.www * r2.xyz;
    r2 = float4(_379.x, _379.y, _379.z, r2.w);
    float3 _389 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _401 = r3;
    _401.x = mad(_389.z, r2.xyz.z, mad(_389.y, r2.xyz.y, _389.x * r2.xyz.x));
    r3 = _401;
    float3 _410 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _422 = r3;
    _422.y = mad(_410.z, r2.xyz.z, mad(_410.y, r2.xyz.y, _410.x * r2.xyz.x));
    r3 = _422;
    float3 _431 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _443 = r3;
    _443.z = mad(_431.z, r2.xyz.z, mad(_431.y, r2.xyz.y, _431.x * r2.xyz.x));
    r3 = _443;
    float3 _452 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _464 = o1;
    _464.x = mad(_452.z, r2.xyz.z, mad(_452.y, r2.xyz.y, _452.x * r2.xyz.x));
    o1 = _464;
    float4 _479 = r0;
    _479.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _479;
    float4 _484 = r0;
    _484.w = rsqrt(r0.w);
    r0 = _484;
    float3 _490 = r0.www * r3.xyz;
    r2 = float4(_490.x, _490.y, _490.z, r2.w);
    float3 _500 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _512 = r3;
    _512.x = mad(_500.z, r1.xyz.z, mad(_500.y, r1.xyz.y, _500.x * r1.xyz.x));
    r3 = _512;
    float3 _521 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _533 = r3;
    _533.y = mad(_521.z, r1.xyz.z, mad(_521.y, r1.xyz.y, _521.x * r1.xyz.x));
    r3 = _533;
    float3 _542 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _554 = r3;
    _554.z = mad(_542.z, r1.xyz.z, mad(_542.y, r1.xyz.y, _542.x * r1.xyz.x));
    r3 = _554;
    float3 _563 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _575 = o1;
    _575.z = mad(_563.z, r1.xyz.z, mad(_563.y, r1.xyz.y, _563.x * r1.xyz.x));
    o1 = _575;
    float4 _590 = r0;
    _590.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _590;
    float4 _595 = r0;
    _595.w = rsqrt(r0.w);
    r0 = _595;
    float3 _601 = r0.www * r3.xyz;
    r1 = float4(_601.x, _601.y, _601.z, r1.w);
    float3 _608 = r2.yzx * r1.zxy;
    r3 = float4(_608.x, _608.y, _608.z, r3.w);
    float3 _619 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_619.x, _619.y, _619.z, r3.w);
    float3 _629 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _641 = o1;
    _641.y = mad(_629.z, r3.xyz.z, mad(_629.y, r3.xyz.y, _629.x * r3.xyz.x));
    o1 = _641;
    float3 _655 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r4 = float4(_655.x, _655.y, _655.z, r4.w);
    float3 _668 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _679 = r5;
    _679.x = mad(r4.xyz.z, _668.z, mad(r4.xyz.y, _668.y, r4.xyz.x * _668.x));
    r5 = _679;
    float3 _690 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _700 = r5;
    _700.z = mad(r4.xyz.z, _690.z, mad(r4.xyz.y, _690.y, r4.xyz.x * _690.x));
    r5 = _700;
    float3 _711 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _721 = r0;
    _721.w = mad(r4.xyz.z, _711.z, mad(r4.xyz.y, _711.y, r4.xyz.x * _711.x));
    r0 = _721;
    float4 _730 = r0;
    _730.w = r0.w * cb5_m[5].y;
    r0 = _730;
    float2 _741 = r5.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r4 = float4(_741.x, r4.y, _741.y, r4.w);
    float4 _746 = o1;
    _746.w = r4.z;
    o1 = _746;
    o2 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o3 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _772 = o4;
    _772.x = r2.y;
    o4 = _772;
    float3 _781 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _793 = o5;
    _793.x = mad(_781.z, r2.xyz.z, mad(_781.y, r2.xyz.y, _781.x * r2.xyz.x));
    o5 = _793;
    float4 _797 = o4;
    _797.z = r1.y;
    o4 = _797;
    float3 _806 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _818 = o5;
    _818.z = mad(_806.z, r1.xyz.z, mad(_806.y, r1.xyz.y, _806.x * r1.xyz.x));
    o5 = _818;
    float4 _823 = o4;
    _823.y = -r3.y;
    o4 = _823;
    float3 _832 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _835 = -r3.xyz;
    float4 _845 = o5;
    _845.y = mad(_832.z, _835.z, mad(_832.y, _835.y, _832.x * _835.x));
    o5 = _845;
    float4 _852 = r1;
    _852.x = float(asint(shader_in[2].x));
    r1 = _852;
    float4 _859 = o4;
    _859.w = r1.x * asfloat(981467136u);
    o4 = _859;
    float4 _868 = r1;
    _868.x = r0.y * cb0_m[13].x;
    r1 = _868;
    float4 _875 = r1;
    _875.y = r1.x * asfloat(3216550459u);
    r1 = _875;
    float4 _880 = r1;
    _880.y = exp2(r1.y);
    r1 = _880;
    float4 _887 = r1;
    _887.y = (-r1.y) + asfloat(1065353216u);
    r1 = _887;
    float4 _894 = r1;
    _894.x = r1.y / r1.x;
    r1 = _894;
    float4 _906 = r1;
    _906.y = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _906;
    float4 _921 = r0;
    _921.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _921;
    float4 _926 = r0;
    _926.x = sqrt(r0.x);
    r0 = _926;
    float4 _934 = r0;
    _934.x = r0.x * cb0_m[13].y;
    r0 = _934;
    float4 _944 = r0;
    _944.y = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r0 = _944;
    float4 _956 = r0;
    _956.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _956;
    float4 _962 = r0;
    _962.x = exp2(-r0.x);
    r0 = _962;
    float4 _968 = r0;
    _968.x = min(r0.x, asfloat(1065353216u));
    r0 = _968;
    float4 _975 = o5;
    _975.w = (-r0.x) + asfloat(1065353216u);
    o5 = _975;
    float4 _978 = r0;
    _978.x = asfloat(3212836864u);
    r0 = _978;
    float4 _985 = r4;
    _985.y = r0.w * r0.x;
    r4 = _985;
    float2 _993 = r4.xy + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_993.x, _993.y, r0.z, r0.w);
    float2 _1000 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o6 = float4(_1000.x, _1000.y, o6.z, o6.w);
    float2 _1008 = cb5_m[5].w.xx * asfloat(uint2(981467136u, 981467136u));
    o6 = float4(o6.x, o6.y, _1008.x, _1008.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _1023 = shader_in[2];
    _1023.x = asfloat(v2);
    shader_in[2] = _1023;
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
