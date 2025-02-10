cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float3 v0;
static float3 v1;
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _78 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _92 = r0;
    _92.x = mad(_78.w, r1.w, mad(_78.z, r1.z, mad(_78.y, r1.y, _78.x * r1.x)));
    r0 = _92;
    float4 _104 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _118 = r0;
    _118.y = mad(_104.w, r1.w, mad(_104.z, r1.z, mad(_104.y, r1.y, _104.x * r1.x)));
    r0 = _118;
    float4 _130 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _144 = r0;
    _144.z = mad(_130.w, r1.w, mad(_130.z, r1.z, mad(_130.y, r1.y, _130.x * r1.x)));
    r0 = _144;
    float4 _155 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _169 = o0;
    _169.x = mad(_155.w, r0.w, mad(_155.z, r0.z, mad(_155.y, r0.y, _155.x * r0.x)));
    o0 = _169;
    float4 _180 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _194 = o0;
    _194.y = mad(_180.w, r0.w, mad(_180.z, r0.z, mad(_180.y, r0.y, _180.x * r0.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _219 = o0;
    _219.z = mad(_205.w, r0.w, mad(_205.z, r0.z, mad(_205.y, r0.y, _205.x * r0.x)));
    o0 = _219;
    float4 _231 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _245 = o0;
    _245.w = mad(_231.w, r0.w, mad(_231.z, r0.z, mad(_231.y, r0.y, _231.x * r0.x)));
    o0 = _245;
    float3 _258 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_258.x, _258.y, _258.z, r1.w);
    float3 _272 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_272.x, _272.y, _272.z, r2.w);
    float3 _291 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_291.x, _291.y, _291.z, r2.w);
    float4 _307 = r0;
    _307.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _307;
    float4 _312 = r0;
    _312.w = rsqrt(r0.w);
    r0 = _312;
    float3 _318 = r0.www * r2.xyz;
    r2 = float4(_318.x, _318.y, _318.z, r2.w);
    float3 _325 = r1.zxy * r2.xyz;
    r3 = float4(_325.x, _325.y, _325.z, r3.w);
    float3 _337 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_337.x, _337.y, _337.z, r2.w);
    float4 _353 = r0;
    _353.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _353;
    float4 _358 = r0;
    _358.w = rsqrt(r0.w);
    r0 = _358;
    float3 _364 = r0.www * r2.xyz;
    r2 = float4(_364.x, _364.y, _364.z, r2.w);
    float3 _374 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _386 = r3;
    _386.x = mad(_374.z, r2.xyz.z, mad(_374.y, r2.xyz.y, _374.x * r2.xyz.x));
    r3 = _386;
    float3 _395 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _407 = r3;
    _407.y = mad(_395.z, r2.xyz.z, mad(_395.y, r2.xyz.y, _395.x * r2.xyz.x));
    r3 = _407;
    float3 _416 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _428 = r3;
    _428.z = mad(_416.z, r2.xyz.z, mad(_416.y, r2.xyz.y, _416.x * r2.xyz.x));
    r3 = _428;
    float3 _437 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _449 = o1;
    _449.x = mad(_437.z, r2.xyz.z, mad(_437.y, r2.xyz.y, _437.x * r2.xyz.x));
    o1 = _449;
    float4 _464 = r0;
    _464.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _464;
    float4 _469 = r0;
    _469.w = rsqrt(r0.w);
    r0 = _469;
    float3 _475 = r0.www * r3.xyz;
    r2 = float4(_475.x, _475.y, _475.z, r2.w);
    float3 _485 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _497 = r3;
    _497.x = mad(_485.z, r1.xyz.z, mad(_485.y, r1.xyz.y, _485.x * r1.xyz.x));
    r3 = _497;
    float3 _506 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _518 = r3;
    _518.y = mad(_506.z, r1.xyz.z, mad(_506.y, r1.xyz.y, _506.x * r1.xyz.x));
    r3 = _518;
    float3 _527 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _539 = r3;
    _539.z = mad(_527.z, r1.xyz.z, mad(_527.y, r1.xyz.y, _527.x * r1.xyz.x));
    r3 = _539;
    float3 _548 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _560 = o1;
    _560.z = mad(_548.z, r1.xyz.z, mad(_548.y, r1.xyz.y, _548.x * r1.xyz.x));
    o1 = _560;
    float4 _575 = r0;
    _575.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _575;
    float4 _580 = r0;
    _580.w = rsqrt(r0.w);
    r0 = _580;
    float3 _586 = r0.www * r3.xyz;
    r1 = float4(_586.x, _586.y, _586.z, r1.w);
    float3 _593 = r2.yzx * r1.zxy;
    r3 = float4(_593.x, _593.y, _593.z, r3.w);
    float3 _604 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_604.x, _604.y, _604.z, r3.w);
    float3 _614 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _626 = o1;
    _626.y = mad(_614.z, r3.xyz.z, mad(_614.y, r3.xyz.y, _614.x * r3.xyz.x));
    o1 = _626;
    float3 _640 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r4 = float4(_640.x, _640.y, _640.z, r4.w);
    float3 _653 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _664 = r5;
    _664.x = mad(r4.xyz.z, _653.z, mad(r4.xyz.y, _653.y, r4.xyz.x * _653.x));
    r5 = _664;
    float3 _675 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _685 = r5;
    _685.z = mad(r4.xyz.z, _675.z, mad(r4.xyz.y, _675.y, r4.xyz.x * _675.x));
    r5 = _685;
    float3 _696 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _706 = r0;
    _706.w = mad(r4.xyz.z, _696.z, mad(r4.xyz.y, _696.y, r4.xyz.x * _696.x));
    r0 = _706;
    float4 _715 = r0;
    _715.w = r0.w * cb5_m[5].y;
    r0 = _715;
    float2 _726 = r5.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r4 = float4(_726.x, r4.y, _726.y, r4.w);
    float4 _731 = o1;
    _731.w = r4.z;
    o1 = _731;
    o2 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o3 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float3 _762 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _774 = o4;
    _774.x = mad(_762.z, r2.xyz.z, mad(_762.y, r2.xyz.y, _762.x * r2.xyz.x));
    o4 = _774;
    float3 _783 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _795 = o4;
    _795.z = mad(_783.z, r1.xyz.z, mad(_783.y, r1.xyz.y, _783.x * r1.xyz.x));
    o4 = _795;
    float3 _804 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _807 = -r3.xyz;
    float4 _817 = o4;
    _817.y = mad(_804.z, _807.z, mad(_804.y, _807.y, _804.x * _807.x));
    o4 = _817;
    float4 _824 = r1;
    _824.w = float(asint(shader_in[2].x));
    r1 = _824;
    float4 _831 = o4;
    _831.w = r1.w * asfloat(981467136u);
    o4 = _831;
    float3 _845 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r5 = float4(_845.x, _845.y, _845.z, r5.w);
    float3 _859 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_859.x, _859.y, _859.z, r0.w);
    float4 _869 = r1;
    _869.w = r5.y * cb0_m[13].x;
    r1 = _869;
    float4 _876 = r2;
    _876.w = r1.w * asfloat(3216550459u);
    r2 = _876;
    float4 _881 = r2;
    _881.w = exp2(r2.w);
    r2 = _881;
    float4 _888 = r2;
    _888.w = (-r2.w) + asfloat(1065353216u);
    r2 = _888;
    float4 _895 = r1;
    _895.w = r2.w / r1.w;
    r1 = _895;
    float4 _907 = r2;
    _907.w = asfloat((asfloat(1008981770u) < abs(r5.y)) ? 4294967295u : 0u);
    r2 = _907;
    float4 _922 = r3;
    _922.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r3 = _922;
    float4 _927 = r3;
    _927.w = sqrt(r3.w);
    r3 = _927;
    float4 _935 = r3;
    _935.w = r3.w * cb0_m[13].y;
    r3 = _935;
    float4 _945 = r1;
    _945.w = (asuint(r2.w) != 0u) ? r1.w : asfloat(1065353216u);
    r1 = _945;
    float4 _957 = r1;
    _957.w = (r1.w * r3.w) + (-cb0_m[13].w);
    r1 = _957;
    float4 _963 = r1;
    _963.w = exp2(-r1.w);
    r1 = _963;
    float4 _969 = r1;
    _969.w = min(r1.w, asfloat(1065353216u));
    r1 = _969;
    float4 _976 = o5;
    _976.w = (-r1.w) + asfloat(1065353216u);
    o5 = _976;
    float4 _991 = o5;
    _991.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o5 = _991;
    float3 _997 = -r3.xyz;
    float4 _1007 = o5;
    _1007.y = mad(r0.xyz.z, _997.z, mad(r0.xyz.y, _997.y, r0.xyz.x * _997.x));
    o5 = _1007;
    float4 _1022 = o5;
    _1022.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o5 = _1022;
    float4 _1025 = r0;
    _1025.x = asfloat(3212836864u);
    r0 = _1025;
    float4 _1032 = r4;
    _1032.y = r0.w * r0.x;
    r4 = _1032;
    float2 _1040 = r4.xy + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_1040.x, _1040.y, r0.z, r0.w);
    float2 _1047 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o6 = float4(_1047.x, _1047.y, o6.z, o6.w);
    float2 _1055 = cb5_m[5].w.xx * asfloat(uint2(981467136u, 981467136u));
    o6 = float4(o6.x, o6.y, _1055.x, _1055.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _1070 = shader_in[2];
    _1070.x = asfloat(v2);
    shader_in[2] = _1070;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
