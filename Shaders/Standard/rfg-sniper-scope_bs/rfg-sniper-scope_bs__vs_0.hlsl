cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
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
static float o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    o0 = asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 1065353216u));
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _45 = r0;
    _45.w = asfloat(1065353216u);
    r0 = _45;
    float4 _64 = r1;
    _64.x = mad(shader_in[6].w, r0.w, mad(shader_in[6].z, r0.z, mad(shader_in[6].y, r0.y, shader_in[6].x * r0.x)));
    r1 = _64;
    float4 _82 = r1;
    _82.y = mad(shader_in[7].w, r0.w, mad(shader_in[7].z, r0.z, mad(shader_in[7].y, r0.y, shader_in[7].x * r0.x)));
    r1 = _82;
    float4 _100 = r1;
    _100.z = mad(shader_in[8].w, r0.w, mad(shader_in[8].z, r0.z, mad(shader_in[8].y, r0.y, shader_in[8].x * r0.x)));
    r1 = _100;
    float3 _119 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_119.x, _119.y, _119.z, r0.w);
    float4 _129 = r0;
    _129.w = r0.y * cb0_m[13].x;
    r0 = _129;
    float4 _136 = r1;
    _136.x = r0.w * asfloat(3216550459u);
    r1 = _136;
    float4 _141 = r1;
    _141.x = exp2(r1.x);
    r1 = _141;
    float4 _148 = r1;
    _148.x = (-r1.x) + asfloat(1065353216u);
    r1 = _148;
    float4 _155 = r0;
    _155.w = r1.x / r0.w;
    r0 = _155;
    float4 _167 = r1;
    _167.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _167;
    float4 _182 = r0;
    _182.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _182;
    float4 _187 = r0;
    _187.x = sqrt(r0.x);
    r0 = _187;
    float4 _195 = r0;
    _195.x = r0.x * cb0_m[13].y;
    r0 = _195;
    float4 _205 = r0;
    _205.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _205;
    float4 _218 = r0;
    _218.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _218;
    float4 _224 = r0;
    _224.x = exp2(-r0.x);
    r0 = _224;
    float4 _230 = r0;
    _230.x = min(r0.x, asfloat(1065353216u));
    r0 = _230;
    o1 = (-r0.x) + asfloat(1065353216u);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
