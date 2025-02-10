cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _45 = r0;
    _45.w = asfloat(1065353216u);
    r0 = _45;
    float4 _61 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _76 = r1;
    _76.x = mad(_61.w, r0.w, mad(_61.z, r0.z, mad(_61.y, r0.y, _61.x * r0.x)));
    r1 = _76;
    float4 _88 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _102 = r1;
    _102.y = mad(_88.w, r0.w, mad(_88.z, r0.z, mad(_88.y, r0.y, _88.x * r0.x)));
    r1 = _102;
    float4 _114 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _128 = r1;
    _128.z = mad(_114.w, r0.w, mad(_114.z, r0.z, mad(_114.y, r0.y, _114.x * r0.x)));
    r1 = _128;
    float4 _131 = r1;
    _131.w = asfloat(1065353216u);
    r1 = _131;
    float4 _142 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _156 = o0;
    _156.x = mad(_142.w, r1.w, mad(_142.z, r1.z, mad(_142.y, r1.y, _142.x * r1.x)));
    o0 = _156;
    float4 _167 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _181 = o0;
    _181.y = mad(_167.w, r1.w, mad(_167.z, r1.z, mad(_167.y, r1.y, _167.x * r1.x)));
    o0 = _181;
    float4 _192 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _206 = o0;
    _206.z = mad(_192.w, r1.w, mad(_192.z, r1.z, mad(_192.y, r1.y, _192.x * r1.x)));
    o0 = _206;
    float4 _218 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _232 = o0;
    _232.w = mad(_218.w, r1.w, mad(_218.z, r1.z, mad(_218.y, r1.y, _218.x * r1.x)));
    o0 = _232;
    float2 _239 = float2(asint(shader_in[1].xy));
    r0 = float4(_239.x, _239.y, r0.z, r0.w);
    float2 _248 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_248.x, _248.y, o1.z, o1.w);
    float2 _255 = float2(asint(shader_in[2].xy));
    r0 = float4(_255.x, _255.y, r0.z, r0.w);
    float2 _261 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(o1.x, o1.y, _261.x, _261.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _270 = asfloat(v1);
    shader_in[1] = float4(_270.x, _270.y, shader_in[1].z, shader_in[1].w);
    float2 _275 = asfloat(v2);
    shader_in[2] = float4(_275.x, _275.y, shader_in[2].z, shader_in[2].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
