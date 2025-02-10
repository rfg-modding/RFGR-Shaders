cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _45 = r0;
    _45.w = asfloat(1065353216u);
    r0 = _45;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _55 = r1;
    _55.w = asfloat(1065353216u);
    r1 = _55;
    float4 _71 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _85 = r0;
    _85.x = mad(_71.w, r1.w, mad(_71.z, r1.z, mad(_71.y, r1.y, _71.x * r1.x)));
    r0 = _85;
    float4 _97 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _111 = r0;
    _111.y = mad(_97.w, r1.w, mad(_97.z, r1.z, mad(_97.y, r1.y, _97.x * r1.x)));
    r0 = _111;
    float4 _123 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _137 = r0;
    _137.z = mad(_123.w, r1.w, mad(_123.z, r1.z, mad(_123.y, r1.y, _123.x * r1.x)));
    r0 = _137;
    float4 _148 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _162 = o0;
    _162.x = mad(_148.w, r0.w, mad(_148.z, r0.z, mad(_148.y, r0.y, _148.x * r0.x)));
    o0 = _162;
    float4 _173 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _187 = o0;
    _187.y = mad(_173.w, r0.w, mad(_173.z, r0.z, mad(_173.y, r0.y, _173.x * r0.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _212 = o0;
    _212.z = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float4 _224 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _238 = o0;
    _238.w = mad(_224.w, r0.w, mad(_224.z, r0.z, mad(_224.y, r0.y, _224.x * r0.x)));
    o0 = _238;
    float3 _252 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_252.x, _252.y, _252.z, r1.w);
    float4 _262 = r0;
    _262.w = r1.y * cb0_m[13].x;
    r0 = _262;
    float4 _269 = r1;
    _269.w = r0.w * asfloat(3216550459u);
    r1 = _269;
    float4 _274 = r1;
    _274.w = exp2(r1.w);
    r1 = _274;
    float4 _281 = r1;
    _281.w = (-r1.w) + asfloat(1065353216u);
    r1 = _281;
    float4 _288 = r0;
    _288.w = r1.w / r0.w;
    r0 = _288;
    float4 _300 = r1;
    _300.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _300;
    float4 _315 = r1;
    _315.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _315;
    float4 _320 = r1;
    _320.x = sqrt(r1.x);
    r1 = _320;
    float4 _328 = r1;
    _328.x = r1.x * cb0_m[13].y;
    r1 = _328;
    float4 _338 = r0;
    _338.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _338;
    float4 _350 = r0;
    _350.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _350;
    float4 _356 = r0;
    _356.w = exp2(-r0.w);
    r0 = _356;
    float4 _362 = r0;
    _362.w = min(r0.w, asfloat(1065353216u));
    r0 = _362;
    o1 = (-r0.w) + asfloat(1065353216u);
    float3 _387 = (-float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z)) + float3(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z);
    r1 = float4(_387.x, _387.y, _387.z, r1.w);
    float3 _395 = r0.xyz + (-r1.xyz);
    r0 = float4(_395.x, _395.y, _395.z, r0.w);
    float4 _411 = r0;
    _411.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _411;
    float4 _416 = r0;
    _416.x = sqrt(r0.x);
    r0 = _416;
    float4 _423 = o2;
    _423.w = r0.x * asfloat(1056964608u);
    o2 = _423;
    float2 _430 = float2(asint(shader_in[1].xy));
    r0 = float4(_430.x, _430.y, r0.z, r0.w);
    float2 _441 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_441.x, _441.y, r0.z, r0.w);
    float2 _450 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_450.x, _450.y, o2.z, o2.w);
    float4 _456 = o2;
    _456.z = cb6_m[3].w;
    o2 = _456;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _464 = asfloat(v1);
    shader_in[1] = float4(_464.x, _464.y, shader_in[1].z, shader_in[1].w);
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
