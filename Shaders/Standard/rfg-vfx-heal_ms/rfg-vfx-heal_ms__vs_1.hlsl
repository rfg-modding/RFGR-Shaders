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
static float3 v3;
static float3 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _49 = r0;
    _49.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _49;
    float3 _62 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_62.x, _62.y, _62.z, r0.w);
    float4 _67 = r0;
    _67.w = asfloat(1065353216u);
    r0 = _67;
    float4 _83 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _98 = r1;
    _98.x = mad(_83.w, r0.w, mad(_83.z, r0.z, mad(_83.y, r0.y, _83.x * r0.x)));
    r1 = _98;
    float4 _110 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _124 = r1;
    _124.y = mad(_110.w, r0.w, mad(_110.z, r0.z, mad(_110.y, r0.y, _110.x * r0.x)));
    r1 = _124;
    float4 _136 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _150 = r1;
    _150.z = mad(_136.w, r0.w, mad(_136.z, r0.z, mad(_136.y, r0.y, _136.x * r0.x)));
    r1 = _150;
    float4 _153 = r1;
    _153.w = asfloat(1065353216u);
    r1 = _153;
    float4 _164 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _178 = o0;
    _178.x = mad(_164.w, r1.w, mad(_164.z, r1.z, mad(_164.y, r1.y, _164.x * r1.x)));
    o0 = _178;
    float4 _189 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _203 = o0;
    _203.y = mad(_189.w, r1.w, mad(_189.z, r1.z, mad(_189.y, r1.y, _189.x * r1.x)));
    o0 = _203;
    float4 _214 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _228 = o0;
    _228.z = mad(_214.w, r1.w, mad(_214.z, r1.z, mad(_214.y, r1.y, _214.x * r1.x)));
    o0 = _228;
    float4 _239 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _253 = o0;
    _253.w = mad(_239.w, r1.w, mad(_239.z, r1.z, mad(_239.y, r1.y, _239.x * r1.x)));
    o0 = _253;
    float3 _267 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_267.x, _267.y, _267.z, r0.w);
    r1 = float4(asint(shader_in[1].xyxx));
    float2 _283 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r2 = float4(_283.x, _283.y, r2.z, r2.w);
    o1 = float4(r2.xy.x, o1.y, o1.z, r2.xy.y);
    float3 _302 = cb0_m[12].x.xxx * asfloat(uint3(1028443341u, 1036831949u, 3184315597u));
    r2 = float4(_302.x, _302.y, _302.z, r2.w);
    float2 _313 = (r1.yw * asfloat(uint2(981467136u, 985661440u))) + r2.xz;
    o1 = float4(o1.x, _313.x, _313.y, o1.w);
    float2 _324 = (r1.zy * asfloat(uint2(989855744u, 981467136u))) + r2.yy;
    o2 = float3(_324.x, _324.y, o2.z);
    float4 _340 = r0;
    _340.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _340;
    float4 _345 = r0;
    _345.w = rsqrt(r0.w);
    r0 = _345;
    float3 _351 = r0.www * r0.xyz;
    r0 = float4(_351.x, _351.y, _351.z, r0.w);
    float3 _364 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_364.x, _364.y, _364.z, r1.w);
    float3 _374 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_374.x, _374.y, _374.z, r2.w);
    float3 _385 = (shader_in[4].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_385.x, _385.y, _385.z, r1.w);
    float3 _395 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _407 = r2;
    _407.x = mad(_395.z, r1.xyz.z, mad(_395.y, r1.xyz.y, _395.x * r1.xyz.x));
    r2 = _407;
    float3 _416 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _428 = r2;
    _428.y = mad(_416.z, r1.xyz.z, mad(_416.y, r1.xyz.y, _416.x * r1.xyz.x));
    r2 = _428;
    float3 _437 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _449 = r2;
    _449.z = mad(_437.z, r1.xyz.z, mad(_437.y, r1.xyz.y, _437.x * r1.xyz.x));
    r2 = _449;
    float4 _464 = r0;
    _464.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _464;
    float4 _469 = r0;
    _469.w = rsqrt(r0.w);
    r0 = _469;
    float3 _475 = r0.www * r2.xyz;
    r1 = float4(_475.x, _475.y, _475.z, r1.w);
    float3 _494 = o2;
    _494.z = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    o2 = _494;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _502 = asfloat(v1);
    shader_in[1] = float4(_502.x, _502.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
