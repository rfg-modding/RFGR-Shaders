cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
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

static float4 shader_in[2];
static float4 o0;
static float4 r0;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _35 = r0;
    _35.w = asfloat(1065353216u);
    r0 = _35;
    float4 _52 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _66 = o0;
    _66.x = mad(_52.w, r0.w, mad(_52.z, r0.z, mad(_52.y, r0.y, _52.x * r0.x)));
    o0 = _66;
    float4 _78 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _92 = o0;
    _92.y = mad(_78.w, r0.w, mad(_78.z, r0.z, mad(_78.y, r0.y, _78.x * r0.x)));
    o0 = _92;
    float4 _104 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _118 = o0;
    _118.z = mad(_104.w, r0.w, mad(_104.z, r0.z, mad(_104.y, r0.y, _104.x * r0.x)));
    o0 = _118;
    float4 _130 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _144 = o0;
    _144.w = mad(_130.w, r0.w, mad(_130.z, r0.z, mad(_130.y, r0.y, _130.x * r0.x)));
    o0 = _144;
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
