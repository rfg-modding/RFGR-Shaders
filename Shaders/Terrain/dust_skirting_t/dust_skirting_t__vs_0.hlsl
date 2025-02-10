cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float2 _57 = float2(asint(shader_in[0].xy));
    r0 = float4(_57.x, _57.y, r0.z, r0.w);
    float4 _66 = r0;
    _66.y = r0.y + asfloat(1191182336u);
    r0 = _66;
    float4 _74 = r1;
    _74.y = r0.x * asfloat(1015021568u);
    r1 = _74;
    float4 _81 = r0;
    _81.x = r0.y * asfloat(998244352u);
    r0 = _81;
    float4 _86 = r1;
    _86.z = trunc(r0.x);
    r1 = _86;
    float4 _97 = r1;
    _97.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _97;
    float4 _101 = r1;
    _101.w = asfloat(1065353216u);
    r1 = _101;
    float4 _116 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _130 = r0;
    _130.x = mad(_116.w, r1.w, mad(_116.z, r1.z, mad(_116.y, r1.y, _116.x * r1.x)));
    r0 = _130;
    float4 _142 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _156 = r0;
    _156.y = mad(_142.w, r1.w, mad(_142.z, r1.z, mad(_142.y, r1.y, _142.x * r1.x)));
    r0 = _156;
    float4 _168 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _182 = r0;
    _182.z = mad(_168.w, r1.w, mad(_168.z, r1.z, mad(_168.y, r1.y, _168.x * r1.x)));
    r0 = _182;
    float3 _196 = r1.xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_196.x, _196.y, _196.z, r1.w);
    float4 _200 = r0;
    _200.w = asfloat(1065353216u);
    r0 = _200;
    float4 _211 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _225 = o0;
    _225.x = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float4 _236 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _250 = o0;
    _250.y = mad(_236.w, r0.w, mad(_236.z, r0.z, mad(_236.y, r0.y, _236.x * r0.x)));
    o0 = _250;
    float4 _261 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _275 = o0;
    _275.z = mad(_261.w, r0.w, mad(_261.z, r0.z, mad(_261.y, r0.y, _261.x * r0.x)));
    o0 = _275;
    float4 _286 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _300 = o0;
    _300.w = mad(_286.w, r0.w, mad(_286.z, r0.z, mad(_286.y, r0.y, _286.x * r0.x)));
    o0 = _300;
    float3 _314 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_314.x, _314.y, _314.z, r0.w);
    float3 _326 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _337 = r2;
    _337.x = mad(r1.xyz.z, _326.z, mad(r1.xyz.y, _326.y, r1.xyz.x * _326.x));
    r2 = _337;
    float3 _348 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _358 = r2;
    _358.z = mad(r1.xyz.z, _348.z, mad(r1.xyz.y, _348.y, r1.xyz.x * _348.x));
    r2 = _358;
    float3 _369 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _379 = r0;
    _379.w = mad(r1.xyz.z, _369.z, mad(r1.xyz.y, _369.y, r1.xyz.x * _369.x));
    r0 = _379;
    float4 _388 = r0;
    _388.w = r0.w * cb5_m[5].y;
    r0 = _388;
    float2 _398 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_398.x, r1.y, _398.y, r1.w);
    float4 _403 = r1;
    _403.w = asfloat(3212836864u);
    r1 = _403;
    float4 _410 = r1;
    _410.y = r0.w * r1.w;
    r1 = _410;
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _421 = o3;
    _421.w = r1.z;
    o3 = _421;
    float3 _430 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _443 = r1;
    _443.x = mad(_430.z, shader_in[1].xyz.z, mad(_430.y, shader_in[1].xyz.y, _430.x * shader_in[1].xyz.x));
    r1 = _443;
    float3 _452 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _465 = r1;
    _465.y = mad(_452.z, shader_in[1].xyz.z, mad(_452.y, shader_in[1].xyz.y, _452.x * shader_in[1].xyz.x));
    r1 = _465;
    float3 _474 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _487 = r1;
    _487.z = mad(_474.z, shader_in[1].xyz.z, mad(_474.y, shader_in[1].xyz.y, _474.x * shader_in[1].xyz.x));
    r1 = _487;
    float4 _502 = r0;
    _502.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _502;
    float4 _507 = r0;
    _507.w = rsqrt(r0.w);
    r0 = _507;
    float3 _513 = r0.www * r1.xyz;
    r1 = float4(_513.x, _513.y, _513.z, r1.w);
    float3 _523 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _535 = o2;
    _535.z = mad(_523.z, r1.xyz.z, mad(_523.y, r1.xyz.y, _523.x * r1.xyz.x));
    o2 = _535;
    float4 _539 = o5;
    _539.z = r1.y;
    o5 = _539;
    float3 _553 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_553.x, _553.y, _553.z, r1.w);
    float3 _572 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_572.x, _572.y, _572.z, r1.w);
    float4 _588 = r0;
    _588.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _588;
    float4 _593 = r0;
    _593.w = rsqrt(r0.w);
    r0 = _593;
    float3 _599 = r0.www * r1.xyz;
    r1 = float4(_599.x, _599.y, _599.z, r1.w);
    float3 _607 = r1.yzx * shader_in[1].zxy;
    r2 = float4(_607.x, _607.y, _607.z, r2.w);
    float3 _619 = (shader_in[1].yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_619.x, _619.y, _619.z, r2.w);
    float4 _635 = r0;
    _635.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _635;
    float4 _640 = r0;
    _640.w = rsqrt(r0.w);
    r0 = _640;
    float3 _646 = r0.www * r2.xyz;
    r2 = float4(_646.x, _646.y, _646.z, r2.w);
    float3 _656 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _669 = r3;
    _669.x = mad(_656.z, r2.xyz.z, mad(_656.y, r2.xyz.y, _656.x * r2.xyz.x));
    r3 = _669;
    float3 _678 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _690 = r3;
    _690.y = mad(_678.z, r2.xyz.z, mad(_678.y, r2.xyz.y, _678.x * r2.xyz.x));
    r3 = _690;
    float3 _699 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _711 = r3;
    _711.z = mad(_699.z, r2.xyz.z, mad(_699.y, r2.xyz.y, _699.x * r2.xyz.x));
    r3 = _711;
    float3 _720 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _732 = o3;
    _732.x = mad(_720.z, r2.xyz.z, mad(_720.y, r2.xyz.y, _720.x * r2.xyz.x));
    o3 = _732;
    float4 _747 = r0;
    _747.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _747;
    float4 _752 = r0;
    _752.w = rsqrt(r0.w);
    r0 = _752;
    float3 _758 = r0.www * r3.xyz;
    r2 = float4(_758.x, _758.y, _758.z, r2.w);
    float3 _768 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _780 = o2;
    _780.x = mad(_768.z, r2.xyz.z, mad(_768.y, r2.xyz.y, _768.x * r2.xyz.x));
    o2 = _780;
    float4 _784 = o5;
    _784.x = r2.y;
    o5 = _784;
    float3 _793 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _805 = o2;
    _805.y = mad(_793.z, r1.xyz.z, mad(_793.y, r1.xyz.y, _793.x * r1.xyz.x));
    o2 = _805;
    float3 _814 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _826 = o3;
    _826.y = mad(_814.z, r1.xyz.z, mad(_814.y, r1.xyz.y, _814.x * r1.xyz.x));
    o3 = _826;
    float4 _830 = o5;
    _830.y = r1.y;
    o5 = _830;
    float3 _839 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _852 = o3;
    _852.z = mad(_839.z, shader_in[1].xyz.z, mad(_839.y, shader_in[1].xyz.y, _839.x * shader_in[1].xyz.x));
    o3 = _852;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    float4 _872 = r0;
    _872.w = r0.y * cb0_m[13].x;
    r0 = _872;
    float4 _879 = r1;
    _879.x = r0.w * asfloat(3216550459u);
    r1 = _879;
    float4 _884 = r1;
    _884.x = exp2(r1.x);
    r1 = _884;
    float4 _891 = r1;
    _891.x = (-r1.x) + asfloat(1065353216u);
    r1 = _891;
    float4 _898 = r0;
    _898.w = r1.x / r0.w;
    r0 = _898;
    float4 _910 = r1;
    _910.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _910;
    float4 _925 = r0;
    _925.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _925;
    float4 _930 = r0;
    _930.x = sqrt(r0.x);
    r0 = _930;
    float4 _938 = r0;
    _938.x = r0.x * cb0_m[13].y;
    r0 = _938;
    float4 _948 = r0;
    _948.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _948;
    float4 _960 = r0;
    _960.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _960;
    float4 _966 = r0;
    _966.x = exp2(-r0.x);
    r0 = _966;
    float4 _972 = r0;
    _972.x = min(r0.x, asfloat(1065353216u));
    r0 = _972;
    float4 _979 = o5;
    _979.w = (-r0.x) + asfloat(1065353216u);
    o5 = _979;
}

void vert_main()
{
    float2 _983 = asfloat(v0);
    shader_in[0] = float4(_983.x, _983.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
