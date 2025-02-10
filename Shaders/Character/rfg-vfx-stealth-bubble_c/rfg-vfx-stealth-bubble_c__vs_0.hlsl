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
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

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
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _88 = r1;
    _88.w = asfloat(1065353216u);
    r1 = _88;
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
    float3 _589 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _589.x, _589.y, _589.z);
    float4 _605 = r1;
    _605.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _605;
    float4 _620 = r1;
    _620.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _620;
    float4 _635 = r1;
    _635.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _635;
    float3 _641 = r0.xxx * r1.xyz;
    r0 = float4(_641.x, _641.y, _641.z, r0.w);
    float4 _657 = r0;
    _657.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _657;
    float4 _662 = r0;
    _662.w = rsqrt(r0.w);
    r0 = _662;
    float3 _668 = r0.www * r0.xyz;
    r0 = float4(_668.x, _668.y, _668.z, r0.w);
    float3 _678 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _690 = r1;
    _690.x = mad(_678.z, r0.xyz.z, mad(_678.y, r0.xyz.y, _678.x * r0.xyz.x));
    r1 = _690;
    float3 _699 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _711 = r1;
    _711.y = mad(_699.z, r0.xyz.z, mad(_699.y, r0.xyz.y, _699.x * r0.xyz.x));
    r1 = _711;
    float3 _720 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _732 = r1;
    _732.z = mad(_720.z, r0.xyz.z, mad(_720.y, r0.xyz.y, _720.x * r0.xyz.x));
    r1 = _732;
    float4 _747 = r0;
    _747.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _747;
    float4 _752 = r0;
    _752.x = rsqrt(r0.x);
    r0 = _752;
    float3 _758 = r0.xxx * r1.xyz;
    r0 = float4(_758.x, _758.y, _758.z, r0.w);
    float3 _773 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_773.x, _773.y, _773.z, r1.w);
    float4 _777 = r4;
    _777.w = asfloat(0u);
    r4 = _777;
    r2 = (-r4) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _806 = r0;
    _806.w = mad(r2.w, r2.w, mad(r2.z, r2.z, mad(r2.y, r2.y, r2.x * r2.x)));
    r0 = _806;
    float4 _811 = r0;
    _811.w = rsqrt(r0.w);
    r0 = _811;
    float3 _817 = r0.www * r2.xyz;
    r2 = float4(_817.x, _817.y, _817.z, r2.w);
    float4 _833 = o1;
    _833.z = mad(r2.xyz.z, r0.xyz.z, mad(r2.xyz.y, r0.xyz.y, r2.xyz.x * r0.xyz.x));
    o1 = _833;
    float4 _842 = r0;
    _842.x = r1.y * cb0_m[13].x;
    r0 = _842;
    float4 _849 = r0;
    _849.y = r0.x * asfloat(3216550459u);
    r0 = _849;
    float4 _854 = r0;
    _854.y = exp2(r0.y);
    r0 = _854;
    float4 _861 = r0;
    _861.y = (-r0.y) + asfloat(1065353216u);
    r0 = _861;
    float4 _868 = r0;
    _868.x = r0.y / r0.x;
    r0 = _868;
    float4 _880 = r0;
    _880.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _880;
    float4 _895 = r0;
    _895.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _895;
    float4 _900 = r0;
    _900.z = sqrt(r0.z);
    r0 = _900;
    float4 _908 = r0;
    _908.z = r0.z * cb0_m[13].y;
    r0 = _908;
    float4 _918 = r0;
    _918.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _918;
    float4 _930 = r0;
    _930.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _930;
    float4 _936 = r0;
    _936.x = exp2(-r0.x);
    r0 = _936;
    float4 _942 = r0;
    _942.x = min(r0.x, asfloat(1065353216u));
    r0 = _942;
    float4 _949 = o1;
    _949.w = (-r0.x) + asfloat(1065353216u);
    o1 = _949;
    float2 _956 = float2(asint(shader_in[1].xy));
    r0 = float4(_956.x, _956.y, r0.z, r0.w);
    float2 _965 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_965.x, _965.y, r0.z, r0.w);
    float4 _977 = o1;
    _977.x = (cb6_m[3].w * asfloat(1056964608u)) + r0.x;
    o1 = _977;
    float4 _981 = o1;
    _981.y = r0.y;
    o1 = _981;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _989 = asfloat(v1);
    shader_in[1] = float4(_989.x, _989.y, shader_in[1].z, shader_in[1].w);
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
