cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
    float4 _82 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _96 = r0;
    _96.y = mad(_82.w, r1.w, mad(_82.z, r1.z, mad(_82.y, r1.y, _82.x * r1.x)));
    r0 = _96;
    float4 _107 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _121 = r0;
    _121.x = mad(_107.w, r1.w, mad(_107.z, r1.z, mad(_107.y, r1.y, _107.x * r1.x)));
    r0 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r0;
    _147.z = mad(_133.w, r1.w, mad(_133.z, r1.z, mad(_133.y, r1.y, _133.x * r1.x)));
    r0 = _147;
    float4 _158 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _172 = o0;
    _172.x = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _183 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _197 = o0;
    _197.y = mad(_183.w, r0.w, mad(_183.z, r0.z, mad(_183.y, r0.y, _183.x * r0.x)));
    o0 = _197;
    float4 _208 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _222 = o0;
    _222.z = mad(_208.w, r0.w, mad(_208.z, r0.z, mad(_208.y, r0.y, _208.x * r0.x)));
    o0 = _222;
    float4 _234 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _248 = o0;
    _248.w = mad(_234.w, r0.w, mad(_234.z, r0.z, mad(_234.y, r0.y, _234.x * r0.x)));
    o0 = _248;
    float2 _259 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_259.x, _259.y, r1.z, r1.w);
    float2 _276 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[7].z, cb2_m[7].w);
    r1 = float4(r1.x, r1.y, _276.x, _276.y);
    o1 = r1.zw * float2(cb2_m[7].x, cb2_m[7].y);
    float3 _300 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_300.x, _300.y, _300.z, r2.w);
    float3 _315 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_315.x, _315.y, _315.z, r0.w);
    float4 _331 = r0;
    _331.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _331;
    float4 _336 = o2;
    _336.w = sqrt(r0.w);
    o2 = _336;
    float4 _341 = r0;
    _341.w = rsqrt(r0.w);
    r0 = _341;
    float3 _347 = r0.www * r2.xyz;
    r2 = float4(_347.x, _347.y, _347.z, r2.w);
    float3 _361 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_361.x, _361.y, _361.z, r3.w);
    float3 _372 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _385 = r4;
    _385.x = mad(_372.z, r3.xyz.z, mad(_372.y, r3.xyz.y, _372.x * r3.xyz.x));
    r4 = _385;
    float3 _394 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _406 = r4;
    _406.y = mad(_394.z, r3.xyz.z, mad(_394.y, r3.xyz.y, _394.x * r3.xyz.x));
    r4 = _406;
    float3 _415 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _427 = r4;
    _427.z = mad(_415.z, r3.xyz.z, mad(_415.y, r3.xyz.y, _415.x * r3.xyz.x));
    r4 = _427;
    float4 _442 = r0;
    _442.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _442;
    float4 _447 = r0;
    _447.w = rsqrt(r0.w);
    r0 = _447;
    float3 _453 = r0.www * r4.xyz;
    r3 = float4(_453.x, _453.y, _453.z, r3.w);
    float3 _460 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r4 = float4(_460.x, _460.y, _460.z, r4.w);
    float3 _471 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r4.xyz);
    r4 = float4(_471.x, _471.y, _471.z, r4.w);
    float4 _484 = r0;
    _484.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _484;
    float4 _489 = r0;
    _489.w = rsqrt(r0.w);
    r0 = _489;
    float3 _495 = r0.www * r4.xyz;
    r4 = float4(_495.x, _495.y, _495.z, r4.w);
    float3 _503 = r3.yzx * (-r4.xyz);
    r5 = float4(_503.x, _503.y, _503.z, r5.w);
    float3 _516 = ((-r4.zxy) * r3.zxy) + (-r5.xyz);
    r5 = float4(_516.x, _516.y, _516.z, r5.w);
    float4 _521 = o2;
    _521.x = r5.y;
    o2 = _521;
    float4 _526 = o2;
    _526.y = -r4.z;
    o2 = _526;
    float4 _530 = o2;
    _530.z = r3.y;
    o2 = _530;
    float4 _539 = r0;
    _539.w = r0.y * cb0_m[13].x;
    r0 = _539;
    float4 _546 = r1;
    _546.z = r0.w * asfloat(3216550459u);
    r1 = _546;
    float4 _551 = r1;
    _551.z = exp2(r1.z);
    r1 = _551;
    float4 _558 = r1;
    _558.z = (-r1.z) + asfloat(1065353216u);
    r1 = _558;
    float4 _565 = r0;
    _565.w = r1.z / r0.w;
    r0 = _565;
    float4 _577 = r1;
    _577.z = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _577;
    float4 _592 = r0;
    _592.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _592;
    float4 _597 = r0;
    _597.x = sqrt(r0.x);
    r0 = _597;
    float4 _605 = r0;
    _605.x = r0.x * cb0_m[13].y;
    r0 = _605;
    float4 _615 = r0;
    _615.y = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _615;
    float4 _627 = r0;
    _627.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _627;
    float4 _633 = r0;
    _633.x = exp2(-r0.x);
    r0 = _633;
    float4 _639 = r0;
    _639.x = min(r0.x, asfloat(1065353216u));
    r0 = _639;
    float4 _646 = o3;
    _646.w = (-r0.x) + asfloat(1065353216u);
    o3 = _646;
    float3 _655 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _667 = o3;
    _667.z = mad(_655.z, r3.xyz.z, mad(_655.y, r3.xyz.y, _655.x * r3.xyz.x));
    o3 = _667;
    float4 _682 = o4;
    _682.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o4 = _682;
    float2 _689 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _692 = -r4.xz;
    float4 _699 = o3;
    _699.y = mad(_689.y, _692.y, _689.x * _692.x);
    o3 = _699;
    float2 _705 = -r4.xz;
    float4 _712 = o4;
    _712.y = mad(r2.zy.y, _705.y, r2.zy.x * _705.x);
    o4 = _712;
    float4 _727 = o4;
    _727.x = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o4 = _727;
    float3 _736 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _748 = o3;
    _748.x = mad(_736.z, r5.xyz.z, mad(_736.y, r5.xyz.y, _736.x * r5.xyz.x));
    o3 = _748;
    float4 _755 = r0;
    _755.x = float(asint(shader_in[2].x));
    r0 = _755;
    float4 _762 = o4;
    _762.w = r0.x * asfloat(981467136u);
    o4 = _762;
    float2 _771 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_771.x, _771.y, r0.z, r0.w);
    float2 _784 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_784.x, _784.y, r0.z, r0.w);
    float2 _795 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _795.x, _795.y);
    float2 _808 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(_808.x, _808.y, r0.z, r0.w);
    float2 _819 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(_819.x, _819.y, o5.z, o5.w);
    float2 _833 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(_833.x, _833.y, r0.z, r0.w);
    float2 _847 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(r0.x, r0.y, _847.x, _847.y);
    float2 _858 = r0.zw * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(o6.x, o6.y, _858.x, _858.y);
    float2 _869 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    o6 = float4(_869.x, _869.y, o6.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _884 = shader_in[2];
    _884.x = asfloat(v2);
    shader_in[2] = _884;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
