cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _79 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r0;
    _93.x = mad(_79.w, r1.w, mad(_79.z, r1.z, mad(_79.y, r1.y, _79.x * r1.x)));
    r0 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r0;
    _119.y = mad(_105.w, r1.w, mad(_105.z, r1.z, mad(_105.y, r1.y, _105.x * r1.x)));
    r0 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r0;
    _145.z = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r0 = _145;
    float4 _156 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _170 = o0;
    _170.x = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _195 = o0;
    _195.y = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _220 = o0;
    _220.z = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float4 _232 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _246 = o0;
    _246.w = mad(_232.w, r0.w, mad(_232.z, r0.z, mad(_232.y, r0.y, _232.x * r0.x)));
    o0 = _246;
    float3 _260 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_260.x, _260.y, _260.z, r0.w);
    float3 _275 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_275.x, _275.y, _275.z, r1.w);
    float3 _285 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _298 = r2;
    _298.x = mad(_285.z, r1.xyz.z, mad(_285.y, r1.xyz.y, _285.x * r1.xyz.x));
    r2 = _298;
    float3 _307 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _319 = r2;
    _319.y = mad(_307.z, r1.xyz.z, mad(_307.y, r1.xyz.y, _307.x * r1.xyz.x));
    r2 = _319;
    float3 _328 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _340 = r2;
    _340.z = mad(_328.z, r1.xyz.z, mad(_328.y, r1.xyz.y, _328.x * r1.xyz.x));
    r2 = _340;
    float4 _355 = r0;
    _355.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _355;
    float4 _360 = r0;
    _360.w = rsqrt(r0.w);
    r0 = _360;
    float3 _366 = r0.www * r2.xyz;
    r1 = float4(_366.x, _366.y, _366.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _386 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _399 = r3;
    _399.x = mad(_386.z, r2.xyz.z, mad(_386.y, r2.xyz.y, _386.x * r2.xyz.x));
    r3 = _399;
    float3 _408 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _420 = r3;
    _420.y = mad(_408.z, r2.xyz.z, mad(_408.y, r2.xyz.y, _408.x * r2.xyz.x));
    r3 = _420;
    float3 _429 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _441 = r3;
    _441.z = mad(_429.z, r2.xyz.z, mad(_429.y, r2.xyz.y, _429.x * r2.xyz.x));
    r3 = _441;
    float4 _456 = r0;
    _456.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _456;
    float4 _461 = r0;
    _461.w = rsqrt(r0.w);
    r0 = _461;
    float3 _467 = r0.www * r3.xyz;
    r2 = float4(_467.x, _467.y, _467.z, r2.w);
    float3 _474 = r1.zxy * r2.yzx;
    r3 = float4(_474.x, _474.y, _474.z, r3.w);
    float3 _485 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_485.x, _485.y, _485.z, r3.w);
    float3 _492 = r2.www * r3.xyz;
    r3 = float4(_492.x, _492.y, _492.z, r3.w);
    float3 _502 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _514 = o1;
    _514.y = mad(_502.z, r3.xyz.z, mad(_502.y, r3.xyz.y, _502.x * r3.xyz.x));
    o1 = _514;
    float3 _523 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _535 = o1;
    _535.z = mad(_523.z, r1.xyz.z, mad(_523.y, r1.xyz.y, _523.x * r1.xyz.x));
    o1 = _535;
    float3 _544 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _556 = o1;
    _556.x = mad(_544.z, r2.xyz.z, mad(_544.y, r2.xyz.y, _544.x * r2.xyz.x));
    o1 = _556;
    float4 _571 = r0;
    _571.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _571;
    float4 _576 = r0;
    _576.w = rsqrt(r0.w);
    r0 = _576;
    float3 _582 = r0.www * r0.xyz;
    r0 = float4(_582.x, _582.y, _582.z, r0.w);
    float3 _598 = o2;
    _598.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _598;
    float3 _613 = o2;
    _613.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _613;
    float3 _628 = o2;
    _628.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _628;
    float2 _635 = float2(asint(shader_in[2].xy));
    r0 = float4(_635.x, _635.y, r0.z, r0.w);
    float2 _646 = r0.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_646.x, _646.y, r0.z, r0.w);
    float2 _655 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _655.x, _655.y);
    float2 _662 = float2(asint(shader_in[1].xy));
    r0 = float4(_662.x, _662.y, r0.z, r0.w);
    float2 _668 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_668.x, _668.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _677 = asfloat(v1);
    shader_in[1] = float4(_677.x, _677.y, shader_in[1].z, shader_in[1].w);
    float2 _682 = asfloat(v2);
    shader_in[2] = float4(_682.x, _682.y, shader_in[2].z, shader_in[2].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
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
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
