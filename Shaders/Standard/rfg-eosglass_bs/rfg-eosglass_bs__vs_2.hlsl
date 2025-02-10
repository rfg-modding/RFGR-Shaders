cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float3 v2;
static float4 v3;
static int2 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
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
static float3 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _59 = r1;
    _59.w = asfloat(1065353216u);
    r1 = _59;
    float4 _77 = r0;
    _77.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _77;
    float4 _95 = r0;
    _95.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _95;
    float4 _113 = r0;
    _113.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _113;
    float4 _129 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _143 = o0;
    _143.x = mad(_129.w, r0.w, mad(_129.z, r0.z, mad(_129.y, r0.y, _129.x * r0.x)));
    o0 = _143;
    float4 _155 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _169 = o0;
    _169.y = mad(_155.w, r0.w, mad(_155.z, r0.z, mad(_155.y, r0.y, _155.x * r0.x)));
    o0 = _169;
    float4 _181 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _195 = o0;
    _195.z = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _207 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _221 = o0;
    _221.w = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float3 _235 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_235.x, _235.y, _235.z, r0.w);
    float4 _251 = r0;
    _251.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _251;
    float4 _256 = r0;
    _256.w = rsqrt(r0.w);
    r0 = _256;
    float3 _262 = r0.www * r0.xyz;
    r0 = float4(_262.x, _262.y, _262.z, r0.w);
    float3 _276 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_276.x, _276.y, _276.z, r1.w);
    float4 _294 = r2;
    _294.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _294;
    float4 _310 = r2;
    _310.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _310;
    float4 _326 = r2;
    _326.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _326;
    float4 _341 = r0;
    _341.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _341;
    float4 _346 = r0;
    _346.w = rsqrt(r0.w);
    r0 = _346;
    float3 _352 = r0.www * r2.xyz;
    r1 = float4(_352.x, _352.y, _352.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _379 = r3;
    _379.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _379;
    float4 _395 = r3;
    _395.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _395;
    float4 _411 = r3;
    _411.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _411;
    float4 _426 = r0;
    _426.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _426;
    float4 _431 = r0;
    _431.w = rsqrt(r0.w);
    r0 = _431;
    float3 _437 = r0.www * r3.xyz;
    r2 = float4(_437.x, _437.y, _437.z, r2.w);
    float3 _444 = r1.zxy * r2.yzx;
    r3 = float4(_444.x, _444.y, _444.z, r3.w);
    float3 _455 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_455.x, _455.y, _455.z, r3.w);
    float3 _462 = r2.www * r3.xyz;
    r3 = float4(_462.x, _462.y, _462.z, r3.w);
    float3 _478 = o1;
    _478.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o1 = _478;
    float3 _487 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _499 = o2;
    _499.y = mad(_487.z, r3.xyz.z, mad(_487.y, r3.xyz.y, _487.x * r3.xyz.x));
    o2 = _499;
    float3 _514 = o1;
    _514.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o1 = _514;
    float3 _523 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _535 = o2;
    _535.x = mad(_523.z, r2.xyz.z, mad(_523.y, r2.xyz.y, _523.x * r2.xyz.x));
    o2 = _535;
    float4 _550 = r0;
    _550.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _550;
    float3 _554 = o1;
    _554.z = r0.w;
    o1 = _554;
    float4 _561 = r0;
    _561.w = r0.w + r0.w;
    r0 = _561;
    float3 _571 = (r1.xyz * (-r0.www)) + r0.xyz;
    r0 = float4(_571.x, _571.y, _571.z, r0.w);
    float3 _581 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _593 = o2;
    _593.z = mad(_581.z, r1.xyz.z, mad(_581.y, r1.xyz.y, _581.x * r1.xyz.x));
    o2 = _593;
    o3 = r0.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u));
    float2 _605 = float2(asint(shader_in[1].xy));
    r0 = float4(_605.x, _605.y, r0.z, r0.w);
    float2 _614 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_614.x, _614.y, o4.z, o4.w);
    float2 _622 = float2(asint(shader_in[4].xy));
    r0 = float4(_622.x, _622.y, r0.z, r0.w);
    float2 _628 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _628.x, _628.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _637 = asfloat(v1);
    shader_in[1] = float4(_637.x, _637.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _648 = asfloat(v4);
    shader_in[4] = float4(_648.x, _648.y, shader_in[4].z, shader_in[4].w);
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
