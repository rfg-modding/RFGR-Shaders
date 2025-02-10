cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _62 = r0;
    _62.w = asfloat(1065353216u);
    r0 = _62;
    float4 _81 = r1;
    _81.x = mad(shader_in[6].w, r0.w, mad(shader_in[6].z, r0.z, mad(shader_in[6].y, r0.y, shader_in[6].x * r0.x)));
    r1 = _81;
    float4 _99 = r1;
    _99.y = mad(shader_in[7].w, r0.w, mad(shader_in[7].z, r0.z, mad(shader_in[7].y, r0.y, shader_in[7].x * r0.x)));
    r1 = _99;
    float4 _117 = r1;
    _117.z = mad(shader_in[8].w, r0.w, mad(shader_in[8].z, r0.z, mad(shader_in[8].y, r0.y, shader_in[8].x * r0.x)));
    r1 = _117;
    float4 _120 = r1;
    _120.w = asfloat(1065353216u);
    r1 = _120;
    float4 _135 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _149 = o0;
    _149.x = mad(_135.w, r1.w, mad(_135.z, r1.z, mad(_135.y, r1.y, _135.x * r1.x)));
    o0 = _149;
    float4 _161 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _175 = o0;
    _175.y = mad(_161.w, r1.w, mad(_161.z, r1.z, mad(_161.y, r1.y, _161.x * r1.x)));
    o0 = _175;
    float4 _187 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _201 = o0;
    _201.z = mad(_187.w, r1.w, mad(_187.z, r1.z, mad(_187.y, r1.y, _187.x * r1.x)));
    o0 = _201;
    float4 _213 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _227 = o0;
    _227.w = mad(_213.w, r1.w, mad(_213.z, r1.z, mad(_213.y, r1.y, _213.x * r1.x)));
    o0 = _227;
    float2 _233 = float2(asint(shader_in[2].xy));
    r0 = float4(_233.x, _233.y, r0.z, r0.w);
    float2 _244 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_244.x, _244.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _266 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_266.x, _266.y, _266.z, r0.w);
    float4 _283 = r1;
    _283.x = mad(shader_in[6].xyz.z, r0.xyz.z, mad(shader_in[6].xyz.y, r0.xyz.y, shader_in[6].xyz.x * r0.xyz.x));
    r1 = _283;
    float4 _299 = r1;
    _299.y = mad(shader_in[7].xyz.z, r0.xyz.z, mad(shader_in[7].xyz.y, r0.xyz.y, shader_in[7].xyz.x * r0.xyz.x));
    r1 = _299;
    float4 _315 = r1;
    _315.z = mad(shader_in[8].xyz.z, r0.xyz.z, mad(shader_in[8].xyz.y, r0.xyz.y, shader_in[8].xyz.x * r0.xyz.x));
    r1 = _315;
    float4 _330 = r0;
    _330.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _330;
    float4 _335 = r0;
    _335.x = rsqrt(r0.x);
    r0 = _335;
    float3 _341 = r0.xxx * r1.xyz;
    r0 = float4(_341.x, _341.y, _341.z, r0.w);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _369 = r2;
    _369.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _369;
    float4 _385 = r2;
    _385.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _385;
    float4 _401 = r2;
    _401.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _401;
    float4 _416 = r0;
    _416.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _416;
    float4 _421 = r0;
    _421.w = rsqrt(r0.w);
    r0 = _421;
    float3 _427 = r0.www * r2.xyz;
    r1 = float4(_427.x, _427.y, _427.z, r1.w);
    float3 _434 = r0.zxy * r1.yzx;
    r2 = float4(_434.x, _434.y, _434.z, r2.w);
    float3 _445 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_445.x, _445.y, _445.z, r2.w);
    float3 _455 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _467 = o2;
    _467.z = mad(_455.z, r0.xyz.z, mad(_455.y, r0.xyz.y, _455.x * r0.xyz.x));
    o2 = _467;
    float3 _476 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _488 = o2;
    _488.x = mad(_476.z, r1.xyz.z, mad(_476.y, r1.xyz.y, _476.x * r1.xyz.x));
    o2 = _488;
    float3 _494 = r1.www * r2.xyz;
    r0 = float4(_494.x, _494.y, _494.z, r0.w);
    float3 _504 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _516 = o2;
    _516.y = mad(_504.z, r0.xyz.z, mad(_504.y, r0.xyz.y, _504.x * r0.xyz.x));
    o2 = _516;
    float2 _522 = float2(asint(shader_in[1].xy));
    r0 = float4(_522.x, _522.y, r0.z, r0.w);
    float2 _528 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_528.x, _528.y, o3.z, o3.w);
    float2 _535 = float2(asint(shader_in[3].xy));
    r0 = float4(_535.x, _535.y, r0.z, r0.w);
    float2 _541 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _541.x, _541.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _550 = asfloat(v1);
    shader_in[1] = float4(_550.x, _550.y, shader_in[1].z, shader_in[1].w);
    float2 _555 = asfloat(v2);
    shader_in[2] = float4(_555.x, _555.y, shader_in[2].z, shader_in[2].w);
    float2 _560 = asfloat(v3);
    shader_in[3] = float4(_560.x, _560.y, shader_in[3].z, shader_in[3].w);
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
