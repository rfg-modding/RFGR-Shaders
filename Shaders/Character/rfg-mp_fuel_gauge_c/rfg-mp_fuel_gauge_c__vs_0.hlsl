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
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _61 = r0;
    _61.x = shader_in[3].y + shader_in[3].x;
    r0 = _61;
    float4 _69 = r0;
    _69.x = r0.x + shader_in[3].z;
    r0 = _69;
    float4 _77 = r0;
    _77.x = r0.x + shader_in[3].w;
    r0 = _77;
    float4 _84 = r0;
    _84.x = asfloat(1065353216u) / r0.x;
    r0 = _84;
    r1 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _102 = asint(r1.y);
    r2 = shader_in[3].yyyy * float4(cb4_m[_102].x, cb4_m[_102].y, cb4_m[_102].z, cb4_m[_102].w);
    int _125 = asint(r1.x);
    r2 = (shader_in[3].xxxx * float4(cb4_m[_125].x, cb4_m[_125].y, cb4_m[_125].z, cb4_m[_125].w)) + r2;
    int _144 = asint(r1.z);
    r2 = (shader_in[3].zzzz * float4(cb4_m[_144].x, cb4_m[_144].y, cb4_m[_144].z, cb4_m[_144].w)) + r2;
    int _163 = asint(r1.w);
    r2 = (shader_in[3].wwww * float4(cb4_m[_163].x, cb4_m[_163].y, cb4_m[_163].z, cb4_m[_163].w)) + r2;
    r3 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r3.w);
    float4 _184 = r3;
    _184.w = asfloat(1065353216u);
    r3 = _184;
    float4 _200 = r2;
    _200.x = mad(r2.w, r3.w, mad(r2.z, r3.z, mad(r2.y, r3.y, r2.x * r3.x)));
    r2 = _200;
    int _209 = asint(r1.y) + 1;
    r4 = shader_in[3].yyyy * float4(cb4_m[_209].x, cb4_m[_209].y, cb4_m[_209].z, cb4_m[_209].w);
    int _228 = asint(r1.x) + 1;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_228].x, cb4_m[_228].y, cb4_m[_228].z, cb4_m[_228].w)) + r4;
    int _248 = asint(r1.z) + 1;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_248].x, cb4_m[_248].y, cb4_m[_248].z, cb4_m[_248].w)) + r4;
    int _268 = asint(r1.w) + 1;
    r4 = (shader_in[3].wwww * float4(cb4_m[_268].x, cb4_m[_268].y, cb4_m[_268].z, cb4_m[_268].w)) + r4;
    float4 _296 = r2;
    _296.y = mad(r4.w, r3.w, mad(r4.z, r3.z, mad(r4.y, r3.y, r4.x * r3.x)));
    r2 = _296;
    int _305 = asint(r1.y) + 2;
    r4 = shader_in[3].yyyy * float4(cb4_m[_305].x, cb4_m[_305].y, cb4_m[_305].z, cb4_m[_305].w);
    int _323 = asint(r1.x) + 2;
    r4 = (shader_in[3].xxxx * float4(cb4_m[_323].x, cb4_m[_323].y, cb4_m[_323].z, cb4_m[_323].w)) + r4;
    int _343 = asint(r1.z) + 2;
    r4 = (shader_in[3].zzzz * float4(cb4_m[_343].x, cb4_m[_343].y, cb4_m[_343].z, cb4_m[_343].w)) + r4;
    int _363 = asint(r1.w) + 2;
    r1 = (shader_in[3].wwww * float4(cb4_m[_363].x, cb4_m[_363].y, cb4_m[_363].z, cb4_m[_363].w)) + r4;
    float4 _391 = r2;
    _391.z = mad(r1.w, r3.w, mad(r1.z, r3.z, mad(r1.y, r3.y, r1.x * r3.x)));
    r2 = _391;
    float3 _397 = r0.xxx * r2.xyz;
    r0 = float4(_397.x, _397.y, _397.z, r0.w);
    float4 _401 = r0;
    _401.w = asfloat(1065353216u);
    r0 = _401;
    float4 _412 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _426 = r1;
    _426.x = mad(_412.w, r0.w, mad(_412.z, r0.z, mad(_412.y, r0.y, _412.x * r0.x)));
    r1 = _426;
    float4 _437 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _451 = r1;
    _451.y = mad(_437.w, r0.w, mad(_437.z, r0.z, mad(_437.y, r0.y, _437.x * r0.x)));
    r1 = _451;
    float4 _462 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _476 = r1;
    _476.z = mad(_462.w, r0.w, mad(_462.z, r0.z, mad(_462.y, r0.y, _462.x * r0.x)));
    r1 = _476;
    float4 _479 = r1;
    _479.w = asfloat(1065353216u);
    r1 = _479;
    float4 _490 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _504 = o0;
    _504.x = mad(_490.w, r1.w, mad(_490.z, r1.z, mad(_490.y, r1.y, _490.x * r1.x)));
    o0 = _504;
    float4 _515 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _529 = o0;
    _529.y = mad(_515.w, r1.w, mad(_515.z, r1.z, mad(_515.y, r1.y, _515.x * r1.x)));
    o0 = _529;
    float4 _540 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _554 = o0;
    _554.z = mad(_540.w, r1.w, mad(_540.z, r1.z, mad(_540.y, r1.y, _540.x * r1.x)));
    o0 = _554;
    float4 _565 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _579 = o0;
    _579.w = mad(_565.w, r1.w, mad(_565.z, r1.z, mad(_565.y, r1.y, _565.x * r1.x)));
    o0 = _579;
    float3 _593 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_593.x, _593.y, _593.z, r0.w);
    o1 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
    float4 _613 = r0;
    _613.w = r0.y * cb0_m[13].x;
    r0 = _613;
    float4 _620 = r1;
    _620.x = r0.w * asfloat(3216550459u);
    r1 = _620;
    float4 _625 = r1;
    _625.x = exp2(r1.x);
    r1 = _625;
    float4 _632 = r1;
    _632.x = (-r1.x) + asfloat(1065353216u);
    r1 = _632;
    float4 _639 = r0;
    _639.w = r1.x / r0.w;
    r0 = _639;
    float4 _651 = r1;
    _651.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _651;
    float4 _666 = r0;
    _666.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _666;
    float4 _671 = r0;
    _671.x = sqrt(r0.x);
    r0 = _671;
    float4 _679 = r0;
    _679.x = r0.x * cb0_m[13].y;
    r0 = _679;
    float4 _689 = r0;
    _689.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _689;
    float4 _701 = r0;
    _701.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _701;
    float4 _707 = r0;
    _707.x = exp2(-r0.x);
    r0 = _707;
    float4 _713 = r0;
    _713.x = min(r0.x, asfloat(1065353216u));
    r0 = _713;
    float3 _720 = o2;
    _720.z = (-r0.x) + asfloat(1065353216u);
    o2 = _720;
    float4 _729 = r0;
    _729.x = cb6_m[3].x * cb2_m[1].x;
    r0 = _729;
    float4 _736 = r0;
    _736.x = r0.x * asfloat(1092616192u);
    r0 = _736;
    float2 _743 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, r0.y, _743.x, _743.y);
    float4 _747 = r0;
    _747.y = asfloat(0u);
    r0 = _747;
    float2 _758 = (r0.zw * asfloat(uint2(981467136u, 981467136u))) + r0.xy;
    o2 = float3(_758.x, _758.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _767 = asfloat(v1);
    shader_in[1] = float4(_767.x, _767.y, shader_in[1].z, shader_in[1].w);
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
