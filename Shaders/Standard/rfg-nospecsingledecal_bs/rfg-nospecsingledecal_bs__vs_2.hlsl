cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
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
static float3 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    float4 _77 = r1;
    _77.x = mad(shader_in[5].w, r0.w, mad(shader_in[5].z, r0.z, mad(shader_in[5].y, r0.y, shader_in[5].x * r0.x)));
    r1 = _77;
    float4 _95 = r1;
    _95.y = mad(shader_in[6].w, r0.w, mad(shader_in[6].z, r0.z, mad(shader_in[6].y, r0.y, shader_in[6].x * r0.x)));
    r1 = _95;
    float4 _113 = r1;
    _113.z = mad(shader_in[7].w, r0.w, mad(shader_in[7].z, r0.z, mad(shader_in[7].y, r0.y, shader_in[7].x * r0.x)));
    r1 = _113;
    float4 _116 = r1;
    _116.w = asfloat(1065353216u);
    r1 = _116;
    float4 _131 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _145 = o0;
    _145.x = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    o0 = _145;
    float4 _157 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _171 = o0;
    _171.y = mad(_157.w, r1.w, mad(_157.z, r1.z, mad(_157.y, r1.y, _157.x * r1.x)));
    o0 = _171;
    float4 _183 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _197 = o0;
    _197.z = mad(_183.w, r1.w, mad(_183.z, r1.z, mad(_183.y, r1.y, _183.x * r1.x)));
    o0 = _197;
    float4 _209 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _223 = o0;
    _223.w = mad(_209.w, r1.w, mad(_209.z, r1.z, mad(_209.y, r1.y, _209.x * r1.x)));
    o0 = _223;
    float3 _236 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_236.x, _236.y, _236.z, r0.w);
    float4 _253 = r1;
    _253.x = mad(shader_in[5].xyz.z, r0.xyz.z, mad(shader_in[5].xyz.y, r0.xyz.y, shader_in[5].xyz.x * r0.xyz.x));
    r1 = _253;
    float4 _269 = r1;
    _269.y = mad(shader_in[6].xyz.z, r0.xyz.z, mad(shader_in[6].xyz.y, r0.xyz.y, shader_in[6].xyz.x * r0.xyz.x));
    r1 = _269;
    float4 _285 = r1;
    _285.z = mad(shader_in[7].xyz.z, r0.xyz.z, mad(shader_in[7].xyz.y, r0.xyz.y, shader_in[7].xyz.x * r0.xyz.x));
    r1 = _285;
    float4 _300 = r0;
    _300.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _300;
    float4 _305 = r0;
    _305.x = rsqrt(r0.x);
    r0 = _305;
    float3 _311 = r0.xxx * r1.xyz;
    r0 = float4(_311.x, _311.y, _311.z, r0.w);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _339 = r2;
    _339.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _339;
    float4 _355 = r2;
    _355.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _355;
    float4 _371 = r2;
    _371.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _371;
    float4 _386 = r0;
    _386.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _386;
    float4 _391 = r0;
    _391.w = rsqrt(r0.w);
    r0 = _391;
    float3 _397 = r0.www * r2.xyz;
    r1 = float4(_397.x, _397.y, _397.z, r1.w);
    float3 _404 = r0.zxy * r1.yzx;
    r2 = float4(_404.x, _404.y, _404.z, r2.w);
    float3 _415 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_415.x, _415.y, _415.z, r2.w);
    float3 _425 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _437 = o1;
    _437.z = mad(_425.z, r0.xyz.z, mad(_425.y, r0.xyz.y, _425.x * r0.xyz.x));
    o1 = _437;
    float3 _446 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _458 = o1;
    _458.x = mad(_446.z, r1.xyz.z, mad(_446.y, r1.xyz.y, _446.x * r1.xyz.x));
    o1 = _458;
    float3 _464 = r1.www * r2.xyz;
    r0 = float4(_464.x, _464.y, _464.z, r0.w);
    float3 _474 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _486 = o1;
    _486.y = mad(_474.z, r0.xyz.z, mad(_474.y, r0.xyz.y, _474.x * r0.xyz.x));
    o1 = _486;
    float2 _493 = float2(asint(shader_in[2].xy));
    r0 = float4(_493.x, _493.y, r0.z, r0.w);
    float2 _504 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_504.x, _504.y, r0.z, r0.w);
    float2 _513 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _513.x, _513.y);
    float2 _520 = float2(asint(shader_in[1].xy));
    r0 = float4(_520.x, _520.y, r0.z, r0.w);
    float2 _526 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_526.x, _526.y, o2.z, o2.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _535 = asfloat(v1);
    shader_in[1] = float4(_535.x, _535.y, shader_in[1].z, shader_in[1].w);
    float2 _540 = asfloat(v2);
    shader_in[2] = float4(_540.x, _540.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
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
    v3 = stage_input.v3;
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
