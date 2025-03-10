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
static float4 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _48 = r0;
    _48.w = asfloat(1065353216u);
    r0 = _48;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _58 = r1;
    _58.w = asfloat(1065353216u);
    r1 = _58;
    float4 _73 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _87 = r0;
    _87.x = mad(_73.w, r1.w, mad(_73.z, r1.z, mad(_73.y, r1.y, _73.x * r1.x)));
    r0 = _87;
    float4 _99 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _113 = r0;
    _113.y = mad(_99.w, r1.w, mad(_99.z, r1.z, mad(_99.y, r1.y, _99.x * r1.x)));
    r0 = _113;
    float4 _125 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _139 = r0;
    _139.z = mad(_125.w, r1.w, mad(_125.z, r1.z, mad(_125.y, r1.y, _125.x * r1.x)));
    r0 = _139;
    float4 _150 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _164 = o0;
    _164.x = mad(_150.w, r0.w, mad(_150.z, r0.z, mad(_150.y, r0.y, _150.x * r0.x)));
    o0 = _164;
    float4 _175 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _189 = o0;
    _189.y = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    o0 = _189;
    float4 _200 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _214 = o0;
    _214.z = mad(_200.w, r0.w, mad(_200.z, r0.z, mad(_200.y, r0.y, _200.x * r0.x)));
    o0 = _214;
    float4 _226 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _240 = o0;
    _240.w = mad(_226.w, r0.w, mad(_226.z, r0.z, mad(_226.y, r0.y, _226.x * r0.x)));
    o0 = _240;
    float3 _254 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_254.x, _254.y, _254.z, r0.w);
    float4 _264 = r0;
    _264.w = r0.y * cb0_m[13].x;
    r0 = _264;
    float4 _271 = r1;
    _271.x = r0.w * asfloat(3216550459u);
    r1 = _271;
    float4 _276 = r1;
    _276.x = exp2(r1.x);
    r1 = _276;
    float4 _283 = r1;
    _283.x = (-r1.x) + asfloat(1065353216u);
    r1 = _283;
    float4 _290 = r0;
    _290.w = r1.x / r0.w;
    r0 = _290;
    float4 _302 = r1;
    _302.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _302;
    float4 _317 = r0;
    _317.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _317;
    float4 _322 = r0;
    _322.x = sqrt(r0.x);
    r0 = _322;
    float4 _330 = r0;
    _330.x = r0.x * cb0_m[13].y;
    r0 = _330;
    float4 _340 = r0;
    _340.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _340;
    float4 _352 = r0;
    _352.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _352;
    float4 _358 = r0;
    _358.x = exp2(-r0.x);
    r0 = _358;
    float4 _364 = r0;
    _364.x = min(r0.x, asfloat(1065353216u));
    r0 = _364;
    float4 _371 = o1;
    _371.w = (-r0.x) + asfloat(1065353216u);
    o1 = _371;
    float3 _384 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_384.x, _384.y, _384.z, r0.w);
    float3 _394 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _406 = r1;
    _406.x = mad(_394.z, r0.xyz.z, mad(_394.y, r0.xyz.y, _394.x * r0.xyz.x));
    r1 = _406;
    float3 _415 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _427 = r1;
    _427.y = mad(_415.z, r0.xyz.z, mad(_415.y, r0.xyz.y, _415.x * r0.xyz.x));
    r1 = _427;
    float3 _436 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _448 = r1;
    _448.z = mad(_436.z, r0.xyz.z, mad(_436.y, r0.xyz.y, _436.x * r0.xyz.x));
    r1 = _448;
    float4 _463 = r0;
    _463.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _463;
    float4 _468 = r0;
    _468.x = rsqrt(r0.x);
    r0 = _468;
    float3 _474 = r0.xxx * r1.xyz;
    r0 = float4(_474.x, _474.y, _474.z, r0.w);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _494 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _507 = r2;
    _507.x = mad(_494.z, r1.xyz.z, mad(_494.y, r1.xyz.y, _494.x * r1.xyz.x));
    r2 = _507;
    float3 _516 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _528 = r2;
    _528.y = mad(_516.z, r1.xyz.z, mad(_516.y, r1.xyz.y, _516.x * r1.xyz.x));
    r2 = _528;
    float3 _537 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _549 = r2;
    _549.z = mad(_537.z, r1.xyz.z, mad(_537.y, r1.xyz.y, _537.x * r1.xyz.x));
    r2 = _549;
    float4 _564 = r0;
    _564.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _564;
    float4 _569 = r0;
    _569.w = rsqrt(r0.w);
    r0 = _569;
    float3 _575 = r0.www * r2.xyz;
    r1 = float4(_575.x, _575.y, _575.z, r1.w);
    float3 _582 = r0.zxy * r1.yzx;
    r2 = float4(_582.x, _582.y, _582.z, r2.w);
    float3 _593 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_593.x, _593.y, _593.z, r2.w);
    float3 _603 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _615 = o1;
    _615.z = mad(_603.z, r0.xyz.z, mad(_603.y, r0.xyz.y, _603.x * r0.xyz.x));
    o1 = _615;
    float3 _624 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _636 = o1;
    _636.x = mad(_624.z, r1.xyz.z, mad(_624.y, r1.xyz.y, _624.x * r1.xyz.x));
    o1 = _636;
    float3 _642 = r1.www * r2.xyz;
    r0 = float4(_642.x, _642.y, _642.z, r0.w);
    float3 _652 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _664 = o1;
    _664.y = mad(_652.z, r0.xyz.z, mad(_652.y, r0.xyz.y, _652.x * r0.xyz.x));
    o1 = _664;
    float2 _671 = float2(asint(shader_in[1].xy));
    r0 = float4(_671.x, _671.y, r0.z, r0.w);
    float2 _680 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_680.x, _680.y, o2.z, o2.w);
    float2 _687 = float2(asint(shader_in[2].xy));
    r0 = float4(_687.x, _687.y, r0.z, r0.w);
    float2 _693 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _693.x, _693.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _702 = asfloat(v1);
    shader_in[1] = float4(_702.x, _702.y, shader_in[1].z, shader_in[1].w);
    float2 _707 = asfloat(v2);
    shader_in[2] = float4(_707.x, _707.y, shader_in[2].z, shader_in[2].w);
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
