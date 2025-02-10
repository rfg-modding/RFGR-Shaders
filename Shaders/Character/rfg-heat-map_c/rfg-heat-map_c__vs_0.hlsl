cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float4 v2;
static int4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _53 = r0;
    _53.x = shader_in[2].y + shader_in[2].x;
    r0 = _53;
    float4 _61 = r0;
    _61.x = r0.x + shader_in[2].z;
    r0 = _61;
    float4 _69 = r0;
    _69.x = r0.x + shader_in[2].w;
    r0 = _69;
    float4 _76 = r0;
    _76.x = asfloat(1065353216u) / r0.x;
    r0 = _76;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _86 = r1;
    _86.w = asfloat(1065353216u);
    r1 = _86;
    r2 = asfloat(asint(shader_in[3]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _103 = asint(r2.y);
    r3 = shader_in[2].yyyy * float4(cb4_m[_103].x, cb4_m[_103].y, cb4_m[_103].z, cb4_m[_103].w);
    int _126 = asint(r2.x);
    r3 = (shader_in[2].xxxx * float4(cb4_m[_126].x, cb4_m[_126].y, cb4_m[_126].z, cb4_m[_126].w)) + r3;
    int _145 = asint(r2.z);
    r3 = (shader_in[2].zzzz * float4(cb4_m[_145].x, cb4_m[_145].y, cb4_m[_145].z, cb4_m[_145].w)) + r3;
    int _164 = asint(r2.w);
    r3 = (shader_in[2].wwww * float4(cb4_m[_164].x, cb4_m[_164].y, cb4_m[_164].z, cb4_m[_164].w)) + r3;
    float4 _193 = r4;
    _193.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _193;
    int _202 = asint(r2.y) + 1;
    r5 = shader_in[2].yyyy * float4(cb4_m[_202].x, cb4_m[_202].y, cb4_m[_202].z, cb4_m[_202].w);
    int _221 = asint(r2.x) + 1;
    r5 = (shader_in[2].xxxx * float4(cb4_m[_221].x, cb4_m[_221].y, cb4_m[_221].z, cb4_m[_221].w)) + r5;
    int _241 = asint(r2.z) + 1;
    r5 = (shader_in[2].zzzz * float4(cb4_m[_241].x, cb4_m[_241].y, cb4_m[_241].z, cb4_m[_241].w)) + r5;
    int _261 = asint(r2.w) + 1;
    r5 = (shader_in[2].wwww * float4(cb4_m[_261].x, cb4_m[_261].y, cb4_m[_261].z, cb4_m[_261].w)) + r5;
    float4 _289 = r4;
    _289.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _289;
    int _297 = asint(r2.y) + 2;
    r6 = shader_in[2].yyyy * float4(cb4_m[_297].x, cb4_m[_297].y, cb4_m[_297].z, cb4_m[_297].w);
    int _316 = asint(r2.x) + 2;
    r6 = (shader_in[2].xxxx * float4(cb4_m[_316].x, cb4_m[_316].y, cb4_m[_316].z, cb4_m[_316].w)) + r6;
    int _336 = asint(r2.z) + 2;
    r6 = (shader_in[2].zzzz * float4(cb4_m[_336].x, cb4_m[_336].y, cb4_m[_336].z, cb4_m[_336].w)) + r6;
    int _356 = asint(r2.w) + 2;
    r2 = (shader_in[2].wwww * float4(cb4_m[_356].x, cb4_m[_356].y, cb4_m[_356].z, cb4_m[_356].w)) + r6;
    float4 _384 = r4;
    _384.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _384;
    float3 _390 = r0.xxx * r4.xyz;
    r1 = float4(_390.x, _390.y, _390.z, r1.w);
    float4 _394 = r1;
    _394.w = asfloat(1065353216u);
    r1 = _394;
    float4 _405 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _419 = r4;
    _419.x = mad(_405.w, r1.w, mad(_405.z, r1.z, mad(_405.y, r1.y, _405.x * r1.x)));
    r4 = _419;
    float4 _430 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _444 = r4;
    _444.y = mad(_430.w, r1.w, mad(_430.z, r1.z, mad(_430.y, r1.y, _430.x * r1.x)));
    r4 = _444;
    float4 _455 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _469 = r4;
    _469.z = mad(_455.w, r1.w, mad(_455.z, r1.z, mad(_455.y, r1.y, _455.x * r1.x)));
    r4 = _469;
    float4 _472 = r4;
    _472.w = asfloat(1065353216u);
    r4 = _472;
    float4 _483 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _497 = o0;
    _497.x = mad(_483.w, r4.w, mad(_483.z, r4.z, mad(_483.y, r4.y, _483.x * r4.x)));
    o0 = _497;
    float4 _508 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _522 = o0;
    _522.y = mad(_508.w, r4.w, mad(_508.z, r4.z, mad(_508.y, r4.y, _508.x * r4.x)));
    o0 = _522;
    float4 _533 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _547 = o0;
    _547.z = mad(_533.w, r4.w, mad(_533.z, r4.z, mad(_533.y, r4.y, _533.x * r4.x)));
    o0 = _547;
    float4 _558 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _572 = o0;
    _572.w = mad(_558.w, r4.w, mad(_558.z, r4.z, mad(_558.y, r4.y, _558.x * r4.x)));
    o0 = _572;
    float3 _585 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _585.x, _585.y, _585.z);
    float4 _601 = r1;
    _601.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _601;
    float4 _616 = r1;
    _616.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _616;
    float4 _631 = r1;
    _631.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _631;
    float3 _637 = r0.xxx * r1.xyz;
    r0 = float4(_637.x, _637.y, _637.z, r0.w);
    float4 _653 = r0;
    _653.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _653;
    float4 _658 = r0;
    _658.w = rsqrt(r0.w);
    r0 = _658;
    float3 _664 = r0.www * r0.xyz;
    r0 = float4(_664.x, _664.y, _664.z, r0.w);
    float3 _674 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _686 = r1;
    _686.x = mad(_674.z, r0.xyz.z, mad(_674.y, r0.xyz.y, _674.x * r0.xyz.x));
    r1 = _686;
    float3 _695 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _707 = r1;
    _707.y = mad(_695.z, r0.xyz.z, mad(_695.y, r0.xyz.y, _695.x * r0.xyz.x));
    r1 = _707;
    float3 _716 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _728 = r1;
    _728.z = mad(_716.z, r0.xyz.z, mad(_716.y, r0.xyz.y, _716.x * r0.xyz.x));
    r1 = _728;
    float4 _743 = r0;
    _743.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _743;
    float4 _748 = r0;
    _748.x = rsqrt(r0.x);
    r0 = _748;
    float3 _754 = r0.xxx * r1.xyz;
    r0 = float4(_754.x, _754.y, _754.z, r0.w);
    float3 _769 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_769.x, _769.y, _769.z, r1.w);
    float3 _783 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r2 = float4(_783.x, _783.y, _783.z, r2.w);
    float4 _799 = r0;
    _799.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _799;
    float4 _804 = r0;
    _804.w = sqrt(r0.w);
    r0 = _804;
    float4 _814 = r0;
    _814.w = r0.w + (-cb0_m[13].x);
    r0 = _814;
    float4 _825 = r0;
    _825.w = clamp(r0.w / cb0_m[13].y, 0.0f, 1.0f);
    r0 = _825;
    float3 _832 = o1;
    _832.z = (-r0.w) + asfloat(1065353216u);
    o1 = _832;
    float4 _847 = r0;
    _847.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _847;
    float4 _852 = r0;
    _852.w = rsqrt(r0.w);
    r0 = _852;
    float3 _858 = r0.www * r1.xyz;
    r1 = float4(_858.x, _858.y, _858.z, r1.w);
    float4 _874 = r0;
    _874.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _874;
    float3 _879 = o1;
    _879.x = abs(r0.x);
    o1 = _879;
    float3 _883 = o1;
    _883.y = asfloat(1056964608u);
    o1 = _883;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = asfloat(v3);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
