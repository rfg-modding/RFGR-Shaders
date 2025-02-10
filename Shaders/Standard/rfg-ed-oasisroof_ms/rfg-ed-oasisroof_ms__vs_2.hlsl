cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float3 v5;
static float3 v6;
static float3 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
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
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _63 = r0;
    _63.x = shader_in[6].x * asfloat(1082130432u);
    r0 = _63;
    float3 _76 = (r0.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r0 = float4(_76.x, _76.y, _76.z, r0.w);
    float4 _81 = r0;
    _81.w = asfloat(1065353216u);
    r0 = _81;
    float4 _96 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _111 = r1;
    _111.x = mad(_96.w, r0.w, mad(_96.z, r0.z, mad(_96.y, r0.y, _96.x * r0.x)));
    r1 = _111;
    float4 _123 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _137 = r1;
    _137.y = mad(_123.w, r0.w, mad(_123.z, r0.z, mad(_123.y, r0.y, _123.x * r0.x)));
    r1 = _137;
    float4 _149 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _163 = r1;
    _163.z = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    r1 = _163;
    float4 _166 = r1;
    _166.w = asfloat(1065353216u);
    r1 = _166;
    float4 _177 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _191 = o0;
    _191.x = mad(_177.w, r1.w, mad(_177.z, r1.z, mad(_177.y, r1.y, _177.x * r1.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _216 = o0;
    _216.y = mad(_202.w, r1.w, mad(_202.z, r1.z, mad(_202.y, r1.y, _202.x * r1.x)));
    o0 = _216;
    float4 _227 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _241 = o0;
    _241.z = mad(_227.w, r1.w, mad(_227.z, r1.z, mad(_227.y, r1.y, _227.x * r1.x)));
    o0 = _241;
    float4 _253 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _267 = o0;
    _267.w = mad(_253.w, r1.w, mad(_253.z, r1.z, mad(_253.y, r1.y, _253.x * r1.x)));
    o0 = _267;
    float3 _281 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_281.x, _281.y, _281.z, r0.w);
    float3 _295 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_295.x, _295.y, _295.z, r1.w);
    float3 _305 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_305.x, _305.y, _305.z, r2.w);
    float3 _317 = (shader_in[6].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_317.x, _317.y, _317.z, r1.w);
    float3 _327 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _339 = r2;
    _339.x = mad(_327.z, r1.xyz.z, mad(_327.y, r1.xyz.y, _327.x * r1.xyz.x));
    r2 = _339;
    float3 _348 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _360 = r2;
    _360.y = mad(_348.z, r1.xyz.z, mad(_348.y, r1.xyz.y, _348.x * r1.xyz.x));
    r2 = _360;
    float3 _369 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _381 = r2;
    _381.z = mad(_369.z, r1.xyz.z, mad(_369.y, r1.xyz.y, _369.x * r1.xyz.x));
    r2 = _381;
    float4 _396 = r0;
    _396.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _396;
    float4 _401 = r0;
    _401.w = rsqrt(r0.w);
    r0 = _401;
    float3 _407 = r0.www * r2.xyz;
    r1 = float4(_407.x, _407.y, _407.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _427 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _440 = r3;
    _440.x = mad(_427.z, r2.xyz.z, mad(_427.y, r2.xyz.y, _427.x * r2.xyz.x));
    r3 = _440;
    float3 _449 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _461 = r3;
    _461.y = mad(_449.z, r2.xyz.z, mad(_449.y, r2.xyz.y, _449.x * r2.xyz.x));
    r3 = _461;
    float3 _470 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _482 = r3;
    _482.z = mad(_470.z, r2.xyz.z, mad(_470.y, r2.xyz.y, _470.x * r2.xyz.x));
    r3 = _482;
    float4 _497 = r0;
    _497.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _497;
    float4 _502 = r0;
    _502.w = rsqrt(r0.w);
    r0 = _502;
    float3 _508 = r0.www * r3.xyz;
    r2 = float4(_508.x, _508.y, _508.z, r2.w);
    float3 _515 = r1.zxy * r2.yzx;
    r3 = float4(_515.x, _515.y, _515.z, r3.w);
    float3 _526 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_526.x, _526.y, _526.z, r3.w);
    float3 _533 = r2.www * r3.xyz;
    r3 = float4(_533.x, _533.y, _533.z, r3.w);
    float3 _543 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _555 = o1;
    _555.y = mad(_543.z, r3.xyz.z, mad(_543.y, r3.xyz.y, _543.x * r3.xyz.x));
    o1 = _555;
    float3 _564 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _576 = o1;
    _576.z = mad(_564.z, r1.xyz.z, mad(_564.y, r1.xyz.y, _564.x * r1.xyz.x));
    o1 = _576;
    float3 _585 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _597 = o1;
    _597.x = mad(_585.z, r2.xyz.z, mad(_585.y, r2.xyz.y, _585.x * r2.xyz.x));
    o1 = _597;
    float4 _612 = r0;
    _612.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _612;
    float4 _617 = r0;
    _617.w = rsqrt(r0.w);
    r0 = _617;
    float3 _623 = r0.www * r0.xyz;
    r0 = float4(_623.x, _623.y, _623.z, r0.w);
    float3 _639 = o2;
    _639.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _639;
    float3 _654 = o2;
    _654.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _654;
    float3 _669 = o2;
    _669.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _669;
    float2 _676 = float2(asint(shader_in[2].xy));
    r0 = float4(_676.x, _676.y, r0.z, r0.w);
    float2 _687 = r0.xy * float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_687.x, _687.y, r0.z, r0.w);
    float2 _696 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _696.x, _696.y);
    float2 _703 = float2(asint(shader_in[1].xy));
    r0 = float4(_703.x, _703.y, r0.z, r0.w);
    float2 _709 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_709.x, _709.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _718 = asfloat(v1);
    shader_in[1] = float4(_718.x, _718.y, shader_in[1].z, shader_in[1].w);
    float2 _723 = asfloat(v2);
    shader_in[2] = float4(_723.x, _723.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
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
