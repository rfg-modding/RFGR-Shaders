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
static float3 v2;
static float4 v3;
static float3 v4;
static float3 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _60 = r0;
    _60.w = asfloat(1065353216u);
    r0 = _60;
    float4 _70 = r1;
    _70.x = shader_in[5].x * asfloat(1082130432u);
    r1 = _70;
    float3 _83 = (r1.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r1 = float4(_83.x, _83.y, _83.z, r1.w);
    float4 _87 = r1;
    _87.w = asfloat(1065353216u);
    r1 = _87;
    float4 _102 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _116 = r0;
    _116.x = mad(_102.w, r1.w, mad(_102.z, r1.z, mad(_102.y, r1.y, _102.x * r1.x)));
    r0 = _116;
    float4 _128 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _142 = r0;
    _142.y = mad(_128.w, r1.w, mad(_128.z, r1.z, mad(_128.y, r1.y, _128.x * r1.x)));
    r0 = _142;
    float4 _154 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _168 = r0;
    _168.z = mad(_154.w, r1.w, mad(_154.z, r1.z, mad(_154.y, r1.y, _154.x * r1.x)));
    r0 = _168;
    float4 _179 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _193 = o0;
    _193.x = mad(_179.w, r0.w, mad(_179.z, r0.z, mad(_179.y, r0.y, _179.x * r0.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _218 = o0;
    _218.y = mad(_204.w, r0.w, mad(_204.z, r0.z, mad(_204.y, r0.y, _204.x * r0.x)));
    o0 = _218;
    float4 _229 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _243 = o0;
    _243.z = mad(_229.w, r0.w, mad(_229.z, r0.z, mad(_229.y, r0.y, _229.x * r0.x)));
    o0 = _243;
    float4 _255 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _269 = o0;
    _269.w = mad(_255.w, r0.w, mad(_255.z, r0.z, mad(_255.y, r0.y, _255.x * r0.x)));
    o0 = _269;
    float2 _275 = float2(asint(shader_in[1].xy));
    r1 = float4(_275.x, _275.y, r1.z, r1.w);
    float2 _287 = r1.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r1 = float4(_287.x, _287.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _308 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_308.x, _308.y, _308.z, r1.w);
    float3 _318 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_318.x, _318.y, _318.z, r2.w);
    float3 _330 = (shader_in[5].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_330.x, _330.y, _330.z, r1.w);
    float3 _340 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _352 = r2;
    _352.x = mad(_340.z, r1.xyz.z, mad(_340.y, r1.xyz.y, _340.x * r1.xyz.x));
    r2 = _352;
    float3 _361 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _373 = r2;
    _373.y = mad(_361.z, r1.xyz.z, mad(_361.y, r1.xyz.y, _361.x * r1.xyz.x));
    r2 = _373;
    float3 _382 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _394 = r2;
    _394.z = mad(_382.z, r1.xyz.z, mad(_382.y, r1.xyz.y, _382.x * r1.xyz.x));
    r2 = _394;
    float4 _409 = r0;
    _409.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _409;
    float4 _414 = r0;
    _414.w = rsqrt(r0.w);
    r0 = _414;
    float3 _420 = r0.www * r2.xyz;
    r1 = float4(_420.x, _420.y, _420.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _439 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _452 = r3;
    _452.x = mad(_439.z, r2.xyz.z, mad(_439.y, r2.xyz.y, _439.x * r2.xyz.x));
    r3 = _452;
    float3 _461 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _473 = r3;
    _473.y = mad(_461.z, r2.xyz.z, mad(_461.y, r2.xyz.y, _461.x * r2.xyz.x));
    r3 = _473;
    float3 _482 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _494 = r3;
    _494.z = mad(_482.z, r2.xyz.z, mad(_482.y, r2.xyz.y, _482.x * r2.xyz.x));
    r3 = _494;
    float4 _509 = r0;
    _509.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _509;
    float4 _514 = r0;
    _514.w = rsqrt(r0.w);
    r0 = _514;
    float3 _520 = r0.www * r3.xyz;
    r2 = float4(_520.x, _520.y, _520.z, r2.w);
    float3 _527 = r1.zxy * r2.yzx;
    r3 = float4(_527.x, _527.y, _527.z, r3.w);
    float3 _538 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_538.x, _538.y, _538.z, r3.w);
    float3 _545 = r2.www * r3.xyz;
    r3 = float4(_545.x, _545.y, _545.z, r3.w);
    float3 _559 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_559.x, _559.y, _559.z, r4.w);
    float3 _576 = o2;
    _576.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _576;
    float3 _591 = o2;
    _591.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _591;
    float3 _606 = o2;
    _606.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _606;
    float3 _620 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_620.x, _620.y, _620.z, r4.w);
    float3 _634 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_634.x, _634.y, _634.z, r0.w);
    float4 _650 = r0;
    _650.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _650;
    float4 _655 = r0;
    _655.w = rsqrt(r0.w);
    r0 = _655;
    float3 _661 = r0.www * r4.xyz;
    r4 = float4(_661.x, _661.y, _661.z, r4.w);
    float3 _677 = o3;
    _677.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _677;
    float3 _686 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _698 = o4;
    _698.z = mad(_686.z, r1.xyz.z, mad(_686.y, r1.xyz.y, _686.x * r1.xyz.x));
    o4 = _698;
    float3 _713 = o3;
    _713.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _713;
    float3 _722 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _734 = o4;
    _734.x = mad(_722.z, r2.xyz.z, mad(_722.y, r2.xyz.y, _722.x * r2.xyz.x));
    o4 = _734;
    float3 _749 = o3;
    _749.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _749;
    float3 _758 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _770 = o4;
    _770.y = mad(_758.z, r3.xyz.z, mad(_758.y, r3.xyz.y, _758.x * r3.xyz.x));
    o4 = _770;
    float4 _779 = r0;
    _779.w = r0.y * cb0_m[13].x;
    r0 = _779;
    float4 _786 = r1;
    _786.x = r0.w * asfloat(3216550459u);
    r1 = _786;
    float4 _791 = r1;
    _791.x = exp2(r1.x);
    r1 = _791;
    float4 _798 = r1;
    _798.x = (-r1.x) + asfloat(1065353216u);
    r1 = _798;
    float4 _805 = r0;
    _805.w = r1.x / r0.w;
    r0 = _805;
    float4 _817 = r1;
    _817.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _817;
    float4 _832 = r0;
    _832.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _832;
    float4 _837 = r0;
    _837.x = sqrt(r0.x);
    r0 = _837;
    float4 _845 = r0;
    _845.x = r0.x * cb0_m[13].y;
    r0 = _845;
    float4 _855 = r0;
    _855.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _855;
    float4 _867 = r0;
    _867.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _867;
    float4 _873 = r0;
    _873.x = exp2(-r0.x);
    r0 = _873;
    float4 _879 = r0;
    _879.x = min(r0.x, asfloat(1065353216u));
    r0 = _879;
    float4 _886 = o4;
    _886.w = (-r0.x) + asfloat(1065353216u);
    o4 = _886;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _894 = asfloat(v1);
    shader_in[1] = float4(_894.x, _894.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
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
