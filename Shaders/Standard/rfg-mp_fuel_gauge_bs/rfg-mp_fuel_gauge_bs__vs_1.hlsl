cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
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
static float2 o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    float4 _71 = r1;
    _71.x = mad(shader_in[3].w, r0.w, mad(shader_in[3].z, r0.z, mad(shader_in[3].y, r0.y, shader_in[3].x * r0.x)));
    r1 = _71;
    float4 _89 = r1;
    _89.y = mad(shader_in[4].w, r0.w, mad(shader_in[4].z, r0.z, mad(shader_in[4].y, r0.y, shader_in[4].x * r0.x)));
    r1 = _89;
    float4 _107 = r1;
    _107.z = mad(shader_in[5].w, r0.w, mad(shader_in[5].z, r0.z, mad(shader_in[5].y, r0.y, shader_in[5].x * r0.x)));
    r1 = _107;
    float4 _110 = r1;
    _110.w = asfloat(1065353216u);
    r1 = _110;
    float4 _126 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _140 = o0;
    _140.x = mad(_126.w, r1.w, mad(_126.z, r1.z, mad(_126.y, r1.y, _126.x * r1.x)));
    o0 = _140;
    float4 _152 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _166 = o0;
    _166.y = mad(_152.w, r1.w, mad(_152.z, r1.z, mad(_152.y, r1.y, _152.x * r1.x)));
    o0 = _166;
    float4 _178 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _192 = o0;
    _192.z = mad(_178.w, r1.w, mad(_178.z, r1.z, mad(_178.y, r1.y, _178.x * r1.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _217 = o0;
    _217.w = mad(_203.w, r1.w, mad(_203.z, r1.z, mad(_203.y, r1.y, _203.x * r1.x)));
    o0 = _217;
    float4 _227 = r0;
    _227.x = shader_in[6].z * cb2_m[1].x;
    r0 = _227;
    float4 _234 = r0;
    _234.x = r0.x * asfloat(1092616192u);
    r0 = _234;
    float2 _240 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, r0.y, _240.x, _240.y);
    float4 _244 = r0;
    _244.y = asfloat(0u);
    r0 = _244;
    o1 = (r0.zw * asfloat(uint2(981467136u, 981467136u))) + r0.xy;
    o2 = shader_in[6].zyxw;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _265 = asfloat(v1);
    shader_in[1] = float4(_265.x, _265.y, shader_in[1].z, shader_in[1].w);
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
