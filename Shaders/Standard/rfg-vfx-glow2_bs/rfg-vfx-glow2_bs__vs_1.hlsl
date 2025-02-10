cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
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
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _45 = r0;
    _45.w = asfloat(1065353216u);
    r0 = _45;
    float4 _64 = r1;
    _64.x = mad(shader_in[3].w, r0.w, mad(shader_in[3].z, r0.z, mad(shader_in[3].y, r0.y, shader_in[3].x * r0.x)));
    r1 = _64;
    float4 _82 = r1;
    _82.y = mad(shader_in[4].w, r0.w, mad(shader_in[4].z, r0.z, mad(shader_in[4].y, r0.y, shader_in[4].x * r0.x)));
    r1 = _82;
    float4 _100 = r1;
    _100.z = mad(shader_in[5].w, r0.w, mad(shader_in[5].z, r0.z, mad(shader_in[5].y, r0.y, shader_in[5].x * r0.x)));
    r1 = _100;
    float4 _103 = r1;
    _103.w = asfloat(1065353216u);
    r1 = _103;
    float4 _120 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _134 = o0;
    _134.x = mad(_120.w, r1.w, mad(_120.z, r1.z, mad(_120.y, r1.y, _120.x * r1.x)));
    o0 = _134;
    float4 _146 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _160 = o0;
    _160.y = mad(_146.w, r1.w, mad(_146.z, r1.z, mad(_146.y, r1.y, _146.x * r1.x)));
    o0 = _160;
    float4 _172 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _186 = o0;
    _186.z = mad(_172.w, r1.w, mad(_172.z, r1.z, mad(_172.y, r1.y, _172.x * r1.x)));
    o0 = _186;
    float4 _197 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _211 = o0;
    _211.w = mad(_197.w, r1.w, mad(_197.z, r1.z, mad(_197.y, r1.y, _197.x * r1.x)));
    o0 = _211;
    float2 _217 = float2(asint(shader_in[1].xy));
    r0 = float4(_217.x, _217.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _233 = asfloat(v1);
    shader_in[1] = float4(_233.x, _233.y, shader_in[1].z, shader_in[1].w);
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
