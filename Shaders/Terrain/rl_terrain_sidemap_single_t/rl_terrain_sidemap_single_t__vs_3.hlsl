cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float4 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float3 o5;
static float4 o6;
static float4 o7;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float2 _59 = float2(asint(shader_in[0].xy));
    r0 = float4(_59.x, _59.y, r0.z, r0.w);
    float4 _68 = r0;
    _68.y = r0.y + asfloat(1191182336u);
    r0 = _68;
    float4 _76 = r1;
    _76.y = r0.x * asfloat(1015021568u);
    r1 = _76;
    float4 _83 = r0;
    _83.x = r0.y * asfloat(998244352u);
    r0 = _83;
    float4 _88 = r1;
    _88.z = trunc(r0.x);
    r1 = _88;
    float4 _99 = r1;
    _99.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _99;
    float4 _103 = r1;
    _103.w = asfloat(1065353216u);
    r1 = _103;
    float4 _119 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _133 = r0;
    _133.x = mad(_119.w, r1.w, mad(_119.z, r1.z, mad(_119.y, r1.y, _119.x * r1.x)));
    r0 = _133;
    float4 _145 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _159 = r0;
    _159.y = mad(_145.w, r1.w, mad(_145.z, r1.z, mad(_145.y, r1.y, _145.x * r1.x)));
    r0 = _159;
    float4 _171 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _185 = r0;
    _185.z = mad(_171.w, r1.w, mad(_171.z, r1.z, mad(_171.y, r1.y, _171.x * r1.x)));
    r0 = _185;
    float4 _188 = r0;
    _188.w = asfloat(1065353216u);
    r0 = _188;
    float4 _199 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _213 = o0;
    _213.x = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    o0 = _213;
    float4 _224 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _238 = o0;
    _238.y = mad(_224.w, r0.w, mad(_224.z, r0.z, mad(_224.y, r0.y, _224.x * r0.x)));
    o0 = _238;
    float4 _249 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _263 = o0;
    _263.z = mad(_249.w, r0.w, mad(_249.z, r0.z, mad(_249.y, r0.y, _249.x * r0.x)));
    o0 = _263;
    float4 _275 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _289 = o0;
    _289.w = mad(_275.w, r0.w, mad(_275.z, r0.z, mad(_275.y, r0.y, _275.x * r0.x)));
    o0 = _289;
    float3 _302 = r0.xyz + float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z);
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float4 _306 = r1;
    _306.w = asfloat(1065353216u);
    r1 = _306;
    float4 _318 = float4(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z, cb2_m[4].w);
    float2 _332 = o1;
    _332.x = mad(_318.w, r1.w, mad(_318.z, r1.z, mad(_318.y, r1.y, _318.x * r1.x)));
    o1 = _332;
    float4 _344 = float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    float2 _358 = o1;
    _358.y = mad(_344.w, r1.w, mad(_344.z, r1.z, mad(_344.y, r1.y, _344.x * r1.x)));
    o1 = _358;
    float4 _362 = r2;
    _362.y = asfloat(0u);
    r2 = _362;
    float3 _375 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_375.x, _375.y, _375.z, r3.w);
    float3 _386 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _399 = r4;
    _399.x = mad(_386.z, r3.xyz.z, mad(_386.y, r3.xyz.y, _386.x * r3.xyz.x));
    r4 = _399;
    float3 _408 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _420 = r4;
    _420.y = mad(_408.z, r3.xyz.z, mad(_408.y, r3.xyz.y, _408.x * r3.xyz.x));
    r4 = _420;
    float3 _429 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _441 = r4;
    _441.z = mad(_429.z, r3.xyz.z, mad(_429.y, r3.xyz.y, _429.x * r3.xyz.x));
    r4 = _441;
    float4 _456 = r0;
    _456.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _456;
    float4 _461 = r0;
    _461.w = rsqrt(r0.w);
    r0 = _461;
    float3 _467 = r0.www * r4.xyz;
    r3 = float4(_467.x, _467.y, _467.z, r3.w);
    float4 _472 = r4;
    _472.z = r3.y;
    r4 = _472;
    float2 _476 = abs(r3.zx);
    r4 = float4(_476.x, _476.y, r4.z, r4.w);
    float2 _485 = r4.yx * asfloat(uint2(2147483648u, 3212836864u));
    r2 = float4(_485.x, r2.y, _485.y, r2.w);
    float3 _496 = ((-r4.xyz) * asfloat(uint3(2147483648u, 3212836864u, 0u))) + r2.xyz;
    r2 = float4(_496.x, _496.y, _496.z, r2.w);
    float3 _503 = r4.xyz * asfloat(uint3(3212836864u, 3212836864u, 1065353216u));
    r4 = float4(_503.x, _503.y, _503.z, r4.w);
    float3 _510 = r2.xyz * r4.xyz;
    r5 = float4(_510.x, _510.y, _510.z, r5.w);
    float3 _522 = (r4.zxy * r2.yzx) + (-r5.xyz);
    r4 = float4(_522.x, _522.y, r4.z, _522.z);
    float3 _532 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _544 = o2;
    _544.y = mad(_532.z, r4.xyw.z, mad(_532.y, r4.xyw.y, _532.x * r4.xyw.x));
    o2 = _544;
    float3 _553 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _565 = o2;
    _565.z = mad(_553.z, r3.xyz.z, mad(_553.y, r3.xyz.y, _553.x * r3.xyz.x));
    o2 = _565;
    float2 _572 = float2(cb1_m[0].z, cb1_m[0].x);
    float3 _581 = o2;
    _581.x = mad(_572.y, r2.yz.y, _572.x * r2.yz.x);
    o2 = _581;
    float3 _595 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r5 = float4(_595.x, _595.y, _595.z, r5.w);
    float3 _609 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_609.x, _609.y, _609.z, r0.w);
    float4 _625 = r0;
    _625.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _625;
    float4 _630 = r0;
    _630.w = rsqrt(r0.w);
    r0 = _630;
    float3 _636 = r0.www * r5.xyz;
    r6 = float4(_636.x, _636.y, _636.z, r6.w);
    o5 = r5.xyz;
    float3 _655 = o3;
    _655.z = mad(r6.xyz.z, r3.xyz.z, mad(r6.xyz.y, r3.xyz.y, r6.xyz.x * r3.xyz.x));
    o3 = _655;
    o4 = float4(r3.xyz.x, r3.xyz.y, r3.xyz.z, o4.w);
    float3 _671 = o3;
    _671.x = mad(r6.zx.y, r2.yz.y, r6.zx.x * r2.yz.x);
    o3 = _671;
    float3 _686 = o3;
    _686.y = mad(r6.xyz.z, r4.xyw.z, mad(r6.xyz.y, r4.xyw.y, r6.xyz.x * r4.xyw.x));
    o3 = _686;
    o6 = float4(o6.x, r4.yz.x, r4.yz.y, o6.w);
    float4 _699 = o4;
    _699.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o4 = _699;
    float4 _708 = r0;
    _708.w = r0.y * cb0_m[13].x;
    r0 = _708;
    float4 _715 = r2;
    _715.x = r0.w * asfloat(3216550459u);
    r2 = _715;
    float4 _720 = r2;
    _720.x = exp2(r2.x);
    r2 = _720;
    float4 _727 = r2;
    _727.x = (-r2.x) + asfloat(1065353216u);
    r2 = _727;
    float4 _734 = r0;
    _734.w = r2.x / r0.w;
    r0 = _734;
    float4 _746 = r2;
    _746.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r2 = _746;
    float4 _761 = r0;
    _761.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _761;
    float4 _766 = r0;
    _766.x = sqrt(r0.x);
    r0 = _766;
    float4 _774 = r0;
    _774.x = r0.x * cb0_m[13].y;
    r0 = _774;
    float4 _784 = r0;
    _784.y = (asuint(r2.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _784;
    float4 _796 = r0;
    _796.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _796;
    float4 _802 = r0;
    _802.x = exp2(-r0.x);
    r0 = _802;
    float4 _808 = r0;
    _808.x = min(r0.x, asfloat(1065353216u));
    r0 = _808;
    float4 _815 = o6;
    _815.w = (-r0.x) + asfloat(1065353216u);
    o6 = _815;
    float4 _818 = o6;
    _818.x = asfloat(0u);
    o6 = _818;
    float2 _829 = (r1.xz * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_829.x, _829.y, r0.z, r0.w);
    float2 _841 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_841.x, _841.y, r0.z, r0.w);
    float2 _853 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o7 = float4(o7.x, o7.y, _853.x, _853.y);
    float4 _865 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _879 = o7;
    _879.x = mad(_865.w, r1.w, mad(_865.z, r1.z, mad(_865.y, r1.y, _865.x * r1.x)));
    o7 = _879;
    float4 _890 = float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    float4 _904 = o7;
    _904.y = mad(_890.w, r1.w, mad(_890.z, r1.z, mad(_890.y, r1.y, _890.x * r1.x)));
    o7 = _904;
}

void vert_main()
{
    float2 _908 = asfloat(v0);
    shader_in[0] = float4(_908.x, _908.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = v1;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
