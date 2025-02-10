cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _82 = r0;
    _82.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _82;
    float4 _100 = r0;
    _100.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _100;
    float4 _118 = r0;
    _118.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _118;
    float4 _134 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _148 = o0;
    _148.x = mad(_134.w, r0.w, mad(_134.z, r0.z, mad(_134.y, r0.y, _134.x * r0.x)));
    o0 = _148;
    float4 _160 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _174 = o0;
    _174.y = mad(_160.w, r0.w, mad(_160.z, r0.z, mad(_160.y, r0.y, _160.x * r0.x)));
    o0 = _174;
    float4 _186 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _200 = o0;
    _200.z = mad(_186.w, r0.w, mad(_186.z, r0.z, mad(_186.y, r0.y, _186.x * r0.x)));
    o0 = _200;
    float4 _212 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _226 = o0;
    _226.w = mad(_212.w, r0.w, mad(_212.z, r0.z, mad(_212.y, r0.y, _212.x * r0.x)));
    o0 = _226;
    float3 _239 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_239.x, _239.y, _239.z, r1.w);
    float4 _257 = r2;
    _257.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _257;
    float4 _273 = r2;
    _273.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _273;
    float4 _289 = r2;
    _289.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _289;
    float4 _304 = r0;
    _304.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _304;
    float4 _309 = r0;
    _309.w = rsqrt(r0.w);
    r0 = _309;
    float3 _315 = r0.www * r2.xyz;
    r1 = float4(_315.x, _315.y, _315.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _342 = r3;
    _342.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _342;
    float4 _358 = r3;
    _358.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _358;
    float4 _374 = r3;
    _374.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _374;
    float4 _389 = r0;
    _389.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _389;
    float4 _394 = r0;
    _394.w = rsqrt(r0.w);
    r0 = _394;
    float3 _400 = r0.www * r3.xyz;
    r2 = float4(_400.x, _400.y, _400.z, r2.w);
    float3 _407 = r1.zxy * r2.yzx;
    r3 = float4(_407.x, _407.y, _407.z, r3.w);
    float3 _418 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_418.x, _418.y, _418.z, r3.w);
    float3 _425 = r2.www * r3.xyz;
    r3 = float4(_425.x, _425.y, _425.z, r3.w);
    float3 _435 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _447 = o1;
    _447.y = mad(_435.z, r3.xyz.z, mad(_435.y, r3.xyz.y, _435.x * r3.xyz.x));
    o1 = _447;
    float3 _456 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _468 = o1;
    _468.z = mad(_456.z, r1.xyz.z, mad(_456.y, r1.xyz.y, _456.x * r1.xyz.x));
    o1 = _468;
    float3 _477 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _489 = o1;
    _489.x = mad(_477.z, r2.xyz.z, mad(_477.y, r2.xyz.y, _477.x * r2.xyz.x));
    o1 = _489;
    float3 _503 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_503.x, _503.y, _503.z, r4.w);
    float3 _518 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_518.x, _518.y, _518.z, r0.w);
    float4 _534 = r0;
    _534.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _534;
    float4 _539 = r0;
    _539.w = rsqrt(r0.w);
    r0 = _539;
    float3 _545 = r0.www * r4.xyz;
    r4 = float4(_545.x, _545.y, _545.z, r4.w);
    float3 _561 = o2;
    _561.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _561;
    float4 _565 = o3;
    _565.x = r2.y;
    o3 = _565;
    float3 _580 = o2;
    _580.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _580;
    float4 _584 = o3;
    _584.z = r1.y;
    o3 = _584;
    float3 _599 = o2;
    _599.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _599;
    float4 _603 = o3;
    _603.y = r3.y;
    o3 = _603;
    float4 _612 = r0;
    _612.w = r0.y * cb0_m[13].x;
    r0 = _612;
    float4 _619 = r1;
    _619.x = r0.w * asfloat(3216550459u);
    r1 = _619;
    float4 _624 = r1;
    _624.x = exp2(r1.x);
    r1 = _624;
    float4 _631 = r1;
    _631.x = (-r1.x) + asfloat(1065353216u);
    r1 = _631;
    float4 _638 = r0;
    _638.w = r1.x / r0.w;
    r0 = _638;
    float4 _650 = r1;
    _650.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _650;
    float4 _665 = r0;
    _665.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _665;
    float4 _670 = r0;
    _670.x = sqrt(r0.x);
    r0 = _670;
    float4 _678 = r0;
    _678.x = r0.x * cb0_m[13].y;
    r0 = _678;
    float4 _688 = r0;
    _688.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _688;
    float4 _700 = r0;
    _700.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _700;
    float4 _706 = r0;
    _706.x = exp2(-r0.x);
    r0 = _706;
    float4 _712 = r0;
    _712.x = min(r0.x, asfloat(1065353216u));
    r0 = _712;
    float4 _719 = o3;
    _719.w = (-r0.x) + asfloat(1065353216u);
    o3 = _719;
    float2 _726 = float2(asint(shader_in[1].xy));
    r0 = float4(_726.x, _726.y, r0.z, r0.w);
    float2 _737 = r0.xy * float2(cb2_m[6].x, cb2_m[6].y);
    r0 = float4(_737.x, _737.y, r0.z, r0.w);
    float2 _746 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_746.x, _746.y, o4.z, o4.w);
    float2 _754 = float2(asint(shader_in[4].xy));
    r0 = float4(_754.x, _754.y, r0.z, r0.w);
    float2 _760 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _760.x, _760.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _769 = asfloat(v1);
    shader_in[1] = float4(_769.x, _769.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _780 = asfloat(v4);
    shader_in[4] = float4(_780.x, _780.y, shader_in[4].z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
