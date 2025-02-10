cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
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
static float4 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;

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
    float3 _248 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_248.x, _248.y, _248.z, r0.w);
    r1 = float4(asint(shader_in[1].xyxx));
    float2 _264 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r2 = float4(_264.x, _264.y, r2.z, r2.w);
    o1 = float4(r2.xy.x, o1.y, o1.z, r2.xy.y);
    float3 _283 = cb0_m[12].x.xxx * asfloat(uint3(1028443341u, 1036831949u, 3184315597u));
    r2 = float4(_283.x, _283.y, _283.z, r2.w);
    float2 _294 = (r1.yw * asfloat(uint2(981467136u, 985661440u))) + r2.xz;
    o1 = float4(o1.x, _294.x, _294.y, o1.w);
    float2 _305 = (r1.zy * asfloat(uint2(989855744u, 981467136u))) + r2.yy;
    o2 = float3(_305.x, _305.y, o2.z);
    float4 _321 = r0;
    _321.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _321;
    float4 _326 = r0;
    _326.w = rsqrt(r0.w);
    r0 = _326;
    float3 _332 = r0.www * r0.xyz;
    r0 = float4(_332.x, _332.y, _332.z, r0.w);
    float3 _345 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_345.x, _345.y, _345.z, r1.w);
    float3 _355 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _367 = r2;
    _367.x = mad(_355.z, r1.xyz.z, mad(_355.y, r1.xyz.y, _355.x * r1.xyz.x));
    r2 = _367;
    float3 _376 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _388 = r2;
    _388.y = mad(_376.z, r1.xyz.z, mad(_376.y, r1.xyz.y, _376.x * r1.xyz.x));
    r2 = _388;
    float3 _397 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _409 = r2;
    _409.z = mad(_397.z, r1.xyz.z, mad(_397.y, r1.xyz.y, _397.x * r1.xyz.x));
    r2 = _409;
    float4 _424 = r0;
    _424.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _424;
    float4 _429 = r0;
    _429.w = rsqrt(r0.w);
    r0 = _429;
    float3 _435 = r0.www * r2.xyz;
    r1 = float4(_435.x, _435.y, _435.z, r1.w);
    float3 _454 = o2;
    _454.z = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    o2 = _454;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _462 = asfloat(v1);
    shader_in[1] = float4(_462.x, _462.y, shader_in[1].z, shader_in[1].w);
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
