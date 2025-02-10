cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
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
static int2 v3;
static float3 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
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
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _59 = r0;
    _59.w = asfloat(1065353216u);
    r0 = _59;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _69 = r1;
    _69.w = asfloat(1065353216u);
    r1 = _69;
    float4 _84 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _98 = r0;
    _98.x = mad(_84.w, r1.w, mad(_84.z, r1.z, mad(_84.y, r1.y, _84.x * r1.x)));
    r0 = _98;
    float4 _110 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _124 = r0;
    _124.y = mad(_110.w, r1.w, mad(_110.z, r1.z, mad(_110.y, r1.y, _110.x * r1.x)));
    r0 = _124;
    float4 _136 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _150 = r0;
    _150.z = mad(_136.w, r1.w, mad(_136.z, r1.z, mad(_136.y, r1.y, _136.x * r1.x)));
    r0 = _150;
    float4 _161 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _175 = o0;
    _175.x = mad(_161.w, r0.w, mad(_161.z, r0.z, mad(_161.y, r0.y, _161.x * r0.x)));
    o0 = _175;
    float4 _186 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _200 = o0;
    _200.y = mad(_186.w, r0.w, mad(_186.z, r0.z, mad(_186.y, r0.y, _186.x * r0.x)));
    o0 = _200;
    float4 _211 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _225 = o0;
    _225.z = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float4 _237 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _251 = o0;
    _251.w = mad(_237.w, r0.w, mad(_237.z, r0.z, mad(_237.y, r0.y, _237.x * r0.x)));
    o0 = _251;
    float3 _265 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_265.x, _265.y, _265.z, r0.w);
    float2 _272 = float2(asint(shader_in[3].xy));
    r1 = float4(_272.x, _272.y, r1.z, r1.w);
    float2 _286 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r1 = float4(r1.x, r1.y, _286.x, _286.y);
    o1 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r1.zw;
    float3 _311 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_311.x, _311.y, _311.z, r1.w);
    float3 _321 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _334 = r2;
    _334.x = mad(_321.z, r1.xyz.z, mad(_321.y, r1.xyz.y, _321.x * r1.xyz.x));
    r2 = _334;
    float3 _343 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _355 = r2;
    _355.y = mad(_343.z, r1.xyz.z, mad(_343.y, r1.xyz.y, _343.x * r1.xyz.x));
    r2 = _355;
    float3 _364 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _376 = r2;
    _376.z = mad(_364.z, r1.xyz.z, mad(_364.y, r1.xyz.y, _364.x * r1.xyz.x));
    r2 = _376;
    float4 _391 = r0;
    _391.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _391;
    float4 _396 = r0;
    _396.w = rsqrt(r0.w);
    r0 = _396;
    float3 _402 = r0.www * r2.xyz;
    r1 = float4(_402.x, _402.y, _402.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
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
    float3 _538 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _550 = o2;
    _550.y = mad(_538.z, r3.xyz.z, mad(_538.y, r3.xyz.y, _538.x * r3.xyz.x));
    o2 = _550;
    float3 _559 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _571 = o2;
    _571.z = mad(_559.z, r1.xyz.z, mad(_559.y, r1.xyz.y, _559.x * r1.xyz.x));
    o2 = _571;
    float3 _580 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _592 = o2;
    _592.x = mad(_580.z, r2.xyz.z, mad(_580.y, r2.xyz.y, _580.x * r2.xyz.x));
    o2 = _592;
    float4 _607 = r0;
    _607.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _607;
    float4 _612 = r0;
    _612.w = rsqrt(r0.w);
    r0 = _612;
    float3 _618 = r0.www * r0.xyz;
    r0 = float4(_618.x, _618.y, _618.z, r0.w);
    float3 _634 = o3;
    _634.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _634;
    float3 _649 = o3;
    _649.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _649;
    float3 _664 = o3;
    _664.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _664;
    float2 _670 = float2(asint(shader_in[1].xy));
    r0 = float4(_670.x, _670.y, r0.z, r0.w);
    float2 _683 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _683.x, _683.y);
    float2 _692 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o4 = float4(_692.x, _692.y, o4.z, o4.w);
    float2 _699 = float2(asint(shader_in[2].xy));
    r0 = float4(_699.x, _699.y, r0.z, r0.w);
    float2 _712 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(r0.x, r0.y, _712.x, _712.y);
    float2 _721 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    r0 = float4(_721.x, _721.y, r0.z, r0.w);
    float4 _730 = o4;
    _730.z = r0.x * cb2_m[2].w;
    o4 = _730;
    float4 _738 = o4;
    _738.w = r0.y * cb2_m[3].x;
    o4 = _738;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _746 = asfloat(v1);
    shader_in[1] = float4(_746.x, _746.y, shader_in[1].z, shader_in[1].w);
    float2 _751 = asfloat(v2);
    shader_in[2] = float4(_751.x, _751.y, shader_in[2].z, shader_in[2].w);
    float2 _756 = asfloat(v3);
    shader_in[3] = float4(_756.x, _756.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
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
