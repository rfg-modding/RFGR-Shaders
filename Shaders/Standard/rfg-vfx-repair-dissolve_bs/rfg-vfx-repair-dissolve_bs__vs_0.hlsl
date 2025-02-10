cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _43 = r0;
    _43.w = asfloat(1065353216u);
    r0 = _43;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _53 = r1;
    _53.w = asfloat(1065353216u);
    r1 = _53;
    float4 _71 = r0;
    _71.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _71;
    float4 _89 = r0;
    _89.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _89;
    float4 _107 = r0;
    _107.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _107;
    float4 _123 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _137 = o0;
    _137.x = mad(_123.w, r0.w, mad(_123.z, r0.z, mad(_123.y, r0.y, _123.x * r0.x)));
    o0 = _137;
    float4 _149 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _163 = o0;
    _163.y = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    o0 = _163;
    float4 _175 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _189 = o0;
    _189.z = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    o0 = _189;
    float4 _200 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _214 = o0;
    _214.w = mad(_200.w, r0.w, mad(_200.z, r0.z, mad(_200.y, r0.y, _200.x * r0.x)));
    o0 = _214;
    float3 _228 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_228.x, _228.y, _228.z, r0.w);
    float4 _238 = r0;
    _238.w = r0.y * cb0_m[13].x;
    r0 = _238;
    float4 _245 = r1;
    _245.x = r0.w * asfloat(3216550459u);
    r1 = _245;
    float4 _250 = r1;
    _250.x = exp2(r1.x);
    r1 = _250;
    float4 _257 = r1;
    _257.x = (-r1.x) + asfloat(1065353216u);
    r1 = _257;
    float4 _264 = r0;
    _264.w = r1.x / r0.w;
    r0 = _264;
    float4 _276 = r1;
    _276.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _276;
    float4 _291 = r0;
    _291.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _291;
    float4 _296 = r0;
    _296.x = sqrt(r0.x);
    r0 = _296;
    float4 _304 = r0;
    _304.x = r0.x * cb0_m[13].y;
    r0 = _304;
    float4 _314 = r0;
    _314.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _314;
    float4 _326 = r0;
    _326.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _326;
    float4 _332 = r0;
    _332.x = exp2(-r0.x);
    r0 = _332;
    float4 _338 = r0;
    _338.x = min(r0.x, asfloat(1065353216u));
    r0 = _338;
    float4 _345 = o1;
    _345.w = (-r0.x) + asfloat(1065353216u);
    o1 = _345;
    float2 _352 = float2(asint(shader_in[1].xy));
    r0 = float4(_352.x, _352.y, r0.z, r0.w);
    float2 _363 = r0.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(_363.x, _363.y, r0.z, r0.w);
    float2 _372 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_372.x, _372.y, o1.z, o1.w);
    float4 _379 = o1;
    _379.z = shader_in[6].w;
    o1 = _379;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _387 = asfloat(v1);
    shader_in[1] = float4(_387.x, _387.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
