cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v4;
static float4 v5;
static float3 v6;
static float3 v7;
static float3 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
    float3 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
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
    float4 _63 = r0;
    _63.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _63;
    float3 _76 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_76.x, _76.y, _76.z, r0.w);
    float4 _81 = r0;
    _81.w = asfloat(1065353216u);
    r0 = _81;
    float4 _96 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _111 = r1;
    _111.x = mad(_96.w, r0.w, mad(_96.z, r0.z, mad(_96.y, r0.y, _96.x * r0.x)));
    r1 = _111;
    float4 _123 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _137 = r1;
    _137.y = mad(_123.w, r0.w, mad(_123.z, r0.z, mad(_123.y, r0.y, _123.x * r0.x)));
    r1 = _137;
    float4 _149 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _163 = r1;
    _163.z = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    r1 = _163;
    float4 _166 = r1;
    _166.w = asfloat(1065353216u);
    r1 = _166;
    float4 _177 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _191 = o0;
    _191.x = mad(_177.w, r1.w, mad(_177.z, r1.z, mad(_177.y, r1.y, _177.x * r1.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _216 = o0;
    _216.y = mad(_202.w, r1.w, mad(_202.z, r1.z, mad(_202.y, r1.y, _202.x * r1.x)));
    o0 = _216;
    float4 _227 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _241 = o0;
    _241.z = mad(_227.w, r1.w, mad(_227.z, r1.z, mad(_227.y, r1.y, _227.x * r1.x)));
    o0 = _241;
    float4 _253 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _267 = o0;
    _267.w = mad(_253.w, r1.w, mad(_253.z, r1.z, mad(_253.y, r1.y, _253.x * r1.x)));
    o0 = _267;
    float3 _281 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_281.x, _281.y, _281.z, r0.w);
    float3 _291 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_291.x, _291.y, _291.z, r2.w);
    float3 _303 = (shader_in[7].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_303.x, _303.y, _303.z, r0.w);
    float3 _313 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _325 = r2;
    _325.x = mad(_313.z, r0.xyz.z, mad(_313.y, r0.xyz.y, _313.x * r0.xyz.x));
    r2 = _325;
    float3 _334 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _346 = r2;
    _346.y = mad(_334.z, r0.xyz.z, mad(_334.y, r0.xyz.y, _334.x * r0.xyz.x));
    r2 = _346;
    float3 _355 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _367 = r2;
    _367.z = mad(_355.z, r0.xyz.z, mad(_355.y, r0.xyz.y, _355.x * r0.xyz.x));
    r2 = _367;
    float4 _382 = r0;
    _382.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _382;
    float4 _387 = r0;
    _387.x = rsqrt(r0.x);
    r0 = _387;
    float3 _393 = r0.xxx * r2.xyz;
    r0 = float4(_393.x, _393.y, _393.z, r0.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
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
    float3 _501 = r0.zxy * r2.yzx;
    r3 = float4(_501.x, _501.y, _501.z, r3.w);
    float3 _512 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_512.x, _512.y, _512.z, r3.w);
    float3 _519 = r2.www * r3.xyz;
    r3 = float4(_519.x, _519.y, _519.z, r3.w);
    float3 _529 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _541 = o1;
    _541.y = mad(_529.z, r3.xyz.z, mad(_529.y, r3.xyz.y, _529.x * r3.xyz.x));
    o1 = _541;
    float3 _550 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _562 = o1;
    _562.z = mad(_550.z, r0.xyz.z, mad(_550.y, r0.xyz.y, _550.x * r0.xyz.x));
    o1 = _562;
    float3 _571 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _583 = o1;
    _583.x = mad(_571.z, r2.xyz.z, mad(_571.y, r2.xyz.y, _571.x * r2.xyz.x));
    o1 = _583;
    float3 _597 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_597.x, _597.y, _597.z, r4.w);
    float3 _612 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_612.x, _612.y, _612.z, r1.w);
    float4 _628 = r0;
    _628.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _628;
    float4 _633 = r0;
    _633.w = rsqrt(r0.w);
    r0 = _633;
    float3 _639 = r0.www * r4.xyz;
    r4 = float4(_639.x, _639.y, _639.z, r4.w);
    float3 _655 = o2;
    _655.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o2 = _655;
    float4 _659 = o3;
    _659.z = r0.y;
    o3 = _659;
    float3 _674 = o2;
    _674.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _674;
    float4 _678 = o3;
    _678.x = r2.y;
    o3 = _678;
    float3 _693 = o2;
    _693.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _693;
    float4 _697 = o3;
    _697.y = r3.y;
    o3 = _697;
    float4 _706 = r0;
    _706.x = r1.y * cb0_m[13].x;
    r0 = _706;
    float4 _713 = r0;
    _713.y = r0.x * asfloat(3216550459u);
    r0 = _713;
    float4 _718 = r0;
    _718.y = exp2(r0.y);
    r0 = _718;
    float4 _725 = r0;
    _725.y = (-r0.y) + asfloat(1065353216u);
    r0 = _725;
    float4 _732 = r0;
    _732.x = r0.y / r0.x;
    r0 = _732;
    float4 _744 = r0;
    _744.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _744;
    float4 _759 = r0;
    _759.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _759;
    float4 _764 = r0;
    _764.z = sqrt(r0.z);
    r0 = _764;
    float4 _772 = r0;
    _772.z = r0.z * cb0_m[13].y;
    r0 = _772;
    float4 _782 = r0;
    _782.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _782;
    float4 _794 = r0;
    _794.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _794;
    float4 _800 = r0;
    _800.x = exp2(-r0.x);
    r0 = _800;
    float4 _806 = r0;
    _806.x = min(r0.x, asfloat(1065353216u));
    r0 = _806;
    float4 _813 = o3;
    _813.w = (-r0.x) + asfloat(1065353216u);
    o3 = _813;
    float2 _820 = float2(asint(shader_in[2].xy));
    r0 = float4(_820.x, _820.y, r0.z, r0.w);
    float2 _831 = r0.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_831.x, _831.y, r0.z, r0.w);
    float2 _840 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _840.x, _840.y);
    float2 _847 = float2(asint(shader_in[1].xy));
    r0 = float4(_847.x, _847.y, r0.z, r0.w);
    float2 _853 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_853.x, _853.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _862 = asfloat(v1);
    shader_in[1] = float4(_862.x, _862.y, shader_in[1].z, shader_in[1].w);
    float2 _867 = asfloat(v2);
    shader_in[2] = float4(_867.x, _867.y, shader_in[2].z, shader_in[2].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
    shader_in[8] = float4(v8.x, v8.y, v8.z, shader_in[8].w);
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
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
