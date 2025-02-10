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
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
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
    float3 _260 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_260.x, _260.y, _260.z, r0.w);
    float3 _274 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_274.x, _274.y, _274.z, r1.w);
    float3 _284 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _297 = r2;
    _297.x = mad(_284.z, r1.xyz.z, mad(_284.y, r1.xyz.y, _284.x * r1.xyz.x));
    r2 = _297;
    float3 _306 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _318 = r2;
    _318.y = mad(_306.z, r1.xyz.z, mad(_306.y, r1.xyz.y, _306.x * r1.xyz.x));
    r2 = _318;
    float3 _327 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _339 = r2;
    _339.z = mad(_327.z, r1.xyz.z, mad(_327.y, r1.xyz.y, _327.x * r1.xyz.x));
    r2 = _339;
    float4 _354 = r0;
    _354.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _354;
    float4 _359 = r0;
    _359.w = rsqrt(r0.w);
    r0 = _359;
    float3 _365 = r0.www * r2.xyz;
    r1 = float4(_365.x, _365.y, _365.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _385 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _398 = r3;
    _398.x = mad(_385.z, r2.xyz.z, mad(_385.y, r2.xyz.y, _385.x * r2.xyz.x));
    r3 = _398;
    float3 _407 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _419 = r3;
    _419.y = mad(_407.z, r2.xyz.z, mad(_407.y, r2.xyz.y, _407.x * r2.xyz.x));
    r3 = _419;
    float3 _428 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _440 = r3;
    _440.z = mad(_428.z, r2.xyz.z, mad(_428.y, r2.xyz.y, _428.x * r2.xyz.x));
    r3 = _440;
    float4 _455 = r0;
    _455.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _455;
    float4 _460 = r0;
    _460.w = rsqrt(r0.w);
    r0 = _460;
    float3 _466 = r0.www * r3.xyz;
    r2 = float4(_466.x, _466.y, _466.z, r2.w);
    float3 _473 = r1.zxy * r2.yzx;
    r3 = float4(_473.x, _473.y, _473.z, r3.w);
    float3 _484 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_484.x, _484.y, _484.z, r3.w);
    float3 _491 = r2.www * r3.xyz;
    r3 = float4(_491.x, _491.y, _491.z, r3.w);
    float3 _501 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _513 = o1;
    _513.y = mad(_501.z, r3.xyz.z, mad(_501.y, r3.xyz.y, _501.x * r3.xyz.x));
    o1 = _513;
    float4 _517 = o2;
    _517.y = r3.y;
    o2 = _517;
    float3 _526 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _538 = o1;
    _538.z = mad(_526.z, r1.xyz.z, mad(_526.y, r1.xyz.y, _526.x * r1.xyz.x));
    o1 = _538;
    float4 _542 = o2;
    _542.z = r1.y;
    o2 = _542;
    float3 _551 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _563 = o1;
    _563.x = mad(_551.z, r2.xyz.z, mad(_551.y, r2.xyz.y, _551.x * r2.xyz.x));
    o1 = _563;
    float4 _567 = o2;
    _567.x = r2.y;
    o2 = _567;
    float4 _576 = r0;
    _576.w = r0.y * cb0_m[13].x;
    r0 = _576;
    float4 _583 = r1;
    _583.x = r0.w * asfloat(3216550459u);
    r1 = _583;
    float4 _588 = r1;
    _588.x = exp2(r1.x);
    r1 = _588;
    float4 _595 = r1;
    _595.x = (-r1.x) + asfloat(1065353216u);
    r1 = _595;
    float4 _602 = r0;
    _602.w = r1.x / r0.w;
    r0 = _602;
    float4 _614 = r1;
    _614.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _614;
    float4 _629 = r0;
    _629.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _629;
    float4 _634 = r0;
    _634.x = sqrt(r0.x);
    r0 = _634;
    float4 _642 = r0;
    _642.x = r0.x * cb0_m[13].y;
    r0 = _642;
    float4 _652 = r0;
    _652.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _652;
    float4 _664 = r0;
    _664.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _664;
    float4 _670 = r0;
    _670.x = exp2(-r0.x);
    r0 = _670;
    float4 _676 = r0;
    _676.x = min(r0.x, asfloat(1065353216u));
    r0 = _676;
    float4 _683 = o2;
    _683.w = (-r0.x) + asfloat(1065353216u);
    o2 = _683;
    float2 _690 = float2(asint(shader_in[2].xy));
    r0 = float4(_690.x, _690.y, r0.z, r0.w);
    float2 _701 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_701.x, _701.y, r0.z, r0.w);
    float2 _710 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _710.x, _710.y);
    float2 _717 = float2(asint(shader_in[1].xy));
    r0 = float4(_717.x, _717.y, r0.z, r0.w);
    float2 _723 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_723.x, _723.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _732 = asfloat(v1);
    shader_in[1] = float4(_732.x, _732.y, shader_in[1].z, shader_in[1].w);
    float2 _737 = asfloat(v2);
    shader_in[2] = float4(_737.x, _737.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
