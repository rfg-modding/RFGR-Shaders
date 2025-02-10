cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float3 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _38 = r0;
    _38.w = asfloat(1065353216u);
    r0 = _38;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _48 = r1;
    _48.w = asfloat(1065353216u);
    r1 = _48;
    float4 _66 = r0;
    _66.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _66;
    float4 _84 = r0;
    _84.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _84;
    float4 _102 = r0;
    _102.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _102;
    float4 _119 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _133 = o0;
    _133.x = mad(_119.w, r0.w, mad(_119.z, r0.z, mad(_119.y, r0.y, _119.x * r0.x)));
    o0 = _133;
    float4 _145 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _159 = o0;
    _159.y = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    o0 = _159;
    float4 _171 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _185 = o0;
    _185.z = mad(_171.w, r0.w, mad(_171.z, r0.z, mad(_171.y, r0.y, _171.x * r0.x)));
    o0 = _185;
    float4 _196 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _210 = o0;
    _210.w = mad(_196.w, r0.w, mad(_196.z, r0.z, mad(_196.y, r0.y, _196.x * r0.x)));
    o0 = _210;
    float3 _224 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_224.x, _224.y, _224.z, r0.w);
    float4 _234 = r0;
    _234.w = r0.y * cb0_m[13].x;
    r0 = _234;
    float4 _241 = r1;
    _241.x = r0.w * asfloat(3216550459u);
    r1 = _241;
    float4 _246 = r1;
    _246.x = exp2(r1.x);
    r1 = _246;
    float4 _253 = r1;
    _253.x = (-r1.x) + asfloat(1065353216u);
    r1 = _253;
    float4 _260 = r0;
    _260.w = r1.x / r0.w;
    r0 = _260;
    float4 _272 = r1;
    _272.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _272;
    float4 _287 = r0;
    _287.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _287;
    float4 _292 = r0;
    _292.x = sqrt(r0.x);
    r0 = _292;
    float4 _300 = r0;
    _300.x = r0.x * cb0_m[13].y;
    r0 = _300;
    float4 _310 = r0;
    _310.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _310;
    float4 _322 = r0;
    _322.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _322;
    float4 _328 = r0;
    _328.x = exp2(-r0.x);
    r0 = _328;
    float4 _334 = r0;
    _334.x = min(r0.x, asfloat(1065353216u));
    r0 = _334;
    float3 _341 = o1;
    _341.z = (-r0.x) + asfloat(1065353216u);
    o1 = _341;
    float2 _348 = float2(asint(shader_in[1].xy));
    r0 = float4(_348.x, _348.y, r0.z, r0.w);
    float2 _357 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float3(_357.x, _357.y, o1.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _366 = asfloat(v1);
    shader_in[1] = float4(_366.x, _366.y, shader_in[1].z, shader_in[1].w);
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
