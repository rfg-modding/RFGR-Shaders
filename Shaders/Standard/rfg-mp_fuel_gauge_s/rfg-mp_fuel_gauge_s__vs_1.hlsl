cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
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
static float2 o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
    float4 _67 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _82 = r1;
    _82.x = mad(_67.w, r0.w, mad(_67.z, r0.z, mad(_67.y, r0.y, _67.x * r0.x)));
    r1 = _82;
    float4 _94 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _108 = r1;
    _108.y = mad(_94.w, r0.w, mad(_94.z, r0.z, mad(_94.y, r0.y, _94.x * r0.x)));
    r1 = _108;
    float4 _120 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _134 = r1;
    _134.z = mad(_120.w, r0.w, mad(_120.z, r0.z, mad(_120.y, r0.y, _120.x * r0.x)));
    r1 = _134;
    float4 _137 = r1;
    _137.w = asfloat(1065353216u);
    r1 = _137;
    float4 _148 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _162 = o0;
    _162.x = mad(_148.w, r1.w, mad(_148.z, r1.z, mad(_148.y, r1.y, _148.x * r1.x)));
    o0 = _162;
    float4 _173 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _187 = o0;
    _187.y = mad(_173.w, r1.w, mad(_173.z, r1.z, mad(_173.y, r1.y, _173.x * r1.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _212 = o0;
    _212.z = mad(_198.w, r1.w, mad(_198.z, r1.z, mad(_198.y, r1.y, _198.x * r1.x)));
    o0 = _212;
    float4 _224 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _238 = o0;
    _238.w = mad(_224.w, r1.w, mad(_224.z, r1.z, mad(_224.y, r1.y, _224.x * r1.x)));
    o0 = _238;
    float4 _247 = r0;
    _247.x = cb6_m[3].x * cb2_m[1].x;
    r0 = _247;
    float4 _254 = r0;
    _254.x = r0.x * asfloat(1092616192u);
    r0 = _254;
    float2 _260 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, r0.y, _260.x, _260.y);
    float4 _264 = r0;
    _264.y = asfloat(0u);
    r0 = _264;
    o1 = (r0.zw * asfloat(uint2(981467136u, 981467136u))) + r0.xy;
    o2 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _292 = asfloat(v1);
    shader_in[1] = float4(_292.x, _292.y, shader_in[1].z, shader_in[1].w);
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
