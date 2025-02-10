cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float4 v2;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
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

void vs_main()
{
    float4 _45 = r0;
    _45.w = asfloat(1065353216u);
    r0 = _45;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _55 = r1;
    _55.w = asfloat(1065353216u);
    r1 = _55;
    float4 _73 = r0;
    _73.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _73;
    float4 _91 = r0;
    _91.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _91;
    float4 _109 = r0;
    _109.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _109;
    float4 _125 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _139 = o0;
    _139.x = mad(_125.w, r0.w, mad(_125.z, r0.z, mad(_125.y, r0.y, _125.x * r0.x)));
    o0 = _139;
    float4 _151 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _165 = o0;
    _165.y = mad(_151.w, r0.w, mad(_151.z, r0.z, mad(_151.y, r0.y, _151.x * r0.x)));
    o0 = _165;
    float4 _177 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _191 = o0;
    _191.z = mad(_177.w, r0.w, mad(_177.z, r0.z, mad(_177.y, r0.y, _177.x * r0.x)));
    o0 = _191;
    float4 _203 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _217 = o0;
    _217.w = mad(_203.w, r0.w, mad(_203.z, r0.z, mad(_203.y, r0.y, _203.x * r0.x)));
    o0 = _217;
    float3 _231 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_231.x, _231.y, _231.z, r0.w);
    float4 _241 = r0;
    _241.w = r0.y * cb0_m[13].x;
    r0 = _241;
    float4 _248 = r1;
    _248.x = r0.w * asfloat(3216550459u);
    r1 = _248;
    float4 _253 = r1;
    _253.x = exp2(r1.x);
    r1 = _253;
    float4 _260 = r1;
    _260.x = (-r1.x) + asfloat(1065353216u);
    r1 = _260;
    float4 _267 = r0;
    _267.w = r1.x / r0.w;
    r0 = _267;
    float4 _279 = r1;
    _279.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _279;
    float4 _294 = r0;
    _294.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _294;
    float4 _299 = r0;
    _299.x = sqrt(r0.x);
    r0 = _299;
    float4 _309 = r0;
    _309.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _309;
    float4 _317 = r0;
    _317.z = r0.x * cb0_m[13].y;
    r0 = _317;
    float2 _335 = clamp((r0.xx * shader_in[7].zx) + shader_in[7].yw, 0.0f.xx, 1.0f.xx);
    o2 = float4(o2.x, o2.y, _335.x, _335.y);
    float4 _348 = r0;
    _348.x = (r0.y * r0.z) + (-cb0_m[13].w);
    r0 = _348;
    float4 _354 = r0;
    _354.x = exp2(-r0.x);
    r0 = _354;
    float4 _360 = r0;
    _360.x = min(r0.x, asfloat(1065353216u));
    r0 = _360;
    float4 _367 = o1;
    _367.w = (-r0.x) + asfloat(1065353216u);
    o1 = _367;
    float3 _380 = shader_in[2].zyx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    o1 = float4(_380.x, _380.y, _380.z, o1.w);
    float2 _387 = float2(asint(shader_in[1].xy));
    r0 = float4(_387.x, _387.y, r0.z, r0.w);
    float2 _396 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_396.x, _396.y, o2.z, o2.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _405 = asfloat(v1);
    shader_in[1] = float4(_405.x, _405.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
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
