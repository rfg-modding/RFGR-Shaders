cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    o0 = asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 1065353216u));
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _46 = r0;
    _46.w = asfloat(1065353216u);
    r0 = _46;
    float4 _62 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _77 = r1;
    _77.x = mad(_62.w, r0.w, mad(_62.z, r0.z, mad(_62.y, r0.y, _62.x * r0.x)));
    r1 = _77;
    float4 _89 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _103 = r1;
    _103.y = mad(_89.w, r0.w, mad(_89.z, r0.z, mad(_89.y, r0.y, _89.x * r0.x)));
    r1 = _103;
    float4 _115 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _129 = r1;
    _129.z = mad(_115.w, r0.w, mad(_115.z, r0.z, mad(_115.y, r0.y, _115.x * r0.x)));
    r1 = _129;
    float3 _143 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_143.x, _143.y, _143.z, r0.w);
    float4 _153 = r0;
    _153.w = r0.y * cb0_m[13].x;
    r0 = _153;
    float4 _160 = r1;
    _160.x = r0.w * asfloat(3216550459u);
    r1 = _160;
    float4 _165 = r1;
    _165.x = exp2(r1.x);
    r1 = _165;
    float4 _172 = r1;
    _172.x = (-r1.x) + asfloat(1065353216u);
    r1 = _172;
    float4 _179 = r0;
    _179.w = r1.x / r0.w;
    r0 = _179;
    float4 _191 = r1;
    _191.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _191;
    float4 _206 = r0;
    _206.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _206;
    float4 _211 = r0;
    _211.x = sqrt(r0.x);
    r0 = _211;
    float4 _219 = r0;
    _219.x = r0.x * cb0_m[13].y;
    r0 = _219;
    float4 _229 = r0;
    _229.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _229;
    float4 _241 = r0;
    _241.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _241;
    float4 _247 = r0;
    _247.x = exp2(-r0.x);
    r0 = _247;
    float4 _253 = r0;
    _253.x = min(r0.x, asfloat(1065353216u));
    r0 = _253;
    o1 = (-r0.x) + asfloat(1065353216u);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
