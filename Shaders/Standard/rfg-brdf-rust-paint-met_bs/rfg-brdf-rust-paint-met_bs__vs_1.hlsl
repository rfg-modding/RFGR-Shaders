cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
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
    float2 _245 = r1.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r1 = float4(_245.x, _245.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _266 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_266.x, _266.y, _266.z, r1.w);
    float4 _284 = r2;
    _284.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _284;
    float4 _300 = r2;
    _300.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _300;
    float4 _316 = r2;
    _316.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _316;
    float4 _331 = r0;
    _331.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _331;
    float4 _336 = r0;
    _336.w = rsqrt(r0.w);
    r0 = _336;
    float3 _342 = r0.www * r2.xyz;
    r1 = float4(_342.x, _342.y, _342.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _369 = r3;
    _369.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _369;
    float4 _385 = r3;
    _385.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _385;
    float4 _401 = r3;
    _401.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _401;
    float4 _416 = r0;
    _416.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _416;
    float4 _421 = r0;
    _421.w = rsqrt(r0.w);
    r0 = _421;
    float3 _427 = r0.www * r3.xyz;
    r2 = float4(_427.x, _427.y, _427.z, r2.w);
    float3 _434 = r1.zxy * r2.yzx;
    r3 = float4(_434.x, _434.y, _434.z, r3.w);
    float3 _445 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_445.x, _445.y, _445.z, r3.w);
    float3 _452 = r2.www * r3.xyz;
    r3 = float4(_452.x, _452.y, _452.z, r3.w);
    float3 _466 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_466.x, _466.y, _466.z, r4.w);
    float3 _483 = o2;
    _483.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _483;
    float3 _498 = o2;
    _498.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _498;
    float3 _513 = o2;
    _513.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _513;
    float3 _527 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_527.x, _527.y, _527.z, r4.w);
    float3 _541 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_541.x, _541.y, _541.z, r0.w);
    float4 _557 = r0;
    _557.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _557;
    float4 _562 = r0;
    _562.w = rsqrt(r0.w);
    r0 = _562;
    float3 _568 = r0.www * r4.xyz;
    r4 = float4(_568.x, _568.y, _568.z, r4.w);
    float3 _584 = o3;
    _584.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _584;
    float3 _593 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _605 = o4;
    _605.x = mad(_593.z, r2.xyz.z, mad(_593.y, r2.xyz.y, _593.x * r2.xyz.x));
    o4 = _605;
    float3 _620 = o3;
    _620.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _620;
    float3 _629 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _641 = o4;
    _641.z = mad(_629.z, r1.xyz.z, mad(_629.y, r1.xyz.y, _629.x * r1.xyz.x));
    o4 = _641;
    float3 _656 = o3;
    _656.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _656;
    float3 _665 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _677 = o4;
    _677.y = mad(_665.z, r3.xyz.z, mad(_665.y, r3.xyz.y, _665.x * r3.xyz.x));
    o4 = _677;
    float4 _686 = r0;
    _686.w = r0.y * cb0_m[13].x;
    r0 = _686;
    float4 _693 = r1;
    _693.x = r0.w * asfloat(3216550459u);
    r1 = _693;
    float4 _698 = r1;
    _698.x = exp2(r1.x);
    r1 = _698;
    float4 _705 = r1;
    _705.x = (-r1.x) + asfloat(1065353216u);
    r1 = _705;
    float4 _712 = r0;
    _712.w = r1.x / r0.w;
    r0 = _712;
    float4 _724 = r1;
    _724.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _724;
    float4 _739 = r0;
    _739.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _739;
    float4 _744 = r0;
    _744.x = sqrt(r0.x);
    r0 = _744;
    float4 _752 = r0;
    _752.x = r0.x * cb0_m[13].y;
    r0 = _752;
    float4 _762 = r0;
    _762.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _762;
    float4 _774 = r0;
    _774.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _774;
    float4 _780 = r0;
    _780.x = exp2(-r0.x);
    r0 = _780;
    float4 _786 = r0;
    _786.x = min(r0.x, asfloat(1065353216u));
    r0 = _786;
    float4 _793 = o4;
    _793.w = (-r0.x) + asfloat(1065353216u);
    o4 = _793;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _801 = asfloat(v1);
    shader_in[1] = float4(_801.x, _801.y, shader_in[1].z, shader_in[1].w);
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
