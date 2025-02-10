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
    float4 cb2_m[6] : packoffset(c0);
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
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
    float4 _84 = r0;
    _84.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _84;
    float4 _102 = r0;
    _102.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _102;
    float4 _120 = r0;
    _120.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _120;
    float4 _136 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _150 = o0;
    _150.x = mad(_136.w, r0.w, mad(_136.z, r0.z, mad(_136.y, r0.y, _136.x * r0.x)));
    o0 = _150;
    float4 _162 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _176 = o0;
    _176.y = mad(_162.w, r0.w, mad(_162.z, r0.z, mad(_162.y, r0.y, _162.x * r0.x)));
    o0 = _176;
    float4 _188 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _202 = o0;
    _202.z = mad(_188.w, r0.w, mad(_188.z, r0.z, mad(_188.y, r0.y, _188.x * r0.x)));
    o0 = _202;
    float4 _214 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _228 = o0;
    _228.w = mad(_214.w, r0.w, mad(_214.z, r0.z, mad(_214.y, r0.y, _214.x * r0.x)));
    o0 = _228;
    float3 _242 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_242.x, _242.y, _242.z, r0.w);
    float2 _249 = float2(asint(shader_in[1].xy));
    r1 = float4(_249.x, _249.y, r1.z, r1.w);
    float2 _260 = r1.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r1 = float4(_260.x, _260.y, r1.z, r1.w);
    float2 _269 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r1 = float4(_269.x, _269.y, r1.z, r1.w);
    o1 = r1.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(r1.xy.x, r1.xy.y, o4.z, o4.w);
    float3 _297 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_297.x, _297.y, _297.z, r1.w);
    float4 _315 = r2;
    _315.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _315;
    float4 _331 = r2;
    _331.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _331;
    float4 _347 = r2;
    _347.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _347;
    float4 _362 = r0;
    _362.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _362;
    float4 _367 = r0;
    _367.w = rsqrt(r0.w);
    r0 = _367;
    float3 _373 = r0.www * r2.xyz;
    r1 = float4(_373.x, _373.y, _373.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _400 = r3;
    _400.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _400;
    float4 _416 = r3;
    _416.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _416;
    float4 _432 = r3;
    _432.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _432;
    float4 _447 = r0;
    _447.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _447;
    float4 _452 = r0;
    _452.w = rsqrt(r0.w);
    r0 = _452;
    float3 _458 = r0.www * r3.xyz;
    r2 = float4(_458.x, _458.y, _458.z, r2.w);
    float3 _465 = r1.zxy * r2.yzx;
    r3 = float4(_465.x, _465.y, _465.z, r3.w);
    float3 _476 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_476.x, _476.y, _476.z, r3.w);
    float3 _483 = r2.www * r3.xyz;
    r3 = float4(_483.x, _483.y, _483.z, r3.w);
    float3 _493 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _505 = o2;
    _505.y = mad(_493.z, r3.xyz.z, mad(_493.y, r3.xyz.y, _493.x * r3.xyz.x));
    o2 = _505;
    float3 _514 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _526 = o2;
    _526.z = mad(_514.z, r1.xyz.z, mad(_514.y, r1.xyz.y, _514.x * r1.xyz.x));
    o2 = _526;
    float3 _535 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _547 = o2;
    _547.x = mad(_535.z, r2.xyz.z, mad(_535.y, r2.xyz.y, _535.x * r2.xyz.x));
    o2 = _547;
    float4 _562 = r0;
    _562.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _562;
    float4 _567 = r0;
    _567.w = rsqrt(r0.w);
    r0 = _567;
    float3 _573 = r0.www * r0.xyz;
    r0 = float4(_573.x, _573.y, _573.z, r0.w);
    float3 _589 = o3;
    _589.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _589;
    float3 _604 = o3;
    _604.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _604;
    float3 _619 = o3;
    _619.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _619;
    float2 _625 = float2(asint(shader_in[2].xy));
    r0 = float4(_625.x, _625.y, r0.z, r0.w);
    float2 _631 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _631.x, _631.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _640 = asfloat(v1);
    shader_in[1] = float4(_640.x, _640.y, shader_in[1].z, shader_in[1].w);
    float2 _645 = asfloat(v2);
    shader_in[2] = float4(_645.x, _645.y, shader_in[2].z, shader_in[2].w);
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
