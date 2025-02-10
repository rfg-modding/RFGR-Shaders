cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
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
static float4 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _43 = r0;
    _43.w = asfloat(1065353216u);
    r0 = _43;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _53 = r1;
    _53.w = asfloat(1065353216u);
    r1 = _53;
    float4 _71 = r0;
    _71.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _71;
    float4 _89 = r0;
    _89.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _89;
    float4 _107 = r0;
    _107.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _107;
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
    float4 _200 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _214 = o0;
    _214.w = mad(_200.w, r0.w, mad(_200.z, r0.z, mad(_200.y, r0.y, _200.x * r0.x)));
    o0 = _214;
    float3 _230 = shader_in[6].zyx + (-float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z));
    r1 = float4(_230.x, _230.y, _230.z, r1.w);
    float3 _238 = r0.xyz + (-r1.xyz);
    r0 = float4(_238.x, _238.y, _238.z, r0.w);
    float4 _254 = r0;
    _254.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _254;
    float4 _259 = r0;
    _259.x = sqrt(r0.x);
    r0 = _259;
    float4 _266 = o1;
    _266.w = r0.x * asfloat(1056964608u);
    o1 = _266;
    float2 _273 = float2(asint(shader_in[1].xy));
    r0 = float4(_273.x, _273.y, r0.z, r0.w);
    float2 _284 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_284.x, _284.y, r0.z, r0.w);
    float2 _293 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_293.x, _293.y, o1.z, o1.w);
    float4 _299 = o1;
    _299.z = shader_in[6].w;
    o1 = _299;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _307 = asfloat(v1);
    shader_in[1] = float4(_307.x, _307.y, shader_in[1].z, shader_in[1].w);
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
