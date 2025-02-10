cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;
static int4 v9;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
    float4 v9 : TEXCOORD9;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[10];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _62 = r0;
    _62.x = shader_in[8].y + shader_in[8].x;
    r0 = _62;
    float4 _70 = r0;
    _70.x = r0.x + shader_in[8].z;
    r0 = _70;
    float4 _78 = r0;
    _78.x = r0.x + shader_in[8].w;
    r0 = _78;
    float4 _85 = r0;
    _85.x = asfloat(1065353216u) / r0.x;
    r0 = _85;
    float3 _100 = (shader_in[6].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_100.x, _100.y, _100.z, r1.w);
    float4 _105 = r1;
    _105.w = asfloat(1065353216u);
    r1 = _105;
    r2 = asfloat(asint(shader_in[9]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _122 = asint(r2.y);
    r3 = shader_in[8].yyyy * float4(cb4_m[_122].x, cb4_m[_122].y, cb4_m[_122].z, cb4_m[_122].w);
    int _144 = asint(r2.x);
    r3 = (shader_in[8].xxxx * float4(cb4_m[_144].x, cb4_m[_144].y, cb4_m[_144].z, cb4_m[_144].w)) + r3;
    int _163 = asint(r2.z);
    r3 = (shader_in[8].zzzz * float4(cb4_m[_163].x, cb4_m[_163].y, cb4_m[_163].z, cb4_m[_163].w)) + r3;
    int _182 = asint(r2.w);
    r3 = (shader_in[8].wwww * float4(cb4_m[_182].x, cb4_m[_182].y, cb4_m[_182].z, cb4_m[_182].w)) + r3;
    float4 _211 = r4;
    _211.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _211;
    int _220 = asint(r2.y) + 1;
    r5 = shader_in[8].yyyy * float4(cb4_m[_220].x, cb4_m[_220].y, cb4_m[_220].z, cb4_m[_220].w);
    int _239 = asint(r2.x) + 1;
    r5 = (shader_in[8].xxxx * float4(cb4_m[_239].x, cb4_m[_239].y, cb4_m[_239].z, cb4_m[_239].w)) + r5;
    int _259 = asint(r2.z) + 1;
    r5 = (shader_in[8].zzzz * float4(cb4_m[_259].x, cb4_m[_259].y, cb4_m[_259].z, cb4_m[_259].w)) + r5;
    int _279 = asint(r2.w) + 1;
    r5 = (shader_in[8].wwww * float4(cb4_m[_279].x, cb4_m[_279].y, cb4_m[_279].z, cb4_m[_279].w)) + r5;
    float4 _307 = r4;
    _307.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _307;
    int _316 = asint(r2.y) + 2;
    r6 = shader_in[8].yyyy * float4(cb4_m[_316].x, cb4_m[_316].y, cb4_m[_316].z, cb4_m[_316].w);
    int _335 = asint(r2.x) + 2;
    r6 = (shader_in[8].xxxx * float4(cb4_m[_335].x, cb4_m[_335].y, cb4_m[_335].z, cb4_m[_335].w)) + r6;
    int _355 = asint(r2.z) + 2;
    r6 = (shader_in[8].zzzz * float4(cb4_m[_355].x, cb4_m[_355].y, cb4_m[_355].z, cb4_m[_355].w)) + r6;
    int _375 = asint(r2.w) + 2;
    r2 = (shader_in[8].wwww * float4(cb4_m[_375].x, cb4_m[_375].y, cb4_m[_375].z, cb4_m[_375].w)) + r6;
    float4 _403 = r4;
    _403.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _403;
    float3 _409 = r0.xxx * r4.xyz;
    r1 = float4(_409.x, _409.y, _409.z, r1.w);
    float4 _413 = r1;
    _413.w = asfloat(1065353216u);
    r1 = _413;
    float4 _424 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _438 = r4;
    _438.x = mad(_424.w, r1.w, mad(_424.z, r1.z, mad(_424.y, r1.y, _424.x * r1.x)));
    r4 = _438;
    float4 _449 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _463 = r4;
    _463.y = mad(_449.w, r1.w, mad(_449.z, r1.z, mad(_449.y, r1.y, _449.x * r1.x)));
    r4 = _463;
    float4 _474 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _488 = r4;
    _488.z = mad(_474.w, r1.w, mad(_474.z, r1.z, mad(_474.y, r1.y, _474.x * r1.x)));
    r4 = _488;
    float4 _491 = r4;
    _491.w = asfloat(1065353216u);
    r4 = _491;
    float4 _502 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _516 = o0;
    _516.x = mad(_502.w, r4.w, mad(_502.z, r4.z, mad(_502.y, r4.y, _502.x * r4.x)));
    o0 = _516;
    float4 _527 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _541 = o0;
    _541.y = mad(_527.w, r4.w, mad(_527.z, r4.z, mad(_527.y, r4.y, _527.x * r4.x)));
    o0 = _541;
    float4 _552 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _566 = o0;
    _566.z = mad(_552.w, r4.w, mad(_552.z, r4.z, mad(_552.y, r4.y, _552.x * r4.x)));
    o0 = _566;
    float4 _578 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _592 = o0;
    _592.w = mad(_578.w, r4.w, mad(_578.z, r4.z, mad(_578.y, r4.y, _578.x * r4.x)));
    o0 = _592;
    float3 _605 = (-r4.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _605.x, _605.y, _605.z);
    float3 _619 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_619.x, _619.y, _619.z, r1.w);
    float3 _629 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_629.x, _629.y, _629.z, r4.w);
    float3 _638 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_638.x, _638.y, _638.z, r1.w);
    float4 _654 = r1;
    _654.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _654;
    float4 _659 = r1;
    _659.w = rsqrt(r1.w);
    r1 = _659;
    float3 _665 = r1.www * r1.xyz;
    r1 = float4(_665.x, _665.y, _665.z, r1.w);
    float4 _681 = r4;
    _681.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r4 = _681;
    float4 _696 = r4;
    _696.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r4 = _696;
    float4 _711 = r4;
    _711.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r4 = _711;
    float3 _717 = r0.xxx * r4.xyz;
    r1 = float4(_717.x, _717.y, _717.z, r1.w);
    float4 _733 = r1;
    _733.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _733;
    float4 _738 = r1;
    _738.w = rsqrt(r1.w);
    r1 = _738;
    float3 _744 = r1.www * r1.xyz;
    r1 = float4(_744.x, _744.y, _744.z, r1.w);
    float3 _754 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _766 = r4;
    _766.x = mad(_754.z, r1.xyz.z, mad(_754.y, r1.xyz.y, _754.x * r1.xyz.x));
    r4 = _766;
    float3 _775 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _787 = r4;
    _787.y = mad(_775.z, r1.xyz.z, mad(_775.y, r1.xyz.y, _775.x * r1.xyz.x));
    r4 = _787;
    float3 _796 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _808 = r4;
    _808.z = mad(_796.z, r1.xyz.z, mad(_796.y, r1.xyz.y, _796.x * r1.xyz.x));
    r4 = _808;
    float4 _823 = r1;
    _823.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _823;
    float4 _828 = r1;
    _828.x = rsqrt(r1.x);
    r1 = _828;
    float3 _834 = r1.xxx * r4.xyz;
    r1 = float4(_834.x, _834.y, _834.z, r1.w);
    r4 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _859 = r3;
    _859.x = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r3 = _859;
    float4 _874 = r3;
    _874.y = mad(r5.xyz.z, r4.xyz.z, mad(r5.xyz.y, r4.xyz.y, r5.xyz.x * r4.xyz.x));
    r3 = _874;
    float4 _889 = r3;
    _889.z = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r3 = _889;
    float3 _895 = r0.xxx * r3.xyz;
    r2 = float4(_895.x, _895.y, _895.z, r2.w);
    float4 _911 = r0;
    _911.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _911;
    float4 _916 = r0;
    _916.x = rsqrt(r0.x);
    r0 = _916;
    float3 _922 = r0.xxx * r2.xyz;
    r2 = float4(_922.x, _922.y, _922.z, r2.w);
    float3 _932 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _944 = r3;
    _944.x = mad(_932.z, r2.xyz.z, mad(_932.y, r2.xyz.y, _932.x * r2.xyz.x));
    r3 = _944;
    float3 _953 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _965 = r3;
    _965.y = mad(_953.z, r2.xyz.z, mad(_953.y, r2.xyz.y, _953.x * r2.xyz.x));
    r3 = _965;
    float3 _974 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _986 = r3;
    _986.z = mad(_974.z, r2.xyz.z, mad(_974.y, r2.xyz.y, _974.x * r2.xyz.x));
    r3 = _986;
    float4 _1001 = r0;
    _1001.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1001;
    float4 _1006 = r0;
    _1006.x = rsqrt(r0.x);
    r0 = _1006;
    float3 _1012 = r0.xxx * r3.xyz;
    r2 = float4(_1012.x, _1012.y, _1012.z, r2.w);
    float3 _1019 = r1.zxy * r2.yzx;
    r3 = float4(_1019.x, _1019.y, _1019.z, r3.w);
    float3 _1030 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_1030.x, _1030.y, _1030.z, r3.w);
    float3 _1037 = r4.www * r3.xyz;
    r3 = float4(_1037.x, _1037.y, _1037.z, r3.w);
    float3 _1053 = o1;
    _1053.y = mad(r0.yzw.z, r3.xyz.z, mad(r0.yzw.y, r3.xyz.y, r0.yzw.x * r3.xyz.x));
    o1 = _1053;
    float3 _1062 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1074 = o2;
    _1074.y = mad(_1062.z, r3.xyz.z, mad(_1062.y, r3.xyz.y, _1062.x * r3.xyz.x));
    o2 = _1074;
    float3 _1089 = o1;
    _1089.z = mad(r0.yzw.z, r1.xyz.z, mad(r0.yzw.y, r1.xyz.y, r0.yzw.x * r1.xyz.x));
    o1 = _1089;
    float3 _1098 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1110 = o2;
    _1110.z = mad(_1098.z, r1.xyz.z, mad(_1098.y, r1.xyz.y, _1098.x * r1.xyz.x));
    o2 = _1110;
    float3 _1125 = o1;
    _1125.x = mad(r0.yzw.z, r2.xyz.z, mad(r0.yzw.y, r2.xyz.y, r0.yzw.x * r2.xyz.x));
    o1 = _1125;
    float3 _1134 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _1146 = o2;
    _1146.x = mad(_1134.z, r2.xyz.z, mad(_1134.y, r2.xyz.y, _1134.x * r2.xyz.x));
    o2 = _1146;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
    shader_in[9] = asfloat(v9);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    v9 = stage_input.v9;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
