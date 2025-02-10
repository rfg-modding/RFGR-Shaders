cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
    float3 _506 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _518 = o2;
    _518.y = mad(_506.z, r3.xyz.z, mad(_506.y, r3.xyz.y, _506.x * r3.xyz.x));
    o2 = _518;
    float3 _527 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _539 = o2;
    _539.z = mad(_527.z, r1.xyz.z, mad(_527.y, r1.xyz.y, _527.x * r1.xyz.x));
    o2 = _539;
    float3 _548 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _560 = o2;
    _560.x = mad(_548.z, r2.xyz.z, mad(_548.y, r2.xyz.y, _548.x * r2.xyz.x));
    o2 = _560;
    float3 _574 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_574.x, _574.y, _574.z, r4.w);
    float3 _589 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_589.x, _589.y, _589.z, r0.w);
    float4 _605 = r0;
    _605.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _605;
    float4 _610 = r0;
    _610.w = rsqrt(r0.w);
    r0 = _610;
    float3 _616 = r0.www * r4.xyz;
    r4 = float4(_616.x, _616.y, _616.z, r4.w);
    float3 _632 = o3;
    _632.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _632;
    float4 _636 = o4;
    _636.x = r2.y;
    o4 = _636;
    float3 _651 = o3;
    _651.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _651;
    float4 _655 = o4;
    _655.z = r1.y;
    o4 = _655;
    float3 _670 = o3;
    _670.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _670;
    float4 _674 = o4;
    _674.y = r3.y;
    o4 = _674;
    float4 _683 = r0;
    _683.w = r0.y * cb0_m[13].x;
    r0 = _683;
    float4 _690 = r1;
    _690.x = r0.w * asfloat(3216550459u);
    r1 = _690;
    float4 _695 = r1;
    _695.x = exp2(r1.x);
    r1 = _695;
    float4 _702 = r1;
    _702.x = (-r1.x) + asfloat(1065353216u);
    r1 = _702;
    float4 _709 = r0;
    _709.w = r1.x / r0.w;
    r0 = _709;
    float4 _721 = r1;
    _721.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _721;
    float4 _736 = r0;
    _736.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _736;
    float4 _741 = r0;
    _741.x = sqrt(r0.x);
    r0 = _741;
    float4 _749 = r0;
    _749.x = r0.x * cb0_m[13].y;
    r0 = _749;
    float4 _759 = r0;
    _759.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _759;
    float4 _771 = r0;
    _771.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _771;
    float4 _777 = r0;
    _777.x = exp2(-r0.x);
    r0 = _777;
    float4 _783 = r0;
    _783.x = min(r0.x, asfloat(1065353216u));
    r0 = _783;
    float4 _790 = o4;
    _790.w = (-r0.x) + asfloat(1065353216u);
    o4 = _790;
    float2 _796 = float2(asint(shader_in[1].xy));
    r0 = float4(_796.x, _796.y, r0.z, r0.w);
    float2 _808 = r0.xy * float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(_808.x, _808.y, r0.z, r0.w);
    float2 _814 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_814.x, _814.y, o5.z, o5.w);
    float2 _822 = float2(asint(shader_in[5].xy));
    r0 = float4(_822.x, _822.y, r0.z, r0.w);
    float2 _828 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _828.x, _828.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _837 = asfloat(v1);
    shader_in[1] = float4(_837.x, _837.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _848 = asfloat(v4);
    shader_in[4] = float4(_848.x, _848.y, shader_in[4].z, shader_in[4].w);
    float2 _853 = asfloat(v5);
    shader_in[5] = float4(_853.x, _853.y, shader_in[5].z, shader_in[5].w);
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
