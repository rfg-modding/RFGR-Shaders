cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
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
static float4 v4;
static int4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _71 = r0;
    _71.x = shader_in[4].y + shader_in[4].x;
    r0 = _71;
    float4 _79 = r0;
    _79.x = r0.x + shader_in[4].z;
    r0 = _79;
    float4 _87 = r0;
    _87.x = r0.x + shader_in[4].w;
    r0 = _87;
    float4 _94 = r0;
    _94.x = asfloat(1065353216u) / r0.x;
    r0 = _94;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _104 = r1;
    _104.w = asfloat(1065353216u);
    r1 = _104;
    r2 = asfloat(asint(shader_in[5]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _121 = asint(r2.y);
    r3 = shader_in[4].yyyy * float4(cb4_m[_121].x, cb4_m[_121].y, cb4_m[_121].z, cb4_m[_121].w);
    int _142 = asint(r2.x);
    r3 = (shader_in[4].xxxx * float4(cb4_m[_142].x, cb4_m[_142].y, cb4_m[_142].z, cb4_m[_142].w)) + r3;
    int _161 = asint(r2.z);
    r3 = (shader_in[4].zzzz * float4(cb4_m[_161].x, cb4_m[_161].y, cb4_m[_161].z, cb4_m[_161].w)) + r3;
    int _180 = asint(r2.w);
    r3 = (shader_in[4].wwww * float4(cb4_m[_180].x, cb4_m[_180].y, cb4_m[_180].z, cb4_m[_180].w)) + r3;
    float4 _209 = r4;
    _209.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _209;
    int _218 = asint(r2.y) + 1;
    r5 = shader_in[4].yyyy * float4(cb4_m[_218].x, cb4_m[_218].y, cb4_m[_218].z, cb4_m[_218].w);
    int _237 = asint(r2.x) + 1;
    r5 = (shader_in[4].xxxx * float4(cb4_m[_237].x, cb4_m[_237].y, cb4_m[_237].z, cb4_m[_237].w)) + r5;
    int _257 = asint(r2.z) + 1;
    r5 = (shader_in[4].zzzz * float4(cb4_m[_257].x, cb4_m[_257].y, cb4_m[_257].z, cb4_m[_257].w)) + r5;
    int _277 = asint(r2.w) + 1;
    r5 = (shader_in[4].wwww * float4(cb4_m[_277].x, cb4_m[_277].y, cb4_m[_277].z, cb4_m[_277].w)) + r5;
    float4 _305 = r4;
    _305.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _305;
    int _314 = asint(r2.y) + 2;
    r6 = shader_in[4].yyyy * float4(cb4_m[_314].x, cb4_m[_314].y, cb4_m[_314].z, cb4_m[_314].w);
    int _333 = asint(r2.x) + 2;
    r6 = (shader_in[4].xxxx * float4(cb4_m[_333].x, cb4_m[_333].y, cb4_m[_333].z, cb4_m[_333].w)) + r6;
    int _353 = asint(r2.z) + 2;
    r6 = (shader_in[4].zzzz * float4(cb4_m[_353].x, cb4_m[_353].y, cb4_m[_353].z, cb4_m[_353].w)) + r6;
    int _373 = asint(r2.w) + 2;
    r2 = (shader_in[4].wwww * float4(cb4_m[_373].x, cb4_m[_373].y, cb4_m[_373].z, cb4_m[_373].w)) + r6;
    float4 _401 = r4;
    _401.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _401;
    float3 _407 = r0.xxx * r4.xyz;
    r1 = float4(_407.x, _407.y, _407.z, r1.w);
    float4 _411 = r1;
    _411.w = asfloat(1065353216u);
    r1 = _411;
    float4 _422 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _436 = r4;
    _436.x = mad(_422.w, r1.w, mad(_422.z, r1.z, mad(_422.y, r1.y, _422.x * r1.x)));
    r4 = _436;
    float4 _447 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _461 = r4;
    _461.y = mad(_447.w, r1.w, mad(_447.z, r1.z, mad(_447.y, r1.y, _447.x * r1.x)));
    r4 = _461;
    float4 _472 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _486 = r4;
    _486.z = mad(_472.w, r1.w, mad(_472.z, r1.z, mad(_472.y, r1.y, _472.x * r1.x)));
    r4 = _486;
    float4 _489 = r4;
    _489.w = asfloat(1065353216u);
    r4 = _489;
    float4 _500 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _514 = o0;
    _514.x = mad(_500.w, r4.w, mad(_500.z, r4.z, mad(_500.y, r4.y, _500.x * r4.x)));
    o0 = _514;
    float4 _525 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _539 = o0;
    _539.y = mad(_525.w, r4.w, mad(_525.z, r4.z, mad(_525.y, r4.y, _525.x * r4.x)));
    o0 = _539;
    float4 _550 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _564 = o0;
    _564.z = mad(_550.w, r4.w, mad(_550.z, r4.z, mad(_550.y, r4.y, _550.x * r4.x)));
    o0 = _564;
    float4 _576 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _590 = o0;
    _590.w = mad(_576.w, r4.w, mad(_576.z, r4.z, mad(_576.y, r4.y, _576.x * r4.x)));
    o0 = _590;
    float3 _604 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _604.x, _604.y, _604.z);
    float2 _611 = float2(asint(shader_in[1].xy));
    r1 = float4(_611.x, _611.y, r1.z, r1.w);
    float2 _622 = r1.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r1 = float4(_622.x, _622.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _643 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_643.x, _643.y, _643.z, r1.w);
    float4 _659 = r4;
    _659.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _659;
    float4 _674 = r4;
    _674.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _674;
    float4 _689 = r4;
    _689.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _689;
    float3 _695 = r0.xxx * r4.xyz;
    r1 = float4(_695.x, _695.y, _695.z, r1.w);
    float4 _711 = r1;
    _711.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _711;
    float4 _716 = r1;
    _716.w = rsqrt(r1.w);
    r1 = _716;
    float3 _722 = r1.www * r1.xyz;
    r1 = float4(_722.x, _722.y, _722.z, r1.w);
    float3 _732 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _744 = r4;
    _744.x = mad(_732.z, r1.xyz.z, mad(_732.y, r1.xyz.y, _732.x * r1.xyz.x));
    r4 = _744;
    float3 _753 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _765 = r4;
    _765.y = mad(_753.z, r1.xyz.z, mad(_753.y, r1.xyz.y, _753.x * r1.xyz.x));
    r4 = _765;
    float3 _774 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _786 = r4;
    _786.z = mad(_774.z, r1.xyz.z, mad(_774.y, r1.xyz.y, _774.x * r1.xyz.x));
    r4 = _786;
    float4 _801 = r1;
    _801.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _801;
    float4 _806 = r1;
    _806.x = rsqrt(r1.x);
    r1 = _806;
    float3 _812 = r1.xxx * r4.xyz;
    r1 = float4(_812.x, _812.y, _812.z, r1.w);
    r4 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _836 = r3;
    _836.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _836;
    float4 _851 = r3;
    _851.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _851;
    float4 _866 = r3;
    _866.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _866;
    float3 _872 = r0.xxx * r3.xyz;
    r2 = float4(_872.x, _872.y, _872.z, r2.w);
    float4 _888 = r0;
    _888.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _888;
    float4 _893 = r0;
    _893.x = rsqrt(r0.x);
    r0 = _893;
    float3 _899 = r0.xxx * r2.xyz;
    r2 = float4(_899.x, _899.y, _899.z, r2.w);
    float3 _909 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _921 = r3;
    _921.x = mad(_909.z, r2.xyz.z, mad(_909.y, r2.xyz.y, _909.x * r2.xyz.x));
    r3 = _921;
    float3 _930 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _942 = r3;
    _942.y = mad(_930.z, r2.xyz.z, mad(_930.y, r2.xyz.y, _930.x * r2.xyz.x));
    r3 = _942;
    float3 _951 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _963 = r3;
    _963.z = mad(_951.z, r2.xyz.z, mad(_951.y, r2.xyz.y, _951.x * r2.xyz.x));
    r3 = _963;
    float4 _978 = r0;
    _978.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _978;
    float4 _983 = r0;
    _983.x = rsqrt(r0.x);
    r0 = _983;
    float3 _989 = r0.xxx * r3.xyz;
    r2 = float4(_989.x, _989.y, _989.z, r2.w);
    float3 _996 = r1.zxy * r2.yzx;
    r3 = float4(_996.x, _996.y, _996.z, r3.w);
    float3 _1007 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1007.x, _1007.y, _1007.z, r3.w);
    float3 _1014 = r4.www * r3.xyz;
    r3 = float4(_1014.x, _1014.y, _1014.z, r3.w);
    float3 _1024 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1036 = o2;
    _1036.y = mad(_1024.z, r3.xyz.z, mad(_1024.y, r3.xyz.y, _1024.x * r3.xyz.x));
    o2 = _1036;
    float3 _1045 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1057 = o2;
    _1057.z = mad(_1045.z, r1.xyz.z, mad(_1045.y, r1.xyz.y, _1045.x * r1.xyz.x));
    o2 = _1057;
    float3 _1066 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1078 = o2;
    _1078.x = mad(_1066.z, r2.xyz.z, mad(_1066.y, r2.xyz.y, _1066.x * r2.xyz.x));
    o2 = _1078;
    float4 _1093 = r0;
    _1093.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _1093;
    float4 _1098 = r0;
    _1098.x = rsqrt(r0.x);
    r0 = _1098;
    float3 _1104 = r0.xxx * r0.yzw;
    r0 = float4(_1104.x, _1104.y, _1104.z, r0.w);
    float3 _1120 = o3;
    _1120.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _1120;
    float3 _1135 = o3;
    _1135.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _1135;
    float3 _1150 = o3;
    _1150.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _1150;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1158 = asfloat(v1);
    shader_in[1] = float4(_1158.x, _1158.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = asfloat(v5);
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
