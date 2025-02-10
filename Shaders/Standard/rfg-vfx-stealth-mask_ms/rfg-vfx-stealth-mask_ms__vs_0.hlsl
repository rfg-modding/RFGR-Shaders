cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float3 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _47 = r0;
    _47.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _47;
    float3 _60 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_60.x, _60.y, _60.z, r0.w);
    float4 _65 = r0;
    _65.w = asfloat(1065353216u);
    r0 = _65;
    float4 _82 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _97 = r1;
    _97.x = mad(_82.w, r0.w, mad(_82.z, r0.z, mad(_82.y, r0.y, _82.x * r0.x)));
    r1 = _97;
    float4 _109 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _123 = r1;
    _123.z = mad(_109.w, r0.w, mad(_109.z, r0.z, mad(_109.y, r0.y, _109.x * r0.x)));
    r1 = _123;
    float4 _135 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _149 = r1;
    _149.y = mad(_135.w, r0.w, mad(_135.z, r0.z, mad(_135.y, r0.y, _135.x * r0.x)));
    r1 = _149;
    float4 _152 = r1;
    _152.w = asfloat(1065353216u);
    r1 = _152;
    float4 _163 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _177 = o0;
    _177.x = mad(_163.w, r1.w, mad(_163.z, r1.z, mad(_163.y, r1.y, _163.x * r1.x)));
    o0 = _177;
    float4 _188 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _202 = o0;
    _202.y = mad(_188.w, r1.w, mad(_188.z, r1.z, mad(_188.y, r1.y, _188.x * r1.x)));
    o0 = _202;
    float4 _213 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _227 = o0;
    _227.z = mad(_213.w, r1.w, mad(_213.z, r1.z, mad(_213.y, r1.y, _213.x * r1.x)));
    o0 = _227;
    float4 _238 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _252 = o0;
    _252.w = mad(_238.w, r1.w, mad(_238.z, r1.z, mad(_238.y, r1.y, _238.x * r1.x)));
    o0 = _252;
    o1 = float4(r1.xyz.x, r1.xyz.y, r1.xyz.z, o1.w);
    float3 _270 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_270.x, _270.y, _270.z, r0.w);
    float4 _283 = r0;
    _283.w = asfloat((cb6_m[3].w < r1.y) ? 4294967295u : 0u);
    r0 = _283;
    float4 _290 = o1;
    _290.w = asfloat(asuint(r0.w) & 1065353216u);
    o1 = _290;
    float4 _299 = r0;
    _299.w = r0.y * cb0_m[13].x;
    r0 = _299;
    float4 _306 = r1;
    _306.x = r0.w * asfloat(3216550459u);
    r1 = _306;
    float4 _311 = r1;
    _311.x = exp2(r1.x);
    r1 = _311;
    float4 _318 = r1;
    _318.x = (-r1.x) + asfloat(1065353216u);
    r1 = _318;
    float4 _325 = r0;
    _325.w = r1.x / r0.w;
    r0 = _325;
    float4 _335 = r1;
    _335.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _335;
    float4 _350 = r0;
    _350.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _350;
    float4 _355 = r0;
    _355.x = sqrt(r0.x);
    r0 = _355;
    float4 _363 = r0;
    _363.x = r0.x * cb0_m[13].y;
    r0 = _363;
    float4 _373 = r0;
    _373.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _373;
    float4 _385 = r0;
    _385.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _385;
    float4 _391 = r0;
    _391.x = exp2(-r0.x);
    r0 = _391;
    float4 _397 = r0;
    _397.x = min(r0.x, asfloat(1065353216u));
    r0 = _397;
    float3 _404 = o2;
    _404.z = (-r0.x) + asfloat(1065353216u);
    o2 = _404;
    float2 _411 = float2(asint(shader_in[1].xy));
    r0 = float4(_411.x, _411.y, r0.z, r0.w);
    float2 _420 = r0.xy * asfloat(uint2(989855744u, 989855744u));
    o2 = float3(_420.x, _420.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _429 = asfloat(v1);
    shader_in[1] = float4(_429.x, _429.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
