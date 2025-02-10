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
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _68 = r1;
    _68.w = asfloat(1065353216u);
    r1 = _68;
    float4 _86 = r0;
    _86.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _86;
    float4 _104 = r0;
    _104.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _104;
    float4 _122 = r0;
    _122.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _122;
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
    float2 _235 = float2(asint(shader_in[2].xy));
    r1 = float4(_235.x, _235.y, r1.z, r1.w);
    float2 _246 = r1.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_246.x, _246.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _268 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_268.x, _268.y, _268.z, r1.w);
    float4 _286 = r2;
    _286.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _286;
    float4 _302 = r2;
    _302.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _302;
    float4 _318 = r2;
    _318.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _318;
    float4 _333 = r0;
    _333.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _333;
    float4 _338 = r0;
    _338.w = rsqrt(r0.w);
    r0 = _338;
    float3 _344 = r0.www * r2.xyz;
    r1 = float4(_344.x, _344.y, _344.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _372 = r3;
    _372.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _372;
    float4 _388 = r3;
    _388.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _388;
    float4 _404 = r3;
    _404.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _404;
    float4 _419 = r0;
    _419.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _419;
    float4 _424 = r0;
    _424.w = rsqrt(r0.w);
    r0 = _424;
    float3 _430 = r0.www * r3.xyz;
    r2 = float4(_430.x, _430.y, _430.z, r2.w);
    float3 _437 = r1.zxy * r2.yzx;
    r3 = float4(_437.x, _437.y, _437.z, r3.w);
    float3 _448 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_448.x, _448.y, _448.z, r3.w);
    float3 _455 = r2.www * r3.xyz;
    r3 = float4(_455.x, _455.y, _455.z, r3.w);
    float3 _465 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _477 = o2;
    _477.y = mad(_465.z, r3.xyz.z, mad(_465.y, r3.xyz.y, _465.x * r3.xyz.x));
    o2 = _477;
    float3 _486 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _498 = o2;
    _498.z = mad(_486.z, r1.xyz.z, mad(_486.y, r1.xyz.y, _486.x * r1.xyz.x));
    o2 = _498;
    float3 _507 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _519 = o2;
    _519.x = mad(_507.z, r2.xyz.z, mad(_507.y, r2.xyz.y, _507.x * r2.xyz.x));
    o2 = _519;
    float3 _533 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_533.x, _533.y, _533.z, r4.w);
    float3 _548 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_548.x, _548.y, _548.z, r0.w);
    float4 _564 = r0;
    _564.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _564;
    float4 _569 = r0;
    _569.w = rsqrt(r0.w);
    r0 = _569;
    float3 _575 = r0.www * r4.xyz;
    r4 = float4(_575.x, _575.y, _575.z, r4.w);
    float3 _591 = o3;
    _591.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _591;
    float4 _595 = o4;
    _595.x = r2.y;
    o4 = _595;
    float3 _610 = o3;
    _610.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _610;
    float4 _614 = o4;
    _614.z = r1.y;
    o4 = _614;
    float3 _629 = o3;
    _629.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _629;
    float4 _633 = o4;
    _633.y = r3.y;
    o4 = _633;
    float4 _642 = r0;
    _642.w = r0.y * cb0_m[13].x;
    r0 = _642;
    float4 _649 = r1;
    _649.x = r0.w * asfloat(3216550459u);
    r1 = _649;
    float4 _654 = r1;
    _654.x = exp2(r1.x);
    r1 = _654;
    float4 _661 = r1;
    _661.x = (-r1.x) + asfloat(1065353216u);
    r1 = _661;
    float4 _668 = r0;
    _668.w = r1.x / r0.w;
    r0 = _668;
    float4 _680 = r1;
    _680.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _680;
    float4 _695 = r0;
    _695.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _695;
    float4 _700 = r0;
    _700.x = sqrt(r0.x);
    r0 = _700;
    float4 _708 = r0;
    _708.x = r0.x * cb0_m[13].y;
    r0 = _708;
    float4 _718 = r0;
    _718.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _718;
    float4 _730 = r0;
    _730.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _730;
    float4 _736 = r0;
    _736.x = exp2(-r0.x);
    r0 = _736;
    float4 _742 = r0;
    _742.x = min(r0.x, asfloat(1065353216u));
    r0 = _742;
    float4 _749 = o4;
    _749.w = (-r0.x) + asfloat(1065353216u);
    o4 = _749;
    float2 _755 = float2(asint(shader_in[1].xy));
    r0 = float4(_755.x, _755.y, r0.z, r0.w);
    float2 _761 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_761.x, _761.y, o5.z, o5.w);
    float2 _768 = float2(asint(shader_in[3].xy));
    r0 = float4(_768.x, _768.y, r0.z, r0.w);
    float2 _774 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _774.x, _774.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _783 = asfloat(v1);
    shader_in[1] = float4(_783.x, _783.y, shader_in[1].z, shader_in[1].w);
    float2 _788 = asfloat(v2);
    shader_in[2] = float4(_788.x, _788.y, shader_in[2].z, shader_in[2].w);
    float2 _793 = asfloat(v3);
    shader_in[3] = float4(_793.x, _793.y, shader_in[3].z, shader_in[3].w);
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
