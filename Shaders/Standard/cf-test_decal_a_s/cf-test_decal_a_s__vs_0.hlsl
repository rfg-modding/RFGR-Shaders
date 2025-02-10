cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
    float3 _260 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_260.x, _260.y, _260.z, r0.w);
    float4 _265 = r0;
    _265.w = asfloat(3212836864u);
    r0 = _265;
    float3 _279 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_279.x, _279.y, _279.z, r1.w);
    float3 _291 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _301 = r1;
    _301.w = mad(r1.xyz.z, _291.z, mad(r1.xyz.y, _291.y, r1.xyz.x * _291.x));
    r1 = _301;
    float4 _310 = r1;
    _310.w = r1.w * cb5_m[5].y;
    r1 = _310;
    float4 _318 = r2;
    _318.y = r0.w * r1.w;
    r2 = _318;
    float3 _329 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _340 = r3;
    _340.x = mad(r1.xyz.z, _329.z, mad(r1.xyz.y, _329.y, r1.xyz.x * _329.x));
    r3 = _340;
    float3 _351 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _361 = r3;
    _361.z = mad(r1.xyz.z, _351.z, mad(r1.xyz.y, _351.y, r1.xyz.x * _351.x));
    r3 = _361;
    float2 _371 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_371.x, r2.y, _371.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _383 = o3;
    _383.w = r2.z;
    o3 = _383;
    float3 _395 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_395.x, _395.y, _395.z, r1.w);
    float3 _409 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_409.x, _409.y, _409.z, r2.w);
    float3 _427 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_427.x, _427.y, _427.z, r2.w);
    float4 _443 = r0;
    _443.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _443;
    float4 _448 = r0;
    _448.w = rsqrt(r0.w);
    r0 = _448;
    float3 _454 = r0.www * r2.xyz;
    r2 = float4(_454.x, _454.y, _454.z, r2.w);
    float3 _461 = r1.zxy * r2.xyz;
    r3 = float4(_461.x, _461.y, _461.z, r3.w);
    float3 _472 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_472.x, _472.y, _472.z, r2.w);
    float4 _488 = r0;
    _488.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _488;
    float4 _493 = r0;
    _493.w = rsqrt(r0.w);
    r0 = _493;
    float3 _499 = r0.www * r2.xyz;
    r2 = float4(_499.x, _499.y, _499.z, r2.w);
    float3 _509 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _521 = r3;
    _521.x = mad(_509.z, r2.xyz.z, mad(_509.y, r2.xyz.y, _509.x * r2.xyz.x));
    r3 = _521;
    float3 _530 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _542 = r3;
    _542.y = mad(_530.z, r2.xyz.z, mad(_530.y, r2.xyz.y, _530.x * r2.xyz.x));
    r3 = _542;
    float3 _551 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _563 = r3;
    _563.z = mad(_551.z, r2.xyz.z, mad(_551.y, r2.xyz.y, _551.x * r2.xyz.x));
    r3 = _563;
    float3 _572 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _584 = o3;
    _584.x = mad(_572.z, r2.xyz.z, mad(_572.y, r2.xyz.y, _572.x * r2.xyz.x));
    o3 = _584;
    float4 _599 = r0;
    _599.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _599;
    float4 _604 = r0;
    _604.w = rsqrt(r0.w);
    r0 = _604;
    float3 _610 = r0.www * r3.xyz;
    r2 = float4(_610.x, _610.y, _610.z, r2.w);
    float3 _620 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _632 = r3;
    _632.x = mad(_620.z, r1.xyz.z, mad(_620.y, r1.xyz.y, _620.x * r1.xyz.x));
    r3 = _632;
    float3 _641 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _653 = r3;
    _653.y = mad(_641.z, r1.xyz.z, mad(_641.y, r1.xyz.y, _641.x * r1.xyz.x));
    r3 = _653;
    float3 _662 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _674 = r3;
    _674.z = mad(_662.z, r1.xyz.z, mad(_662.y, r1.xyz.y, _662.x * r1.xyz.x));
    r3 = _674;
    float3 _683 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _695 = o3;
    _695.z = mad(_683.z, r1.xyz.z, mad(_683.y, r1.xyz.y, _683.x * r1.xyz.x));
    o3 = _695;
    float4 _710 = r0;
    _710.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _710;
    float4 _715 = r0;
    _715.w = rsqrt(r0.w);
    r0 = _715;
    float3 _721 = r0.www * r3.xyz;
    r1 = float4(_721.x, _721.y, _721.z, r1.w);
    float3 _728 = r2.yzx * r1.zxy;
    r3 = float4(_728.x, _728.y, _728.z, r3.w);
    float3 _739 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_739.x, _739.y, _739.z, r3.w);
    float3 _749 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _752 = -r3.xyz;
    float3 _762 = o2;
    _762.y = mad(_749.z, _752.z, mad(_749.y, _752.y, _749.x * _752.x));
    o2 = _762;
    float3 _771 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _783 = o2;
    _783.x = mad(_771.z, r2.xyz.z, mad(_771.y, r2.xyz.y, _771.x * r2.xyz.x));
    o2 = _783;
    float4 _787 = o6;
    _787.x = r2.y;
    o6 = _787;
    float3 _796 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _808 = o2;
    _808.z = mad(_796.z, r1.xyz.z, mad(_796.y, r1.xyz.y, _796.x * r1.xyz.x));
    o2 = _808;
    float4 _812 = o6;
    _812.z = r1.y;
    o6 = _812;
    float3 _821 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _833 = o3;
    _833.y = mad(_821.z, r3.xyz.z, mad(_821.y, r3.xyz.y, _821.x * r3.xyz.x));
    o3 = _833;
    float4 _838 = o6;
    _838.y = -r3.y;
    o6 = _838;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _869 = r0;
    _869.w = r0.y * cb0_m[13].x;
    r0 = _869;
    float4 _876 = r1;
    _876.x = r0.w * asfloat(3216550459u);
    r1 = _876;
    float4 _881 = r1;
    _881.x = exp2(r1.x);
    r1 = _881;
    float4 _888 = r1;
    _888.x = (-r1.x) + asfloat(1065353216u);
    r1 = _888;
    float4 _895 = r0;
    _895.w = r1.x / r0.w;
    r0 = _895;
    float4 _907 = r1;
    _907.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _907;
    float4 _922 = r0;
    _922.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _922;
    float4 _927 = r0;
    _927.x = sqrt(r0.x);
    r0 = _927;
    float4 _935 = r0;
    _935.x = r0.x * cb0_m[13].y;
    r0 = _935;
    float4 _945 = r0;
    _945.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _945;
    float4 _957 = r0;
    _957.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _957;
    float4 _963 = r0;
    _963.x = exp2(-r0.x);
    r0 = _963;
    float4 _969 = r0;
    _969.x = min(r0.x, asfloat(1065353216u));
    r0 = _969;
    float4 _976 = o6;
    _976.w = (-r0.x) + asfloat(1065353216u);
    o6 = _976;
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
