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
    float2 _273 = float2(asint(shader_in[5].xy));
    r1 = float4(_273.x, _273.y, r1.z, r1.w);
    float2 _284 = r1.xy * float2(cb2_m[3].z, cb2_m[3].w);
    r1 = float4(_284.x, _284.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _305 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_305.x, _305.y, _305.z, r1.w);
    float3 _315 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _328 = r2;
    _328.x = mad(_315.z, r1.xyz.z, mad(_315.y, r1.xyz.y, _315.x * r1.xyz.x));
    r2 = _328;
    float3 _337 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _349 = r2;
    _349.y = mad(_337.z, r1.xyz.z, mad(_337.y, r1.xyz.y, _337.x * r1.xyz.x));
    r2 = _349;
    float3 _358 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _370 = r2;
    _370.z = mad(_358.z, r1.xyz.z, mad(_358.y, r1.xyz.y, _358.x * r1.xyz.x));
    r2 = _370;
    float4 _385 = r0;
    _385.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _385;
    float4 _390 = r0;
    _390.w = rsqrt(r0.w);
    r0 = _390;
    float3 _396 = r0.www * r2.xyz;
    r1 = float4(_396.x, _396.y, _396.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _415 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _428 = r3;
    _428.x = mad(_415.z, r2.xyz.z, mad(_415.y, r2.xyz.y, _415.x * r2.xyz.x));
    r3 = _428;
    float3 _437 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _449 = r3;
    _449.y = mad(_437.z, r2.xyz.z, mad(_437.y, r2.xyz.y, _437.x * r2.xyz.x));
    r3 = _449;
    float3 _458 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _470 = r3;
    _470.z = mad(_458.z, r2.xyz.z, mad(_458.y, r2.xyz.y, _458.x * r2.xyz.x));
    r3 = _470;
    float4 _485 = r0;
    _485.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _485;
    float4 _490 = r0;
    _490.w = rsqrt(r0.w);
    r0 = _490;
    float3 _496 = r0.www * r3.xyz;
    r2 = float4(_496.x, _496.y, _496.z, r2.w);
    float3 _503 = r1.zxy * r2.yzx;
    r3 = float4(_503.x, _503.y, _503.z, r3.w);
    float3 _514 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_514.x, _514.y, _514.z, r3.w);
    float3 _521 = r2.www * r3.xyz;
    r3 = float4(_521.x, _521.y, _521.z, r3.w);
    float3 _531 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _543 = o2;
    _543.y = mad(_531.z, r3.xyz.z, mad(_531.y, r3.xyz.y, _531.x * r3.xyz.x));
    o2 = _543;
    float3 _552 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _564 = o2;
    _564.z = mad(_552.z, r1.xyz.z, mad(_552.y, r1.xyz.y, _552.x * r1.xyz.x));
    o2 = _564;
    float3 _573 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _585 = o2;
    _585.x = mad(_573.z, r2.xyz.z, mad(_573.y, r2.xyz.y, _573.x * r2.xyz.x));
    o2 = _585;
    float4 _600 = r0;
    _600.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _600;
    float4 _605 = r0;
    _605.w = rsqrt(r0.w);
    r0 = _605;
    float3 _611 = r0.www * r0.xyz;
    r0 = float4(_611.x, _611.y, _611.z, r0.w);
    float3 _627 = o3;
    _627.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _627;
    float3 _642 = o3;
    _642.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _642;
    float3 _657 = o3;
    _657.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _657;
    float2 _663 = float2(asint(shader_in[1].xy));
    r0 = float4(_663.x, _663.y, r0.z, r0.w);
    float2 _675 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(_675.x, _675.y, r0.z, r0.w);
    float2 _681 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_681.x, _681.y, o4.z, o4.w);
    float2 _688 = float2(asint(shader_in[4].xy));
    r0 = float4(_688.x, _688.y, r0.z, r0.w);
    float2 _694 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _694.x, _694.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _703 = asfloat(v1);
    shader_in[1] = float4(_703.x, _703.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _714 = asfloat(v4);
    shader_in[4] = float4(_714.x, _714.y, shader_in[4].z, shader_in[4].w);
    float2 _719 = asfloat(v5);
    shader_in[5] = float4(_719.x, _719.y, shader_in[5].z, shader_in[5].w);
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
