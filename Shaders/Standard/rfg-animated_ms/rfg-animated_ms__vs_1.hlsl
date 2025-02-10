cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float3 v6;
static float3 v7;
static float3 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
    float3 v8 : TEXCOORD8;
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
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _63 = r0;
    _63.w = asfloat(1065353216u);
    r0 = _63;
    float4 _73 = r1;
    _73.x = shader_in[7].x * asfloat(1082130432u);
    r1 = _73;
    float3 _86 = (r1.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r1 = float4(_86.x, _86.y, _86.z, r1.w);
    float4 _90 = r1;
    _90.w = asfloat(1065353216u);
    r1 = _90;
    float4 _105 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _119 = r0;
    _119.x = mad(_105.w, r1.w, mad(_105.z, r1.z, mad(_105.y, r1.y, _105.x * r1.x)));
    r0 = _119;
    float4 _131 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _145 = r0;
    _145.y = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r0 = _145;
    float4 _157 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _171 = r0;
    _171.z = mad(_157.w, r1.w, mad(_157.z, r1.z, mad(_157.y, r1.y, _157.x * r1.x)));
    r0 = _171;
    float4 _182 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _196 = o0;
    _196.x = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _221 = o0;
    _221.y = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float4 _232 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _246 = o0;
    _246.z = mad(_232.w, r0.w, mad(_232.z, r0.z, mad(_232.y, r0.y, _232.x * r0.x)));
    o0 = _246;
    float4 _258 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _272 = o0;
    _272.w = mad(_258.w, r0.w, mad(_258.z, r0.z, mad(_258.y, r0.y, _258.x * r0.x)));
    o0 = _272;
    float2 _278 = float2(asint(shader_in[2].xy));
    r1 = float4(_278.x, _278.y, r1.z, r1.w);
    float2 _292 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(r1.x, r1.y, _292.x, _292.y);
    float2 _304 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r1.zw;
    r1 = float4(_304.x, _304.y, r1.z, r1.w);
    float2 _313 = o1;
    _313.x = r1.x * cb2_m[2].w;
    o1 = _313;
    float2 _321 = o1;
    _321.y = r1.y * cb2_m[3].x;
    o1 = _321;
    float3 _335 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_335.x, _335.y, _335.z, r1.w);
    float3 _345 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_345.x, _345.y, _345.z, r2.w);
    float3 _357 = (shader_in[7].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_357.x, _357.y, _357.z, r1.w);
    float3 _367 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _379 = r2;
    _379.x = mad(_367.z, r1.xyz.z, mad(_367.y, r1.xyz.y, _367.x * r1.xyz.x));
    r2 = _379;
    float3 _388 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _400 = r2;
    _400.y = mad(_388.z, r1.xyz.z, mad(_388.y, r1.xyz.y, _388.x * r1.xyz.x));
    r2 = _400;
    float3 _409 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _421 = r2;
    _421.z = mad(_409.z, r1.xyz.z, mad(_409.y, r1.xyz.y, _409.x * r1.xyz.x));
    r2 = _421;
    float4 _436 = r0;
    _436.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _436;
    float4 _441 = r0;
    _441.w = rsqrt(r0.w);
    r0 = _441;
    float3 _447 = r0.www * r2.xyz;
    r1 = float4(_447.x, _447.y, _447.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _467 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _480 = r3;
    _480.x = mad(_467.z, r2.xyz.z, mad(_467.y, r2.xyz.y, _467.x * r2.xyz.x));
    r3 = _480;
    float3 _489 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _501 = r3;
    _501.y = mad(_489.z, r2.xyz.z, mad(_489.y, r2.xyz.y, _489.x * r2.xyz.x));
    r3 = _501;
    float3 _510 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _522 = r3;
    _522.z = mad(_510.z, r2.xyz.z, mad(_510.y, r2.xyz.y, _510.x * r2.xyz.x));
    r3 = _522;
    float4 _537 = r0;
    _537.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _537;
    float4 _542 = r0;
    _542.w = rsqrt(r0.w);
    r0 = _542;
    float3 _548 = r0.www * r3.xyz;
    r2 = float4(_548.x, _548.y, _548.z, r2.w);
    float3 _555 = r1.zxy * r2.yzx;
    r3 = float4(_555.x, _555.y, _555.z, r3.w);
    float3 _566 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_566.x, _566.y, _566.z, r3.w);
    float3 _573 = r2.www * r3.xyz;
    r3 = float4(_573.x, _573.y, _573.z, r3.w);
    float3 _587 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_587.x, _587.y, _587.z, r4.w);
    float3 _604 = o2;
    _604.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _604;
    float3 _619 = o2;
    _619.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _619;
    float3 _634 = o2;
    _634.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _634;
    float3 _648 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_648.x, _648.y, _648.z, r4.w);
    float3 _662 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_662.x, _662.y, _662.z, r0.w);
    float4 _678 = r0;
    _678.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _678;
    float4 _683 = r0;
    _683.w = rsqrt(r0.w);
    r0 = _683;
    float3 _689 = r0.www * r4.xyz;
    r4 = float4(_689.x, _689.y, _689.z, r4.w);
    float3 _705 = o3;
    _705.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _705;
    float3 _714 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _726 = o4;
    _726.z = mad(_714.z, r1.xyz.z, mad(_714.y, r1.xyz.y, _714.x * r1.xyz.x));
    o4 = _726;
    float3 _741 = o3;
    _741.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _741;
    float3 _750 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _762 = o4;
    _762.x = mad(_750.z, r2.xyz.z, mad(_750.y, r2.xyz.y, _750.x * r2.xyz.x));
    o4 = _762;
    float3 _777 = o3;
    _777.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _777;
    float3 _786 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _798 = o4;
    _798.y = mad(_786.z, r3.xyz.z, mad(_786.y, r3.xyz.y, _786.x * r3.xyz.x));
    o4 = _798;
    float4 _807 = r0;
    _807.w = r0.y * cb0_m[13].x;
    r0 = _807;
    float4 _814 = r1;
    _814.x = r0.w * asfloat(3216550459u);
    r1 = _814;
    float4 _819 = r1;
    _819.x = exp2(r1.x);
    r1 = _819;
    float4 _826 = r1;
    _826.x = (-r1.x) + asfloat(1065353216u);
    r1 = _826;
    float4 _833 = r0;
    _833.w = r1.x / r0.w;
    r0 = _833;
    float4 _845 = r1;
    _845.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _845;
    float4 _860 = r0;
    _860.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _860;
    float4 _865 = r0;
    _865.x = sqrt(r0.x);
    r0 = _865;
    float4 _873 = r0;
    _873.x = r0.x * cb0_m[13].y;
    r0 = _873;
    float4 _883 = r0;
    _883.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _883;
    float4 _895 = r0;
    _895.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _895;
    float4 _901 = r0;
    _901.x = exp2(-r0.x);
    r0 = _901;
    float4 _907 = r0;
    _907.x = min(r0.x, asfloat(1065353216u));
    r0 = _907;
    float4 _914 = o4;
    _914.w = (-r0.x) + asfloat(1065353216u);
    o4 = _914;
    float2 _920 = float2(asint(shader_in[1].xy));
    r0 = float4(_920.x, _920.y, r0.z, r0.w);
    float2 _933 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _933.x, _933.y);
    float2 _942 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(_942.x, _942.y, o5.z, o5.w);
    float2 _949 = float2(asint(shader_in[3].xy));
    r0 = float4(_949.x, _949.y, r0.z, r0.w);
    float2 _962 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r0 = float4(r0.x, r0.y, _962.x, _962.y);
    float2 _971 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(o5.x, o5.y, _971.x, _971.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _980 = asfloat(v1);
    shader_in[1] = float4(_980.x, _980.y, shader_in[1].z, shader_in[1].w);
    float2 _985 = asfloat(v2);
    shader_in[2] = float4(_985.x, _985.y, shader_in[2].z, shader_in[2].w);
    float2 _990 = asfloat(v3);
    shader_in[3] = float4(_990.x, _990.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
    shader_in[8] = float4(v8.x, v8.y, v8.z, shader_in[8].w);
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
