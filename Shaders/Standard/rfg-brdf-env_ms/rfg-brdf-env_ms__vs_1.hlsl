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
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float3 v5;
static float3 v6;
static float3 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
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
    float4 _59 = r0;
    _59.w = asfloat(1065353216u);
    r0 = _59;
    float4 _69 = r1;
    _69.x = shader_in[6].x * asfloat(1082130432u);
    r1 = _69;
    float3 _82 = (r1.xxx * shader_in[5].xyz) + shader_in[0].xyz;
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
    float3 _281 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_281.x, _281.y, _281.z, r1.w);
    float3 _291 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_291.x, _291.y, _291.z, r2.w);
    float3 _303 = (shader_in[6].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_303.x, _303.y, _303.z, r1.w);
    float3 _313 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _325 = r2;
    _325.x = mad(_313.z, r1.xyz.z, mad(_313.y, r1.xyz.y, _313.x * r1.xyz.x));
    r2 = _325;
    float3 _334 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _346 = r2;
    _346.y = mad(_334.z, r1.xyz.z, mad(_334.y, r1.xyz.y, _334.x * r1.xyz.x));
    r2 = _346;
    float3 _355 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _367 = r2;
    _367.z = mad(_355.z, r1.xyz.z, mad(_355.y, r1.xyz.y, _355.x * r1.xyz.x));
    r2 = _367;
    float4 _382 = r0;
    _382.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _382;
    float4 _387 = r0;
    _387.w = rsqrt(r0.w);
    r0 = _387;
    float3 _393 = r0.www * r2.xyz;
    r1 = float4(_393.x, _393.y, _393.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _413 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _426 = r3;
    _426.x = mad(_413.z, r2.xyz.z, mad(_413.y, r2.xyz.y, _413.x * r2.xyz.x));
    r3 = _426;
    float3 _435 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _447 = r3;
    _447.y = mad(_435.z, r2.xyz.z, mad(_435.y, r2.xyz.y, _435.x * r2.xyz.x));
    r3 = _447;
    float3 _456 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _468 = r3;
    _468.z = mad(_456.z, r2.xyz.z, mad(_456.y, r2.xyz.y, _456.x * r2.xyz.x));
    r3 = _468;
    float4 _483 = r0;
    _483.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _483;
    float4 _488 = r0;
    _488.w = rsqrt(r0.w);
    r0 = _488;
    float3 _494 = r0.www * r3.xyz;
    r2 = float4(_494.x, _494.y, _494.z, r2.w);
    float3 _501 = r1.zxy * r2.yzx;
    r3 = float4(_501.x, _501.y, _501.z, r3.w);
    float3 _512 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_512.x, _512.y, _512.z, r3.w);
    float3 _519 = r2.www * r3.xyz;
    r3 = float4(_519.x, _519.y, _519.z, r3.w);
    float3 _533 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_533.x, _533.y, _533.z, r4.w);
    float3 _550 = o1;
    _550.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _550;
    float3 _565 = o1;
    _565.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _565;
    float3 _580 = o1;
    _580.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _580;
    float3 _594 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_594.x, _594.y, _594.z, r4.w);
    float3 _608 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_608.x, _608.y, _608.z, r0.w);
    float4 _624 = r0;
    _624.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _624;
    float4 _629 = r0;
    _629.w = rsqrt(r0.w);
    r0 = _629;
    float3 _635 = r0.www * r4.xyz;
    r4 = float4(_635.x, _635.y, _635.z, r4.w);
    float3 _651 = o2;
    _651.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _651;
    float3 _660 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _672 = o3;
    _672.z = mad(_660.z, r1.xyz.z, mad(_660.y, r1.xyz.y, _660.x * r1.xyz.x));
    o3 = _672;
    float3 _687 = o2;
    _687.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _687;
    float3 _696 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _708 = o3;
    _708.x = mad(_696.z, r2.xyz.z, mad(_696.y, r2.xyz.y, _696.x * r2.xyz.x));
    o3 = _708;
    float3 _723 = o2;
    _723.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _723;
    float3 _732 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _744 = o3;
    _744.y = mad(_732.z, r3.xyz.z, mad(_732.y, r3.xyz.y, _732.x * r3.xyz.x));
    o3 = _744;
    float4 _753 = r0;
    _753.w = r0.y * cb0_m[13].x;
    r0 = _753;
    float4 _760 = r1;
    _760.x = r0.w * asfloat(3216550459u);
    r1 = _760;
    float4 _765 = r1;
    _765.x = exp2(r1.x);
    r1 = _765;
    float4 _772 = r1;
    _772.x = (-r1.x) + asfloat(1065353216u);
    r1 = _772;
    float4 _779 = r0;
    _779.w = r1.x / r0.w;
    r0 = _779;
    float4 _791 = r1;
    _791.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _791;
    float4 _806 = r0;
    _806.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _806;
    float4 _811 = r0;
    _811.x = sqrt(r0.x);
    r0 = _811;
    float4 _819 = r0;
    _819.x = r0.x * cb0_m[13].y;
    r0 = _819;
    float4 _829 = r0;
    _829.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _829;
    float4 _841 = r0;
    _841.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _841;
    float4 _847 = r0;
    _847.x = exp2(-r0.x);
    r0 = _847;
    float4 _853 = r0;
    _853.x = min(r0.x, asfloat(1065353216u));
    r0 = _853;
    float4 _860 = o3;
    _860.w = (-r0.x) + asfloat(1065353216u);
    o3 = _860;
    float2 _867 = float2(asint(shader_in[1].xy));
    r0 = float4(_867.x, _867.y, r0.z, r0.w);
    float2 _878 = r0.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r0 = float4(_878.x, _878.y, r0.z, r0.w);
    float2 _887 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_887.x, _887.y, o4.z, o4.w);
    float2 _894 = float2(asint(shader_in[2].xy));
    r0 = float4(_894.x, _894.y, r0.z, r0.w);
    float2 _900 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _900.x, _900.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _909 = asfloat(v1);
    shader_in[1] = float4(_909.x, _909.y, shader_in[1].z, shader_in[1].w);
    float2 _914 = asfloat(v2);
    shader_in[2] = float4(_914.x, _914.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
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
