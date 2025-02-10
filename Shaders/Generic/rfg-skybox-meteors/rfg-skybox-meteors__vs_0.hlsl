cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float4 v0;
static float4 v1;
static float v2;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _53 = r0;
    _53.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _53;
    float4 _58 = r0;
    _58.x = rsqrt(r0.x);
    r0 = _58;
    float3 _65 = r0.xxx * shader_in[1].xyz;
    r0 = float4(_65.x, _65.y, _65.z, r0.w);
    float3 _74 = r0.xyz * shader_in[0].www;
    r0 = float4(_74.x, _74.y, _74.z, r0.w);
    float4 _89 = r0;
    _89.w = (-shader_in[1].w) + cb0_m[12].x;
    r0 = _89;
    float3 _100 = (shader_in[1].xyz * r0.www) + shader_in[0].xyz;
    r1 = float4(_100.x, _100.y, _100.z, r1.w);
    float3 _113 = (r0.xyz * asfloat(uint3(1101004800u, 1101004800u, 1101004800u))) + r1.xyz;
    r1 = float4(_113.x, _113.y, _113.z, r1.w);
    float4 _118 = r1;
    _118.w = asfloat(1065353216u);
    r1 = _118;
    float4 _131 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _146 = r2;
    _146.x = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r2 = _146;
    float4 _157 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _171 = r2;
    _171.y = mad(_157.w, r1.w, mad(_157.z, r1.z, mad(_157.y, r1.y, _157.x * r1.x)));
    r2 = _171;
    float4 _183 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _197 = r2;
    _197.z = mad(_183.w, r1.w, mad(_183.z, r1.z, mad(_183.y, r1.y, _183.x * r1.x)));
    r2 = _197;
    float4 _200 = r2;
    _200.w = asfloat(1065353216u);
    r2 = _200;
    float4 _211 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _225 = r0;
    _225.x = mad(_211.w, r2.w, mad(_211.z, r2.z, mad(_211.y, r2.y, _211.x * r2.x)));
    r0 = _225;
    float4 _236 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _250 = r0;
    _250.y = mad(_236.w, r2.w, mad(_236.z, r2.z, mad(_236.y, r2.y, _236.x * r2.x)));
    r0 = _250;
    float4 _262 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _276 = r0;
    _276.z = mad(_262.w, r2.w, mad(_262.z, r2.z, mad(_262.y, r2.y, _262.x * r2.x)));
    r0 = _276;
    o0 = r0.xyzz;
    float2 _288 = r0.ww * asfloat(uint2(1116767069u, 1109613785u));
    r0 = float4(_288.x, _288.y, r0.z, r0.w);
    float3 _300 = o1;
    _300.y = clamp(r0.w / shader_in[2].x, 0.0f, 1.0f);
    o1 = _300;
    float2 _305 = sin(r0.xyxx.xy);
    r0 = float4(_305.x, _305.y, r0.z, r0.w);
    float4 _313 = r0;
    _313.x = r0.y + r0.x;
    r0 = _313;
    float4 _320 = r0;
    _320.x = r0.x * asfloat(1056964608u);
    r0 = _320;
    float3 _326 = o1;
    _326.z = max(r0.x, asfloat(0u));
    o1 = _326;
    float3 _331 = o1;
    _331.x = shader_in[0].w;
    o1 = _331;
}

void vert_main()
{
    shader_in[0] = v0;
    shader_in[1] = v1;
    float4 _340 = shader_in[2];
    _340.x = v2;
    shader_in[2] = _340;
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
