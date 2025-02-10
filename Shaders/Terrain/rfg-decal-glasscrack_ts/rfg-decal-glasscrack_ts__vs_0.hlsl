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
    float3 _274 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_274.x, _274.y, _274.z, r1.w);
    float3 _293 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_293.x, _293.y, _293.z, r1.w);
    float4 _309 = r0;
    _309.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _309;
    float4 _314 = r0;
    _314.w = rsqrt(r0.w);
    r0 = _314;
    float3 _320 = r0.www * r1.xyz;
    r1 = float4(_320.x, _320.y, _320.z, r1.w);
    float3 _328 = r1.yzx * shader_in[1].zxy;
    r2 = float4(_328.x, _328.y, _328.z, r2.w);
    float3 _341 = (shader_in[1].yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_341.x, _341.y, _341.z, r2.w);
    float3 _351 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _363 = o1;
    _363.y = mad(_351.z, r1.xyz.z, mad(_351.y, r1.xyz.y, _351.x * r1.xyz.x));
    o1 = _363;
    float4 _378 = r0;
    _378.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _378;
    float4 _383 = r0;
    _383.w = rsqrt(r0.w);
    r0 = _383;
    float3 _389 = r0.www * r2.xyz;
    r1 = float4(_389.x, _389.y, _389.z, r1.w);
    float3 _399 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _411 = o1;
    _411.x = mad(_399.z, r1.xyz.z, mad(_399.y, r1.xyz.y, _399.x * r1.xyz.x));
    o1 = _411;
    float3 _420 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _433 = o1;
    _433.z = mad(_420.z, shader_in[1].xyz.z, mad(_420.y, shader_in[1].xyz.y, _420.x * shader_in[1].xyz.x));
    o1 = _433;
    float3 _447 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r2 = float4(_447.x, _447.y, _447.z, r2.w);
    float3 _459 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _470 = r3;
    _470.x = mad(r2.xyz.z, _459.z, mad(r2.xyz.y, _459.y, r2.xyz.x * _459.x));
    r3 = _470;
    float3 _481 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _491 = r3;
    _491.z = mad(r2.xyz.z, _481.z, mad(r2.xyz.y, _481.y, r2.xyz.x * _481.x));
    r3 = _491;
    float3 _502 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _512 = r0;
    _512.w = mad(r2.xyz.z, _502.z, mad(r2.xyz.y, _502.y, r2.xyz.x * _502.x));
    r0 = _512;
    float4 _521 = r0;
    _521.w = r0.w * cb5_m[5].y;
    r0 = _521;
    float2 _532 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_532.x, r2.y, _532.y, r2.w);
    float4 _537 = o1;
    _537.w = r2.z;
    o1 = _537;
    o2 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o3 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float3 _568 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _580 = r3;
    _580.x = mad(_568.z, r1.xyz.z, mad(_568.y, r1.xyz.y, _568.x * r1.xyz.x));
    r3 = _580;
    float3 _589 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _601 = r3;
    _601.y = mad(_589.z, r1.xyz.z, mad(_589.y, r1.xyz.y, _589.x * r1.xyz.x));
    r3 = _601;
    float3 _610 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _622 = r3;
    _622.z = mad(_610.z, r1.xyz.z, mad(_610.y, r1.xyz.y, _610.x * r1.xyz.x));
    r3 = _622;
    float4 _637 = r1;
    _637.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _637;
    float4 _642 = r1;
    _642.x = rsqrt(r1.x);
    r1 = _642;
    float3 _648 = r1.xxx * r3.xyz;
    r1 = float4(_648.x, _648.y, _648.z, r1.w);
    float4 _653 = o4;
    _653.x = r1.y;
    o4 = _653;
    float3 _662 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _675 = r3;
    _675.x = mad(_662.z, shader_in[1].xyz.z, mad(_662.y, shader_in[1].xyz.y, _662.x * shader_in[1].xyz.x));
    r3 = _675;
    float3 _684 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _697 = r3;
    _697.y = mad(_684.z, shader_in[1].xyz.z, mad(_684.y, shader_in[1].xyz.y, _684.x * shader_in[1].xyz.x));
    r3 = _697;
    float3 _706 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _719 = r3;
    _719.z = mad(_706.z, shader_in[1].xyz.z, mad(_706.y, shader_in[1].xyz.y, _706.x * shader_in[1].xyz.x));
    r3 = _719;
    float4 _734 = r1;
    _734.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _734;
    float4 _739 = r1;
    _739.w = rsqrt(r1.w);
    r1 = _739;
    float3 _745 = r1.www * r3.xyz;
    r3 = float4(_745.x, _745.y, _745.z, r3.w);
    float3 _752 = r1.yzx * r3.zxy;
    r4 = float4(_752.x, _752.y, _752.z, r4.w);
    float3 _764 = (r3.yzx * r1.zxy) + (-r4.xyz);
    r4 = float4(_764.x, _764.y, _764.z, r4.w);
    float3 _774 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _786 = o5;
    _786.x = mad(_774.z, r1.xyz.z, mad(_774.y, r1.xyz.y, _774.x * r1.xyz.x));
    o5 = _786;
    float4 _791 = o4;
    _791.y = -r4.y;
    o4 = _791;
    float3 _800 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _803 = -r4.xyz;
    float4 _813 = o5;
    _813.y = mad(_800.z, _803.z, mad(_800.y, _803.y, _800.x * _803.x));
    o5 = _813;
    float4 _820 = r1;
    _820.x = float(asint(shader_in[2].x));
    r1 = _820;
    float4 _827 = o4;
    _827.w = r1.x * asfloat(981467136u);
    o4 = _827;
    float4 _831 = o4;
    _831.z = r3.y;
    o4 = _831;
    float3 _840 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _852 = o5;
    _852.z = mad(_840.z, r3.xyz.z, mad(_840.y, r3.xyz.y, _840.x * r3.xyz.x));
    o5 = _852;
    float4 _861 = r1;
    _861.x = r0.y * cb0_m[13].x;
    r1 = _861;
    float4 _868 = r1;
    _868.y = r1.x * asfloat(3216550459u);
    r1 = _868;
    float4 _873 = r1;
    _873.y = exp2(r1.y);
    r1 = _873;
    float4 _880 = r1;
    _880.y = (-r1.y) + asfloat(1065353216u);
    r1 = _880;
    float4 _887 = r1;
    _887.x = r1.y / r1.x;
    r1 = _887;
    float4 _899 = r1;
    _899.y = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _899;
    float4 _914 = r0;
    _914.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _914;
    float4 _919 = r0;
    _919.x = sqrt(r0.x);
    r0 = _919;
    float4 _927 = r0;
    _927.x = r0.x * cb0_m[13].y;
    r0 = _927;
    float4 _937 = r0;
    _937.y = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r0 = _937;
    float4 _949 = r0;
    _949.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _949;
    float4 _955 = r0;
    _955.x = exp2(-r0.x);
    r0 = _955;
    float4 _961 = r0;
    _961.x = min(r0.x, asfloat(1065353216u));
    r0 = _961;
    float4 _968 = o5;
    _968.w = (-r0.x) + asfloat(1065353216u);
    o5 = _968;
    float4 _972 = r0;
    _972.x = asfloat(3212836864u);
    r0 = _972;
    float4 _979 = r2;
    _979.y = r0.w * r0.x;
    r2 = _979;
    float2 _987 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_987.x, _987.y, o6.z, o6.w);
    float2 _993 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _993.x, _993.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _1008 = shader_in[2];
    _1008.x = asfloat(v2);
    shader_in[2] = _1008;
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
