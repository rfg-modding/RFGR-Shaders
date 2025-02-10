cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float3 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _61 = r1;
    _61.w = asfloat(1065353216u);
    r1 = _61;
    float4 _79 = r0;
    _79.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _79;
    float4 _97 = r0;
    _97.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _97;
    float4 _115 = r0;
    _115.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _115;
    float4 _131 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _145 = o0;
    _145.x = mad(_131.w, r0.w, mad(_131.z, r0.z, mad(_131.y, r0.y, _131.x * r0.x)));
    o0 = _145;
    float4 _157 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _171 = o0;
    _171.y = mad(_157.w, r0.w, mad(_157.z, r0.z, mad(_157.y, r0.y, _157.x * r0.x)));
    o0 = _171;
    float4 _183 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _197 = o0;
    _197.z = mad(_183.w, r0.w, mad(_183.z, r0.z, mad(_183.y, r0.y, _183.x * r0.x)));
    o0 = _197;
    float4 _208 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _222 = o0;
    _222.w = mad(_208.w, r0.w, mad(_208.z, r0.z, mad(_208.y, r0.y, _208.x * r0.x)));
    o0 = _222;
    float2 _228 = float2(asint(shader_in[1].xy));
    r1 = float4(_228.x, _228.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _261 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_261.x, _261.y, _261.z, r1.w);
    float4 _279 = r2;
    _279.x = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r2 = _279;
    float4 _295 = r2;
    _295.y = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _295;
    float4 _311 = r2;
    _311.z = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _311;
    float4 _326 = r0;
    _326.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _326;
    float4 _331 = r0;
    _331.w = rsqrt(r0.w);
    r0 = _331;
    o3 = r0.www * r2.xyz;
    o4 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o5 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o5.w);
    float3 _362 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_362.x, _362.y, _362.z, r0.w);
    float4 _366 = o5;
    _366.w = asfloat(0u);
    o5 = _366;
    float4 _375 = r0;
    _375.w = r0.y * cb0_m[13].x;
    r0 = _375;
    float4 _382 = r1;
    _382.x = r0.w * asfloat(3216550459u);
    r1 = _382;
    float4 _387 = r1;
    _387.x = exp2(r1.x);
    r1 = _387;
    float4 _394 = r1;
    _394.x = (-r1.x) + asfloat(1065353216u);
    r1 = _394;
    float4 _401 = r0;
    _401.w = r1.x / r0.w;
    r0 = _401;
    float4 _413 = r1;
    _413.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _413;
    float4 _428 = r0;
    _428.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _428;
    float4 _433 = r0;
    _433.x = sqrt(r0.x);
    r0 = _433;
    float4 _441 = r0;
    _441.x = r0.x * cb0_m[13].y;
    r0 = _441;
    float4 _451 = r0;
    _451.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _451;
    float4 _463 = r0;
    _463.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _463;
    float4 _469 = r0;
    _469.x = exp2(-r0.x);
    r0 = _469;
    float4 _475 = r0;
    _475.x = min(r0.x, asfloat(1065353216u));
    r0 = _475;
    float4 _482 = o6;
    _482.w = (-r0.x) + asfloat(1065353216u);
    o6 = _482;
    float3 _491 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o6 = float4(_491.x, _491.y, _491.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _500 = asfloat(v1);
    shader_in[1] = float4(_500.x, _500.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
