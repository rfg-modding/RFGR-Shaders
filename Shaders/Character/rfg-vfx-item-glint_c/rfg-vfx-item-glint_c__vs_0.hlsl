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
static float3 v2;
static float4 v3;
static int4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
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
static float2 o3;
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
    float4 _501 = r1;
    _501.x = mad(_487.w, r4.w, mad(_487.z, r4.z, mad(_487.y, r4.y, _487.x * r4.x)));
    r1 = _501;
    float4 _512 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _526 = r1;
    _526.y = mad(_512.w, r4.w, mad(_512.z, r4.z, mad(_512.y, r4.y, _512.x * r4.x)));
    r1 = _526;
    float4 _537 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _551 = r1;
    _551.z = mad(_537.w, r4.w, mad(_537.z, r4.z, mad(_537.y, r4.y, _537.x * r4.x)));
    r1 = _551;
    float4 _562 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _576 = r1;
    _576.w = mad(_562.w, r4.w, mad(_562.z, r4.z, mad(_562.y, r4.y, _562.x * r4.x)));
    r1 = _576;
    float3 _590 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(r0.x, _590.x, _590.y, _590.z);
    o0 = r1;
    o1 = r1;
    float3 _606 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_606.x, _606.y, _606.z, r1.w);
    float4 _622 = r3;
    _622.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _622;
    float4 _637 = r3;
    _637.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _637;
    float4 _652 = r3;
    _652.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _652;
    float3 _658 = r0.xxx * r3.xyz;
    r1 = float4(_658.x, _658.y, _658.z, r1.w);
    float4 _674 = r0;
    _674.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _674;
    float4 _679 = r0;
    _679.x = rsqrt(r0.x);
    r0 = _679;
    float3 _685 = r0.xxx * r1.xyz;
    r1 = float4(_685.x, _685.y, _685.z, r1.w);
    float3 _695 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _707 = r2;
    _707.x = mad(_695.z, r1.xyz.z, mad(_695.y, r1.xyz.y, _695.x * r1.xyz.x));
    r2 = _707;
    float3 _716 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _728 = r2;
    _728.y = mad(_716.z, r1.xyz.z, mad(_716.y, r1.xyz.y, _716.x * r1.xyz.x));
    r2 = _728;
    float3 _737 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _749 = r2;
    _749.z = mad(_737.z, r1.xyz.z, mad(_737.y, r1.xyz.y, _737.x * r1.xyz.x));
    r2 = _749;
    float4 _764 = r0;
    _764.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _764;
    float4 _769 = r0;
    _769.x = rsqrt(r0.x);
    r0 = _769;
    float3 _775 = r0.xxx * r2.xyz;
    o2 = float4(_775.x, _775.y, _775.z, o2.w);
    float4 _779 = o2;
    _779.w = asfloat(0u);
    o2 = _779;
    float4 _788 = r0;
    _788.x = r0.z * cb0_m[13].x;
    r0 = _788;
    float4 _795 = r1;
    _795.x = r0.x * asfloat(3216550459u);
    r1 = _795;
    float4 _800 = r1;
    _800.x = exp2(r1.x);
    r1 = _800;
    float4 _807 = r1;
    _807.x = (-r1.x) + asfloat(1065353216u);
    r1 = _807;
    float4 _814 = r0;
    _814.x = r1.x / r0.x;
    r0 = _814;
    float4 _826 = r1;
    _826.x = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _826;
    float4 _841 = r0;
    _841.y = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _841;
    float4 _846 = r0;
    _846.y = sqrt(r0.y);
    r0 = _846;
    float4 _854 = r0;
    _854.y = r0.y * cb0_m[13].y;
    r0 = _854;
    float4 _864 = r0;
    _864.x = (asuint(r1.x) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _864;
    float4 _876 = r0;
    _876.x = (r0.x * r0.y) + (-cb0_m[13].w);
    r0 = _876;
    float4 _882 = r0;
    _882.x = exp2(-r0.x);
    r0 = _882;
    float4 _888 = r0;
    _888.x = min(r0.x, asfloat(1065353216u));
    r0 = _888;
    float2 _895 = o3;
    _895.y = (-r0.x) + asfloat(1065353216u);
    o3 = _895;
    float2 _901 = o3;
    _901.x = cb0_m[12].x;
    o3 = _901;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
