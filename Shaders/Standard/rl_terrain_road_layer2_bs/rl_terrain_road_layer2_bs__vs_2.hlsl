cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[12] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v1;
static int2 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
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
static float4 r6;

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
    _84.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _84;
    float4 _102 = r0;
    _102.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _102;
    float4 _120 = r0;
    _120.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
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
    r1 = float4(_242.x, _242.y, _242.z, r1.w);
    float2 _254 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_254.x, _254.y, r0.z, r0.w);
    float3 _268 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_268.x, _268.y, _268.z, r2.w);
    float4 _287 = r3;
    _287.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _287;
    float4 _303 = r3;
    _303.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _303;
    float4 _319 = r3;
    _319.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _319;
    float4 _334 = r0;
    _334.z = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _334;
    float4 _339 = r0;
    _339.z = rsqrt(r0.z);
    r0 = _339;
    float3 _345 = r0.zzz * r3.xyz;
    r2 = float4(_345.x, _345.y, _345.z, r2.w);
    float3 _354 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_354.x, _354.y, _354.z, r3.w);
    float4 _372 = r4;
    _372.x = mad(shader_in[4].xyz.z, r3.xyz.z, mad(shader_in[4].xyz.y, r3.xyz.y, shader_in[4].xyz.x * r3.xyz.x));
    r4 = _372;
    float4 _388 = r4;
    _388.y = mad(shader_in[5].xyz.z, r3.xyz.z, mad(shader_in[5].xyz.y, r3.xyz.y, shader_in[5].xyz.x * r3.xyz.x));
    r4 = _388;
    float4 _404 = r4;
    _404.z = mad(shader_in[6].xyz.z, r3.xyz.z, mad(shader_in[6].xyz.y, r3.xyz.y, shader_in[6].xyz.x * r3.xyz.x));
    r4 = _404;
    float4 _419 = r0;
    _419.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _419;
    float4 _424 = r0;
    _424.z = rsqrt(r0.z);
    r0 = _424;
    float3 _430 = r0.zzz * r4.xyz;
    r3 = float4(_430.x, _430.y, _430.z, r3.w);
    float3 _437 = r2.yzx * r3.zxy;
    r4 = float4(_437.x, _437.y, _437.z, r4.w);
    float3 _448 = (r3.yzx * r2.zxy) + (-r4.xyz);
    r4 = float4(_448.x, _448.y, _448.z, r4.w);
    float3 _455 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r5 = float4(_455.x, _455.y, _455.z, r5.w);
    float3 _467 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r5.xyz);
    r5 = float4(_467.x, _467.y, _467.z, r5.w);
    float4 _480 = r0;
    _480.z = mad(r5.xz.y, r5.xz.y, r5.xz.x * r5.xz.x);
    r0 = _480;
    float4 _485 = r0;
    _485.z = rsqrt(r0.z);
    r0 = _485;
    float3 _491 = r0.zzz * r5.xyz;
    r5 = float4(_491.x, _491.y, _491.z, r5.w);
    float3 _499 = r3.yzx * (-r5.xyz);
    r6 = float4(_499.x, _499.y, _499.z, r6.w);
    float3 _512 = ((-r5.zxy) * r3.zxy) + (-r6.xyz);
    r6 = float4(_512.x, _512.y, _512.z, r6.w);
    float2 _528 = o1;
    _528.x = mad(r4.xyz.z, r6.xyz.z, mad(r4.xyz.y, r6.xyz.y, r4.xyz.x * r6.xyz.x));
    o1 = _528;
    float2 _534 = -r5.xz;
    float2 _541 = o1;
    _541.y = mad(r4.zy.y, _534.y, r4.zy.x * _534.x);
    o1 = _541;
    float4 _556 = r0;
    _556.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _556;
    float4 _561 = r0;
    _561.z = rsqrt(r0.z);
    r0 = _561;
    float3 _567 = r0.zzz * r1.xyz;
    r1 = float4(_567.x, _567.y, _567.z, r1.w);
    float4 _583 = o2;
    _583.z = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o2 = _583;
    float3 _592 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _604 = o3;
    _604.z = mad(_592.z, r3.xyz.z, mad(_592.y, r3.xyz.y, _592.x * r3.xyz.x));
    o3 = _604;
    float2 _610 = -r5.xz;
    float4 _617 = o2;
    _617.y = mad(r1.zy.y, _610.y, r1.zy.x * _610.x);
    o2 = _617;
    float4 _632 = o2;
    _632.x = mad(r1.xyz.z, r6.xyz.z, mad(r1.xyz.y, r6.xyz.y, r1.xyz.x * r6.xyz.x));
    o2 = _632;
    float4 _641 = o2;
    _641.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o2 = _641;
    float2 _648 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _651 = -r5.xz;
    float4 _658 = o3;
    _658.y = mad(_648.y, _651.y, _648.x * _651.x);
    o3 = _658;
    float2 _664 = -r5.xz;
    float4 _671 = o6;
    _671.w = mad(r2.zy.y, _664.y, r2.zy.x * _664.x);
    o6 = _671;
    float4 _686 = o6;
    _686.z = mad(r2.xyz.z, r6.xyz.z, mad(r2.xyz.y, r6.xyz.y, r2.xyz.x * r6.xyz.x));
    o6 = _686;
    float3 _695 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _707 = o3;
    _707.x = mad(_695.z, r6.xyz.z, mad(_695.y, r6.xyz.y, _695.x * r6.xyz.x));
    o3 = _707;
    float2 _713 = float2(asint(shader_in[2].xy));
    r0 = float4(r0.x, r0.y, _713.x, _713.y);
    float2 _722 = r0.zw * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(r0.x, r0.y, _722.x, _722.y);
    float4 _735 = o3;
    _735.w = (r0.z * cb2_m[11].x) + cb2_m[11].y;
    o3 = _735;
    o4 = float4(o4.x, o4.y, r0.zw.x, r0.zw.y);
    float2 _753 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(r0.x, r0.y, _753.x, _753.y);
    float2 _764 = r0.zw * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(_764.x, _764.y, o4.z, o4.w);
    float2 _774 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(r0.x, r0.y, _774.x, _774.y);
    float2 _787 = (float2(cb2_m[10].x, cb2_m[10].z) * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r1 = float4(_787.x, _787.y, r1.z, r1.w);
    float2 _792 = floor(r1.xy);
    r1 = float4(_792.x, _792.y, r1.z, r1.w);
    float2 _800 = r0.zw + (-r1.xy);
    r0 = float4(r0.x, r0.y, _800.x, _800.y);
    float2 _810 = (r0.zw * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_810.x, _810.y, o5.z, o5.w);
    float2 _823 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(r0.x, r0.y, _823.x, _823.y);
    float2 _836 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(_836.x, _836.y, r0.z, r0.w);
    float2 _847 = r0.xy * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(_847.x, _847.y, o6.z, o6.w);
    float2 _858 = r0.zw * float2(cb2_m[5].x, cb2_m[5].y);
    o5 = float4(o5.x, o5.y, _858.x, _858.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float2 _869 = asfloat(v2);
    shader_in[2] = float4(_869.x, _869.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
