cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
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
static float2 o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _52 = r0;
    _52.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _52;
    float3 _65 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_65.x, _65.y, _65.z, r0.w);
    float4 _70 = r0;
    _70.w = asfloat(1065353216u);
    r0 = _70;
    float4 _86 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _101 = r1;
    _101.x = mad(_86.w, r0.w, mad(_86.z, r0.z, mad(_86.y, r0.y, _86.x * r0.x)));
    r1 = _101;
    float4 _113 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _127 = r1;
    _127.y = mad(_113.w, r0.w, mad(_113.z, r0.z, mad(_113.y, r0.y, _113.x * r0.x)));
    r1 = _127;
    float4 _139 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _153 = r1;
    _153.z = mad(_139.w, r0.w, mad(_139.z, r0.z, mad(_139.y, r0.y, _139.x * r0.x)));
    r1 = _153;
    float4 _156 = r1;
    _156.w = asfloat(1065353216u);
    r1 = _156;
    float4 _167 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _181 = o0;
    _181.x = mad(_167.w, r1.w, mad(_167.z, r1.z, mad(_167.y, r1.y, _167.x * r1.x)));
    o0 = _181;
    float4 _192 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _206 = o0;
    _206.y = mad(_192.w, r1.w, mad(_192.z, r1.z, mad(_192.y, r1.y, _192.x * r1.x)));
    o0 = _206;
    float4 _217 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _231 = o0;
    _231.z = mad(_217.w, r1.w, mad(_217.z, r1.z, mad(_217.y, r1.y, _217.x * r1.x)));
    o0 = _231;
    float4 _242 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _256 = o0;
    _256.w = mad(_242.w, r1.w, mad(_242.z, r1.z, mad(_242.y, r1.y, _242.x * r1.x)));
    o0 = _256;
    float4 _265 = r0;
    _265.x = cb6_m[3].x * cb2_m[1].x;
    r0 = _265;
    float4 _272 = r0;
    _272.x = r0.x * asfloat(1092616192u);
    r0 = _272;
    float2 _278 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, r0.y, _278.x, _278.y);
    float4 _282 = r0;
    _282.y = asfloat(0u);
    r0 = _282;
    o1 = (r0.zw * asfloat(uint2(981467136u, 981467136u))) + r0.xy;
    o2 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _310 = asfloat(v1);
    shader_in[1] = float4(_310.x, _310.y, shader_in[1].z, shader_in[1].w);
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
