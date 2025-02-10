cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _42 = r0;
    _42.w = asfloat(1065353216u);
    r0 = _42;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _52 = r1;
    _52.w = asfloat(1065353216u);
    r1 = _52;
    float4 _69 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _83 = r0;
    _83.x = mad(_69.w, r1.w, mad(_69.z, r1.z, mad(_69.y, r1.y, _69.x * r1.x)));
    r0 = _83;
    float4 _95 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _109 = r0;
    _109.y = mad(_95.w, r1.w, mad(_95.z, r1.z, mad(_95.y, r1.y, _95.x * r1.x)));
    r0 = _109;
    float4 _121 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _135 = r0;
    _135.z = mad(_121.w, r1.w, mad(_121.z, r1.z, mad(_121.y, r1.y, _121.x * r1.x)));
    r0 = _135;
    float4 _146 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _160 = o0;
    _160.x = mad(_146.w, r0.w, mad(_146.z, r0.z, mad(_146.y, r0.y, _146.x * r0.x)));
    o0 = _160;
    float4 _171 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _185 = o0;
    _185.y = mad(_171.w, r0.w, mad(_171.z, r0.z, mad(_171.y, r0.y, _171.x * r0.x)));
    o0 = _185;
    float4 _196 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _210 = o0;
    _210.z = mad(_196.w, r0.w, mad(_196.z, r0.z, mad(_196.y, r0.y, _196.x * r0.x)));
    o0 = _210;
    float4 _222 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _236 = o0;
    _236.w = mad(_222.w, r0.w, mad(_222.z, r0.z, mad(_222.y, r0.y, _222.x * r0.x)));
    o0 = _236;
    float3 _250 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_250.x, _250.y, _250.z, r0.w);
    float4 _266 = r0;
    _266.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _266;
    float4 _271 = r0;
    _271.x = sqrt(r0.x);
    r0 = _271;
    float2 _293 = clamp((r0.xx * float2(cb6_m[3].x, cb6_m[3].z)) + float2(cb6_m[3].y, cb6_m[3].w), 0.0f.xx, 1.0f.xx);
    o2 = float3(_293.x, _293.y, o2.z);
    float2 _300 = float2(asint(shader_in[1].xy));
    r0 = float4(_300.x, _300.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _311 = o2;
    _311.z = asfloat(0u);
    o2 = _311;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _319 = asfloat(v1);
    shader_in[1] = float4(_319.x, _319.y, shader_in[1].z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
