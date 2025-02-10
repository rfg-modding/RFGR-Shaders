cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float3 v2;
static float4 v3;
static float3 v4;
static float3 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _59 = r0;
    _59.w = asfloat(1065353216u);
    r0 = _59;
    float4 _69 = r1;
    _69.x = shader_in[5].x * asfloat(1082130432u);
    r1 = _69;
    float3 _82 = (r1.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r1 = float4(_82.x, _82.y, _82.z, r1.w);
    float4 _86 = r1;
    _86.w = asfloat(1065353216u);
    r1 = _86;
    float4 _101 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _115 = r0;
    _115.x = mad(_101.w, r1.w, mad(_101.z, r1.z, mad(_101.y, r1.y, _101.x * r1.x)));
    r0 = _115;
    float4 _127 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _141 = r0;
    _141.y = mad(_127.w, r1.w, mad(_127.z, r1.z, mad(_127.y, r1.y, _127.x * r1.x)));
    r0 = _141;
    float4 _153 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _167 = r0;
    _167.z = mad(_153.w, r1.w, mad(_153.z, r1.z, mad(_153.y, r1.y, _153.x * r1.x)));
    r0 = _167;
    float4 _178 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _192 = o0;
    _192.x = mad(_178.w, r0.w, mad(_178.z, r0.z, mad(_178.y, r0.y, _178.x * r0.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _217 = o0;
    _217.y = mad(_203.w, r0.w, mad(_203.z, r0.z, mad(_203.y, r0.y, _203.x * r0.x)));
    o0 = _217;
    float4 _228 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _242 = o0;
    _242.z = mad(_228.w, r0.w, mad(_228.z, r0.z, mad(_228.y, r0.y, _228.x * r0.x)));
    o0 = _242;
    float4 _254 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _268 = o0;
    _268.w = mad(_254.w, r0.w, mad(_254.z, r0.z, mad(_254.y, r0.y, _254.x * r0.x)));
    o0 = _268;
    float2 _274 = float2(asint(shader_in[1].xy));
    r1 = float4(_274.x, _274.y, r1.z, r1.w);
    float2 _285 = r1.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r1 = float4(_285.x, _285.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _306 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_306.x, _306.y, _306.z, r1.w);
    float3 _316 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_316.x, _316.y, _316.z, r2.w);
    float3 _328 = (shader_in[5].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_328.x, _328.y, _328.z, r1.w);
    float3 _338 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _350 = r2;
    _350.x = mad(_338.z, r1.xyz.z, mad(_338.y, r1.xyz.y, _338.x * r1.xyz.x));
    r2 = _350;
    float3 _359 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _371 = r2;
    _371.y = mad(_359.z, r1.xyz.z, mad(_359.y, r1.xyz.y, _359.x * r1.xyz.x));
    r2 = _371;
    float3 _380 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _392 = r2;
    _392.z = mad(_380.z, r1.xyz.z, mad(_380.y, r1.xyz.y, _380.x * r1.xyz.x));
    r2 = _392;
    float4 _407 = r0;
    _407.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _407;
    float4 _412 = r0;
    _412.w = rsqrt(r0.w);
    r0 = _412;
    float3 _418 = r0.www * r2.xyz;
    r1 = float4(_418.x, _418.y, _418.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _437 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _450 = r3;
    _450.x = mad(_437.z, r2.xyz.z, mad(_437.y, r2.xyz.y, _437.x * r2.xyz.x));
    r3 = _450;
    float3 _459 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _471 = r3;
    _471.y = mad(_459.z, r2.xyz.z, mad(_459.y, r2.xyz.y, _459.x * r2.xyz.x));
    r3 = _471;
    float3 _480 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _492 = r3;
    _492.z = mad(_480.z, r2.xyz.z, mad(_480.y, r2.xyz.y, _480.x * r2.xyz.x));
    r3 = _492;
    float4 _507 = r0;
    _507.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _507;
    float4 _512 = r0;
    _512.w = rsqrt(r0.w);
    r0 = _512;
    float3 _518 = r0.www * r3.xyz;
    r2 = float4(_518.x, _518.y, _518.z, r2.w);
    float3 _525 = r1.zxy * r2.yzx;
    r3 = float4(_525.x, _525.y, _525.z, r3.w);
    float3 _536 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_536.x, _536.y, _536.z, r3.w);
    float3 _543 = r2.www * r3.xyz;
    r3 = float4(_543.x, _543.y, _543.z, r3.w);
    float3 _557 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_557.x, _557.y, _557.z, r4.w);
    float3 _574 = o2;
    _574.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _574;
    float3 _589 = o2;
    _589.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _589;
    float3 _604 = o2;
    _604.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _604;
    float3 _618 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_618.x, _618.y, _618.z, r4.w);
    float3 _632 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_632.x, _632.y, _632.z, r0.w);
    float4 _648 = r0;
    _648.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _648;
    float4 _653 = r0;
    _653.w = rsqrt(r0.w);
    r0 = _653;
    float3 _659 = r0.www * r4.xyz;
    r4 = float4(_659.x, _659.y, _659.z, r4.w);
    float3 _675 = o3;
    _675.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _675;
    float3 _684 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _696 = o4;
    _696.z = mad(_684.z, r1.xyz.z, mad(_684.y, r1.xyz.y, _684.x * r1.xyz.x));
    o4 = _696;
    float3 _711 = o3;
    _711.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _711;
    float3 _720 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _732 = o4;
    _732.x = mad(_720.z, r2.xyz.z, mad(_720.y, r2.xyz.y, _720.x * r2.xyz.x));
    o4 = _732;
    float3 _747 = o3;
    _747.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _747;
    float3 _756 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _768 = o4;
    _768.y = mad(_756.z, r3.xyz.z, mad(_756.y, r3.xyz.y, _756.x * r3.xyz.x));
    o4 = _768;
    float4 _777 = r0;
    _777.w = r0.y * cb0_m[13].x;
    r0 = _777;
    float4 _784 = r1;
    _784.x = r0.w * asfloat(3216550459u);
    r1 = _784;
    float4 _789 = r1;
    _789.x = exp2(r1.x);
    r1 = _789;
    float4 _796 = r1;
    _796.x = (-r1.x) + asfloat(1065353216u);
    r1 = _796;
    float4 _803 = r0;
    _803.w = r1.x / r0.w;
    r0 = _803;
    float4 _815 = r1;
    _815.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _815;
    float4 _830 = r0;
    _830.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _830;
    float4 _835 = r0;
    _835.x = sqrt(r0.x);
    r0 = _835;
    float4 _843 = r0;
    _843.x = r0.x * cb0_m[13].y;
    r0 = _843;
    float4 _853 = r0;
    _853.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _853;
    float4 _865 = r0;
    _865.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _865;
    float4 _871 = r0;
    _871.x = exp2(-r0.x);
    r0 = _871;
    float4 _877 = r0;
    _877.x = min(r0.x, asfloat(1065353216u));
    r0 = _877;
    float4 _884 = o4;
    _884.w = (-r0.x) + asfloat(1065353216u);
    o4 = _884;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _892 = asfloat(v1);
    shader_in[1] = float4(_892.x, _892.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
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
