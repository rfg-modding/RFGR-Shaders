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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
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
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _79 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r0;
    _93.x = mad(_79.w, r1.w, mad(_79.z, r1.z, mad(_79.y, r1.y, _79.x * r1.x)));
    r0 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r0;
    _119.y = mad(_105.w, r1.w, mad(_105.z, r1.z, mad(_105.y, r1.y, _105.x * r1.x)));
    r0 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r0;
    _145.z = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r0 = _145;
    float4 _156 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _170 = o0;
    _170.x = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _195 = o0;
    _195.y = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _220 = o0;
    _220.z = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float4 _232 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _246 = o0;
    _246.w = mad(_232.w, r0.w, mad(_232.z, r0.z, mad(_232.y, r0.y, _232.x * r0.x)));
    o0 = _246;
    float4 _250 = r0;
    _250.w = asfloat(3212836864u);
    r0 = _250;
    float3 _264 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_264.x, _264.y, _264.z, r1.w);
    float3 _276 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _286 = r1;
    _286.w = mad(r1.xyz.z, _276.z, mad(r1.xyz.y, _276.y, r1.xyz.x * _276.x));
    r1 = _286;
    float4 _295 = r1;
    _295.w = r1.w * cb5_m[5].y;
    r1 = _295;
    float4 _303 = r2;
    _303.y = r0.w * r1.w;
    r2 = _303;
    float3 _314 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _325 = r3;
    _325.x = mad(r1.xyz.z, _314.z, mad(r1.xyz.y, _314.y, r1.xyz.x * _314.x));
    r3 = _325;
    float3 _336 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _346 = r3;
    _346.z = mad(r1.xyz.z, _336.z, mad(r1.xyz.y, _336.y, r1.xyz.x * _336.x));
    r3 = _346;
    float2 _356 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_356.x, r2.y, _356.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _368 = o3;
    _368.w = r2.z;
    o3 = _368;
    float3 _380 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_380.x, _380.y, _380.z, r1.w);
    float3 _394 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_394.x, _394.y, _394.z, r2.w);
    float3 _412 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_412.x, _412.y, _412.z, r2.w);
    float4 _428 = r0;
    _428.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _428;
    float4 _433 = r0;
    _433.w = rsqrt(r0.w);
    r0 = _433;
    float3 _439 = r0.www * r2.xyz;
    r2 = float4(_439.x, _439.y, _439.z, r2.w);
    float3 _446 = r1.zxy * r2.xyz;
    r3 = float4(_446.x, _446.y, _446.z, r3.w);
    float3 _457 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_457.x, _457.y, _457.z, r2.w);
    float4 _473 = r0;
    _473.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _473;
    float4 _478 = r0;
    _478.w = rsqrt(r0.w);
    r0 = _478;
    float3 _484 = r0.www * r2.xyz;
    r2 = float4(_484.x, _484.y, _484.z, r2.w);
    float3 _494 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _506 = r3;
    _506.x = mad(_494.z, r2.xyz.z, mad(_494.y, r2.xyz.y, _494.x * r2.xyz.x));
    r3 = _506;
    float3 _515 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _527 = r3;
    _527.y = mad(_515.z, r2.xyz.z, mad(_515.y, r2.xyz.y, _515.x * r2.xyz.x));
    r3 = _527;
    float3 _536 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _548 = r3;
    _548.z = mad(_536.z, r2.xyz.z, mad(_536.y, r2.xyz.y, _536.x * r2.xyz.x));
    r3 = _548;
    float3 _557 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _569 = o3;
    _569.x = mad(_557.z, r2.xyz.z, mad(_557.y, r2.xyz.y, _557.x * r2.xyz.x));
    o3 = _569;
    float4 _584 = r0;
    _584.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _584;
    float4 _589 = r0;
    _589.w = rsqrt(r0.w);
    r0 = _589;
    float3 _595 = r0.www * r3.xyz;
    r2 = float4(_595.x, _595.y, _595.z, r2.w);
    float3 _605 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _617 = r3;
    _617.x = mad(_605.z, r1.xyz.z, mad(_605.y, r1.xyz.y, _605.x * r1.xyz.x));
    r3 = _617;
    float3 _626 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _638 = r3;
    _638.y = mad(_626.z, r1.xyz.z, mad(_626.y, r1.xyz.y, _626.x * r1.xyz.x));
    r3 = _638;
    float3 _647 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _659 = r3;
    _659.z = mad(_647.z, r1.xyz.z, mad(_647.y, r1.xyz.y, _647.x * r1.xyz.x));
    r3 = _659;
    float3 _668 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _680 = o3;
    _680.z = mad(_668.z, r1.xyz.z, mad(_668.y, r1.xyz.y, _668.x * r1.xyz.x));
    o3 = _680;
    float4 _695 = r0;
    _695.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _695;
    float4 _700 = r0;
    _700.w = rsqrt(r0.w);
    r0 = _700;
    float3 _706 = r0.www * r3.xyz;
    r1 = float4(_706.x, _706.y, _706.z, r1.w);
    float3 _713 = r2.yzx * r1.zxy;
    r3 = float4(_713.x, _713.y, _713.z, r3.w);
    float3 _724 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_724.x, _724.y, _724.z, r3.w);
    float3 _738 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_738.x, _738.y, _738.z, r4.w);
    float3 _754 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_754.x, _754.y, _754.z, r0.w);
    float3 _761 = -r3.xyz;
    float3 _771 = o2;
    _771.y = mad(r4.xyz.z, _761.z, mad(r4.xyz.y, _761.y, r4.xyz.x * _761.x));
    o2 = _771;
    float3 _786 = o2;
    _786.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _786;
    float3 _795 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _807 = o6;
    _807.x = mad(_795.z, r2.xyz.z, mad(_795.y, r2.xyz.y, _795.x * r2.xyz.x));
    o6 = _807;
    float3 _822 = o2;
    _822.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _822;
    float3 _831 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _843 = o6;
    _843.z = mad(_831.z, r1.xyz.z, mad(_831.y, r1.xyz.y, _831.x * r1.xyz.x));
    o6 = _843;
    float3 _852 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _864 = o3;
    _864.y = mad(_852.z, r3.xyz.z, mad(_852.y, r3.xyz.y, _852.x * r3.xyz.x));
    o3 = _864;
    float3 _873 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _876 = -r3.xyz;
    float4 _886 = o6;
    _886.y = mad(_873.z, _876.z, mad(_873.y, _876.y, _873.x * _876.x));
    o6 = _886;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _917 = r0;
    _917.w = r0.y * cb0_m[13].x;
    r0 = _917;
    float4 _924 = r1;
    _924.x = r0.w * asfloat(3216550459u);
    r1 = _924;
    float4 _929 = r1;
    _929.x = exp2(r1.x);
    r1 = _929;
    float4 _936 = r1;
    _936.x = (-r1.x) + asfloat(1065353216u);
    r1 = _936;
    float4 _943 = r0;
    _943.w = r1.x / r0.w;
    r0 = _943;
    float4 _955 = r1;
    _955.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _955;
    float4 _970 = r0;
    _970.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _970;
    float4 _975 = r0;
    _975.x = sqrt(r0.x);
    r0 = _975;
    float4 _983 = r0;
    _983.x = r0.x * cb0_m[13].y;
    r0 = _983;
    float4 _993 = r0;
    _993.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _993;
    float4 _1005 = r0;
    _1005.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _1005;
    float4 _1011 = r0;
    _1011.x = exp2(-r0.x);
    r0 = _1011;
    float4 _1017 = r0;
    _1017.x = min(r0.x, asfloat(1065353216u));
    r0 = _1017;
    float4 _1024 = o6;
    _1024.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1024;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
