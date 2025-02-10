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
static int2 v3;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
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
    float4 _57 = r0;
    _57.w = asfloat(1065353216u);
    r0 = _57;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _67 = r1;
    _67.w = asfloat(1065353216u);
    r1 = _67;
    float4 _85 = r0;
    _85.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _85;
    float4 _103 = r0;
    _103.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _103;
    float4 _121 = r0;
    _121.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _121;
    float4 _137 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _151 = o0;
    _151.x = mad(_137.w, r0.w, mad(_137.z, r0.z, mad(_137.y, r0.y, _137.x * r0.x)));
    o0 = _151;
    float4 _163 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _177 = o0;
    _177.y = mad(_163.w, r0.w, mad(_163.z, r0.z, mad(_163.y, r0.y, _163.x * r0.x)));
    o0 = _177;
    float4 _189 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _203 = o0;
    _203.z = mad(_189.w, r0.w, mad(_189.z, r0.z, mad(_189.y, r0.y, _189.x * r0.x)));
    o0 = _203;
    float4 _215 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _229 = o0;
    _229.w = mad(_215.w, r0.w, mad(_215.z, r0.z, mad(_215.y, r0.y, _215.x * r0.x)));
    o0 = _229;
    float2 _235 = float2(asint(shader_in[2].xy));
    r1 = float4(_235.x, _235.y, r1.z, r1.w);
    float2 _246 = r1.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_246.x, _246.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _268 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_268.x, _268.y, _268.z, r1.w);
    float4 _286 = r2;
    _286.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _286;
    float4 _302 = r2;
    _302.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _302;
    float4 _318 = r2;
    _318.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _318;
    float4 _333 = r0;
    _333.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _333;
    float4 _338 = r0;
    _338.w = rsqrt(r0.w);
    r0 = _338;
    float3 _344 = r0.www * r2.xyz;
    r1 = float4(_344.x, _344.y, _344.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _372 = r3;
    _372.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _372;
    float4 _388 = r3;
    _388.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _388;
    float4 _404 = r3;
    _404.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _404;
    float4 _419 = r0;
    _419.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _419;
    float4 _424 = r0;
    _424.w = rsqrt(r0.w);
    r0 = _424;
    float3 _430 = r0.www * r3.xyz;
    r2 = float4(_430.x, _430.y, _430.z, r2.w);
    float3 _437 = r1.zxy * r2.yzx;
    r3 = float4(_437.x, _437.y, _437.z, r3.w);
    float3 _448 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_448.x, _448.y, _448.z, r3.w);
    float3 _455 = r2.www * r3.xyz;
    r3 = float4(_455.x, _455.y, _455.z, r3.w);
    float3 _469 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_469.x, _469.y, _469.z, r4.w);
    float3 _486 = o2;
    _486.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _486;
    float3 _501 = o2;
    _501.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _501;
    float3 _516 = o2;
    _516.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _516;
    float3 _530 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_530.x, _530.y, _530.z, r4.w);
    float3 _544 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_544.x, _544.y, _544.z, r0.w);
    float4 _560 = r0;
    _560.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _560;
    float4 _565 = r0;
    _565.w = rsqrt(r0.w);
    r0 = _565;
    float3 _571 = r0.www * r4.xyz;
    r4 = float4(_571.x, _571.y, _571.z, r4.w);
    float3 _587 = o3;
    _587.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _587;
    float3 _596 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _608 = o4;
    _608.x = mad(_596.z, r2.xyz.z, mad(_596.y, r2.xyz.y, _596.x * r2.xyz.x));
    o4 = _608;
    float3 _623 = o3;
    _623.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _623;
    float3 _632 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _644 = o4;
    _644.z = mad(_632.z, r1.xyz.z, mad(_632.y, r1.xyz.y, _632.x * r1.xyz.x));
    o4 = _644;
    float3 _659 = o3;
    _659.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _659;
    float3 _668 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _680 = o4;
    _680.y = mad(_668.z, r3.xyz.z, mad(_668.y, r3.xyz.y, _668.x * r3.xyz.x));
    o4 = _680;
    float4 _689 = r0;
    _689.w = r0.y * cb0_m[13].x;
    r0 = _689;
    float4 _696 = r1;
    _696.x = r0.w * asfloat(3216550459u);
    r1 = _696;
    float4 _701 = r1;
    _701.x = exp2(r1.x);
    r1 = _701;
    float4 _708 = r1;
    _708.x = (-r1.x) + asfloat(1065353216u);
    r1 = _708;
    float4 _715 = r0;
    _715.w = r1.x / r0.w;
    r0 = _715;
    float4 _727 = r1;
    _727.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _727;
    float4 _742 = r0;
    _742.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _742;
    float4 _747 = r0;
    _747.x = sqrt(r0.x);
    r0 = _747;
    float4 _755 = r0;
    _755.x = r0.x * cb0_m[13].y;
    r0 = _755;
    float4 _765 = r0;
    _765.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _765;
    float4 _777 = r0;
    _777.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _777;
    float4 _783 = r0;
    _783.x = exp2(-r0.x);
    r0 = _783;
    float4 _789 = r0;
    _789.x = min(r0.x, asfloat(1065353216u));
    r0 = _789;
    float4 _796 = o4;
    _796.w = (-r0.x) + asfloat(1065353216u);
    o4 = _796;
    float2 _802 = float2(asint(shader_in[1].xy));
    r0 = float4(_802.x, _802.y, r0.z, r0.w);
    float2 _808 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_808.x, _808.y, o5.z, o5.w);
    float2 _815 = float2(asint(shader_in[3].xy));
    r0 = float4(_815.x, _815.y, r0.z, r0.w);
    float2 _821 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _821.x, _821.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _830 = asfloat(v1);
    shader_in[1] = float4(_830.x, _830.y, shader_in[1].z, shader_in[1].w);
    float2 _835 = asfloat(v2);
    shader_in[2] = float4(_835.x, _835.y, shader_in[2].z, shader_in[2].w);
    float2 _840 = asfloat(v3);
    shader_in[3] = float4(_840.x, _840.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
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
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
