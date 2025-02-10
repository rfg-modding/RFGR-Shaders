cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
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
static float3 v3;
static float3 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float2 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _53 = r0;
    _53.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _53;
    float3 _66 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_66.x, _66.y, _66.z, r0.w);
    float4 _71 = r0;
    _71.w = asfloat(1065353216u);
    r0 = _71;
    float4 _88 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _103 = r1;
    _103.x = mad(_88.w, r0.w, mad(_88.z, r0.z, mad(_88.y, r0.y, _88.x * r0.x)));
    r1 = _103;
    float4 _115 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _129 = r1;
    _129.z = mad(_115.w, r0.w, mad(_115.z, r0.z, mad(_115.y, r0.y, _115.x * r0.x)));
    r1 = _129;
    float4 _141 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _155 = r1;
    _155.y = mad(_141.w, r0.w, mad(_141.z, r0.z, mad(_141.y, r0.y, _141.x * r0.x)));
    r1 = _155;
    float4 _158 = r1;
    _158.w = asfloat(1065353216u);
    r1 = _158;
    float4 _169 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _183 = o0;
    _183.x = mad(_169.w, r1.w, mad(_169.z, r1.z, mad(_169.y, r1.y, _169.x * r1.x)));
    o0 = _183;
    float4 _194 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _208 = o0;
    _208.y = mad(_194.w, r1.w, mad(_194.z, r1.z, mad(_194.y, r1.y, _194.x * r1.x)));
    o0 = _208;
    float4 _219 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _233 = o0;
    _233.z = mad(_219.w, r1.w, mad(_219.z, r1.z, mad(_219.y, r1.y, _219.x * r1.x)));
    o0 = _233;
    float4 _244 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _258 = o0;
    _258.w = mad(_244.w, r1.w, mad(_244.z, r1.z, mad(_244.y, r1.y, _244.x * r1.x)));
    o0 = _258;
    float3 _272 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_272.x, _272.y, _272.z, r0.w);
    float4 _285 = r0;
    _285.w = asfloat((cb6_m[3].w < r1.y) ? 4294967295u : 0u);
    r0 = _285;
    float2 _292 = o5;
    _292.x = asfloat(asuint(r0.w) & 1065353216u);
    o5 = _292;
    float4 _307 = r0;
    _307.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _307;
    float4 _312 = r1;
    _312.x = rsqrt(r0.w);
    r1 = _312;
    float4 _317 = r0;
    _317.w = sqrt(r0.w);
    r0 = _317;
    float4 _324 = r0;
    _324.w = r0.w + asfloat(3221225472u);
    r0 = _324;
    float4 _334 = o3;
    _334.w = clamp(r0.w * asfloat(1015889355u), 0.0f, 1.0f);
    o3 = _334;
    float4 _344 = r0;
    _344.w = ((-r0.y) * r1.x) + asfloat(1065353216u);
    r0 = _344;
    float3 _350 = r0.xyz * r1.xxx;
    r0 = float4(_350.x, _350.y, _350.z, r0.w);
    float4 _361 = r0;
    _361.w = asfloat((abs(r0.w) < asfloat(981668463u)) ? 4294967295u : 0u);
    r0 = _361;
    float4 _370 = r1;
    _370.x = asfloat((abs(r0.x) < asfloat(981668463u)) ? 4294967295u : 0u);
    r1 = _370;
    float4 _379 = r1;
    _379.y = asfloat((asfloat(0u) == abs(r0.z)) ? 0u : 4294967295u);
    r1 = _379;
    float4 _389 = r1;
    _389.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _389;
    float4 _399 = r0;
    _399.w = asfloat(asuint(r0.w) & asuint(r1.x));
    r0 = _399;
    uint3 _404 = asuint(r0.www);
    float3 _406 = asfloat(uint3(0u, 0u, 1065353216u));
    float3 _408 = asfloat(uint3(1065353216u, 0u, 0u));
    bool3 _411 = bool3(_404.x != uint3(0u, 0u, 0u).x, _404.y != uint3(0u, 0u, 0u).y, _404.z != uint3(0u, 0u, 0u).z);
    float3 _412 = float3(_411.x ? _406.x : _408.x, _411.y ? _406.y : _408.y, _411.z ? _406.z : _408.z);
    r1 = float4(_412.x, _412.y, _412.z, r1.w);
    float3 _419 = r0.zxy * r1.xyz;
    r2 = float4(_419.x, _419.y, _419.z, r2.w);
    float3 _431 = (r0.yzx * r1.yzx) + (-r2.xyz);
    r1 = float4(_431.x, _431.y, _431.z, r1.w);
    float4 _447 = r0;
    _447.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _447;
    float4 _452 = r0;
    _452.w = rsqrt(r0.w);
    r0 = _452;
    float3 _458 = r0.www * r1.xyz;
    r1 = float4(_458.x, _458.y, _458.z, r1.w);
    float3 _465 = r0.yzx * r1.zxy;
    r2 = float4(_465.x, _465.y, _465.z, r2.w);
    float3 _476 = (r1.yzx * r0.zxy) + (-r2.xyz);
    r2 = float4(_476.x, _476.y, _476.z, r2.w);
    float4 _492 = r0;
    _492.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _492;
    float4 _497 = r0;
    _497.w = rsqrt(r0.w);
    r0 = _497;
    float3 _503 = r0.www * r2.xyz;
    r2 = float4(_503.x, _503.y, _503.z, r2.w);
    float3 _516 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_516.x, _516.y, _516.z, r3.w);
    float3 _527 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_527.x, _527.y, _527.z, r4.w);
    float3 _539 = (shader_in[4].xxx * r4.xyz) + r3.xyz;
    r3 = float4(_539.x, _539.y, _539.z, r3.w);
    float3 _549 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _561 = r4;
    _561.x = mad(_549.z, r3.xyz.z, mad(_549.y, r3.xyz.y, _549.x * r3.xyz.x));
    r4 = _561;
    float3 _570 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _582 = r4;
    _582.y = mad(_570.z, r3.xyz.z, mad(_570.y, r3.xyz.y, _570.x * r3.xyz.x));
    r4 = _582;
    float3 _591 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _603 = r4;
    _603.z = mad(_591.z, r3.xyz.z, mad(_591.y, r3.xyz.y, _591.x * r3.xyz.x));
    r4 = _603;
    float4 _618 = r0;
    _618.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _618;
    float4 _623 = r0;
    _623.w = rsqrt(r0.w);
    r0 = _623;
    float3 _629 = r0.www * r4.xyz;
    r3 = float4(_629.x, _629.y, _629.z, r3.w);
    float4 _645 = r0;
    _645.w = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    r0 = _645;
    float4 _654 = r0;
    _654.w = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _654;
    float4 _661 = o1;
    _661.y = (-r0.w) + asfloat(1065353216u);
    o1 = _661;
    float4 _676 = r0;
    _676.w = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    r0 = _676;
    float4 _684 = r0;
    _684.w = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _684;
    float4 _691 = o1;
    _691.x = (-r0.w) + asfloat(1065353216u);
    o1 = _691;
    float2 _695 = asfloat(uint2(0u, 1065353216u));
    o1 = float4(o1.x, o1.y, _695.x, _695.y);
    float4 _712 = o2;
    _712.w = clamp(mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x)), 0.0f, 1.0f);
    o2 = _712;
    o2 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o2.w);
    o3 = float4(r3.xyz.x, r3.xyz.y, r3.xyz.z, o3.w);
    float3 _727 = float3(asint(shader_in[1].xxy));
    r0 = float4(_727.x, _727.y, _727.z, r0.w);
    float3 _736 = r0.xyz * asfloat(uint3(989855744u, 989855744u, 981467136u));
    r0 = float4(_736.x, _736.y, _736.z, r0.w);
    float3 _752 = (cb0_m[12].x.xxx * asfloat(uint3(1041865114u, 3189348762u, 1028443341u))) + r0.xyz;
    o4 = float4(_752.x, o4.y, _752.y, _752.z);
    float4 _757 = o4;
    _757.y = r0.z;
    o4 = _757;
    float4 _767 = r0;
    _767.x = asfloat((cb6_m[3].w < asfloat(3323739136u)) ? 4294967295u : 0u);
    r0 = _767;
    float4 _777 = r0;
    _777.y = asfloat((asfloat(3323741184u) < cb6_m[3].w) ? 4294967295u : 0u);
    r0 = _777;
    float4 _787 = r0;
    _787.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _787;
    float2 _796 = o5;
    _796.y = (asuint(r0.x) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    o5 = _796;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _804 = asfloat(v1);
    shader_in[1] = float4(_804.x, _804.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
