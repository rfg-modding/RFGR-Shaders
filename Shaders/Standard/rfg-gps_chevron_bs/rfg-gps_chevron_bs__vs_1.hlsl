cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
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
    float4 _70 = r0;
    _70.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _70;
    float4 _88 = r0;
    _88.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _88;
    float4 _106 = r0;
    _106.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _106;
    float4 _123 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _137 = o0;
    _137.x = mad(_123.w, r0.w, mad(_123.z, r0.z, mad(_123.y, r0.y, _123.x * r0.x)));
    o0 = _137;
    float4 _149 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _163 = o0;
    _163.y = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    o0 = _163;
    float4 _175 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _189 = o0;
    _189.z = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    o0 = _189;
    float4 _201 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _215 = o0;
    _215.w = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    o0 = _215;
    float3 _229 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_229.x, _229.y, _229.z, r0.w);
    float4 _245 = r0;
    _245.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _245;
    float4 _250 = r0;
    _250.x = sqrt(r0.x);
    r0 = _250;
    float2 _267 = clamp((r0.xx * shader_in[7].zx) + shader_in[7].yw, 0.0f.xx, 1.0f.xx);
    o2 = float3(_267.x, _267.y, o2.z);
    float2 _274 = float2(asint(shader_in[1].xy));
    r0 = float4(_274.x, _274.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _285 = o2;
    _285.z = asfloat(0u);
    o2 = _285;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _293 = asfloat(v1);
    shader_in[1] = float4(_293.x, _293.y, shader_in[1].z, shader_in[1].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
