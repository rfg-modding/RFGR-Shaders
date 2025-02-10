cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
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
static float4 o1;
static float3 o2;
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
    r0 = float4(_252.x, _252.y, _252.z, r0.w);
    o1 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
    float4 _272 = r0;
    _272.w = r0.y * cb0_m[13].x;
    r0 = _272;
    float4 _279 = r1;
    _279.x = r0.w * asfloat(3216550459u);
    r1 = _279;
    float4 _284 = r1;
    _284.x = exp2(r1.x);
    r1 = _284;
    float4 _291 = r1;
    _291.x = (-r1.x) + asfloat(1065353216u);
    r1 = _291;
    float4 _298 = r0;
    _298.w = r1.x / r0.w;
    r0 = _298;
    float4 _310 = r1;
    _310.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _310;
    float4 _325 = r0;
    _325.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _325;
    float4 _330 = r0;
    _330.x = sqrt(r0.x);
    r0 = _330;
    float4 _338 = r0;
    _338.x = r0.x * cb0_m[13].y;
    r0 = _338;
    float4 _348 = r0;
    _348.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _348;
    float4 _360 = r0;
    _360.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _360;
    float4 _366 = r0;
    _366.x = exp2(-r0.x);
    r0 = _366;
    float4 _372 = r0;
    _372.x = min(r0.x, asfloat(1065353216u));
    r0 = _372;
    float3 _379 = o2;
    _379.z = (-r0.x) + asfloat(1065353216u);
    o2 = _379;
    float4 _388 = r0;
    _388.x = cb6_m[3].x * cb2_m[1].x;
    r0 = _388;
    float4 _395 = r0;
    _395.x = r0.x * asfloat(1092616192u);
    r0 = _395;
    float2 _402 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, r0.y, _402.x, _402.y);
    float4 _406 = r0;
    _406.y = asfloat(0u);
    r0 = _406;
    float2 _417 = (r0.zw * asfloat(uint2(981467136u, 981467136u))) + r0.xy;
    o2 = float3(_417.x, _417.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _426 = asfloat(v1);
    shader_in[1] = float4(_426.x, _426.y, shader_in[1].z, shader_in[1].w);
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
