cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
    float4 _83 = r0;
    _83.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _83;
    float4 _101 = r0;
    _101.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _101;
    float4 _119 = r0;
    _119.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _119;
    float4 _135 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _149 = o0;
    _149.x = mad(_135.w, r0.w, mad(_135.z, r0.z, mad(_135.y, r0.y, _135.x * r0.x)));
    o0 = _149;
    float4 _161 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _175 = o0;
    _175.y = mad(_161.w, r0.w, mad(_161.z, r0.z, mad(_161.y, r0.y, _161.x * r0.x)));
    o0 = _175;
    float4 _187 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _201 = o0;
    _201.z = mad(_187.w, r0.w, mad(_187.z, r0.z, mad(_187.y, r0.y, _187.x * r0.x)));
    o0 = _201;
    float4 _213 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _227 = o0;
    _227.w = mad(_213.w, r0.w, mad(_213.z, r0.z, mad(_213.y, r0.y, _213.x * r0.x)));
    o0 = _227;
    float2 _233 = float2(asint(shader_in[1].xy));
    r1 = float4(_233.x, _233.y, r1.z, r1.w);
    float2 _244 = r1.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r1 = float4(_244.x, _244.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _265 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_265.x, _265.y, _265.z, r1.w);
    float4 _283 = r2;
    _283.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _283;
    float4 _299 = r2;
    _299.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _299;
    float4 _315 = r2;
    _315.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _315;
    float4 _330 = r0;
    _330.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _330;
    float4 _335 = r0;
    _335.w = rsqrt(r0.w);
    r0 = _335;
    float3 _341 = r0.www * r2.xyz;
    r1 = float4(_341.x, _341.y, _341.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _368 = r3;
    _368.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _368;
    float4 _384 = r3;
    _384.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _384;
    float4 _400 = r3;
    _400.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _400;
    float4 _415 = r0;
    _415.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _415;
    float4 _420 = r0;
    _420.w = rsqrt(r0.w);
    r0 = _420;
    float3 _426 = r0.www * r3.xyz;
    r2 = float4(_426.x, _426.y, _426.z, r2.w);
    float3 _433 = r1.zxy * r2.yzx;
    r3 = float4(_433.x, _433.y, _433.z, r3.w);
    float3 _444 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_444.x, _444.y, _444.z, r3.w);
    float3 _451 = r2.www * r3.xyz;
    r3 = float4(_451.x, _451.y, _451.z, r3.w);
    float3 _461 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _473 = o2;
    _473.y = mad(_461.z, r3.xyz.z, mad(_461.y, r3.xyz.y, _461.x * r3.xyz.x));
    o2 = _473;
    float3 _482 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _494 = o2;
    _494.z = mad(_482.z, r1.xyz.z, mad(_482.y, r1.xyz.y, _482.x * r1.xyz.x));
    o2 = _494;
    float3 _503 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _515 = o2;
    _515.x = mad(_503.z, r2.xyz.z, mad(_503.y, r2.xyz.y, _503.x * r2.xyz.x));
    o2 = _515;
    float3 _529 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_529.x, _529.y, _529.z, r4.w);
    float3 _544 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_544.x, _544.y, _544.z, r0.w);
    float4 _560 = r0;
    _560.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _560;
    float4 _565 = r0;
    _565.w = rsqrt(r0.w);
    r0 = _565;
    float3 _571 = r0.www * r4.xyz;
    r4 = float4(_571.x, _571.y, _571.z, r4.w);
    float3 _587 = o3;
    _587.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _587;
    float4 _591 = o4;
    _591.x = r2.y;
    o4 = _591;
    float3 _606 = o3;
    _606.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _606;
    float4 _610 = o4;
    _610.z = r1.y;
    o4 = _610;
    float3 _625 = o3;
    _625.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _625;
    float4 _629 = o4;
    _629.y = r3.y;
    o4 = _629;
    float4 _638 = r0;
    _638.w = r0.y * cb0_m[13].x;
    r0 = _638;
    float4 _645 = r1;
    _645.x = r0.w * asfloat(3216550459u);
    r1 = _645;
    float4 _650 = r1;
    _650.x = exp2(r1.x);
    r1 = _650;
    float4 _657 = r1;
    _657.x = (-r1.x) + asfloat(1065353216u);
    r1 = _657;
    float4 _664 = r0;
    _664.w = r1.x / r0.w;
    r0 = _664;
    float4 _676 = r1;
    _676.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _676;
    float4 _691 = r0;
    _691.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _691;
    float4 _696 = r0;
    _696.x = sqrt(r0.x);
    r0 = _696;
    float4 _704 = r0;
    _704.x = r0.x * cb0_m[13].y;
    r0 = _704;
    float4 _714 = r0;
    _714.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _714;
    float4 _726 = r0;
    _726.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _726;
    float4 _732 = r0;
    _732.x = exp2(-r0.x);
    r0 = _732;
    float4 _738 = r0;
    _738.x = min(r0.x, asfloat(1065353216u));
    r0 = _738;
    float4 _745 = o4;
    _745.w = (-r0.x) + asfloat(1065353216u);
    o4 = _745;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _753 = asfloat(v1);
    shader_in[1] = float4(_753.x, _753.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
