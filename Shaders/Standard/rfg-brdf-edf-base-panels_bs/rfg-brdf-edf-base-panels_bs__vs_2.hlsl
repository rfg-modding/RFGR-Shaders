cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[7] : packoffset(c0);
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
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float2 o1;
static float3 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _82 = r0;
    _82.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _82;
    float4 _100 = r0;
    _100.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _100;
    float4 _118 = r0;
    _118.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _118;
    float4 _134 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _148 = o0;
    _148.x = mad(_134.w, r0.w, mad(_134.z, r0.z, mad(_134.y, r0.y, _134.x * r0.x)));
    o0 = _148;
    float4 _160 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _174 = o0;
    _174.y = mad(_160.w, r0.w, mad(_160.z, r0.z, mad(_160.y, r0.y, _160.x * r0.x)));
    o0 = _174;
    float4 _186 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _200 = o0;
    _200.z = mad(_186.w, r0.w, mad(_186.z, r0.z, mad(_186.y, r0.y, _186.x * r0.x)));
    o0 = _200;
    float4 _212 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _226 = o0;
    _226.w = mad(_212.w, r0.w, mad(_212.z, r0.z, mad(_212.y, r0.y, _212.x * r0.x)));
    o0 = _226;
    float3 _240 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_240.x, _240.y, _240.z, r0.w);
    float2 _247 = float2(asint(shader_in[1].xy));
    r1 = float4(_247.x, _247.y, r1.z, r1.w);
    float2 _258 = r1.xy * float2(cb2_m[6].x, cb2_m[6].y);
    r1 = float4(_258.x, _258.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _279 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_279.x, _279.y, _279.z, r1.w);
    float4 _297 = r2;
    _297.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _297;
    float4 _313 = r2;
    _313.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _313;
    float4 _329 = r2;
    _329.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _329;
    float4 _344 = r0;
    _344.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _344;
    float4 _349 = r0;
    _349.w = rsqrt(r0.w);
    r0 = _349;
    float3 _355 = r0.www * r2.xyz;
    r1 = float4(_355.x, _355.y, _355.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _382 = r3;
    _382.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _382;
    float4 _398 = r3;
    _398.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _398;
    float4 _414 = r3;
    _414.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _414;
    float4 _429 = r0;
    _429.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _429;
    float4 _434 = r0;
    _434.w = rsqrt(r0.w);
    r0 = _434;
    float3 _440 = r0.www * r3.xyz;
    r2 = float4(_440.x, _440.y, _440.z, r2.w);
    float3 _447 = r1.zxy * r2.yzx;
    r3 = float4(_447.x, _447.y, _447.z, r3.w);
    float3 _458 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float3 _465 = r2.www * r3.xyz;
    r3 = float4(_465.x, _465.y, _465.z, r3.w);
    float3 _475 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _487 = o2;
    _487.y = mad(_475.z, r3.xyz.z, mad(_475.y, r3.xyz.y, _475.x * r3.xyz.x));
    o2 = _487;
    float3 _496 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _508 = o2;
    _508.z = mad(_496.z, r1.xyz.z, mad(_496.y, r1.xyz.y, _496.x * r1.xyz.x));
    o2 = _508;
    float3 _517 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _529 = o2;
    _529.x = mad(_517.z, r2.xyz.z, mad(_517.y, r2.xyz.y, _517.x * r2.xyz.x));
    o2 = _529;
    float4 _544 = r0;
    _544.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _544;
    float4 _549 = r0;
    _549.w = rsqrt(r0.w);
    r0 = _549;
    float3 _555 = r0.www * r0.xyz;
    r0 = float4(_555.x, _555.y, _555.z, r0.w);
    float3 _571 = o3;
    _571.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _571;
    float3 _586 = o3;
    _586.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _586;
    float3 _601 = o3;
    _601.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _601;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _609 = asfloat(v1);
    shader_in[1] = float4(_609.x, _609.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
    v2 = stage_input.v2;
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
