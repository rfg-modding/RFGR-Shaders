cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _40 = r0;
    _40.w = asfloat(1065353216u);
    r0 = _40;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _50 = r1;
    _50.w = asfloat(1065353216u);
    r1 = _50;
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
    float4 _237 = r0;
    _237.w = asfloat(0u);
    r0 = _237;
    r0 = (-r0) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _267 = r0;
    _267.w = mad(r0.w, r0.w, mad(r0.z, r0.z, mad(r0.y, r0.y, r0.x * r0.x)));
    r0 = _267;
    float4 _272 = r0;
    _272.w = rsqrt(r0.w);
    r0 = _272;
    float3 _278 = r0.www * r0.xyz;
    r0 = float4(_278.x, _278.y, _278.z, r0.w);
    float3 _292 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_292.x, _292.y, _292.z, r1.w);
    float3 _302 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _315 = r2;
    _315.x = mad(_302.z, r1.xyz.z, mad(_302.y, r1.xyz.y, _302.x * r1.xyz.x));
    r2 = _315;
    float3 _324 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _336 = r2;
    _336.y = mad(_324.z, r1.xyz.z, mad(_324.y, r1.xyz.y, _324.x * r1.xyz.x));
    r2 = _336;
    float3 _345 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _357 = r2;
    _357.z = mad(_345.z, r1.xyz.z, mad(_345.y, r1.xyz.y, _345.x * r1.xyz.x));
    r2 = _357;
    float4 _372 = r0;
    _372.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _372;
    float4 _377 = r0;
    _377.w = rsqrt(r0.w);
    r0 = _377;
    float3 _383 = r0.www * r2.xyz;
    r1 = float4(_383.x, _383.y, _383.z, r1.w);
    float4 _399 = r0;
    _399.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _399;
    float2 _406 = float2(asint(shader_in[1].xy));
    r1 = float4(_406.x, _406.y, r1.z, r1.w);
    float2 _415 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(r0.x, _415.x, _415.y, r0.w);
    float4 _427 = r0;
    _427.x = (cb6_m[3].w * asfloat(1056964608u)) + r0.y;
    r0 = _427;
    o1 = r0.xzw;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _437 = asfloat(v1);
    shader_in[1] = float4(_437.x, _437.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
