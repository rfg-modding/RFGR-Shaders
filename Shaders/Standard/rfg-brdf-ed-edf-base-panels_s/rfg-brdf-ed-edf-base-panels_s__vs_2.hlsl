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
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _294 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_294.x, _294.y, _294.z, r1.w);
    float3 _304 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _317 = r2;
    _317.x = mad(_304.z, r1.xyz.z, mad(_304.y, r1.xyz.y, _304.x * r1.xyz.x));
    r2 = _317;
    float3 _326 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _338 = r2;
    _338.y = mad(_326.z, r1.xyz.z, mad(_326.y, r1.xyz.y, _326.x * r1.xyz.x));
    r2 = _338;
    float3 _347 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _359 = r2;
    _359.z = mad(_347.z, r1.xyz.z, mad(_347.y, r1.xyz.y, _347.x * r1.xyz.x));
    r2 = _359;
    float4 _374 = r0;
    _374.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _374;
    float4 _379 = r0;
    _379.w = rsqrt(r0.w);
    r0 = _379;
    float3 _385 = r0.www * r2.xyz;
    r1 = float4(_385.x, _385.y, _385.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
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
    float2 _652 = float2(asint(shader_in[1].xy));
    r0 = float4(_652.x, _652.y, r0.z, r0.w);
    float2 _664 = r0.xy * float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(_664.x, _664.y, r0.z, r0.w);
    float2 _670 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_670.x, _670.y, o4.z, o4.w);
    float2 _678 = float2(asint(shader_in[4].xy));
    r0 = float4(_678.x, _678.y, r0.z, r0.w);
    float2 _684 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _684.x, _684.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _693 = asfloat(v1);
    shader_in[1] = float4(_693.x, _693.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _704 = asfloat(v4);
    shader_in[4] = float4(_704.x, _704.y, shader_in[4].z, shader_in[4].w);
    float2 _709 = asfloat(v5);
    shader_in[5] = float4(_709.x, _709.y, shader_in[5].z, shader_in[5].w);
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
