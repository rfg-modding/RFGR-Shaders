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
static float4 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _59 = r0;
    _59.x = shader_in[3].y + shader_in[3].x;
    r0 = _59;
    float4 _67 = r0;
    _67.x = r0.x + shader_in[3].z;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[3].w;
    r0 = _75;
    float4 _82 = r0;
    _82.x = asfloat(1065353216u) / r0.x;
    r0 = _82;
    r1 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _100 = asint(r1.y);
    r2 = shader_in[3].yyyy * float4(cb4_m[_100].x, cb4_m[_100].y, cb4_m[_100].z, cb4_m[_100].w);
    int _123 = asint(r1.x);
    r2 = (shader_in[3].xxxx * float4(cb4_m[_123].x, cb4_m[_123].y, cb4_m[_123].z, cb4_m[_123].w)) + r2;
    int _142 = asint(r1.z);
    r2 = (shader_in[3].zzzz * float4(cb4_m[_142].x, cb4_m[_142].y, cb4_m[_142].z, cb4_m[_142].w)) + r2;
    int _161 = asint(r1.w);
    r2 = (shader_in[3].wwww * float4(cb4_m[_161].x, cb4_m[_161].y, cb4_m[_161].z, cb4_m[_161].w)) + r2;
    r3 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r3.w);
    float4 _182 = r3;
    _182.w = asfloat(1065353216u);
    r3 = _182;
    float4 _198 = r2;
    _198.x = mad(r2.w, r3.w, mad(r2.z, r3.z, mad(r2.y, r3.y, r2.x * r3.x)));
    r2 = _198;
    int _207 = asint(r1.y) + 1;
    r4 = shader_in[3].yyyy * float4(cb4_m[_207].x, cb4_m[_207].y, cb4_m[_207].z, cb4_m[_207].w);
    int _226 = asint(r1.x) + 1;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_226].x, cb4_m[_226].y, cb4_m[_226].z, cb4_m[_226].w)) + r4;
    int _246 = asint(r1.z) + 1;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_246].x, cb4_m[_246].y, cb4_m[_246].z, cb4_m[_246].w)) + r4;
    int _266 = asint(r1.w) + 1;
    r4 = (shader_in[3].wwww * float4(cb4_m[_266].x, cb4_m[_266].y, cb4_m[_266].z, cb4_m[_266].w)) + r4;
    float4 _294 = r2;
    _294.y = mad(r4.w, r3.w, mad(r4.z, r3.z, mad(r4.y, r3.y, r4.x * r3.x)));
    r2 = _294;
    int _303 = asint(r1.y) + 2;
    r4 = shader_in[3].yyyy * float4(cb4_m[_303].x, cb4_m[_303].y, cb4_m[_303].z, cb4_m[_303].w);
    int _321 = asint(r1.x) + 2;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_321].x, cb4_m[_321].y, cb4_m[_321].z, cb4_m[_321].w)) + r4;
    int _341 = asint(r1.z) + 2;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_341].x, cb4_m[_341].y, cb4_m[_341].z, cb4_m[_341].w)) + r4;
    int _361 = asint(r1.w) + 2;
    r1 = (shader_in[3].wwww * float4(cb4_m[_361].x, cb4_m[_361].y, cb4_m[_361].z, cb4_m[_361].w)) + r4;
    float4 _389 = r2;
    _389.z = mad(r1.w, r3.w, mad(r1.z, r3.z, mad(r1.y, r3.y, r1.x * r3.x)));
    r2 = _389;
    float3 _395 = r0.xxx * r2.xyz;
    r0 = float4(_395.x, _395.y, _395.z, r0.w);
    float4 _399 = r0;
    _399.w = asfloat(1065353216u);
    r0 = _399;
    float4 _410 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _424 = r1;
    _424.x = mad(_410.w, r0.w, mad(_410.z, r0.z, mad(_410.y, r0.y, _410.x * r0.x)));
    r1 = _424;
    float4 _435 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _449 = r1;
    _449.y = mad(_435.w, r0.w, mad(_435.z, r0.z, mad(_435.y, r0.y, _435.x * r0.x)));
    r1 = _449;
    float4 _460 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _474 = r1;
    _474.z = mad(_460.w, r0.w, mad(_460.z, r0.z, mad(_460.y, r0.y, _460.x * r0.x)));
    r1 = _474;
    float4 _477 = r1;
    _477.w = asfloat(1065353216u);
    r1 = _477;
    float4 _488 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _502 = o0;
    _502.x = mad(_488.w, r1.w, mad(_488.z, r1.z, mad(_488.y, r1.y, _488.x * r1.x)));
    o0 = _502;
    float4 _513 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _527 = o0;
    _527.y = mad(_513.w, r1.w, mad(_513.z, r1.z, mad(_513.y, r1.y, _513.x * r1.x)));
    o0 = _527;
    float4 _538 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _552 = o0;
    _552.z = mad(_538.w, r1.w, mad(_538.z, r1.z, mad(_538.y, r1.y, _538.x * r1.x)));
    o0 = _552;
    float4 _563 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _577 = o0;
    _577.w = mad(_563.w, r1.w, mad(_563.z, r1.z, mad(_563.y, r1.y, _563.x * r1.x)));
    o0 = _577;
    float3 _591 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_591.x, _591.y, _591.z, r0.w);
    float4 _601 = r0;
    _601.w = r0.y * cb0_m[13].x;
    r0 = _601;
    float4 _608 = r1;
    _608.x = r0.w * asfloat(3216550459u);
    r1 = _608;
    float4 _613 = r1;
    _613.x = exp2(r1.x);
    r1 = _613;
    float4 _620 = r1;
    _620.x = (-r1.x) + asfloat(1065353216u);
    r1 = _620;
    float4 _627 = r0;
    _627.w = r1.x / r0.w;
    r0 = _627;
    float4 _639 = r1;
    _639.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _639;
    float4 _654 = r0;
    _654.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _654;
    float4 _659 = r0;
    _659.x = sqrt(r0.x);
    r0 = _659;
    float4 _667 = r0;
    _667.x = r0.x * cb0_m[13].y;
    r0 = _667;
    float4 _677 = r0;
    _677.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _677;
    float4 _689 = r0;
    _689.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _689;
    float4 _695 = r0;
    _695.x = exp2(-r0.x);
    r0 = _695;
    float4 _701 = r0;
    _701.x = min(r0.x, asfloat(1065353216u));
    r0 = _701;
    float4 _708 = o1;
    _708.w = (-r0.x) + asfloat(1065353216u);
    o1 = _708;
    float2 _715 = float2(asint(shader_in[1].xy));
    r0 = float4(_715.x, _715.y, r0.z, r0.w);
    float2 _726 = r0.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(_726.x, _726.y, r0.z, r0.w);
    float2 _735 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_735.x, _735.y, o1.z, o1.w);
    float4 _741 = o1;
    _741.z = cb6_m[3].w;
    o1 = _741;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _749 = asfloat(v1);
    shader_in[1] = float4(_749.x, _749.y, shader_in[1].z, shader_in[1].w);
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
