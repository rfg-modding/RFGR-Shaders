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
    float4 _62 = r0;
    _62.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _62;
    float3 _75 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_75.x, _75.y, _75.z, r0.w);
    float4 _80 = r0;
    _80.w = asfloat(1065353216u);
    r0 = _80;
    float4 _95 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _110 = r1;
    _110.x = mad(_95.w, r0.w, mad(_95.z, r0.z, mad(_95.y, r0.y, _95.x * r0.x)));
    r1 = _110;
    float4 _122 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _136 = r1;
    _136.y = mad(_122.w, r0.w, mad(_122.z, r0.z, mad(_122.y, r0.y, _122.x * r0.x)));
    r1 = _136;
    float4 _147 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _161 = r1;
    _161.z = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    r1 = _161;
    float4 _164 = r1;
    _164.w = asfloat(1065353216u);
    r1 = _164;
    float4 _175 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _189 = o0;
    _189.x = mad(_175.w, r1.w, mad(_175.z, r1.z, mad(_175.y, r1.y, _175.x * r1.x)));
    o0 = _189;
    float4 _200 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _214 = o0;
    _214.y = mad(_200.w, r1.w, mad(_200.z, r1.z, mad(_200.y, r1.y, _200.x * r1.x)));
    o0 = _214;
    float4 _225 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _239 = o0;
    _239.z = mad(_225.w, r1.w, mad(_225.z, r1.z, mad(_225.y, r1.y, _225.x * r1.x)));
    o0 = _239;
    float4 _250 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _264 = o0;
    _264.w = mad(_250.w, r1.w, mad(_250.z, r1.z, mad(_250.y, r1.y, _250.x * r1.x)));
    o0 = _264;
    float4 _268 = r0;
    _268.x = asfloat(3212836864u);
    r0 = _268;
    float3 _282 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(r0.x, _282.x, _282.y, _282.z);
    float3 _294 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _304 = r1;
    _304.w = mad(r0.yzw.z, _294.z, mad(r0.yzw.y, _294.y, r0.yzw.x * _294.x));
    r1 = _304;
    float4 _313 = r1;
    _313.w = r1.w * cb5_m[5].y;
    r1 = _313;
    float4 _321 = r2;
    _321.y = r0.x * r1.w;
    r2 = _321;
    float3 _332 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _343 = r3;
    _343.x = mad(r0.yzw.z, _332.z, mad(r0.yzw.y, _332.y, r0.yzw.x * _332.x));
    r3 = _343;
    float3 _354 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _364 = r3;
    _364.z = mad(r0.yzw.z, _354.z, mad(r0.yzw.y, _354.y, r0.yzw.x * _354.x));
    r3 = _364;
    float2 _374 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_374.x, r2.y, _374.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _386 = o3;
    _386.w = r2.z;
    o3 = _386;
    float3 _398 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_398.x, _398.y, _398.z, r0.w);
    float3 _412 = r0.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_412.x, _412.y, _412.z, r2.w);
    float3 _430 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r0.zxy) + (-r2.xyz);
    r2 = float4(_430.x, _430.y, _430.z, r2.w);
    float4 _446 = r0;
    _446.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _446;
    float4 _451 = r0;
    _451.w = rsqrt(r0.w);
    r0 = _451;
    float3 _457 = r0.www * r2.xyz;
    r2 = float4(_457.x, _457.y, _457.z, r2.w);
    float3 _464 = r0.zxy * r2.yzx;
    r3 = float4(_464.x, _464.y, _464.z, r3.w);
    float3 _475 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_475.x, _475.y, _475.z, r3.w);
    float3 _485 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _497 = o3;
    _497.y = mad(_485.z, r2.xyz.z, mad(_485.y, r2.xyz.y, _485.x * r2.xyz.x));
    o3 = _497;
    float4 _512 = r0;
    _512.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _512;
    float4 _517 = r0;
    _517.w = rsqrt(r0.w);
    r0 = _517;
    float3 _523 = r0.www * r3.xyz;
    r2 = float4(_523.x, _523.y, _523.z, r2.w);
    float3 _533 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _545 = r3;
    _545.x = mad(_533.z, r2.xyz.z, mad(_533.y, r2.xyz.y, _533.x * r2.xyz.x));
    r3 = _545;
    float3 _554 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _566 = r3;
    _566.y = mad(_554.z, r2.xyz.z, mad(_554.y, r2.xyz.y, _554.x * r2.xyz.x));
    r3 = _566;
    float3 _575 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _587 = r3;
    _587.z = mad(_575.z, r2.xyz.z, mad(_575.y, r2.xyz.y, _575.x * r2.xyz.x));
    r3 = _587;
    float3 _596 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _608 = o3;
    _608.x = mad(_596.z, r2.xyz.z, mad(_596.y, r2.xyz.y, _596.x * r2.xyz.x));
    o3 = _608;
    float4 _623 = r0;
    _623.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _623;
    float4 _628 = r0;
    _628.w = rsqrt(r0.w);
    r0 = _628;
    float3 _634 = r0.www * r3.xyz;
    r2 = float4(_634.x, _634.y, _634.z, r2.w);
    float3 _644 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_644.x, _644.y, _644.z, r3.w);
    float3 _655 = (shader_in[3].xxx * r3.xyz) + r0.xyz;
    r3 = float4(_655.x, _655.y, _655.z, r3.w);
    float3 _665 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _677 = o3;
    _677.z = mad(_665.z, r0.xyz.z, mad(_665.y, r0.xyz.y, _665.x * r0.xyz.x));
    o3 = _677;
    float3 _686 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _698 = r0;
    _698.x = mad(_686.z, r3.xyz.z, mad(_686.y, r3.xyz.y, _686.x * r3.xyz.x));
    r0 = _698;
    float3 _707 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _719 = r0;
    _719.y = mad(_707.z, r3.xyz.z, mad(_707.y, r3.xyz.y, _707.x * r3.xyz.x));
    r0 = _719;
    float3 _728 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _740 = r0;
    _740.z = mad(_728.z, r3.xyz.z, mad(_728.y, r3.xyz.y, _728.x * r3.xyz.x));
    r0 = _740;
    float4 _755 = r0;
    _755.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _755;
    float4 _760 = r0;
    _760.w = rsqrt(r0.w);
    r0 = _760;
    float3 _766 = r0.www * r0.xyz;
    r0 = float4(_766.x, _766.y, _766.z, r0.w);
    float3 _773 = r2.yzx * r0.zxy;
    r3 = float4(_773.x, _773.y, _773.z, r3.w);
    float3 _784 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_784.x, _784.y, _784.z, r3.w);
    float3 _798 = (-r1.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_798.x, _798.y, _798.z, r4.w);
    float3 _814 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_814.x, _814.y, _814.z, r1.w);
    float3 _821 = -r3.xyz;
    float3 _831 = o2;
    _831.y = mad(r4.xyz.z, _821.z, mad(r4.xyz.y, _821.y, r4.xyz.x * _821.x));
    o2 = _831;
    float3 _840 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _843 = -r3.xyz;
    float4 _853 = o6;
    _853.y = mad(_840.z, _843.z, mad(_840.y, _843.y, _840.x * _843.x));
    o6 = _853;
    float3 _868 = o2;
    _868.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _868;
    float3 _877 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _889 = o6;
    _889.x = mad(_877.z, r2.xyz.z, mad(_877.y, r2.xyz.y, _877.x * r2.xyz.x));
    o6 = _889;
    float3 _904 = o2;
    _904.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o2 = _904;
    float3 _913 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _925 = o6;
    _925.z = mad(_913.z, r0.xyz.z, mad(_913.y, r0.xyz.y, _913.x * r0.xyz.x));
    o6 = _925;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _955 = r0;
    _955.x = r1.y * cb0_m[13].x;
    r0 = _955;
    float4 _962 = r0;
    _962.y = r0.x * asfloat(3216550459u);
    r0 = _962;
    float4 _967 = r0;
    _967.y = exp2(r0.y);
    r0 = _967;
    float4 _974 = r0;
    _974.y = (-r0.y) + asfloat(1065353216u);
    r0 = _974;
    float4 _981 = r0;
    _981.x = r0.y / r0.x;
    r0 = _981;
    float4 _993 = r0;
    _993.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _993;
    float4 _1008 = r0;
    _1008.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _1008;
    float4 _1013 = r0;
    _1013.z = sqrt(r0.z);
    r0 = _1013;
    float4 _1021 = r0;
    _1021.z = r0.z * cb0_m[13].y;
    r0 = _1021;
    float4 _1031 = r0;
    _1031.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1031;
    float4 _1043 = r0;
    _1043.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _1043;
    float4 _1049 = r0;
    _1049.x = exp2(-r0.x);
    r0 = _1049;
    float4 _1055 = r0;
    _1055.x = min(r0.x, asfloat(1065353216u));
    r0 = _1055;
    float4 _1062 = o6;
    _1062.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1062;
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
