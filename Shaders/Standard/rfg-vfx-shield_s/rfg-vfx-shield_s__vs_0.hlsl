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
static int2 v1;
static int2 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _41 = r0;
    _41.w = asfloat(1065353216u);
    r0 = _41;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _51 = r1;
    _51.w = asfloat(1065353216u);
    r1 = _51;
    float4 _67 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _81 = r0;
    _81.x = mad(_67.w, r1.w, mad(_67.z, r1.z, mad(_67.y, r1.y, _67.x * r1.x)));
    r0 = _81;
    float4 _93 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _107 = r0;
    _107.y = mad(_93.w, r1.w, mad(_93.z, r1.z, mad(_93.y, r1.y, _93.x * r1.x)));
    r0 = _107;
    float4 _119 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _133 = r0;
    _133.z = mad(_119.w, r1.w, mad(_119.z, r1.z, mad(_119.y, r1.y, _119.x * r1.x)));
    r0 = _133;
    float4 _144 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _158 = o0;
    _158.x = mad(_144.w, r0.w, mad(_144.z, r0.z, mad(_144.y, r0.y, _144.x * r0.x)));
    o0 = _158;
    float4 _169 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _183 = o0;
    _183.y = mad(_169.w, r0.w, mad(_169.z, r0.z, mad(_169.y, r0.y, _169.x * r0.x)));
    o0 = _183;
    float4 _194 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _208 = o0;
    _208.z = mad(_194.w, r0.w, mad(_194.z, r0.z, mad(_194.y, r0.y, _194.x * r0.x)));
    o0 = _208;
    float4 _220 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _234 = o0;
    _234.w = mad(_220.w, r0.w, mad(_220.z, r0.z, mad(_220.y, r0.y, _220.x * r0.x)));
    o0 = _234;
    float3 _248 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_248.x, _248.y, _248.z, r0.w);
    float4 _258 = r0;
    _258.w = r0.y * cb0_m[13].x;
    r0 = _258;
    float4 _265 = r1;
    _265.x = r0.w * asfloat(3216550459u);
    r1 = _265;
    float4 _270 = r1;
    _270.x = exp2(r1.x);
    r1 = _270;
    float4 _277 = r1;
    _277.x = (-r1.x) + asfloat(1065353216u);
    r1 = _277;
    float4 _284 = r0;
    _284.w = r1.x / r0.w;
    r0 = _284;
    float4 _296 = r1;
    _296.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _296;
    float4 _311 = r0;
    _311.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _311;
    float4 _316 = r0;
    _316.x = sqrt(r0.x);
    r0 = _316;
    float4 _324 = r0;
    _324.x = r0.x * cb0_m[13].y;
    r0 = _324;
    float4 _334 = r0;
    _334.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _334;
    float4 _346 = r0;
    _346.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _346;
    float4 _352 = r0;
    _352.x = exp2(-r0.x);
    r0 = _352;
    float4 _358 = r0;
    _358.x = min(r0.x, asfloat(1065353216u));
    r0 = _358;
    o1 = (-r0.x) + asfloat(1065353216u);
    float2 _370 = float2(asint(shader_in[1].xy));
    r0 = float4(_370.x, _370.y, r0.z, r0.w);
    float2 _379 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_379.x, _379.y, o2.z, o2.w);
    float2 _386 = float2(asint(shader_in[2].xy));
    r0 = float4(_386.x, _386.y, r0.z, r0.w);
    float2 _392 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _392.x, _392.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _401 = asfloat(v1);
    shader_in[1] = float4(_401.x, _401.y, shader_in[1].z, shader_in[1].w);
    float2 _406 = asfloat(v2);
    shader_in[2] = float4(_406.x, _406.y, shader_in[2].z, shader_in[2].w);
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
    v2 = stage_input.v2;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
