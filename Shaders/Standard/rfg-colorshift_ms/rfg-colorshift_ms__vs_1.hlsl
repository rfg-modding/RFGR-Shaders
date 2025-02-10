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
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _59 = r0;
    _59.x = shader_in[6].x * asfloat(1082130432u);
    r0 = _59;
    float3 _72 = (r0.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r0 = float4(_72.x, _72.y, _72.z, r0.w);
    float4 _77 = r0;
    _77.w = asfloat(1065353216u);
    r0 = _77;
    float4 _92 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _107 = r1;
    _107.x = mad(_92.w, r0.w, mad(_92.z, r0.z, mad(_92.y, r0.y, _92.x * r0.x)));
    r1 = _107;
    float4 _119 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _133 = r1;
    _133.y = mad(_119.w, r0.w, mad(_119.z, r0.z, mad(_119.y, r0.y, _119.x * r0.x)));
    r1 = _133;
    float4 _145 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _159 = r1;
    _159.z = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    r1 = _159;
    float4 _162 = r1;
    _162.w = asfloat(1065353216u);
    r1 = _162;
    float4 _173 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _187 = o0;
    _187.x = mad(_173.w, r1.w, mad(_173.z, r1.z, mad(_173.y, r1.y, _173.x * r1.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _212 = o0;
    _212.y = mad(_198.w, r1.w, mad(_198.z, r1.z, mad(_198.y, r1.y, _198.x * r1.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _237 = o0;
    _237.z = mad(_223.w, r1.w, mad(_223.z, r1.z, mad(_223.y, r1.y, _223.x * r1.x)));
    o0 = _237;
    float4 _249 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _263 = o0;
    _263.w = mad(_249.w, r1.w, mad(_249.z, r1.z, mad(_249.y, r1.y, _249.x * r1.x)));
    o0 = _263;
    float2 _269 = float2(asint(shader_in[1].xy));
    r0 = float4(_269.x, _269.y, r0.z, r0.w);
    float2 _280 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_280.x, _280.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _310 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_310.x, _310.y, _310.z, r0.w);
    float3 _324 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_324.x, _324.y, _324.z, r1.w);
    float4 _334 = r0;
    _334.w = r0.y * cb0_m[13].x;
    r0 = _334;
    float4 _341 = r1;
    _341.w = r0.w * asfloat(3216550459u);
    r1 = _341;
    float4 _346 = r1;
    _346.w = exp2(r1.w);
    r1 = _346;
    float4 _353 = r1;
    _353.w = (-r1.w) + asfloat(1065353216u);
    r1 = _353;
    float4 _360 = r0;
    _360.w = r1.w / r0.w;
    r0 = _360;
    float4 _372 = r1;
    _372.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _372;
    float4 _387 = r0;
    _387.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _387;
    float4 _392 = r0;
    _392.x = sqrt(r0.x);
    r0 = _392;
    float4 _400 = r0;
    _400.x = r0.x * cb0_m[13].y;
    r0 = _400;
    float4 _410 = r0;
    _410.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _410;
    float4 _422 = r0;
    _422.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _422;
    float4 _428 = r0;
    _428.x = exp2(-r0.x);
    r0 = _428;
    float4 _434 = r0;
    _434.x = min(r0.x, asfloat(1065353216u));
    r0 = _434;
    float4 _441 = o3;
    _441.w = (-r0.x) + asfloat(1065353216u);
    o3 = _441;
    float4 _456 = r0;
    _456.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _456;
    float4 _461 = r0;
    _461.x = rsqrt(r0.x);
    r0 = _461;
    float3 _467 = r0.xxx * r1.xyz;
    o3 = float4(_467.x, _467.y, _467.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _476 = asfloat(v1);
    shader_in[1] = float4(_476.x, _476.y, shader_in[1].z, shader_in[1].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
