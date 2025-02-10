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
static int2 v1;
static float4 v3;
static int4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _55 = r0;
    _55.x = shader_in[3].y + shader_in[3].x;
    r0 = _55;
    float4 _63 = r0;
    _63.x = r0.x + shader_in[3].z;
    r0 = _63;
    float4 _71 = r0;
    _71.x = r0.x + shader_in[3].w;
    r0 = _71;
    float4 _78 = r0;
    _78.x = asfloat(1065353216u) / r0.x;
    r0 = _78;
    r1 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _95 = asint(r1.y);
    r2 = shader_in[3].yyyy * float4(cb4_m[_95].x, cb4_m[_95].y, cb4_m[_95].z, cb4_m[_95].w);
    int _119 = asint(r1.x);
    r2 = (shader_in[3].xxxx * float4(cb4_m[_119].x, cb4_m[_119].y, cb4_m[_119].z, cb4_m[_119].w)) + r2;
    int _138 = asint(r1.z);
    r2 = (shader_in[3].zzzz * float4(cb4_m[_138].x, cb4_m[_138].y, cb4_m[_138].z, cb4_m[_138].w)) + r2;
    int _157 = asint(r1.w);
    r2 = (shader_in[3].wwww * float4(cb4_m[_157].x, cb4_m[_157].y, cb4_m[_157].z, cb4_m[_157].w)) + r2;
    r3 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r3.w);
    float4 _178 = r3;
    _178.w = asfloat(1065353216u);
    r3 = _178;
    float4 _194 = r2;
    _194.x = mad(r2.w, r3.w, mad(r2.z, r3.z, mad(r2.y, r3.y, r2.x * r3.x)));
    r2 = _194;
    int _203 = asint(r1.y) + 1;
    r4 = shader_in[3].yyyy * float4(cb4_m[_203].x, cb4_m[_203].y, cb4_m[_203].z, cb4_m[_203].w);
    int _222 = asint(r1.x) + 1;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_222].x, cb4_m[_222].y, cb4_m[_222].z, cb4_m[_222].w)) + r4;
    int _242 = asint(r1.z) + 1;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_242].x, cb4_m[_242].y, cb4_m[_242].z, cb4_m[_242].w)) + r4;
    int _262 = asint(r1.w) + 1;
    r4 = (shader_in[3].wwww * float4(cb4_m[_262].x, cb4_m[_262].y, cb4_m[_262].z, cb4_m[_262].w)) + r4;
    float4 _290 = r2;
    _290.y = mad(r4.w, r3.w, mad(r4.z, r3.z, mad(r4.y, r3.y, r4.x * r3.x)));
    r2 = _290;
    int _299 = asint(r1.y) + 2;
    r4 = shader_in[3].yyyy * float4(cb4_m[_299].x, cb4_m[_299].y, cb4_m[_299].z, cb4_m[_299].w);
    int _317 = asint(r1.x) + 2;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_317].x, cb4_m[_317].y, cb4_m[_317].z, cb4_m[_317].w)) + r4;
    int _337 = asint(r1.z) + 2;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_337].x, cb4_m[_337].y, cb4_m[_337].z, cb4_m[_337].w)) + r4;
    int _357 = asint(r1.w) + 2;
    r1 = (shader_in[3].wwww * float4(cb4_m[_357].x, cb4_m[_357].y, cb4_m[_357].z, cb4_m[_357].w)) + r4;
    float4 _385 = r2;
    _385.z = mad(r1.w, r3.w, mad(r1.z, r3.z, mad(r1.y, r3.y, r1.x * r3.x)));
    r2 = _385;
    float3 _391 = r0.xxx * r2.xyz;
    r0 = float4(_391.x, _391.y, _391.z, r0.w);
    float4 _395 = r0;
    _395.w = asfloat(1065353216u);
    r0 = _395;
    float4 _406 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _420 = r1;
    _420.x = mad(_406.w, r0.w, mad(_406.z, r0.z, mad(_406.y, r0.y, _406.x * r0.x)));
    r1 = _420;
    float4 _431 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _445 = r1;
    _445.y = mad(_431.w, r0.w, mad(_431.z, r0.z, mad(_431.y, r0.y, _431.x * r0.x)));
    r1 = _445;
    float4 _456 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _470 = r1;
    _470.z = mad(_456.w, r0.w, mad(_456.z, r0.z, mad(_456.y, r0.y, _456.x * r0.x)));
    r1 = _470;
    float4 _473 = r1;
    _473.w = asfloat(1065353216u);
    r1 = _473;
    float4 _484 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _498 = o0;
    _498.x = mad(_484.w, r1.w, mad(_484.z, r1.z, mad(_484.y, r1.y, _484.x * r1.x)));
    o0 = _498;
    float4 _509 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _523 = o0;
    _523.y = mad(_509.w, r1.w, mad(_509.z, r1.z, mad(_509.y, r1.y, _509.x * r1.x)));
    o0 = _523;
    float4 _534 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _548 = o0;
    _548.z = mad(_534.w, r1.w, mad(_534.z, r1.z, mad(_534.y, r1.y, _534.x * r1.x)));
    o0 = _548;
    float4 _559 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _573 = o0;
    _573.w = mad(_559.w, r1.w, mad(_559.z, r1.z, mad(_559.y, r1.y, _559.x * r1.x)));
    o0 = _573;
    float3 _587 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_587.x, _587.y, _587.z, r0.w);
    float4 _597 = r0;
    _597.w = r0.y * cb0_m[13].x;
    r0 = _597;
    float4 _604 = r1;
    _604.x = r0.w * asfloat(3216550459u);
    r1 = _604;
    float4 _609 = r1;
    _609.x = exp2(r1.x);
    r1 = _609;
    float4 _616 = r1;
    _616.x = (-r1.x) + asfloat(1065353216u);
    r1 = _616;
    float4 _623 = r0;
    _623.w = r1.x / r0.w;
    r0 = _623;
    float4 _635 = r1;
    _635.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _635;
    float4 _650 = r0;
    _650.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _650;
    float4 _655 = r0;
    _655.x = sqrt(r0.x);
    r0 = _655;
    float4 _663 = r0;
    _663.x = r0.x * cb0_m[13].y;
    r0 = _663;
    float4 _673 = r0;
    _673.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _673;
    float4 _685 = r0;
    _685.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _685;
    float4 _691 = r0;
    _691.x = exp2(-r0.x);
    r0 = _691;
    float4 _697 = r0;
    _697.x = min(r0.x, asfloat(1065353216u));
    r0 = _697;
    float3 _704 = o1;
    _704.z = (-r0.x) + asfloat(1065353216u);
    o1 = _704;
    float2 _711 = float2(asint(shader_in[1].xy));
    r0 = float4(_711.x, _711.y, r0.z, r0.w);
    float2 _720 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float3(_720.x, _720.y, o1.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _729 = asfloat(v1);
    shader_in[1] = float4(_729.x, _729.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = v3;
    shader_in[4] = asfloat(v4);
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
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
