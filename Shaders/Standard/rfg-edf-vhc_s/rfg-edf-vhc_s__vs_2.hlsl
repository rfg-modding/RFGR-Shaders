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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
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
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _68 = r1;
    _68.w = asfloat(1065353216u);
    r1 = _68;
    float4 _83 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _97 = r0;
    _97.x = mad(_83.w, r1.w, mad(_83.z, r1.z, mad(_83.y, r1.y, _83.x * r1.x)));
    r0 = _97;
    float4 _109 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _123 = r0;
    _123.y = mad(_109.w, r1.w, mad(_109.z, r1.z, mad(_109.y, r1.y, _109.x * r1.x)));
    r0 = _123;
    float4 _135 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _149 = r0;
    _149.z = mad(_135.w, r1.w, mad(_135.z, r1.z, mad(_135.y, r1.y, _135.x * r1.x)));
    r0 = _149;
    float4 _160 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _174 = o0;
    _174.x = mad(_160.w, r0.w, mad(_160.z, r0.z, mad(_160.y, r0.y, _160.x * r0.x)));
    o0 = _174;
    float4 _185 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _199 = o0;
    _199.y = mad(_185.w, r0.w, mad(_185.z, r0.z, mad(_185.y, r0.y, _185.x * r0.x)));
    o0 = _199;
    float4 _210 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _224 = o0;
    _224.z = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float4 _236 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _250 = o0;
    _250.w = mad(_236.w, r0.w, mad(_236.z, r0.z, mad(_236.y, r0.y, _236.x * r0.x)));
    o0 = _250;
    float3 _264 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_264.x, _264.y, _264.z, r0.w);
    float2 _271 = float2(asint(shader_in[1].xy));
    r1 = float4(_271.x, _271.y, r1.z, r1.w);
    float2 _283 = r1.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r1 = float4(_283.x, _283.y, r1.z, r1.w);
    float2 _292 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r1 = float4(_292.x, _292.y, r1.z, r1.w);
    o1 = r1.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(r1.xy.x, r1.xy.y, o4.z, o4.w);
    float3 _320 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_320.x, _320.y, _320.z, r1.w);
    float3 _330 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _343 = r2;
    _343.x = mad(_330.z, r1.xyz.z, mad(_330.y, r1.xyz.y, _330.x * r1.xyz.x));
    r2 = _343;
    float3 _352 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _364 = r2;
    _364.y = mad(_352.z, r1.xyz.z, mad(_352.y, r1.xyz.y, _352.x * r1.xyz.x));
    r2 = _364;
    float3 _373 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _385 = r2;
    _385.z = mad(_373.z, r1.xyz.z, mad(_373.y, r1.xyz.y, _373.x * r1.xyz.x));
    r2 = _385;
    float4 _400 = r0;
    _400.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _400;
    float4 _405 = r0;
    _405.w = rsqrt(r0.w);
    r0 = _405;
    float3 _411 = r0.www * r2.xyz;
    r1 = float4(_411.x, _411.y, _411.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _430 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _443 = r3;
    _443.x = mad(_430.z, r2.xyz.z, mad(_430.y, r2.xyz.y, _430.x * r2.xyz.x));
    r3 = _443;
    float3 _452 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _464 = r3;
    _464.y = mad(_452.z, r2.xyz.z, mad(_452.y, r2.xyz.y, _452.x * r2.xyz.x));
    r3 = _464;
    float3 _473 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _485 = r3;
    _485.z = mad(_473.z, r2.xyz.z, mad(_473.y, r2.xyz.y, _473.x * r2.xyz.x));
    r3 = _485;
    float4 _500 = r0;
    _500.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _500;
    float4 _505 = r0;
    _505.w = rsqrt(r0.w);
    r0 = _505;
    float3 _511 = r0.www * r3.xyz;
    r2 = float4(_511.x, _511.y, _511.z, r2.w);
    float3 _518 = r1.zxy * r2.yzx;
    r3 = float4(_518.x, _518.y, _518.z, r3.w);
    float3 _529 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_529.x, _529.y, _529.z, r3.w);
    float3 _536 = r2.www * r3.xyz;
    r3 = float4(_536.x, _536.y, _536.z, r3.w);
    float3 _546 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _558 = o2;
    _558.y = mad(_546.z, r3.xyz.z, mad(_546.y, r3.xyz.y, _546.x * r3.xyz.x));
    o2 = _558;
    float3 _567 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _579 = o2;
    _579.z = mad(_567.z, r1.xyz.z, mad(_567.y, r1.xyz.y, _567.x * r1.xyz.x));
    o2 = _579;
    float3 _588 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _600 = o2;
    _600.x = mad(_588.z, r2.xyz.z, mad(_588.y, r2.xyz.y, _588.x * r2.xyz.x));
    o2 = _600;
    float4 _615 = r0;
    _615.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _615;
    float4 _620 = r0;
    _620.w = rsqrt(r0.w);
    r0 = _620;
    float3 _626 = r0.www * r0.xyz;
    r0 = float4(_626.x, _626.y, _626.z, r0.w);
    float3 _642 = o3;
    _642.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _642;
    float3 _657 = o3;
    _657.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _657;
    float3 _672 = o3;
    _672.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _672;
    float2 _678 = float2(asint(shader_in[2].xy));
    r0 = float4(_678.x, _678.y, r0.z, r0.w);
    float2 _684 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _684.x, _684.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _693 = asfloat(v1);
    shader_in[1] = float4(_693.x, _693.y, shader_in[1].z, shader_in[1].w);
    float2 _698 = asfloat(v2);
    shader_in[2] = float4(_698.x, _698.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
