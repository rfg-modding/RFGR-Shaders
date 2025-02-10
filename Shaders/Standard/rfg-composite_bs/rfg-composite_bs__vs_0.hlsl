cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _46 = r0;
    _46.w = asfloat(1065353216u);
    r0 = _46;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _56 = r1;
    _56.w = asfloat(1065353216u);
    r1 = _56;
    float4 _74 = r0;
    _74.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _74;
    float4 _92 = r0;
    _92.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _92;
    float4 _110 = r0;
    _110.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _110;
    float4 _126 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _140 = o0;
    _140.x = mad(_126.w, r0.w, mad(_126.z, r0.z, mad(_126.y, r0.y, _126.x * r0.x)));
    o0 = _140;
    float4 _152 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _166 = o0;
    _166.y = mad(_152.w, r0.w, mad(_152.z, r0.z, mad(_152.y, r0.y, _152.x * r0.x)));
    o0 = _166;
    float4 _178 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _192 = o0;
    _192.z = mad(_178.w, r0.w, mad(_178.z, r0.z, mad(_178.y, r0.y, _178.x * r0.x)));
    o0 = _192;
    float4 _204 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _218 = o0;
    _218.w = mad(_204.w, r0.w, mad(_204.z, r0.z, mad(_204.y, r0.y, _204.x * r0.x)));
    o0 = _218;
    float3 _232 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_232.x, _232.y, _232.z, r0.w);
    float4 _242 = r0;
    _242.w = r0.y * cb0_m[13].x;
    r0 = _242;
    float4 _249 = r1;
    _249.x = r0.w * asfloat(3216550459u);
    r1 = _249;
    float4 _254 = r1;
    _254.x = exp2(r1.x);
    r1 = _254;
    float4 _261 = r1;
    _261.x = (-r1.x) + asfloat(1065353216u);
    r1 = _261;
    float4 _268 = r0;
    _268.w = r1.x / r0.w;
    r0 = _268;
    float4 _280 = r1;
    _280.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _280;
    float4 _295 = r0;
    _295.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _295;
    float4 _300 = r0;
    _300.x = sqrt(r0.x);
    r0 = _300;
    float4 _308 = r0;
    _308.x = r0.x * cb0_m[13].y;
    r0 = _308;
    float4 _318 = r0;
    _318.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _318;
    float4 _330 = r0;
    _330.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _330;
    float4 _336 = r0;
    _336.x = exp2(-r0.x);
    r0 = _336;
    float4 _342 = r0;
    _342.x = min(r0.x, asfloat(1065353216u));
    r0 = _342;
    float4 _349 = o1;
    _349.w = (-r0.x) + asfloat(1065353216u);
    o1 = _349;
    float3 _362 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_362.x, _362.y, _362.z, r0.w);
    float4 _379 = r1;
    _379.x = mad(shader_in[5].xyz.z, r0.xyz.z, mad(shader_in[5].xyz.y, r0.xyz.y, shader_in[5].xyz.x * r0.xyz.x));
    r1 = _379;
    float4 _395 = r1;
    _395.y = mad(shader_in[6].xyz.z, r0.xyz.z, mad(shader_in[6].xyz.y, r0.xyz.y, shader_in[6].xyz.x * r0.xyz.x));
    r1 = _395;
    float4 _411 = r1;
    _411.z = mad(shader_in[7].xyz.z, r0.xyz.z, mad(shader_in[7].xyz.y, r0.xyz.y, shader_in[7].xyz.x * r0.xyz.x));
    r1 = _411;
    float4 _426 = r0;
    _426.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _426;
    float4 _431 = r0;
    _431.x = rsqrt(r0.x);
    r0 = _431;
    float3 _437 = r0.xxx * r1.xyz;
    r0 = float4(_437.x, _437.y, _437.z, r0.w);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _465 = r2;
    _465.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _465;
    float4 _481 = r2;
    _481.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _481;
    float4 _497 = r2;
    _497.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _497;
    float4 _512 = r0;
    _512.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _512;
    float4 _517 = r0;
    _517.w = rsqrt(r0.w);
    r0 = _517;
    float3 _523 = r0.www * r2.xyz;
    r1 = float4(_523.x, _523.y, _523.z, r1.w);
    float3 _530 = r0.zxy * r1.yzx;
    r2 = float4(_530.x, _530.y, _530.z, r2.w);
    float3 _541 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_541.x, _541.y, _541.z, r2.w);
    float3 _551 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _563 = o1;
    _563.z = mad(_551.z, r0.xyz.z, mad(_551.y, r0.xyz.y, _551.x * r0.xyz.x));
    o1 = _563;
    float3 _572 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _584 = o1;
    _584.x = mad(_572.z, r1.xyz.z, mad(_572.y, r1.xyz.y, _572.x * r1.xyz.x));
    o1 = _584;
    float3 _590 = r1.www * r2.xyz;
    r0 = float4(_590.x, _590.y, _590.z, r0.w);
    float3 _600 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _612 = o1;
    _612.y = mad(_600.z, r0.xyz.z, mad(_600.y, r0.xyz.y, _600.x * r0.xyz.x));
    o1 = _612;
    float2 _619 = float2(asint(shader_in[1].xy));
    r0 = float4(_619.x, _619.y, r0.z, r0.w);
    float2 _628 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_628.x, _628.y, o2.z, o2.w);
    float2 _635 = float2(asint(shader_in[2].xy));
    r0 = float4(_635.x, _635.y, r0.z, r0.w);
    float2 _641 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _641.x, _641.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _650 = asfloat(v1);
    shader_in[1] = float4(_650.x, _650.y, shader_in[1].z, shader_in[1].w);
    float2 _655 = asfloat(v2);
    shader_in[2] = float4(_655.x, _655.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
