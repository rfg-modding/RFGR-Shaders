cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

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
    float3 _243 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_243.x, _243.y, _243.z, r0.w);
    float2 _250 = float2(asint(shader_in[3].xy));
    r1 = float4(_250.x, _250.y, r1.z, r1.w);
    float2 _264 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r1 = float4(r1.x, r1.y, _264.x, _264.y);
    o1 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r1.zw;
    float3 _289 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_289.x, _289.y, _289.z, r1.w);
    float4 _307 = r2;
    _307.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _307;
    float4 _323 = r2;
    _323.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _323;
    float4 _339 = r2;
    _339.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _339;
    float4 _354 = r0;
    _354.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _354;
    float4 _359 = r0;
    _359.w = rsqrt(r0.w);
    r0 = _359;
    float3 _365 = r0.www * r2.xyz;
    r1 = float4(_365.x, _365.y, _365.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _393 = r3;
    _393.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _393;
    float4 _409 = r3;
    _409.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _409;
    float4 _425 = r3;
    _425.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _425;
    float4 _440 = r0;
    _440.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _440;
    float4 _445 = r0;
    _445.w = rsqrt(r0.w);
    r0 = _445;
    float3 _451 = r0.www * r3.xyz;
    r2 = float4(_451.x, _451.y, _451.z, r2.w);
    float3 _458 = r1.zxy * r2.yzx;
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float3 _469 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_469.x, _469.y, _469.z, r3.w);
    float3 _476 = r2.www * r3.xyz;
    r3 = float4(_476.x, _476.y, _476.z, r3.w);
    float3 _486 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _498 = o2;
    _498.y = mad(_486.z, r3.xyz.z, mad(_486.y, r3.xyz.y, _486.x * r3.xyz.x));
    o2 = _498;
    float3 _507 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _519 = o2;
    _519.z = mad(_507.z, r1.xyz.z, mad(_507.y, r1.xyz.y, _507.x * r1.xyz.x));
    o2 = _519;
    float3 _528 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _540 = o2;
    _540.x = mad(_528.z, r2.xyz.z, mad(_528.y, r2.xyz.y, _528.x * r2.xyz.x));
    o2 = _540;
    float4 _555 = r0;
    _555.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _555;
    float4 _560 = r0;
    _560.w = rsqrt(r0.w);
    r0 = _560;
    float3 _566 = r0.www * r0.xyz;
    r0 = float4(_566.x, _566.y, _566.z, r0.w);
    float3 _582 = o3;
    _582.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _582;
    float3 _597 = o3;
    _597.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _597;
    float3 _612 = o3;
    _612.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _612;
    float2 _618 = float2(asint(shader_in[1].xy));
    r0 = float4(_618.x, _618.y, r0.z, r0.w);
    float2 _631 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _631.x, _631.y);
    float2 _640 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o4 = float4(_640.x, _640.y, o4.z, o4.w);
    float2 _647 = float2(asint(shader_in[2].xy));
    r0 = float4(_647.x, _647.y, r0.z, r0.w);
    float2 _660 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(r0.x, r0.y, _660.x, _660.y);
    float2 _669 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    r0 = float4(_669.x, _669.y, r0.z, r0.w);
    float4 _678 = o4;
    _678.z = r0.x * cb2_m[2].w;
    o4 = _678;
    float4 _686 = o4;
    _686.w = r0.y * cb2_m[3].x;
    o4 = _686;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _694 = asfloat(v1);
    shader_in[1] = float4(_694.x, _694.y, shader_in[1].z, shader_in[1].w);
    float2 _699 = asfloat(v2);
    shader_in[2] = float4(_699.x, _699.y, shader_in[2].z, shader_in[2].w);
    float2 _704 = asfloat(v3);
    shader_in[3] = float4(_704.x, _704.y, shader_in[3].z, shader_in[3].w);
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
