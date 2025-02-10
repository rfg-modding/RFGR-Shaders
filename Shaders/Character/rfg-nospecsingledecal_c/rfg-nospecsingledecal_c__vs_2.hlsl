cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
static float3 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _69 = r0;
    _69.x = shader_in[5].y + shader_in[5].x;
    r0 = _69;
    float4 _77 = r0;
    _77.x = r0.x + shader_in[5].z;
    r0 = _77;
    float4 _85 = r0;
    _85.x = r0.x + shader_in[5].w;
    r0 = _85;
    float4 _92 = r0;
    _92.x = asfloat(1065353216u) / r0.x;
    r0 = _92;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _119 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_119].x, cb4_m[_119].y, cb4_m[_119].z, cb4_m[_119].w);
    int _140 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_140].x, cb4_m[_140].y, cb4_m[_140].z, cb4_m[_140].w)) + r3;
    int _159 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_159].x, cb4_m[_159].y, cb4_m[_159].z, cb4_m[_159].w)) + r3;
    int _178 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_178].x, cb4_m[_178].y, cb4_m[_178].z, cb4_m[_178].w)) + r3;
    float4 _207 = r4;
    _207.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _207;
    int _216 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_216].x, cb4_m[_216].y, cb4_m[_216].z, cb4_m[_216].w);
    int _235 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_235].x, cb4_m[_235].y, cb4_m[_235].z, cb4_m[_235].w)) + r5;
    int _255 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_255].x, cb4_m[_255].y, cb4_m[_255].z, cb4_m[_255].w)) + r5;
    int _275 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_275].x, cb4_m[_275].y, cb4_m[_275].z, cb4_m[_275].w)) + r5;
    float4 _303 = r4;
    _303.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _303;
    int _312 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_312].x, cb4_m[_312].y, cb4_m[_312].z, cb4_m[_312].w);
    int _331 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_331].x, cb4_m[_331].y, cb4_m[_331].z, cb4_m[_331].w)) + r6;
    int _351 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_351].x, cb4_m[_351].y, cb4_m[_351].z, cb4_m[_351].w)) + r6;
    int _371 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_371].x, cb4_m[_371].y, cb4_m[_371].z, cb4_m[_371].w)) + r6;
    float4 _399 = r4;
    _399.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _399;
    float3 _405 = r0.xxx * r4.xyz;
    r1 = float4(_405.x, _405.y, _405.z, r1.w);
    float4 _409 = r1;
    _409.w = asfloat(1065353216u);
    r1 = _409;
    float4 _420 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _434 = r4;
    _434.x = mad(_420.w, r1.w, mad(_420.z, r1.z, mad(_420.y, r1.y, _420.x * r1.x)));
    r4 = _434;
    float4 _445 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _459 = r4;
    _459.y = mad(_445.w, r1.w, mad(_445.z, r1.z, mad(_445.y, r1.y, _445.x * r1.x)));
    r4 = _459;
    float4 _470 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _484 = r4;
    _484.z = mad(_470.w, r1.w, mad(_470.z, r1.z, mad(_470.y, r1.y, _470.x * r1.x)));
    r4 = _484;
    float4 _487 = r4;
    _487.w = asfloat(1065353216u);
    r4 = _487;
    float4 _498 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _512 = o0;
    _512.x = mad(_498.w, r4.w, mad(_498.z, r4.z, mad(_498.y, r4.y, _498.x * r4.x)));
    o0 = _512;
    float4 _523 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _537 = o0;
    _537.y = mad(_523.w, r4.w, mad(_523.z, r4.z, mad(_523.y, r4.y, _523.x * r4.x)));
    o0 = _537;
    float4 _548 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _562 = o0;
    _562.z = mad(_548.w, r4.w, mad(_548.z, r4.z, mad(_548.y, r4.y, _548.x * r4.x)));
    o0 = _562;
    float4 _574 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _588 = o0;
    _588.w = mad(_574.w, r4.w, mad(_574.z, r4.z, mad(_574.y, r4.y, _574.x * r4.x)));
    o0 = _588;
    float3 _601 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _601.x, _601.y, _601.z);
    float4 _617 = r1;
    _617.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _617;
    float4 _632 = r1;
    _632.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _632;
    float4 _647 = r1;
    _647.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _647;
    float3 _653 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _653.x, _653.y, _653.z);
    float4 _669 = r1;
    _669.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _669;
    float4 _674 = r1;
    _674.x = rsqrt(r1.x);
    r1 = _674;
    float3 _680 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _680.x, _680.y, _680.z);
    float3 _690 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _702 = r1;
    _702.x = mad(_690.z, r0.yzw.z, mad(_690.y, r0.yzw.y, _690.x * r0.yzw.x));
    r1 = _702;
    float3 _711 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _723 = r1;
    _723.y = mad(_711.z, r0.yzw.z, mad(_711.y, r0.yzw.y, _711.x * r0.yzw.x));
    r1 = _723;
    float3 _732 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _744 = r1;
    _744.z = mad(_732.z, r0.yzw.z, mad(_732.y, r0.yzw.y, _732.x * r0.yzw.x));
    r1 = _744;
    float4 _759 = r0;
    _759.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _759;
    float4 _764 = r0;
    _764.y = rsqrt(r0.y);
    r0 = _764;
    float3 _770 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _770.x, _770.y, _770.z);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _795 = r3;
    _795.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _795;
    float4 _810 = r3;
    _810.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _810;
    float4 _825 = r3;
    _825.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _825;
    float3 _831 = r0.xxx * r3.xyz;
    r1 = float4(_831.x, _831.y, _831.z, r1.w);
    float4 _847 = r0;
    _847.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _847;
    float4 _852 = r0;
    _852.x = rsqrt(r0.x);
    r0 = _852;
    float3 _858 = r0.xxx * r1.xyz;
    r1 = float4(_858.x, _858.y, _858.z, r1.w);
    float3 _868 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _880 = r2;
    _880.x = mad(_868.z, r1.xyz.z, mad(_868.y, r1.xyz.y, _868.x * r1.xyz.x));
    r2 = _880;
    float3 _889 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _901 = r2;
    _901.y = mad(_889.z, r1.xyz.z, mad(_889.y, r1.xyz.y, _889.x * r1.xyz.x));
    r2 = _901;
    float3 _910 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _922 = r2;
    _922.z = mad(_910.z, r1.xyz.z, mad(_910.y, r1.xyz.y, _910.x * r1.xyz.x));
    r2 = _922;
    float4 _937 = r0;
    _937.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _937;
    float4 _942 = r0;
    _942.x = rsqrt(r0.x);
    r0 = _942;
    float3 _948 = r0.xxx * r2.xyz;
    r1 = float4(_948.x, _948.y, _948.z, r1.w);
    float3 _955 = r0.wyz * r1.yzx;
    r2 = float4(_955.x, _955.y, _955.z, r2.w);
    float3 _966 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_966.x, _966.y, _966.z, r2.w);
    float3 _976 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _988 = o1;
    _988.z = mad(_976.z, r0.yzw.z, mad(_976.y, r0.yzw.y, _976.x * r0.yzw.x));
    o1 = _988;
    float3 _997 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1009 = o1;
    _1009.x = mad(_997.z, r1.xyz.z, mad(_997.y, r1.xyz.y, _997.x * r1.xyz.x));
    o1 = _1009;
    float3 _1015 = r1.www * r2.xyz;
    r0 = float4(_1015.x, _1015.y, _1015.z, r0.w);
    float3 _1025 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1037 = o1;
    _1037.y = mad(_1025.z, r0.xyz.z, mad(_1025.y, r0.xyz.y, _1025.x * r0.xyz.x));
    o1 = _1037;
    float2 _1044 = float2(asint(shader_in[2].xy));
    r0 = float4(_1044.x, _1044.y, r0.z, r0.w);
    float2 _1055 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_1055.x, _1055.y, r0.z, r0.w);
    float2 _1064 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _1064.x, _1064.y);
    float2 _1071 = float2(asint(shader_in[1].xy));
    r0 = float4(_1071.x, _1071.y, r0.z, r0.w);
    float2 _1077 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_1077.x, _1077.y, o2.z, o2.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1086 = asfloat(v1);
    shader_in[1] = float4(_1086.x, _1086.y, shader_in[1].z, shader_in[1].w);
    float2 _1091 = asfloat(v2);
    shader_in[2] = float4(_1091.x, _1091.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
