cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _48 = r0;
    _48.w = asfloat(1065353216u);
    r0 = _48;
    float4 _67 = r1;
    _67.x = mad(shader_in[6].w, r0.w, mad(shader_in[6].z, r0.z, mad(shader_in[6].y, r0.y, shader_in[6].x * r0.x)));
    r1 = _67;
    float4 _85 = r1;
    _85.y = mad(shader_in[7].w, r0.w, mad(shader_in[7].z, r0.z, mad(shader_in[7].y, r0.y, shader_in[7].x * r0.x)));
    r1 = _85;
    float4 _103 = r1;
    _103.z = mad(shader_in[8].w, r0.w, mad(shader_in[8].z, r0.z, mad(shader_in[8].y, r0.y, shader_in[8].x * r0.x)));
    r1 = _103;
    float4 _106 = r1;
    _106.w = asfloat(1065353216u);
    r1 = _106;
    float4 _122 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _136 = o0;
    _136.x = mad(_122.w, r1.w, mad(_122.z, r1.z, mad(_122.y, r1.y, _122.x * r1.x)));
    o0 = _136;
    float4 _148 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _162 = o0;
    _162.y = mad(_148.w, r1.w, mad(_148.z, r1.z, mad(_148.y, r1.y, _148.x * r1.x)));
    o0 = _162;
    float4 _174 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _188 = o0;
    _188.z = mad(_174.w, r1.w, mad(_174.z, r1.z, mad(_174.y, r1.y, _174.x * r1.x)));
    o0 = _188;
    float4 _200 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _214 = o0;
    _214.w = mad(_200.w, r1.w, mad(_200.z, r1.z, mad(_200.y, r1.y, _200.x * r1.x)));
    o0 = _214;
    float3 _228 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_228.x, _228.y, _228.z, r0.w);
    float4 _245 = r1;
    _245.x = mad(shader_in[6].xyz.z, r0.xyz.z, mad(shader_in[6].xyz.y, r0.xyz.y, shader_in[6].xyz.x * r0.xyz.x));
    r1 = _245;
    float4 _261 = r1;
    _261.y = mad(shader_in[7].xyz.z, r0.xyz.z, mad(shader_in[7].xyz.y, r0.xyz.y, shader_in[7].xyz.x * r0.xyz.x));
    r1 = _261;
    float4 _277 = r1;
    _277.z = mad(shader_in[8].xyz.z, r0.xyz.z, mad(shader_in[8].xyz.y, r0.xyz.y, shader_in[8].xyz.x * r0.xyz.x));
    r1 = _277;
    float4 _292 = r0;
    _292.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _292;
    float4 _297 = r0;
    _297.x = rsqrt(r0.x);
    r0 = _297;
    float3 _303 = r0.xxx * r1.xyz;
    r0 = float4(_303.x, _303.y, _303.z, r0.w);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _331 = r2;
    _331.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _331;
    float4 _347 = r2;
    _347.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _347;
    float4 _363 = r2;
    _363.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _363;
    float4 _378 = r0;
    _378.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _378;
    float4 _383 = r0;
    _383.w = rsqrt(r0.w);
    r0 = _383;
    float3 _389 = r0.www * r2.xyz;
    r1 = float4(_389.x, _389.y, _389.z, r1.w);
    float3 _396 = r0.zxy * r1.yzx;
    r2 = float4(_396.x, _396.y, _396.z, r2.w);
    float3 _407 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_407.x, _407.y, _407.z, r2.w);
    float3 _417 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _429 = o1;
    _429.z = mad(_417.z, r0.xyz.z, mad(_417.y, r0.xyz.y, _417.x * r0.xyz.x));
    o1 = _429;
    float3 _438 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _450 = o1;
    _450.x = mad(_438.z, r1.xyz.z, mad(_438.y, r1.xyz.y, _438.x * r1.xyz.x));
    o1 = _450;
    float3 _456 = r1.www * r2.xyz;
    r0 = float4(_456.x, _456.y, _456.z, r0.w);
    float3 _466 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _478 = o1;
    _478.y = mad(_466.z, r0.xyz.z, mad(_466.y, r0.xyz.y, _466.x * r0.xyz.x));
    o1 = _478;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
