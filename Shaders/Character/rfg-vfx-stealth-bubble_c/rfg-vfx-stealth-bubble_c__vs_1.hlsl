cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
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
static float4 v3;
static int4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _56 = r0;
    _56.x = shader_in[3].y + shader_in[3].x;
    r0 = _56;
    float4 _64 = r0;
    _64.x = r0.x + shader_in[3].z;
    r0 = _64;
    float4 _72 = r0;
    _72.x = r0.x + shader_in[3].w;
    r0 = _72;
    float4 _79 = r0;
    _79.x = asfloat(1065353216u) / r0.x;
    r0 = _79;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _89 = r1;
    _89.w = asfloat(1065353216u);
    r1 = _89;
    r2 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _107 = asint(r2.y);
    r3 = shader_in[3].yyyy * float4(cb4_m[_107].x, cb4_m[_107].y, cb4_m[_107].z, cb4_m[_107].w);
    int _130 = asint(r2.x);
    r3 = (shader_in[3].xxxx * float4(cb4_m[_130].x, cb4_m[_130].y, cb4_m[_130].z, cb4_m[_130].w)) + r3;
    int _149 = asint(r2.z);
    r3 = (shader_in[3].zzzz * float4(cb4_m[_149].x, cb4_m[_149].y, cb4_m[_149].z, cb4_m[_149].w)) + r3;
    int _168 = asint(r2.w);
    r3 = (shader_in[3].wwww * float4(cb4_m[_168].x, cb4_m[_168].y, cb4_m[_168].z, cb4_m[_168].w)) + r3;
    float4 _197 = r4;
    _197.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _197;
    int _206 = asint(r2.y) + 1;
    r5 = shader_in[3].yyyy * float4(cb4_m[_206].x, cb4_m[_206].y, cb4_m[_206].z, cb4_m[_206].w);
    int _225 = asint(r2.x) + 1;
    r5 = (shader_in[3].xxxx * float4(cb4_m[_225].x, cb4_m[_225].y, cb4_m[_225].z, cb4_m[_225].w)) + r5;
    int _245 = asint(r2.z) + 1;
    r5 = (shader_in[3].zzzz * float4(cb4_m[_245].x, cb4_m[_245].y, cb4_m[_245].z, cb4_m[_245].w)) + r5;
    int _265 = asint(r2.w) + 1;
    r5 = (shader_in[3].wwww * float4(cb4_m[_265].x, cb4_m[_265].y, cb4_m[_265].z, cb4_m[_265].w)) + r5;
    float4 _293 = r4;
    _293.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _293;
    int _302 = asint(r2.y) + 2;
    r6 = shader_in[3].yyyy * float4(cb4_m[_302].x, cb4_m[_302].y, cb4_m[_302].z, cb4_m[_302].w);
    int _321 = asint(r2.x) + 2;
    r6 = (shader_in[3].xxxx * float4(cb4_m[_321].x, cb4_m[_321].y, cb4_m[_321].z, cb4_m[_321].w)) + r6;
    int _341 = asint(r2.z) + 2;
    r6 = (shader_in[3].zzzz * float4(cb4_m[_341].x, cb4_m[_341].y, cb4_m[_341].z, cb4_m[_341].w)) + r6;
    int _361 = asint(r2.w) + 2;
    r2 = (shader_in[3].wwww * float4(cb4_m[_361].x, cb4_m[_361].y, cb4_m[_361].z, cb4_m[_361].w)) + r6;
    float4 _389 = r4;
    _389.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _389;
    float3 _395 = r0.xxx * r4.xyz;
    r1 = float4(_395.x, _395.y, _395.z, r1.w);
    float4 _399 = r1;
    _399.w = asfloat(1065353216u);
    r1 = _399;
    float4 _410 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _424 = r4;
    _424.x = mad(_410.w, r1.w, mad(_410.z, r1.z, mad(_410.y, r1.y, _410.x * r1.x)));
    r4 = _424;
    float4 _435 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _449 = r4;
    _449.y = mad(_435.w, r1.w, mad(_435.z, r1.z, mad(_435.y, r1.y, _435.x * r1.x)));
    r4 = _449;
    float4 _460 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _474 = r4;
    _474.z = mad(_460.w, r1.w, mad(_460.z, r1.z, mad(_460.y, r1.y, _460.x * r1.x)));
    r4 = _474;
    float4 _477 = r4;
    _477.w = asfloat(1065353216u);
    r4 = _477;
    float4 _488 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _502 = o0;
    _502.x = mad(_488.w, r4.w, mad(_488.z, r4.z, mad(_488.y, r4.y, _488.x * r4.x)));
    o0 = _502;
    float4 _513 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _527 = o0;
    _527.y = mad(_513.w, r4.w, mad(_513.z, r4.z, mad(_513.y, r4.y, _513.x * r4.x)));
    o0 = _527;
    float4 _538 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _552 = o0;
    _552.z = mad(_538.w, r4.w, mad(_538.z, r4.z, mad(_538.y, r4.y, _538.x * r4.x)));
    o0 = _552;
    float4 _563 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _577 = o0;
    _577.w = mad(_563.w, r4.w, mad(_563.z, r4.z, mad(_563.y, r4.y, _563.x * r4.x)));
    o0 = _577;
    float3 _590 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _590.x, _590.y, _590.z);
    float4 _606 = r1;
    _606.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _606;
    float4 _621 = r1;
    _621.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _621;
    float4 _636 = r1;
    _636.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _636;
    float3 _642 = r0.xxx * r1.xyz;
    r0 = float4(_642.x, _642.y, _642.z, r0.w);
    float4 _658 = r0;
    _658.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _658;
    float4 _663 = r0;
    _663.w = rsqrt(r0.w);
    r0 = _663;
    float3 _669 = r0.www * r0.xyz;
    r0 = float4(_669.x, _669.y, _669.z, r0.w);
    float3 _679 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _691 = r1;
    _691.x = mad(_679.z, r0.xyz.z, mad(_679.y, r0.xyz.y, _679.x * r0.xyz.x));
    r1 = _691;
    float3 _700 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _712 = r1;
    _712.y = mad(_700.z, r0.xyz.z, mad(_700.y, r0.xyz.y, _700.x * r0.xyz.x));
    r1 = _712;
    float3 _721 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _733 = r1;
    _733.z = mad(_721.z, r0.xyz.z, mad(_721.y, r0.xyz.y, _721.x * r0.xyz.x));
    r1 = _733;
    float4 _748 = r0;
    _748.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _748;
    float4 _753 = r0;
    _753.x = rsqrt(r0.x);
    r0 = _753;
    float3 _759 = r0.xxx * r1.xyz;
    r0 = float4(_759.x, _759.y, _759.z, r0.w);
    float4 _763 = r4;
    _763.w = asfloat(0u);
    r4 = _763;
    r1 = (-r4) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _793 = r0;
    _793.w = mad(r1.w, r1.w, mad(r1.z, r1.z, mad(r1.y, r1.y, r1.x * r1.x)));
    r0 = _793;
    float4 _798 = r0;
    _798.w = rsqrt(r0.w);
    r0 = _798;
    float3 _804 = r0.www * r1.xyz;
    r1 = float4(_804.x, _804.y, _804.z, r1.w);
    float4 _820 = r0;
    _820.w = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _820;
    float2 _827 = float2(asint(shader_in[1].xy));
    r1 = float4(_827.x, _827.y, r1.z, r1.w);
    float2 _836 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(r0.x, _836.x, _836.y, r0.w);
    float4 _848 = r0;
    _848.x = (cb6_m[3].w * asfloat(1056964608u)) + r0.y;
    r0 = _848;
    o1 = r0.xzw;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _858 = asfloat(v1);
    shader_in[1] = float4(_858.x, _858.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
