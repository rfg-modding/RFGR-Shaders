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
    float4 cb6_m[4] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v3;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v3 : TEXCOORD3;
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
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _60 = r0;
    _60.x = shader_in[5].y + shader_in[5].x;
    r0 = _60;
    float4 _68 = r0;
    _68.x = r0.x + shader_in[5].z;
    r0 = _68;
    float4 _76 = r0;
    _76.x = r0.x + shader_in[5].w;
    r0 = _76;
    float4 _83 = r0;
    _83.x = asfloat(1065353216u) / r0.x;
    r0 = _83;
    float3 _98 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_98.x, _98.y, _98.z, r1.w);
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _118 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_118].x, cb4_m[_118].y, cb4_m[_118].z, cb4_m[_118].w);
    int _140 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_140].x, cb4_m[_140].y, cb4_m[_140].z, cb4_m[_140].w)) + r3;
    int _159 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_159].x, cb4_m[_159].y, cb4_m[_159].z, cb4_m[_159].w)) + r3;
    int _178 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_178].x, cb4_m[_178].y, cb4_m[_178].z, cb4_m[_178].w)) + r3;
    float4 _193 = r1;
    _193.w = asfloat(1065353216u);
    r1 = _193;
    float4 _209 = r3;
    _209.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r3 = _209;
    int _218 = asint(r2.y) + 1;
    r4 = shader_in[5].yyyy * float4(cb4_m[_218].x, cb4_m[_218].y, cb4_m[_218].z, cb4_m[_218].w);
    int _237 = asint(r2.x) + 1;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_237].x, cb4_m[_237].y, cb4_m[_237].z, cb4_m[_237].w)) + r4;
    int _257 = asint(r2.z) + 1;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_257].x, cb4_m[_257].y, cb4_m[_257].z, cb4_m[_257].w)) + r4;
    int _277 = asint(r2.w) + 1;
    r4 = (shader_in[5].wwww * float4(cb4_m[_277].x, cb4_m[_277].y, cb4_m[_277].z, cb4_m[_277].w)) + r4;
    float4 _305 = r3;
    _305.y = mad(r4.w, r1.w, mad(r4.z, r1.z, mad(r4.y, r1.y, r4.x * r1.x)));
    r3 = _305;
    int _314 = asint(r2.y) + 2;
    r4 = shader_in[5].yyyy * float4(cb4_m[_314].x, cb4_m[_314].y, cb4_m[_314].z, cb4_m[_314].w);
    int _332 = asint(r2.x) + 2;
    r4 = (shader_in[5].xxxx * float4(cb4_m[_332].x, cb4_m[_332].y, cb4_m[_332].z, cb4_m[_332].w)) + r4;
    int _352 = asint(r2.z) + 2;
    r4 = (shader_in[5].zzzz * float4(cb4_m[_352].x, cb4_m[_352].y, cb4_m[_352].z, cb4_m[_352].w)) + r4;
    int _372 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_372].x, cb4_m[_372].y, cb4_m[_372].z, cb4_m[_372].w)) + r4;
    float4 _400 = r3;
    _400.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r3 = _400;
    float3 _406 = r0.xxx * r3.xyz;
    r0 = float4(_406.x, _406.y, _406.z, r0.w);
    float4 _410 = r0;
    _410.w = asfloat(1065353216u);
    r0 = _410;
    float4 _421 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _435 = r1;
    _435.x = mad(_421.w, r0.w, mad(_421.z, r0.z, mad(_421.y, r0.y, _421.x * r0.x)));
    r1 = _435;
    float4 _446 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _460 = r1;
    _460.y = mad(_446.w, r0.w, mad(_446.z, r0.z, mad(_446.y, r0.y, _446.x * r0.x)));
    r1 = _460;
    float4 _471 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _485 = r1;
    _485.z = mad(_471.w, r0.w, mad(_471.z, r0.z, mad(_471.y, r0.y, _471.x * r0.x)));
    r1 = _485;
    float4 _488 = r1;
    _488.w = asfloat(1065353216u);
    r1 = _488;
    float4 _499 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _513 = o0;
    _513.x = mad(_499.w, r1.w, mad(_499.z, r1.z, mad(_499.y, r1.y, _499.x * r1.x)));
    o0 = _513;
    float4 _524 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _538 = o0;
    _538.y = mad(_524.w, r1.w, mad(_524.z, r1.z, mad(_524.y, r1.y, _524.x * r1.x)));
    o0 = _538;
    float4 _549 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _563 = o0;
    _563.z = mad(_549.w, r1.w, mad(_549.z, r1.z, mad(_549.y, r1.y, _549.x * r1.x)));
    o0 = _563;
    float4 _574 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _588 = o0;
    _588.w = mad(_574.w, r1.w, mad(_574.z, r1.z, mad(_574.y, r1.y, _574.x * r1.x)));
    o0 = _588;
    float3 _602 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_602.x, _602.y, _602.z, r0.w);
    float4 _612 = r0;
    _612.w = r0.y * cb0_m[13].x;
    r0 = _612;
    float4 _619 = r1;
    _619.x = r0.w * asfloat(3216550459u);
    r1 = _619;
    float4 _624 = r1;
    _624.x = exp2(r1.x);
    r1 = _624;
    float4 _631 = r1;
    _631.x = (-r1.x) + asfloat(1065353216u);
    r1 = _631;
    float4 _638 = r0;
    _638.w = r1.x / r0.w;
    r0 = _638;
    float4 _650 = r1;
    _650.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _650;
    float4 _665 = r0;
    _665.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _665;
    float4 _670 = r0;
    _670.x = sqrt(r0.x);
    r0 = _670;
    float4 _678 = r0;
    _678.x = r0.x * cb0_m[13].y;
    r0 = _678;
    float4 _688 = r0;
    _688.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _688;
    float4 _700 = r0;
    _700.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _700;
    float4 _706 = r0;
    _706.x = exp2(-r0.x);
    r0 = _706;
    float4 _712 = r0;
    _712.x = min(r0.x, asfloat(1065353216u));
    r0 = _712;
    float4 _719 = o1;
    _719.w = (-r0.x) + asfloat(1065353216u);
    o1 = _719;
    float2 _726 = float2(asint(shader_in[1].xy));
    r0 = float4(_726.x, _726.y, r0.z, r0.w);
    float2 _737 = r0.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(_737.x, _737.y, r0.z, r0.w);
    float2 _746 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_746.x, _746.y, o1.z, o1.w);
    float4 _752 = o1;
    _752.z = cb6_m[3].w;
    o1 = _752;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _760 = asfloat(v1);
    shader_in[1] = float4(_760.x, _760.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = v3;
    shader_in[5] = v5;
    shader_in[6] = asfloat(v6);
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
