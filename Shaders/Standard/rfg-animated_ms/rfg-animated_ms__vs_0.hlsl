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
    float4 _68 = r0;
    _68.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _68;
    float3 _81 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_81.x, _81.y, _81.z, r0.w);
    float4 _86 = r0;
    _86.w = asfloat(1065353216u);
    r0 = _86;
    float4 _101 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _116 = r1;
    _116.x = mad(_101.w, r0.w, mad(_101.z, r0.z, mad(_101.y, r0.y, _101.x * r0.x)));
    r1 = _116;
    float4 _128 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _142 = r1;
    _142.y = mad(_128.w, r0.w, mad(_128.z, r0.z, mad(_128.y, r0.y, _128.x * r0.x)));
    r1 = _142;
    float4 _154 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _168 = r1;
    _168.z = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    r1 = _168;
    float4 _171 = r1;
    _171.w = asfloat(1065353216u);
    r1 = _171;
    float4 _182 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _196 = o0;
    _196.x = mad(_182.w, r1.w, mad(_182.z, r1.z, mad(_182.y, r1.y, _182.x * r1.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _221 = o0;
    _221.y = mad(_207.w, r1.w, mad(_207.z, r1.z, mad(_207.y, r1.y, _207.x * r1.x)));
    o0 = _221;
    float4 _232 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _246 = o0;
    _246.z = mad(_232.w, r1.w, mad(_232.z, r1.z, mad(_232.y, r1.y, _232.x * r1.x)));
    o0 = _246;
    float4 _258 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _272 = o0;
    _272.w = mad(_258.w, r1.w, mad(_258.z, r1.z, mad(_258.y, r1.y, _258.x * r1.x)));
    o0 = _272;
    float2 _278 = float2(asint(shader_in[2].xy));
    r0 = float4(_278.x, _278.y, r0.z, r0.w);
    float2 _292 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(r0.x, r0.y, _292.x, _292.y);
    float2 _304 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    r0 = float4(_304.x, _304.y, r0.z, r0.w);
    float2 _313 = o1;
    _313.x = r0.x * cb2_m[2].w;
    o1 = _313;
    float2 _321 = o1;
    _321.y = r0.y * cb2_m[3].x;
    o1 = _321;
    float3 _335 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_335.x, _335.y, _335.z, r0.w);
    float3 _345 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_345.x, _345.y, _345.z, r2.w);
    float3 _357 = (shader_in[7].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_357.x, _357.y, _357.z, r0.w);
    float3 _367 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _379 = r2;
    _379.x = mad(_367.z, r0.xyz.z, mad(_367.y, r0.xyz.y, _367.x * r0.xyz.x));
    r2 = _379;
    float3 _388 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _400 = r2;
    _400.y = mad(_388.z, r0.xyz.z, mad(_388.y, r0.xyz.y, _388.x * r0.xyz.x));
    r2 = _400;
    float3 _409 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _421 = r2;
    _421.z = mad(_409.z, r0.xyz.z, mad(_409.y, r0.xyz.y, _409.x * r0.xyz.x));
    r2 = _421;
    float4 _436 = r0;
    _436.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _436;
    float4 _441 = r0;
    _441.x = rsqrt(r0.x);
    r0 = _441;
    float3 _447 = r0.xxx * r2.xyz;
    r0 = float4(_447.x, _447.y, _447.z, r0.w);
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
    float3 _555 = r0.zxy * r2.yzx;
    r3 = float4(_555.x, _555.y, _555.z, r3.w);
    float3 _566 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_566.x, _566.y, _566.z, r3.w);
    float3 _573 = r2.www * r3.xyz;
    r3 = float4(_573.x, _573.y, _573.z, r3.w);
    float3 _583 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _595 = o2;
    _595.y = mad(_583.z, r3.xyz.z, mad(_583.y, r3.xyz.y, _583.x * r3.xyz.x));
    o2 = _595;
    float3 _604 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _616 = o2;
    _616.z = mad(_604.z, r0.xyz.z, mad(_604.y, r0.xyz.y, _604.x * r0.xyz.x));
    o2 = _616;
    float3 _625 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _637 = o2;
    _637.x = mad(_625.z, r2.xyz.z, mad(_625.y, r2.xyz.y, _625.x * r2.xyz.x));
    o2 = _637;
    float3 _651 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_651.x, _651.y, _651.z, r4.w);
    float3 _666 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_666.x, _666.y, _666.z, r1.w);
    float4 _682 = r0;
    _682.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _682;
    float4 _687 = r0;
    _687.w = rsqrt(r0.w);
    r0 = _687;
    float3 _693 = r0.www * r4.xyz;
    r4 = float4(_693.x, _693.y, _693.z, r4.w);
    float3 _709 = o3;
    _709.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o3 = _709;
    float4 _713 = o4;
    _713.z = r0.y;
    o4 = _713;
    float3 _728 = o3;
    _728.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _728;
    float4 _732 = o4;
    _732.x = r2.y;
    o4 = _732;
    float3 _747 = o3;
    _747.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _747;
    float4 _751 = o4;
    _751.y = r3.y;
    o4 = _751;
    float4 _760 = r0;
    _760.x = r1.y * cb0_m[13].x;
    r0 = _760;
    float4 _767 = r0;
    _767.y = r0.x * asfloat(3216550459u);
    r0 = _767;
    float4 _772 = r0;
    _772.y = exp2(r0.y);
    r0 = _772;
    float4 _779 = r0;
    _779.y = (-r0.y) + asfloat(1065353216u);
    r0 = _779;
    float4 _786 = r0;
    _786.x = r0.y / r0.x;
    r0 = _786;
    float4 _798 = r0;
    _798.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _798;
    float4 _813 = r0;
    _813.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _813;
    float4 _818 = r0;
    _818.z = sqrt(r0.z);
    r0 = _818;
    float4 _826 = r0;
    _826.z = r0.z * cb0_m[13].y;
    r0 = _826;
    float4 _836 = r0;
    _836.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _836;
    float4 _848 = r0;
    _848.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _848;
    float4 _854 = r0;
    _854.x = exp2(-r0.x);
    r0 = _854;
    float4 _860 = r0;
    _860.x = min(r0.x, asfloat(1065353216u));
    r0 = _860;
    float4 _867 = o4;
    _867.w = (-r0.x) + asfloat(1065353216u);
    o4 = _867;
    float2 _873 = float2(asint(shader_in[1].xy));
    r0 = float4(_873.x, _873.y, r0.z, r0.w);
    float2 _886 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _886.x, _886.y);
    float2 _895 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(_895.x, _895.y, o5.z, o5.w);
    float2 _902 = float2(asint(shader_in[3].xy));
    r0 = float4(_902.x, _902.y, r0.z, r0.w);
    float2 _915 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r0 = float4(r0.x, r0.y, _915.x, _915.y);
    float2 _924 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o5 = float4(o5.x, o5.y, _924.x, _924.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _933 = asfloat(v1);
    shader_in[1] = float4(_933.x, _933.y, shader_in[1].z, shader_in[1].w);
    float2 _938 = asfloat(v2);
    shader_in[2] = float4(_938.x, _938.y, shader_in[2].z, shader_in[2].w);
    float2 _943 = asfloat(v3);
    shader_in[3] = float4(_943.x, _943.y, shader_in[3].z, shader_in[3].w);
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
