cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float3 o1;
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
    float4 _60 = r0;
    _60.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _60;
    float3 _73 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_73.x, _73.y, _73.z, r0.w);
    float4 _78 = r0;
    _78.w = asfloat(1065353216u);
    r0 = _78;
    float4 _93 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _108 = r1;
    _108.x = mad(_93.w, r0.w, mad(_93.z, r0.z, mad(_93.y, r0.y, _93.x * r0.x)));
    r1 = _108;
    float4 _120 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _134 = r1;
    _134.y = mad(_120.w, r0.w, mad(_120.z, r0.z, mad(_120.y, r0.y, _120.x * r0.x)));
    r1 = _134;
    float4 _145 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _159 = r1;
    _159.z = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    r1 = _159;
    float4 _162 = r1;
    _162.w = asfloat(1065353216u);
    r1 = _162;
    float4 _173 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _187 = o0;
    _187.x = mad(_173.w, r1.w, mad(_173.z, r1.z, mad(_173.y, r1.y, _173.x * r1.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _212 = o0;
    _212.y = mad(_198.w, r1.w, mad(_198.z, r1.z, mad(_198.y, r1.y, _198.x * r1.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _237 = o0;
    _237.z = mad(_223.w, r1.w, mad(_223.z, r1.z, mad(_223.y, r1.y, _223.x * r1.x)));
    o0 = _237;
    float4 _248 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _262 = o0;
    _262.w = mad(_248.w, r1.w, mad(_248.z, r1.z, mad(_248.y, r1.y, _248.x * r1.x)));
    o0 = _262;
    float3 _276 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_276.x, _276.y, _276.z, r0.w);
    float3 _291 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_291.x, _291.y, _291.z, r1.w);
    float3 _310 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_310.x, _310.y, _310.z, r1.w);
    float4 _326 = r0;
    _326.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _326;
    float4 _331 = r0;
    _331.w = rsqrt(r0.w);
    r0 = _331;
    float3 _337 = r0.www * r1.xyz;
    r1 = float4(_337.x, _337.y, _337.z, r1.w);
    float3 _345 = r1.yzx * shader_in[1].zxy;
    r2 = float4(_345.x, _345.y, _345.z, r2.w);
    float3 _358 = (shader_in[1].yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_358.x, _358.y, _358.z, r2.w);
    float3 _368 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _380 = o3;
    _380.y = mad(_368.z, r1.xyz.z, mad(_368.y, r1.xyz.y, _368.x * r1.xyz.x));
    o3 = _380;
    float4 _395 = r0;
    _395.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _395;
    float4 _400 = r0;
    _400.w = rsqrt(r0.w);
    r0 = _400;
    float3 _406 = r0.www * r2.xyz;
    r1 = float4(_406.x, _406.y, _406.z, r1.w);
    float3 _416 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _428 = r2;
    _428.x = mad(_416.z, r1.xyz.z, mad(_416.y, r1.xyz.y, _416.x * r1.xyz.x));
    r2 = _428;
    float3 _437 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _449 = r2;
    _449.y = mad(_437.z, r1.xyz.z, mad(_437.y, r1.xyz.y, _437.x * r1.xyz.x));
    r2 = _449;
    float3 _458 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _470 = r2;
    _470.z = mad(_458.z, r1.xyz.z, mad(_458.y, r1.xyz.y, _458.x * r1.xyz.x));
    r2 = _470;
    float3 _479 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _491 = o3;
    _491.x = mad(_479.z, r1.xyz.z, mad(_479.y, r1.xyz.y, _479.x * r1.xyz.x));
    o3 = _491;
    float4 _506 = r0;
    _506.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _506;
    float4 _511 = r0;
    _511.w = rsqrt(r0.w);
    r0 = _511;
    float3 _517 = r0.www * r2.xyz;
    r1 = float4(_517.x, _517.y, _517.z, r1.w);
    float3 _531 = (shader_in[3].xxx * shader_in[4].xyz) + shader_in[1].xyz;
    r2 = float4(_531.x, _531.y, _531.z, r2.w);
    float3 _541 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _554 = r3;
    _554.x = mad(_541.z, r2.xyz.z, mad(_541.y, r2.xyz.y, _541.x * r2.xyz.x));
    r3 = _554;
    float3 _563 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _575 = r3;
    _575.y = mad(_563.z, r2.xyz.z, mad(_563.y, r2.xyz.y, _563.x * r2.xyz.x));
    r3 = _575;
    float3 _584 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _596 = r3;
    _596.z = mad(_584.z, r2.xyz.z, mad(_584.y, r2.xyz.y, _584.x * r2.xyz.x));
    r3 = _596;
    float4 _611 = r0;
    _611.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _611;
    float4 _616 = r0;
    _616.w = rsqrt(r0.w);
    r0 = _616;
    float3 _622 = r0.www * r3.xyz;
    r2 = float4(_622.x, _622.y, _622.z, r2.w);
    float3 _629 = r1.yzx * r2.zxy;
    r3 = float4(_629.x, _629.y, _629.z, r3.w);
    float3 _640 = (r2.yzx * r1.zxy) + (-r3.xyz);
    r3 = float4(_640.x, _640.y, _640.z, r3.w);
    float3 _650 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _653 = -r3.xyz;
    float3 _663 = o1;
    _663.y = mad(_650.z, _653.z, mad(_650.y, _653.y, _650.x * _653.x));
    o1 = _663;
    float3 _669 = -r3.xyz;
    float3 _679 = o2;
    _679.y = mad(r0.xyz.z, _669.z, mad(r0.xyz.y, _669.y, r0.xyz.x * _669.x));
    o2 = _679;
    float3 _688 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _700 = o1;
    _700.x = mad(_688.z, r1.xyz.z, mad(_688.y, r1.xyz.y, _688.x * r1.xyz.x));
    o1 = _700;
    float3 _715 = o2;
    _715.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _715;
    float3 _730 = o2;
    _730.z = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _730;
    float3 _739 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _751 = o1;
    _751.z = mad(_739.z, r2.xyz.z, mad(_739.y, r2.xyz.y, _739.x * r2.xyz.x));
    o1 = _751;
    float3 _760 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _773 = o3;
    _773.z = mad(_760.z, shader_in[1].xyz.z, mad(_760.y, shader_in[1].xyz.y, _760.x * shader_in[1].xyz.x));
    o3 = _773;
    float3 _787 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_787.x, _787.y, _787.z, r0.w);
    float3 _799 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _809 = r1;
    _809.x = mad(r0.xyz.z, _799.z, mad(r0.xyz.y, _799.y, r0.xyz.x * _799.x));
    r1 = _809;
    float3 _820 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _830 = r1;
    _830.z = mad(r0.xyz.z, _820.z, mad(r0.xyz.y, _820.y, r0.xyz.x * _820.x));
    r1 = _830;
    float3 _841 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _851 = r0;
    _851.x = mad(r0.xyz.z, _841.z, mad(r0.xyz.y, _841.y, r0.xyz.x * _841.x));
    r0 = _851;
    float4 _860 = r0;
    _860.x = r0.x * cb5_m[5].y;
    r0 = _860;
    float2 _871 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_871.x, r1.y, _871.y, r1.w);
    float4 _876 = o3;
    _876.w = r1.z;
    o3 = _876;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _901 = r0;
    _901.y = asfloat(3212836864u);
    r0 = _901;
    float4 _908 = r1;
    _908.y = r0.x * r0.y;
    r1 = _908;
    float2 _916 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_916.x, _916.y, o6.z, o6.w);
    float2 _922 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _922.x, _922.y);
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
