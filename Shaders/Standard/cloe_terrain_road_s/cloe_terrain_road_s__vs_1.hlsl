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
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[19] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v1;
static int2 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
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
    float2 _272 = (r1.xy * asfloat(uint2(989855744u, 989855744u))) + asfloat(uint2(1056964608u, 1056964608u));
    r1 = float4(_272.x, _272.y, r1.z, r1.w);
    float2 _284 = r1.xy + float2(cb2_m[18].z, cb2_m[18].w);
    r1 = float4(r1.x, r1.y, _284.x, _284.y);
    o1 = r1.zw * float2(cb2_m[18].x, cb2_m[18].y);
    float3 _308 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_308.x, _308.y, _308.z, r2.w);
    float3 _323 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_323.x, _323.y, _323.z, r0.w);
    float4 _339 = r0;
    _339.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _339;
    float4 _344 = r0;
    _344.w = rsqrt(r0.w);
    r0 = _344;
    float3 _350 = r0.www * r2.xyz;
    r2 = float4(_350.x, _350.y, _350.z, r2.w);
    float3 _364 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_364.x, _364.y, _364.z, r3.w);
    float3 _375 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _388 = r4;
    _388.x = mad(_375.z, r3.xyz.z, mad(_375.y, r3.xyz.y, _375.x * r3.xyz.x));
    r4 = _388;
    float3 _397 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _409 = r4;
    _409.y = mad(_397.z, r3.xyz.z, mad(_397.y, r3.xyz.y, _397.x * r3.xyz.x));
    r4 = _409;
    float3 _418 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _430 = r4;
    _430.z = mad(_418.z, r3.xyz.z, mad(_418.y, r3.xyz.y, _418.x * r3.xyz.x));
    r4 = _430;
    float4 _445 = r0;
    _445.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _445;
    float4 _450 = r0;
    _450.w = rsqrt(r0.w);
    r0 = _450;
    float3 _456 = r0.www * r4.xyz;
    r3 = float4(_456.x, _456.y, _456.z, r3.w);
    float3 _463 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r4 = float4(_463.x, _463.y, _463.z, r4.w);
    float3 _474 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r4.xyz);
    r4 = float4(_474.x, _474.y, _474.z, r4.w);
    float4 _487 = r0;
    _487.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _487;
    float4 _492 = r0;
    _492.w = rsqrt(r0.w);
    r0 = _492;
    float3 _498 = r0.www * r4.xyz;
    r4 = float4(_498.x, _498.y, _498.z, r4.w);
    float3 _506 = r3.yzx * (-r4.xyz);
    r5 = float4(_506.x, _506.y, _506.z, r5.w);
    float3 _519 = ((-r4.zxy) * r3.zxy) + (-r5.xyz);
    r5 = float4(_519.x, _519.y, _519.z, r5.w);
    float4 _535 = o2;
    _535.x = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o2 = _535;
    float3 _544 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _556 = o3;
    _556.x = mad(_544.z, r5.xyz.z, mad(_544.y, r5.xyz.y, _544.x * r5.xyz.x));
    o3 = _556;
    float2 _562 = -r4.xz;
    float4 _569 = o2;
    _569.y = mad(r2.zy.y, _562.y, r2.zy.x * _562.x);
    o2 = _569;
    float4 _584 = o2;
    _584.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o2 = _584;
    float3 _593 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _605 = o3;
    _605.z = mad(_593.z, r3.xyz.z, mad(_593.y, r3.xyz.y, _593.x * r3.xyz.x));
    o3 = _605;
    float2 _612 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _615 = -r4.xz;
    float4 _622 = o3;
    _622.y = mad(_612.y, _615.y, _612.x * _615.x);
    o3 = _622;
    float4 _631 = o2;
    _631.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o2 = _631;
    float4 _640 = r0;
    _640.w = r0.y * cb0_m[13].x;
    r0 = _640;
    float4 _647 = r1;
    _647.z = r0.w * asfloat(3216550459u);
    r1 = _647;
    float4 _652 = r1;
    _652.z = exp2(r1.z);
    r1 = _652;
    float4 _659 = r1;
    _659.z = (-r1.z) + asfloat(1065353216u);
    r1 = _659;
    float4 _666 = r0;
    _666.w = r1.z / r0.w;
    r0 = _666;
    float4 _678 = r1;
    _678.z = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _678;
    float4 _693 = r0;
    _693.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _693;
    float4 _698 = r0;
    _698.x = sqrt(r0.x);
    r0 = _698;
    float4 _706 = r0;
    _706.x = r0.x * cb0_m[13].y;
    r0 = _706;
    float4 _716 = r0;
    _716.y = (asuint(r1.z) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _716;
    float4 _728 = r0;
    _728.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _728;
    float4 _734 = r0;
    _734.x = exp2(-r0.x);
    r0 = _734;
    float4 _740 = r0;
    _740.x = min(r0.x, asfloat(1065353216u));
    r0 = _740;
    float4 _747 = o3;
    _747.w = (-r0.x) + asfloat(1065353216u);
    o3 = _747;
    float2 _758 = r1.xy + float2(cb2_m[16].z, cb2_m[16].w);
    r0 = float4(_758.x, _758.y, r0.z, r0.w);
    float2 _769 = r0.xy * float2(cb2_m[16].x, cb2_m[16].y);
    o4 = float4(_769.x, _769.y, o4.z, o4.w);
    float2 _776 = float2(asint(shader_in[2].xy));
    r0 = float4(_776.x, _776.y, r0.z, r0.w);
    float2 _784 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _784.x, _784.y);
    float2 _796 = r1.xy + float2(cb2_m[17].z, cb2_m[17].w);
    r0 = float4(_796.x, _796.y, r0.z, r0.w);
    o5 = float4(r1.xy.x, r1.xy.y, o5.z, o5.w);
    float2 _811 = r0.xy * float2(cb2_m[17].x, cb2_m[17].y);
    o5 = float4(o5.x, o5.y, _811.x, _811.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float2 _822 = asfloat(v2);
    shader_in[2] = float4(_822.x, _822.y, shader_in[2].z, shader_in[2].w);
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
