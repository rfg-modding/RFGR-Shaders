cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
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
    float4 cb2_m[7] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float4 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
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
    float2 _55 = float2(asint(shader_in[0].xy));
    r0 = float4(_55.x, _55.y, r0.z, r0.w);
    float4 _64 = r0;
    _64.y = r0.y + asfloat(1191182336u);
    r0 = _64;
    float4 _72 = r1;
    _72.y = r0.x * asfloat(1015021568u);
    r1 = _72;
    float4 _79 = r0;
    _79.x = r0.y * asfloat(998244352u);
    r0 = _79;
    float4 _84 = r1;
    _84.z = trunc(r0.x);
    r1 = _84;
    float4 _95 = r1;
    _95.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _95;
    float4 _99 = r1;
    _99.w = asfloat(1065353216u);
    r1 = _99;
    float4 _114 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _128 = r0;
    _128.x = mad(_114.w, r1.w, mad(_114.z, r1.z, mad(_114.y, r1.y, _114.x * r1.x)));
    r0 = _128;
    float4 _140 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _154 = r0;
    _154.y = mad(_140.w, r1.w, mad(_140.z, r1.z, mad(_140.y, r1.y, _140.x * r1.x)));
    r0 = _154;
    float4 _166 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _180 = r0;
    _180.z = mad(_166.w, r1.w, mad(_166.z, r1.z, mad(_166.y, r1.y, _166.x * r1.x)));
    r0 = _180;
    float4 _183 = r0;
    _183.w = asfloat(1065353216u);
    r0 = _183;
    float4 _194 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _208 = o0;
    _208.x = mad(_194.w, r0.w, mad(_194.z, r0.z, mad(_194.y, r0.y, _194.x * r0.x)));
    o0 = _208;
    float4 _219 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _233 = o0;
    _233.y = mad(_219.w, r0.w, mad(_219.z, r0.z, mad(_219.y, r0.y, _219.x * r0.x)));
    o0 = _233;
    float4 _244 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _258 = o0;
    _258.z = mad(_244.w, r0.w, mad(_244.z, r0.z, mad(_244.y, r0.y, _244.x * r0.x)));
    o0 = _258;
    float4 _270 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _284 = o0;
    _284.w = mad(_270.w, r0.w, mad(_270.z, r0.z, mad(_270.y, r0.y, _270.x * r0.x)));
    o0 = _284;
    float4 _287 = r1;
    _287.y = asfloat(0u);
    r1 = _287;
    float3 _300 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_300.x, _300.y, _300.z, r2.w);
    float3 _311 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _324 = r3;
    _324.x = mad(_311.z, r2.xyz.z, mad(_311.y, r2.xyz.y, _311.x * r2.xyz.x));
    r3 = _324;
    float3 _333 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _345 = r3;
    _345.y = mad(_333.z, r2.xyz.z, mad(_333.y, r2.xyz.y, _333.x * r2.xyz.x));
    r3 = _345;
    float3 _354 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _366 = r3;
    _366.z = mad(_354.z, r2.xyz.z, mad(_354.y, r2.xyz.y, _354.x * r2.xyz.x));
    r3 = _366;
    float4 _381 = r0;
    _381.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _381;
    float4 _386 = r0;
    _386.w = rsqrt(r0.w);
    r0 = _386;
    float3 _392 = r0.www * r3.xyz;
    r2 = float4(_392.x, _392.y, _392.z, r2.w);
    float4 _397 = r3;
    _397.z = r2.y;
    r3 = _397;
    float2 _401 = abs(r2.zx);
    r3 = float4(_401.x, _401.y, r3.z, r3.w);
    float2 _410 = r3.yx * asfloat(uint2(2147483648u, 3212836864u));
    r1 = float4(_410.x, r1.y, _410.y, r1.w);
    float3 _421 = ((-r3.xyz) * asfloat(uint3(2147483648u, 3212836864u, 0u))) + r1.xyz;
    r1 = float4(_421.x, _421.y, _421.z, r1.w);
    float3 _428 = r3.xyz * asfloat(uint3(3212836864u, 3212836864u, 1065353216u));
    r3 = float4(_428.x, _428.y, _428.z, r3.w);
    float3 _435 = r1.xyz * r3.xyz;
    r4 = float4(_435.x, _435.y, _435.z, r4.w);
    float3 _447 = (r3.zxy * r1.yzx) + (-r4.xyz);
    r3 = float4(_447.x, _447.y, _447.z, r3.w);
    float3 _457 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _469 = o1;
    _469.y = mad(_457.z, r3.xyz.z, mad(_457.y, r3.xyz.y, _457.x * r3.xyz.x));
    o1 = _469;
    float3 _478 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _490 = o1;
    _490.z = mad(_478.z, r2.xyz.z, mad(_478.y, r2.xyz.y, _478.x * r2.xyz.x));
    o1 = _490;
    float2 _497 = float2(cb1_m[0].z, cb1_m[0].x);
    float3 _506 = o1;
    _506.x = mad(_497.y, r1.yz.y, _497.x * r1.yz.x);
    o1 = _506;
    float3 _520 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_520.x, _520.y, _520.z, r4.w);
    float3 _534 = r0.xyz + float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z);
    r0 = float4(_534.x, _534.y, _534.z, r0.w);
    float4 _550 = r1;
    _550.x = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r1 = _550;
    float4 _555 = r1;
    _555.x = rsqrt(r1.x);
    r1 = _555;
    float3 _561 = r1.xxx * r4.xyz;
    r4 = float4(_561.x, _561.y, _561.z, r4.w);
    float3 _577 = o2;
    _577.z = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _577;
    o3 = float4(r2.xyz.x, r2.xyz.y, r2.xyz.z, o3.w);
    float3 _593 = o2;
    _593.x = mad(r4.zx.y, r1.yz.y, r4.zx.x * r1.yz.x);
    o2 = _593;
    float3 _608 = o2;
    _608.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _608;
    float4 _617 = o3;
    _617.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o3 = _617;
    float4 _620 = r0;
    _620.w = asfloat(1065353216u);
    r0 = _620;
    float4 _631 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _645 = o4;
    _645.x = mad(_631.w, r0.w, mad(_631.z, r0.z, mad(_631.y, r0.y, _631.x * r0.x)));
    o4 = _645;
    float4 _656 = float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    float4 _670 = o4;
    _670.y = mad(_656.w, r0.w, mad(_656.z, r0.z, mad(_656.y, r0.y, _656.x * r0.x)));
    o4 = _670;
    float4 _682 = float4(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z, cb2_m[4].w);
    float4 _696 = o4;
    _696.z = mad(_682.w, r0.w, mad(_682.z, r0.z, mad(_682.y, r0.y, _682.x * r0.x)));
    o4 = _696;
    float4 _708 = float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    float4 _722 = o4;
    _722.w = mad(_708.w, r0.w, mad(_708.z, r0.z, mad(_708.y, r0.y, _708.x * r0.x)));
    o4 = _722;
}

void vert_main()
{
    float2 _726 = asfloat(v0);
    shader_in[0] = float4(_726.x, _726.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = v1;
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
