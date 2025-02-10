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
    float2 _271 = float2(asint(shader_in[3].xy));
    r1 = float4(_271.x, _271.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _293 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_293.x, _293.y, _293.z, r1.w);
    float3 _303 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _316 = r2;
    _316.x = mad(_303.z, r1.xyz.z, mad(_303.y, r1.xyz.y, _303.x * r1.xyz.x));
    r2 = _316;
    float3 _325 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _337 = r2;
    _337.y = mad(_325.z, r1.xyz.z, mad(_325.y, r1.xyz.y, _325.x * r1.xyz.x));
    r2 = _337;
    float3 _346 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _358 = r2;
    _358.z = mad(_346.z, r1.xyz.z, mad(_346.y, r1.xyz.y, _346.x * r1.xyz.x));
    r2 = _358;
    float4 _373 = r0;
    _373.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _373;
    float4 _378 = r0;
    _378.w = rsqrt(r0.w);
    r0 = _378;
    float3 _384 = r0.www * r2.xyz;
    r1 = float4(_384.x, _384.y, _384.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _404 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _417 = r3;
    _417.x = mad(_404.z, r2.xyz.z, mad(_404.y, r2.xyz.y, _404.x * r2.xyz.x));
    r3 = _417;
    float3 _426 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _438 = r3;
    _438.y = mad(_426.z, r2.xyz.z, mad(_426.y, r2.xyz.y, _426.x * r2.xyz.x));
    r3 = _438;
    float3 _447 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _459 = r3;
    _459.z = mad(_447.z, r2.xyz.z, mad(_447.y, r2.xyz.y, _447.x * r2.xyz.x));
    r3 = _459;
    float4 _474 = r0;
    _474.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _474;
    float4 _479 = r0;
    _479.w = rsqrt(r0.w);
    r0 = _479;
    float3 _485 = r0.www * r3.xyz;
    r2 = float4(_485.x, _485.y, _485.z, r2.w);
    float3 _492 = r1.zxy * r2.yzx;
    r3 = float4(_492.x, _492.y, _492.z, r3.w);
    float3 _503 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_503.x, _503.y, _503.z, r3.w);
    float3 _510 = r2.www * r3.xyz;
    r3 = float4(_510.x, _510.y, _510.z, r3.w);
    float3 _520 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _532 = o2;
    _532.y = mad(_520.z, r3.xyz.z, mad(_520.y, r3.xyz.y, _520.x * r3.xyz.x));
    o2 = _532;
    float3 _541 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _553 = o2;
    _553.z = mad(_541.z, r1.xyz.z, mad(_541.y, r1.xyz.y, _541.x * r1.xyz.x));
    o2 = _553;
    float3 _562 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _574 = o2;
    _574.x = mad(_562.z, r2.xyz.z, mad(_562.y, r2.xyz.y, _562.x * r2.xyz.x));
    o2 = _574;
    float4 _589 = r0;
    _589.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _589;
    float4 _594 = r0;
    _594.w = rsqrt(r0.w);
    r0 = _594;
    float3 _600 = r0.www * r0.xyz;
    r0 = float4(_600.x, _600.y, _600.z, r0.w);
    float3 _616 = o3;
    _616.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _616;
    float3 _631 = o3;
    _631.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _631;
    float3 _646 = o3;
    _646.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _646;
    float2 _652 = float2(asint(shader_in[2].xy));
    r0 = float4(_652.x, _652.y, r0.z, r0.w);
    float2 _663 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_663.x, _663.y, r0.z, r0.w);
    float2 _669 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _669.x, _669.y);
    float2 _676 = float2(asint(shader_in[1].xy));
    r0 = float4(_676.x, _676.y, r0.z, r0.w);
    float2 _682 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_682.x, _682.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _691 = asfloat(v1);
    shader_in[1] = float4(_691.x, _691.y, shader_in[1].z, shader_in[1].w);
    float2 _696 = asfloat(v2);
    shader_in[2] = float4(_696.x, _696.y, shader_in[2].z, shader_in[2].w);
    float2 _701 = asfloat(v3);
    shader_in[3] = float4(_701.x, _701.y, shader_in[3].z, shader_in[3].w);
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
