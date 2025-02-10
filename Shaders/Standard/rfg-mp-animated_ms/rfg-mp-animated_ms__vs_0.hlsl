cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float3 v2;
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
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

void vs_main()
{
    float4 _49 = r0;
    _49.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _49;
    float3 _62 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_62.x, _62.y, _62.z, r0.w);
    float4 _67 = r0;
    _67.w = asfloat(1065353216u);
    r0 = _67;
    float4 _83 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _98 = r1;
    _98.x = mad(_83.w, r0.w, mad(_83.z, r0.z, mad(_83.y, r0.y, _83.x * r0.x)));
    r1 = _98;
    float4 _110 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _124 = r1;
    _124.y = mad(_110.w, r0.w, mad(_110.z, r0.z, mad(_110.y, r0.y, _110.x * r0.x)));
    r1 = _124;
    float4 _135 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _149 = r1;
    _149.z = mad(_135.w, r0.w, mad(_135.z, r0.z, mad(_135.y, r0.y, _135.x * r0.x)));
    r1 = _149;
    float4 _152 = r1;
    _152.w = asfloat(1065353216u);
    r1 = _152;
    float4 _163 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _177 = o0;
    _177.x = mad(_163.w, r1.w, mad(_163.z, r1.z, mad(_163.y, r1.y, _163.x * r1.x)));
    o0 = _177;
    float4 _188 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _202 = o0;
    _202.y = mad(_188.w, r1.w, mad(_188.z, r1.z, mad(_188.y, r1.y, _188.x * r1.x)));
    o0 = _202;
    float4 _213 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _227 = o0;
    _227.z = mad(_213.w, r1.w, mad(_213.z, r1.z, mad(_213.y, r1.y, _213.x * r1.x)));
    o0 = _227;
    float4 _238 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _252 = o0;
    _252.w = mad(_238.w, r1.w, mad(_238.z, r1.z, mad(_238.y, r1.y, _238.x * r1.x)));
    o0 = _252;
    float3 _266 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_266.x, _266.y, _266.z, r0.w);
    float3 _280 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_280.x, _280.y, _280.z, r1.w);
    float4 _290 = r0;
    _290.w = r0.y * cb0_m[13].x;
    r0 = _290;
    float4 _297 = r1;
    _297.w = r0.w * asfloat(3216550459u);
    r1 = _297;
    float4 _302 = r1;
    _302.w = exp2(r1.w);
    r1 = _302;
    float4 _309 = r1;
    _309.w = (-r1.w) + asfloat(1065353216u);
    r1 = _309;
    float4 _316 = r0;
    _316.w = r1.w / r0.w;
    r0 = _316;
    float4 _328 = r1;
    _328.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _328;
    float4 _343 = r0;
    _343.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _343;
    float4 _348 = r0;
    _348.x = sqrt(r0.x);
    r0 = _348;
    float4 _356 = r0;
    _356.x = r0.x * cb0_m[13].y;
    r0 = _356;
    float4 _366 = r0;
    _366.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _366;
    float4 _378 = r0;
    _378.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _378;
    float4 _384 = r0;
    _384.x = exp2(-r0.x);
    r0 = _384;
    float4 _390 = r0;
    _390.x = min(r0.x, asfloat(1065353216u));
    r0 = _390;
    float4 _397 = o1;
    _397.w = (-r0.x) + asfloat(1065353216u);
    o1 = _397;
    float4 _412 = r0;
    _412.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _412;
    float4 _417 = r0;
    _417.x = rsqrt(r0.x);
    r0 = _417;
    float3 _423 = r0.xxx * r1.xyz;
    r0 = float4(_423.x, _423.y, _423.z, r0.w);
    float3 _431 = r0.xyz * asfloat(uint3(0u, 1065353216u, 0u));
    r1 = float4(_431.x, _431.y, _431.z, r1.w);
    float3 _442 = (r0.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r1.xyz);
    r1 = float4(_442.x, _442.y, _442.z, r1.w);
    float4 _456 = r0;
    _456.w = mad(r1.yz.y, r1.yz.y, r1.yz.x * r1.yz.x);
    r0 = _456;
    float4 _461 = r0;
    _461.w = rsqrt(r0.w);
    r0 = _461;
    float3 _467 = r0.www * r1.xyz;
    r1 = float4(_467.x, _467.y, _467.z, r1.w);
    float3 _474 = r0.yzx * r1.xyz;
    r2 = float4(_474.x, _474.y, _474.z, r2.w);
    float3 _486 = (r1.zxy * r0.zxy) + (-r2.xyz);
    r1 = float4(_486.x, _486.y, _486.z, r1.w);
    float4 _502 = r0;
    _502.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _502;
    float4 _507 = r0;
    _507.w = rsqrt(r0.w);
    r0 = _507;
    float3 _513 = r0.www * r1.xyz;
    r1 = float4(_513.x, _513.y, _513.z, r1.w);
    float3 _526 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_526.x, _526.y, _526.z, r2.w);
    float3 _536 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_536.x, _536.y, _536.z, r3.w);
    float3 _548 = (shader_in[3].xxx * r3.xyz) + r2.xyz;
    r2 = float4(_548.x, _548.y, _548.z, r2.w);
    float3 _558 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _570 = r3;
    _570.x = mad(_558.z, r2.xyz.z, mad(_558.y, r2.xyz.y, _558.x * r2.xyz.x));
    r3 = _570;
    float3 _579 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _591 = r3;
    _591.y = mad(_579.z, r2.xyz.z, mad(_579.y, r2.xyz.y, _579.x * r2.xyz.x));
    r3 = _591;
    float3 _600 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _612 = r3;
    _612.z = mad(_600.z, r2.xyz.z, mad(_600.y, r2.xyz.y, _600.x * r2.xyz.x));
    r3 = _612;
    float4 _627 = r0;
    _627.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _627;
    float4 _632 = r0;
    _632.w = rsqrt(r0.w);
    r0 = _632;
    float3 _638 = r0.www * r3.xyz;
    r2 = float4(_638.x, _638.y, _638.z, r2.w);
    float4 _654 = r0;
    _654.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _654;
    float4 _669 = r0;
    _669.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _669;
    float4 _675 = r0;
    _675.x = max(r0.x, asfloat(0u));
    r0 = _675;
    float4 _684 = r0;
    _684.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _684;
    float2 _694 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_694.x, _694.y, r1.z, r1.w);
    float4 _702 = r0;
    _702.x = (-r0.x) + asfloat(1065353216u);
    r0 = _702;
    float4 _707 = r0;
    _707.x = log2(r0.x);
    r0 = _707;
    float2 _717 = r0.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_717.x, _717.y, r0.z, r0.w);
    float2 _722 = exp2(r0.xy);
    r0 = float4(_722.x, _722.y, r0.z, r0.w);
    float2 _739 = (cb0_m[12].x.xx * float2(cb2_m[3].x, cb2_m[3].y)) + r1.xy;
    o1 = float4(_739.x, _739.y, o1.z, o1.w);
    float4 _748 = r0;
    _748.y = (-r0.x) + r0.y;
    r0 = _748;
    float4 _755 = r0;
    _755.z = cb2_m[3].z + asfloat(1008981770u);
    r0 = _755;
    float4 _761 = r0;
    _761.z = asfloat(1073741824u) / r0.z;
    r0 = _761;
    float4 _769 = r0;
    _769.z = r0.z * cb0_m[12].z;
    r0 = _769;
    float4 _775 = r0;
    _775.z = cos(r0.zzzz.z);
    r0 = _775;
    float4 _781 = r0;
    _781.z = r0.z + asfloat(1065353216u);
    r0 = _781;
    float4 _787 = r0;
    _787.z = r0.z * asfloat(1056964608u);
    r0 = _787;
    float4 _797 = o1;
    _797.z = (r0.z * r0.y) + r0.x;
    o1 = _797;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
