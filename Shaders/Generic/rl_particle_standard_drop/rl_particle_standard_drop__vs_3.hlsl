cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb3_t : register(b163)
{
    float4 cb3_m[9] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float4 v0;
static float4 v1;
static float v2;
static float2 v3;
static float v4;
static float v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float v4 : TEXCOORD4;
    float v5 : TEXCOORD5;
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
static float4 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    float4 _74 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _89 = r1;
    _89.x = mad(_74.w, r0.w, mad(_74.z, r0.z, mad(_74.y, r0.y, _74.x * r0.x)));
    r1 = _89;
    float4 _101 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _115 = r1;
    _115.y = mad(_101.w, r0.w, mad(_101.z, r0.z, mad(_101.y, r0.y, _101.x * r0.x)));
    r1 = _115;
    float4 _127 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _141 = r1;
    _141.z = mad(_127.w, r0.w, mad(_127.z, r0.z, mad(_127.y, r0.y, _127.x * r0.x)));
    r1 = _141;
    float3 _155 = r1.zxy + (-float3(cb0_m[11].z, cb0_m[11].x, cb0_m[11].y));
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float4 _171 = r0;
    _171.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _171;
    float4 _176 = r0;
    _176.w = rsqrt(r0.w);
    r0 = _176;
    float3 _182 = r0.www * r0.xyz;
    r0 = float4(_182.x, _182.y, _182.z, r0.w);
    float4 _201 = r0;
    _201.w = mad(shader_in[6].xyz.z, shader_in[6].xyz.z, mad(shader_in[6].xyz.y, shader_in[6].xyz.y, shader_in[6].xyz.x * shader_in[6].xyz.x));
    r0 = _201;
    float4 _206 = r0;
    _206.w = rsqrt(r0.w);
    r0 = _206;
    float3 _213 = r0.www * shader_in[6].yzx;
    r2 = float4(_213.x, _213.y, _213.z, r2.w);
    float3 _221 = r0.xyz * r2.xyz;
    r3 = float4(_221.x, _221.y, _221.z, r3.w);
    float3 _233 = (r0.zxy * r2.yzx) + (-r3.xyz);
    r0 = float4(_233.x, _233.y, _233.z, r0.w);
    float4 _249 = r2;
    _249.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r2 = _249;
    float4 _254 = r2;
    _254.x = rsqrt(r2.x);
    r2 = _254;
    float4 _260 = r0;
    _260.w = shader_in[7].x;
    r0 = _260;
    r0 *= r2.xxxx;
    float4 _269 = r2;
    _269.x = shader_in[7].x;
    r2 = _269;
    float4 _272 = r2;
    _272.w = asfloat(0u);
    r2 = _272;
    float4 _277 = r1;
    _277.w = shader_in[0].w;
    r1 = _277;
    r1 = (r2.xxxw * r0) + r1;
    float3 _296 = r0.zxy * float3(cb0_m[10].y, cb0_m[10].z, cb0_m[10].x);
    r2 = float4(_296.x, _296.y, _296.z, r2.w);
    float3 _313 = (r0.yzx * float3(cb0_m[10].z, cb0_m[10].x, cb0_m[10].y)) + (-r2.xyz);
    r0 = float4(_313.x, _313.y, _313.z, r0.w);
    float4 _329 = r2;
    _329.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r2 = _329;
    float4 _334 = r2;
    _334.x = rsqrt(r2.x);
    r2 = _334;
    float4 _339 = r0;
    _339.w = shader_in[7].y;
    r0 = _339;
    r0 *= r2.xxxx;
    float4 _348 = r2;
    _348.x = shader_in[7].y;
    r2 = _348;
    float4 _351 = r2;
    _351.w = asfloat(0u);
    r2 = _351;
    r0 = (r0 * r2.xxxw) + r1;
    r1 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, r1.w);
    float4 _364 = r1;
    _364.w = asfloat(1065353216u);
    r1 = _364;
    float4 _375 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _389 = o0;
    _389.x = mad(_375.w, r1.w, mad(_375.z, r1.z, mad(_375.y, r1.y, _375.x * r1.x)));
    o0 = _389;
    float4 _400 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _414 = o0;
    _414.y = mad(_400.w, r1.w, mad(_400.z, r1.z, mad(_400.y, r1.y, _400.x * r1.x)));
    o0 = _414;
    float4 _425 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _439 = o0;
    _439.z = mad(_425.w, r1.w, mad(_425.z, r1.z, mad(_425.y, r1.y, _425.x * r1.x)));
    o0 = _439;
    float4 _451 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _465 = o0;
    _465.w = mad(_451.w, r1.w, mad(_451.z, r1.z, mad(_451.y, r1.y, _451.x * r1.x)));
    o0 = _465;
    float3 _483 = (shader_in[1].zyx * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-shader_in[1].zyx);
    r0 = float4(_483.x, _483.y, _483.z, r0.w);
    float3 _496 = (cb3_m[7].w.xxx * r0.xyz) + shader_in[1].zyx;
    r0 = float4(_496.x, _496.y, _496.z, r0.w);
    float3 _525 = (float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z) * float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z)) + (-float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z));
    r2 = float4(_525.x, _525.y, _525.z, r2.w);
    float3 _543 = (cb3_m[7].w.xxx * r2.xyz) + float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    r2 = float4(_543.x, _543.y, _543.z, r2.w);
    float3 _550 = r0.xyz + r2.xyz;
    o1 = float4(_550.x, _550.y, _550.z, o1.w);
    float4 _561 = o1;
    _561.w = shader_in[1].w * cb3_m[5].x;
    o1 = _561;
    float2 _567 = r1.xy / r0.ww;
    r0 = float4(_567.x, _567.y, r0.z, r0.w);
    float2 _578 = (r0.xy * asfloat(uint2(1056964608u, 1056964608u))) + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_578.x, _578.y, r0.z, r0.w);
    float2 _589 = (r0.xy * asfloat(uint2(1065353216u, 3212836864u))) + asfloat(uint2(0u, 1065353216u));
    o2 = float4(o2.x, o2.y, _589.x, _589.y);
    float4 _598 = r0;
    _598.x = shader_in[5].x + asfloat(841731191u);
    r0 = _598;
    float4 _608 = r0;
    _608.y = cb3_m[8].y * cb3_m[8].x;
    r0 = _608;
    float4 _613 = r0;
    _613.z = trunc(r0.y);
    r0 = _613;
    float4 _619 = r0;
    _619.y = asfloat(int(r0.y));
    r0 = _619;
    float4 _626 = r0;
    _626.x = r0.x * r0.z;
    r0 = _626;
    float4 _632 = r0;
    _632.x = asfloat(int(r0.x));
    r0 = _632;
    float2 _643 = asfloat(max(asint(r0.yx), (-asint(r0.yx))));
    r0 = float4(r0.x, _643.x, _643.y, r0.w);
    float4 _652 = r0;
    _652.x = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _652;
    uint _659 = asuint(r0.y);
    float4 _666 = r0;
    _666.y = asfloat((_659 != 0u) ? (asuint(r0.z) % _659) : 4294967295u);
    r0 = _666;
    float4 _673 = r0;
    _673.z = asfloat(-asint(r0.y));
    r0 = _673;
    float4 _684 = r0;
    _684.x = (asuint(r0.x) != 0u) ? r0.z : r0.y;
    r0 = _684;
    float4 _691 = r0;
    _691.y = asfloat(asuint(r0.x) & 2147483648u);
    r0 = _691;
    float4 _702 = r0;
    _702.z = asfloat(max(asint(r0.x), (-asint(r0.x))));
    r0 = _702;
    float4 _708 = r0;
    _708.x = float(asint(r0.x));
    r0 = _708;
    float4 _716 = r0;
    _716.x = r0.x / cb3_m[8].x;
    r0 = _716;
    float4 _721 = r0;
    _721.x = trunc(r0.x);
    r0 = _721;
    float4 _728 = r1;
    _728.w = asfloat(int(cb3_m[8].x));
    r1 = _728;
    float4 _739 = r1;
    _739.w = asfloat(max(asint(r1.w), (-asint(r1.w))));
    r1 = _739;
    uint _746 = asuint(r1.w);
    float4 _751 = r0;
    _751.z = asfloat((_746 != 0u) ? (asuint(r0.z) % _746) : 4294967295u);
    r0 = _751;
    float4 _758 = r1;
    _758.w = asfloat(-asint(r0.z));
    r1 = _758;
    float4 _769 = r0;
    _769.y = (asuint(r0.y) != 0u) ? r1.w : r0.z;
    r0 = _769;
    float4 _775 = r0;
    _775.y = float(asint(r0.y));
    r0 = _775;
    float2 _785 = asfloat(uint2(1065353216u, 1065353216u)) / float2(cb3_m[8].x, cb3_m[8].y);
    r2 = float4(_785.x, _785.y, r2.z, r2.w);
    float2 _793 = r2.xy * shader_in[3].xy;
    r2 = float4(r2.x, r2.y, _793.x, _793.y);
    float4 _804 = o2;
    _804.x = (r0.y * r2.x) + r2.z;
    o2 = _804;
    float4 _814 = o2;
    _814.y = (r0.x * r2.y) + r2.w;
    o2 = _814;
    float3 _827 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_827.x, _827.y, _827.z, r0.w);
    float4 _832 = o3;
    _832.y = r0.w;
    o3 = _832;
    float4 _841 = r0;
    _841.w = r0.y * cb0_m[13].x;
    r0 = _841;
    float4 _848 = r1;
    _848.x = r0.w * asfloat(3216550459u);
    r1 = _848;
    float4 _853 = r1;
    _853.x = exp2(r1.x);
    r1 = _853;
    float4 _860 = r1;
    _860.x = (-r1.x) + asfloat(1065353216u);
    r1 = _860;
    float4 _867 = r0;
    _867.w = r1.x / r0.w;
    r0 = _867;
    float4 _877 = r1;
    _877.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _877;
    float4 _892 = r0;
    _892.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _892;
    float4 _897 = r0;
    _897.x = sqrt(r0.x);
    r0 = _897;
    float4 _905 = r0;
    _905.x = r0.x * cb0_m[13].y;
    r0 = _905;
    float4 _915 = r0;
    _915.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _915;
    float4 _927 = r0;
    _927.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _927;
    float4 _933 = r0;
    _933.x = exp2(-r0.x);
    r0 = _933;
    float4 _939 = r0;
    _939.x = min(r0.x, asfloat(1065353216u));
    r0 = _939;
    float4 _946 = o3;
    _946.w = (-r0.x) + asfloat(1065353216u);
    o3 = _946;
    float4 _951 = o3;
    _951.x = shader_in[2].x;
    o3 = _951;
    float4 _957 = o3;
    _957.z = shader_in[4].x;
    o3 = _957;
}

void vert_main()
{
    shader_in[0] = v0;
    shader_in[1] = v1;
    float4 _966 = shader_in[2];
    _966.x = v2;
    shader_in[2] = _966;
    shader_in[3] = float4(v3.x, v3.y, shader_in[3].z, shader_in[3].w);
    float4 _974 = shader_in[4];
    _974.x = v4;
    shader_in[4] = _974;
    float4 _978 = shader_in[5];
    _978.x = v5;
    shader_in[5] = _978;
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
