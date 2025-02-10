cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[7] : packoffset(c0);
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

static float4 shader_in[1];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _40 = r0;
    _40.x = cb2_m[1].z;
    r0 = _40;
    float4 _47 = r0;
    _47.y = cb2_m[2].y;
    r0 = _47;
    float4 _54 = r0;
    _54.z = cb2_m[3].x;
    r0 = _54;
    float3 _75 = (-float3(cb0_m[14].x, cb0_m[14].z, cb0_m[14].y)) + float3(cb2_m[3].y, cb2_m[3].w, cb2_m[3].z);
    r1 = float4(_75.x, _75.y, r1.z, _75.z);
    float4 _81 = r0;
    _81.w = r1.y;
    r0 = _81;
    float3 _105 = (shader_in[0].xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z)) + float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r2 = float4(_105.x, _105.y, _105.z, r2.w);
    float4 _111 = r2;
    _111.w = asfloat(1065353216u);
    r2 = _111;
    float4 _127 = r0;
    _127.z = mad(r0.w, r2.w, mad(r0.z, r2.z, mad(r0.y, r2.y, r0.x * r2.x)));
    r0 = _127;
    float4 _132 = r3;
    _132.w = r1.x;
    r3 = _132;
    float2 _140 = float2(cb2_m[1].x, cb2_m[1].w);
    r3 = float4(_140.x, _140.y, r3.z, r3.w);
    float4 _146 = r3;
    _146.z = cb2_m[2].z;
    r3 = _146;
    float4 _162 = r0;
    _162.x = mad(r3.w, r2.w, mad(r3.z, r2.z, mad(r3.y, r2.y, r3.x * r2.x)));
    r0 = _162;
    float4 _167 = r1;
    _167.x = cb2_m[1].y;
    r1 = _167;
    float2 _174 = float2(cb2_m[2].x, cb2_m[2].w);
    r1 = float4(r1.x, _174.x, _174.y, r1.w);
    float4 _191 = r0;
    _191.y = mad(r1.w, r2.w, mad(r1.z, r2.z, mad(r1.y, r2.y, r1.x * r2.x)));
    r0 = _191;
    float4 _194 = r0;
    _194.w = asfloat(1065353216u);
    r0 = _194;
    float4 _205 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _219 = o0;
    _219.x = mad(_205.w, r0.w, mad(_205.z, r0.z, mad(_205.y, r0.y, _205.x * r0.x)));
    o0 = _219;
    float4 _230 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _244 = o0;
    _244.y = mad(_230.w, r0.w, mad(_230.z, r0.z, mad(_230.y, r0.y, _230.x * r0.x)));
    o0 = _244;
    float4 _255 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _269 = o0;
    _269.z = mad(_255.w, r0.w, mad(_255.z, r0.z, mad(_255.y, r0.y, _255.x * r0.x)));
    o0 = _269;
    float4 _280 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _294 = o0;
    _294.w = mad(_280.w, r0.w, mad(_280.z, r0.z, mad(_280.y, r0.y, _280.x * r0.x)));
    o0 = _294;
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
