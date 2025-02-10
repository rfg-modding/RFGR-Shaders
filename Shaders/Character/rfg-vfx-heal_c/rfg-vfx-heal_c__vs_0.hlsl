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
static float4 o1;
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
    int _106 = asint(r2.y);
    r3 = shader_in[3].yyyy * float4(cb4_m[_106].x, cb4_m[_106].y, cb4_m[_106].z, cb4_m[_106].w);
    int _129 = asint(r2.x);
    r3 = (shader_in[3].xxxx * float4(cb4_m[_129].x, cb4_m[_129].y, cb4_m[_129].z, cb4_m[_129].w)) + r3;
    int _148 = asint(r2.z);
    r3 = (shader_in[3].zzzz * float4(cb4_m[_148].x, cb4_m[_148].y, cb4_m[_148].z, cb4_m[_148].w)) + r3;
    int _167 = asint(r2.w);
    r3 = (shader_in[3].wwww * float4(cb4_m[_167].x, cb4_m[_167].y, cb4_m[_167].z, cb4_m[_167].w)) + r3;
    float4 _196 = r4;
    _196.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _196;
    int _205 = asint(r2.y) + 1;
    r5 = shader_in[3].yyyy * float4(cb4_m[_205].x, cb4_m[_205].y, cb4_m[_205].z, cb4_m[_205].w);
    int _224 = asint(r2.x) + 1;
    r5 = (shader_in[3].xxxx * float4(cb4_m[_224].x, cb4_m[_224].y, cb4_m[_224].z, cb4_m[_224].w)) + r5;
    int _244 = asint(r2.z) + 1;
    r5 = (shader_in[3].zzzz * float4(cb4_m[_244].x, cb4_m[_244].y, cb4_m[_244].z, cb4_m[_244].w)) + r5;
    int _264 = asint(r2.w) + 1;
    r5 = (shader_in[3].wwww * float4(cb4_m[_264].x, cb4_m[_264].y, cb4_m[_264].z, cb4_m[_264].w)) + r5;
    float4 _292 = r4;
    _292.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _292;
    int _301 = asint(r2.y) + 2;
    r6 = shader_in[3].yyyy * float4(cb4_m[_301].x, cb4_m[_301].y, cb4_m[_301].z, cb4_m[_301].w);
    int _320 = asint(r2.x) + 2;
    r6 = (shader_in[3].xxxx * float4(cb4_m[_320].x, cb4_m[_320].y, cb4_m[_320].z, cb4_m[_320].w)) + r6;
    int _340 = asint(r2.z) + 2;
    r6 = (shader_in[3].zzzz * float4(cb4_m[_340].x, cb4_m[_340].y, cb4_m[_340].z, cb4_m[_340].w)) + r6;
    int _360 = asint(r2.w) + 2;
    r2 = (shader_in[3].wwww * float4(cb4_m[_360].x, cb4_m[_360].y, cb4_m[_360].z, cb4_m[_360].w)) + r6;
    float4 _388 = r4;
    _388.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _388;
    float3 _394 = r0.xxx * r4.xyz;
    r1 = float4(_394.x, _394.y, _394.z, r1.w);
    float4 _398 = r1;
    _398.w = asfloat(1065353216u);
    r1 = _398;
    float4 _409 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _423 = r4;
    _423.x = mad(_409.w, r1.w, mad(_409.z, r1.z, mad(_409.y, r1.y, _409.x * r1.x)));
    r4 = _423;
    float4 _434 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _448 = r4;
    _448.y = mad(_434.w, r1.w, mad(_434.z, r1.z, mad(_434.y, r1.y, _434.x * r1.x)));
    r4 = _448;
    float4 _459 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _473 = r4;
    _473.z = mad(_459.w, r1.w, mad(_459.z, r1.z, mad(_459.y, r1.y, _459.x * r1.x)));
    r4 = _473;
    float4 _476 = r4;
    _476.w = asfloat(1065353216u);
    r4 = _476;
    float4 _487 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _501 = o0;
    _501.x = mad(_487.w, r4.w, mad(_487.z, r4.z, mad(_487.y, r4.y, _487.x * r4.x)));
    o0 = _501;
    float4 _512 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _526 = o0;
    _526.y = mad(_512.w, r4.w, mad(_512.z, r4.z, mad(_512.y, r4.y, _512.x * r4.x)));
    o0 = _526;
    float4 _537 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _551 = o0;
    _551.z = mad(_537.w, r4.w, mad(_537.z, r4.z, mad(_537.y, r4.y, _537.x * r4.x)));
    o0 = _551;
    float4 _562 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _576 = o0;
    _576.w = mad(_562.w, r4.w, mad(_562.z, r4.z, mad(_562.y, r4.y, _562.x * r4.x)));
    o0 = _576;
    r1 = float4(asint(shader_in[1].xyxx));
    float2 _590 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(r0.x, _590.x, _590.y, r0.w);
    o1 = float4(r0.yz.x, o1.y, o1.z, r0.yz.y);
    float3 _608 = cb0_m[12].x.xxx * asfloat(uint3(1028443341u, 1036831949u, 3184315597u));
    r0 = float4(r0.x, _608.x, _608.y, _608.z);
    float2 _619 = (r1.yw * asfloat(uint2(981467136u, 985661440u))) + r0.yw;
    o1 = float4(o1.x, _619.x, _619.y, o1.w);
    float2 _630 = (r1.zy * asfloat(uint2(989855744u, 981467136u))) + r0.zz;
    o2 = float4(_630.x, _630.y, o2.z, o2.w);
    float3 _643 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _643.x, _643.y, _643.z);
    float4 _659 = r1;
    _659.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _659;
    float4 _674 = r1;
    _674.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _674;
    float4 _689 = r1;
    _689.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _689;
    float3 _695 = r0.xxx * r1.xyz;
    r0 = float4(_695.x, _695.y, _695.z, r0.w);
    float4 _711 = r0;
    _711.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _711;
    float4 _716 = r0;
    _716.w = rsqrt(r0.w);
    r0 = _716;
    float3 _722 = r0.www * r0.xyz;
    r0 = float4(_722.x, _722.y, _722.z, r0.w);
    float3 _732 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _744 = r1;
    _744.x = mad(_732.z, r0.xyz.z, mad(_732.y, r0.xyz.y, _732.x * r0.xyz.x));
    r1 = _744;
    float3 _753 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _765 = r1;
    _765.y = mad(_753.z, r0.xyz.z, mad(_753.y, r0.xyz.y, _753.x * r0.xyz.x));
    r1 = _765;
    float3 _774 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _786 = r1;
    _786.z = mad(_774.z, r0.xyz.z, mad(_774.y, r0.xyz.y, _774.x * r0.xyz.x));
    r1 = _786;
    float4 _801 = r0;
    _801.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _801;
    float4 _806 = r0;
    _806.x = rsqrt(r0.x);
    r0 = _806;
    float3 _812 = r0.xxx * r1.xyz;
    r0 = float4(_812.x, _812.y, _812.z, r0.w);
    float3 _827 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_827.x, _827.y, _827.z, r1.w);
    float3 _841 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r2 = float4(_841.x, _841.y, _841.z, r2.w);
    float4 _857 = r0;
    _857.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _857;
    float4 _862 = r0;
    _862.w = rsqrt(r0.w);
    r0 = _862;
    float3 _868 = r0.www * r1.xyz;
    r1 = float4(_868.x, _868.y, _868.z, r1.w);
    float4 _887 = o2;
    _887.z = clamp(mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x)), 0.0f, 1.0f);
    o2 = _887;
    float4 _896 = r0;
    _896.x = r2.y * cb0_m[13].x;
    r0 = _896;
    float4 _903 = r0;
    _903.y = r0.x * asfloat(3216550459u);
    r0 = _903;
    float4 _908 = r0;
    _908.y = exp2(r0.y);
    r0 = _908;
    float4 _915 = r0;
    _915.y = (-r0.y) + asfloat(1065353216u);
    r0 = _915;
    float4 _922 = r0;
    _922.x = r0.y / r0.x;
    r0 = _922;
    float4 _934 = r0;
    _934.y = asfloat((asfloat(1008981770u) < abs(r2.y)) ? 4294967295u : 0u);
    r0 = _934;
    float4 _949 = r0;
    _949.z = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _949;
    float4 _954 = r0;
    _954.z = sqrt(r0.z);
    r0 = _954;
    float4 _962 = r0;
    _962.z = r0.z * cb0_m[13].y;
    r0 = _962;
    float4 _972 = r0;
    _972.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _972;
    float4 _984 = r0;
    _984.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _984;
    float4 _990 = r0;
    _990.x = exp2(-r0.x);
    r0 = _990;
    float4 _996 = r0;
    _996.x = min(r0.x, asfloat(1065353216u));
    r0 = _996;
    float4 _1003 = o2;
    _1003.w = (-r0.x) + asfloat(1065353216u);
    o2 = _1003;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1011 = asfloat(v1);
    shader_in[1] = float4(_1011.x, _1011.y, shader_in[1].z, shader_in[1].w);
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
