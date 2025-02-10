cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float2 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float2 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    float4 _69 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _83 = o0;
    _83.x = mad(_69.w, r0.w, mad(_69.z, r0.z, mad(_69.y, r0.y, _69.x * r0.x)));
    o0 = _83;
    float4 _95 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _109 = o0;
    _109.y = mad(_95.w, r0.w, mad(_95.z, r0.z, mad(_95.y, r0.y, _95.x * r0.x)));
    o0 = _109;
    float4 _121 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _135 = o0;
    _135.z = mad(_121.w, r0.w, mad(_121.z, r0.z, mad(_121.y, r0.y, _121.x * r0.x)));
    o0 = _135;
    float4 _147 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _161 = o0;
    _161.w = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    o0 = _161;
    float3 _176 = (-shader_in[0].xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_176.x, _176.y, _176.z, r0.w);
    float4 _192 = r0;
    _192.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _192;
    float4 _197 = r0;
    _197.w = rsqrt(r0.w);
    r0 = _197;
    float3 _203 = r0.www * r0.xyz;
    r0 = float4(_203.x, _203.y, _203.z, r0.w);
    float3 _221 = o1;
    _221.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    o1 = _221;
    float3 _237 = o1;
    _237.y = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    o1 = _237;
    float4 _253 = r0;
    _253.w = mad(r0.xyz.z, shader_in[2].xyz.z, mad(r0.xyz.y, shader_in[2].xyz.y, r0.xyz.x * shader_in[2].xyz.x));
    r0 = _253;
    float3 _257 = o1;
    _257.z = r0.w;
    o1 = _257;
    float4 _264 = r0;
    _264.w = r0.w + r0.w;
    r0 = _264;
    float3 _275 = (shader_in[2].xyz * (-r0.www)) + r0.xyz;
    r0 = float4(_275.x, _275.y, _275.z, r0.w);
    o3 = r0.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u));
    float3 _292 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _305 = o2;
    _305.x = mad(_292.z, shader_in[4].xyz.z, mad(_292.y, shader_in[4].xyz.y, _292.x * shader_in[4].xyz.x));
    o2 = _305;
    float3 _314 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _327 = o2;
    _327.y = mad(_314.z, shader_in[3].xyz.z, mad(_314.y, shader_in[3].xyz.y, _314.x * shader_in[3].xyz.x));
    o2 = _327;
    float3 _336 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _349 = o2;
    _349.z = mad(_336.z, shader_in[2].xyz.z, mad(_336.y, shader_in[2].xyz.y, _336.x * shader_in[2].xyz.x));
    o2 = _349;
    o4 = float4(shader_in[1].xy.x, shader_in[1].xy.y, o4.z, o4.w);
    o4 = float4(o4.x, o4.y, shader_in[5].xy.x, shader_in[5].xy.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, shader_in[5].z, shader_in[5].w);
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
