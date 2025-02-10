cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
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
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static int4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float4 o1;
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
    float4 _59 = r0;
    _59.x = shader_in[5].y + shader_in[5].x;
    r0 = _59;
    float4 _67 = r0;
    _67.x = r0.x + shader_in[5].z;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[5].w;
    r0 = _75;
    float4 _82 = r0;
    _82.x = asfloat(1065353216u) / r0.x;
    r0 = _82;
    float3 _97 = (shader_in[3].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_97.x, _97.y, _97.z, r1.w);
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    r2 = asfloat(asint(shader_in[6]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _119 = asint(r2.y);
    r3 = shader_in[5].yyyy * float4(cb4_m[_119].x, cb4_m[_119].y, cb4_m[_119].z, cb4_m[_119].w);
    int _142 = asint(r2.x);
    r3 = (shader_in[5].xxxx * float4(cb4_m[_142].x, cb4_m[_142].y, cb4_m[_142].z, cb4_m[_142].w)) + r3;
    int _161 = asint(r2.z);
    r3 = (shader_in[5].zzzz * float4(cb4_m[_161].x, cb4_m[_161].y, cb4_m[_161].z, cb4_m[_161].w)) + r3;
    int _180 = asint(r2.w);
    r3 = (shader_in[5].wwww * float4(cb4_m[_180].x, cb4_m[_180].y, cb4_m[_180].z, cb4_m[_180].w)) + r3;
    float4 _209 = r4;
    _209.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _209;
    int _218 = asint(r2.y) + 1;
    r5 = shader_in[5].yyyy * float4(cb4_m[_218].x, cb4_m[_218].y, cb4_m[_218].z, cb4_m[_218].w);
    int _237 = asint(r2.x) + 1;
    r5 = (shader_in[5].xxxx * float4(cb4_m[_237].x, cb4_m[_237].y, cb4_m[_237].z, cb4_m[_237].w)) + r5;
    int _257 = asint(r2.z) + 1;
    r5 = (shader_in[5].zzzz * float4(cb4_m[_257].x, cb4_m[_257].y, cb4_m[_257].z, cb4_m[_257].w)) + r5;
    int _277 = asint(r2.w) + 1;
    r5 = (shader_in[5].wwww * float4(cb4_m[_277].x, cb4_m[_277].y, cb4_m[_277].z, cb4_m[_277].w)) + r5;
    float4 _305 = r4;
    _305.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _305;
    int _314 = asint(r2.y) + 2;
    r6 = shader_in[5].yyyy * float4(cb4_m[_314].x, cb4_m[_314].y, cb4_m[_314].z, cb4_m[_314].w);
    int _333 = asint(r2.x) + 2;
    r6 = (shader_in[5].xxxx * float4(cb4_m[_333].x, cb4_m[_333].y, cb4_m[_333].z, cb4_m[_333].w)) + r6;
    int _353 = asint(r2.z) + 2;
    r6 = (shader_in[5].zzzz * float4(cb4_m[_353].x, cb4_m[_353].y, cb4_m[_353].z, cb4_m[_353].w)) + r6;
    int _373 = asint(r2.w) + 2;
    r2 = (shader_in[5].wwww * float4(cb4_m[_373].x, cb4_m[_373].y, cb4_m[_373].z, cb4_m[_373].w)) + r6;
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
    float4 _575 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _589 = o0;
    _589.w = mad(_575.w, r4.w, mad(_575.z, r4.z, mad(_575.y, r4.y, _575.x * r4.x)));
    o0 = _589;
    float3 _603 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _603.x, _603.y, _603.z);
    r1 = float4(asint(shader_in[1].xyxx));
    float2 _618 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r4 = float4(_618.x, _618.y, r4.z, r4.w);
    o1 = float4(r4.xy.x, o1.y, o1.z, r4.xy.y);
    float3 _635 = cb0_m[12].x.xxx * asfloat(uint3(1028443341u, 1036831949u, 3184315597u));
    r4 = float4(_635.x, _635.y, _635.z, r4.w);
    float2 _646 = (r1.yw * asfloat(uint2(981467136u, 985661440u))) + r4.xz;
    o1 = float4(o1.x, _646.x, _646.y, o1.w);
    float2 _657 = (r1.zy * asfloat(uint2(989855744u, 981467136u))) + r4.yy;
    o2 = float3(_657.x, _657.y, o2.z);
    float3 _670 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_670.x, _670.y, _670.z, r1.w);
    float3 _680 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_680.x, _680.y, _680.z, r4.w);
    float3 _689 = (r4.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r1.xyz;
    r1 = float4(_689.x, _689.y, _689.z, r1.w);
    float4 _705 = r1;
    _705.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _705;
    float4 _710 = r1;
    _710.w = rsqrt(r1.w);
    r1 = _710;
    float3 _716 = r1.www * r1.xyz;
    r1 = float4(_716.x, _716.y, _716.z, r1.w);
    float4 _732 = r3;
    _732.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _732;
    float4 _747 = r3;
    _747.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _747;
    float4 _762 = r3;
    _762.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _762;
    float3 _768 = r0.xxx * r3.xyz;
    r1 = float4(_768.x, _768.y, _768.z, r1.w);
    float4 _784 = r0;
    _784.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _784;
    float4 _789 = r0;
    _789.x = rsqrt(r0.x);
    r0 = _789;
    float3 _795 = r0.xxx * r1.xyz;
    r1 = float4(_795.x, _795.y, _795.z, r1.w);
    float3 _805 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _817 = r2;
    _817.x = mad(_805.z, r1.xyz.z, mad(_805.y, r1.xyz.y, _805.x * r1.xyz.x));
    r2 = _817;
    float3 _826 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _838 = r2;
    _838.y = mad(_826.z, r1.xyz.z, mad(_826.y, r1.xyz.y, _826.x * r1.xyz.x));
    r2 = _838;
    float3 _847 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _859 = r2;
    _859.z = mad(_847.z, r1.xyz.z, mad(_847.y, r1.xyz.y, _847.x * r1.xyz.x));
    r2 = _859;
    float4 _874 = r0;
    _874.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _874;
    float4 _879 = r0;
    _879.x = rsqrt(r0.x);
    r0 = _879;
    float3 _885 = r0.xxx * r2.xyz;
    r1 = float4(_885.x, _885.y, _885.z, r1.w);
    float4 _901 = r0;
    _901.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _901;
    float4 _906 = r0;
    _906.x = rsqrt(r0.x);
    r0 = _906;
    float3 _912 = r0.xxx * r0.yzw;
    r0 = float4(_912.x, _912.y, _912.z, r0.w);
    float3 _931 = o2;
    _931.z = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    o2 = _931;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _939 = asfloat(v1);
    shader_in[1] = float4(_939.x, _939.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = asfloat(v6);
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
