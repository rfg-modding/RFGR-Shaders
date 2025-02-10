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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static int2 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float2 v5 : TEXCOORD5;
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
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _60 = r0;
    _60.w = asfloat(1065353216u);
    r0 = _60;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _70 = r1;
    _70.w = asfloat(1065353216u);
    r1 = _70;
    float4 _85 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _99 = r0;
    _99.x = mad(_85.w, r1.w, mad(_85.z, r1.z, mad(_85.y, r1.y, _85.x * r1.x)));
    r0 = _99;
    float4 _111 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _125 = r0;
    _125.y = mad(_111.w, r1.w, mad(_111.z, r1.z, mad(_111.y, r1.y, _111.x * r1.x)));
    r0 = _125;
    float4 _137 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _151 = r0;
    _151.z = mad(_137.w, r1.w, mad(_137.z, r1.z, mad(_137.y, r1.y, _137.x * r1.x)));
    r0 = _151;
    float4 _162 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _176 = o0;
    _176.x = mad(_162.w, r0.w, mad(_162.z, r0.z, mad(_162.y, r0.y, _162.x * r0.x)));
    o0 = _176;
    float4 _187 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _201 = o0;
    _201.y = mad(_187.w, r0.w, mad(_187.z, r0.z, mad(_187.y, r0.y, _187.x * r0.x)));
    o0 = _201;
    float4 _212 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _226 = o0;
    _226.z = mad(_212.w, r0.w, mad(_212.z, r0.z, mad(_212.y, r0.y, _212.x * r0.x)));
    o0 = _226;
    float4 _238 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _252 = o0;
    _252.w = mad(_238.w, r0.w, mad(_238.z, r0.z, mad(_238.y, r0.y, _238.x * r0.x)));
    o0 = _252;
    float2 _259 = float2(asint(shader_in[4].xy));
    r1 = float4(_259.x, _259.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _280 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_280.x, _280.y, _280.z, r1.w);
    float3 _290 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _303 = r2;
    _303.x = mad(_290.z, r1.xyz.z, mad(_290.y, r1.xyz.y, _290.x * r1.xyz.x));
    r2 = _303;
    float3 _312 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _324 = r2;
    _324.y = mad(_312.z, r1.xyz.z, mad(_312.y, r1.xyz.y, _312.x * r1.xyz.x));
    r2 = _324;
    float3 _333 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _345 = r2;
    _345.z = mad(_333.z, r1.xyz.z, mad(_333.y, r1.xyz.y, _333.x * r1.xyz.x));
    r2 = _345;
    float4 _360 = r0;
    _360.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _360;
    float4 _365 = r0;
    _365.w = rsqrt(r0.w);
    r0 = _365;
    float3 _371 = r0.www * r2.xyz;
    r1 = float4(_371.x, _371.y, _371.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _390 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _403 = r3;
    _403.x = mad(_390.z, r2.xyz.z, mad(_390.y, r2.xyz.y, _390.x * r2.xyz.x));
    r3 = _403;
    float3 _412 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _424 = r3;
    _424.y = mad(_412.z, r2.xyz.z, mad(_412.y, r2.xyz.y, _412.x * r2.xyz.x));
    r3 = _424;
    float3 _433 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _445 = r3;
    _445.z = mad(_433.z, r2.xyz.z, mad(_433.y, r2.xyz.y, _433.x * r2.xyz.x));
    r3 = _445;
    float4 _460 = r0;
    _460.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _460;
    float4 _465 = r0;
    _465.w = rsqrt(r0.w);
    r0 = _465;
    float3 _471 = r0.www * r3.xyz;
    r2 = float4(_471.x, _471.y, _471.z, r2.w);
    float3 _478 = r1.zxy * r2.yzx;
    r3 = float4(_478.x, _478.y, _478.z, r3.w);
    float3 _489 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_489.x, _489.y, _489.z, r3.w);
    float3 _496 = r2.www * r3.xyz;
    r3 = float4(_496.x, _496.y, _496.z, r3.w);
    float3 _510 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_510.x, _510.y, _510.z, r4.w);
    float3 _527 = o2;
    _527.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _527;
    float3 _542 = o2;
    _542.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _542;
    float3 _557 = o2;
    _557.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _557;
    float3 _571 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_571.x, _571.y, _571.z, r4.w);
    float3 _585 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_585.x, _585.y, _585.z, r0.w);
    float4 _601 = r0;
    _601.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _601;
    float4 _606 = r0;
    _606.w = rsqrt(r0.w);
    r0 = _606;
    float3 _612 = r0.www * r4.xyz;
    r4 = float4(_612.x, _612.y, _612.z, r4.w);
    float3 _628 = o3;
    _628.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _628;
    float3 _637 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _649 = o4;
    _649.x = mad(_637.z, r2.xyz.z, mad(_637.y, r2.xyz.y, _637.x * r2.xyz.x));
    o4 = _649;
    float3 _664 = o3;
    _664.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _664;
    float3 _673 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _685 = o4;
    _685.z = mad(_673.z, r1.xyz.z, mad(_673.y, r1.xyz.y, _673.x * r1.xyz.x));
    o4 = _685;
    float3 _700 = o3;
    _700.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _700;
    float3 _709 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _721 = o4;
    _721.y = mad(_709.z, r3.xyz.z, mad(_709.y, r3.xyz.y, _709.x * r3.xyz.x));
    o4 = _721;
    float4 _730 = r0;
    _730.w = r0.y * cb0_m[13].x;
    r0 = _730;
    float4 _737 = r1;
    _737.x = r0.w * asfloat(3216550459u);
    r1 = _737;
    float4 _742 = r1;
    _742.x = exp2(r1.x);
    r1 = _742;
    float4 _749 = r1;
    _749.x = (-r1.x) + asfloat(1065353216u);
    r1 = _749;
    float4 _756 = r0;
    _756.w = r1.x / r0.w;
    r0 = _756;
    float4 _768 = r1;
    _768.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _768;
    float4 _783 = r0;
    _783.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _783;
    float4 _788 = r0;
    _788.x = sqrt(r0.x);
    r0 = _788;
    float4 _796 = r0;
    _796.x = r0.x * cb0_m[13].y;
    r0 = _796;
    float4 _806 = r0;
    _806.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _806;
    float4 _818 = r0;
    _818.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _818;
    float4 _824 = r0;
    _824.x = exp2(-r0.x);
    r0 = _824;
    float4 _830 = r0;
    _830.x = min(r0.x, asfloat(1065353216u));
    r0 = _830;
    float4 _837 = o4;
    _837.w = (-r0.x) + asfloat(1065353216u);
    o4 = _837;
    float2 _843 = float2(asint(shader_in[1].xy));
    r0 = float4(_843.x, _843.y, r0.z, r0.w);
    float2 _855 = r0.xy * float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(_855.x, _855.y, r0.z, r0.w);
    float2 _861 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_861.x, _861.y, o5.z, o5.w);
    float2 _869 = float2(asint(shader_in[5].xy));
    r0 = float4(_869.x, _869.y, r0.z, r0.w);
    float2 _875 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _875.x, _875.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _884 = asfloat(v1);
    shader_in[1] = float4(_884.x, _884.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _895 = asfloat(v4);
    shader_in[4] = float4(_895.x, _895.y, shader_in[4].z, shader_in[4].w);
    float2 _900 = asfloat(v5);
    shader_in[5] = float4(_900.x, _900.y, shader_in[5].z, shader_in[5].w);
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
