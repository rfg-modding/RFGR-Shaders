cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _41 = r0;
    _41.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _41;
    float3 _54 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_54.x, _54.y, _54.z, r0.w);
    float4 _59 = r0;
    _59.w = asfloat(1065353216u);
    r0 = _59;
    float4 _75 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _90 = r1;
    _90.x = mad(_75.w, r0.w, mad(_75.z, r0.z, mad(_75.y, r0.y, _75.x * r0.x)));
    r1 = _90;
    float4 _102 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _116 = r1;
    _116.y = mad(_102.w, r0.w, mad(_102.z, r0.z, mad(_102.y, r0.y, _102.x * r0.x)));
    r1 = _116;
    float4 _127 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _141 = r1;
    _141.z = mad(_127.w, r0.w, mad(_127.z, r0.z, mad(_127.y, r0.y, _127.x * r0.x)));
    r1 = _141;
    float4 _144 = r1;
    _144.w = asfloat(1065353216u);
    r1 = _144;
    float4 _155 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _169 = o0;
    _169.x = mad(_155.w, r1.w, mad(_155.z, r1.z, mad(_155.y, r1.y, _155.x * r1.x)));
    o0 = _169;
    float4 _180 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _194 = o0;
    _194.y = mad(_180.w, r1.w, mad(_180.z, r1.z, mad(_180.y, r1.y, _180.x * r1.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _219 = o0;
    _219.z = mad(_205.w, r1.w, mad(_205.z, r1.z, mad(_205.y, r1.y, _205.x * r1.x)));
    o0 = _219;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r1.w, mad(_230.z, r1.z, mad(_230.y, r1.y, _230.x * r1.x)));
    o0 = _244;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
