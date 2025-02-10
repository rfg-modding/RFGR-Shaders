cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _46 = r0;
    _46.w = asfloat(1065353216u);
    r0 = _46;
    float4 _63 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _78 = r1;
    _78.x = mad(_63.w, r0.w, mad(_63.z, r0.z, mad(_63.y, r0.y, _63.x * r0.x)));
    r1 = _78;
    float4 _90 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _104 = r1;
    _104.y = mad(_90.w, r0.w, mad(_90.z, r0.z, mad(_90.y, r0.y, _90.x * r0.x)));
    r1 = _104;
    float4 _116 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _130 = r1;
    _130.z = mad(_116.w, r0.w, mad(_116.z, r0.z, mad(_116.y, r0.y, _116.x * r0.x)));
    r1 = _130;
    float4 _133 = r1;
    _133.w = asfloat(1065353216u);
    r1 = _133;
    float4 _144 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _158 = o0;
    _158.x = mad(_144.w, r1.w, mad(_144.z, r1.z, mad(_144.y, r1.y, _144.x * r1.x)));
    o0 = _158;
    float4 _169 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _183 = o0;
    _183.y = mad(_169.w, r1.w, mad(_169.z, r1.z, mad(_169.y, r1.y, _169.x * r1.x)));
    o0 = _183;
    float4 _194 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _208 = o0;
    _208.z = mad(_194.w, r1.w, mad(_194.z, r1.z, mad(_194.y, r1.y, _194.x * r1.x)));
    o0 = _208;
    float4 _220 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _234 = o0;
    _234.w = mad(_220.w, r1.w, mad(_220.z, r1.z, mad(_220.y, r1.y, _220.x * r1.x)));
    o0 = _234;
    float2 _240 = float2(asint(shader_in[1].xy));
    r0 = float4(_240.x, _240.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _266 = asfloat(v1);
    shader_in[1] = float4(_266.x, _266.y, shader_in[1].z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
