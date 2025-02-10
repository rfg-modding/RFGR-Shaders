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
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
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
    float2 v3 : TEXCOORD3;
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
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _68 = r0;
    _68.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _68;
    float3 _81 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_81.x, _81.y, _81.z, r0.w);
    float4 _86 = r0;
    _86.w = asfloat(1065353216u);
    r0 = _86;
    float4 _100 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _115 = r1;
    _115.x = mad(_100.w, r0.w, mad(_100.z, r0.z, mad(_100.y, r0.y, _100.x * r0.x)));
    r1 = _115;
    float4 _127 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _141 = r1;
    _141.y = mad(_127.w, r0.w, mad(_127.z, r0.z, mad(_127.y, r0.y, _127.x * r0.x)));
    r1 = _141;
    float4 _153 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _167 = r1;
    _167.z = mad(_153.w, r0.w, mad(_153.z, r0.z, mad(_153.y, r0.y, _153.x * r0.x)));
    r1 = _167;
    float4 _170 = r1;
    _170.w = asfloat(1065353216u);
    r1 = _170;
    float4 _181 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _195 = o0;
    _195.x = mad(_181.w, r1.w, mad(_181.z, r1.z, mad(_181.y, r1.y, _181.x * r1.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _220 = o0;
    _220.y = mad(_206.w, r1.w, mad(_206.z, r1.z, mad(_206.y, r1.y, _206.x * r1.x)));
    o0 = _220;
    float4 _231 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _245 = o0;
    _245.z = mad(_231.w, r1.w, mad(_231.z, r1.z, mad(_231.y, r1.y, _231.x * r1.x)));
    o0 = _245;
    float4 _257 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _271 = o0;
    _271.w = mad(_257.w, r1.w, mad(_257.z, r1.z, mad(_257.y, r1.y, _257.x * r1.x)));
    o0 = _271;
    float2 _277 = float2(asint(shader_in[2].xy));
    r0 = float4(_277.x, _277.y, r0.z, r0.w);
    float2 _288 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_288.x, _288.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _310 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_310.x, _310.y, _310.z, r0.w);
    float3 _320 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_320.x, _320.y, _320.z, r2.w);
    float3 _332 = (shader_in[7].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_332.x, _332.y, _332.z, r0.w);
    float3 _342 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _354 = r2;
    _354.x = mad(_342.z, r0.xyz.z, mad(_342.y, r0.xyz.y, _342.x * r0.xyz.x));
    r2 = _354;
    float3 _363 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _375 = r2;
    _375.y = mad(_363.z, r0.xyz.z, mad(_363.y, r0.xyz.y, _363.x * r0.xyz.x));
    r2 = _375;
    float3 _384 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _396 = r2;
    _396.z = mad(_384.z, r0.xyz.z, mad(_384.y, r0.xyz.y, _384.x * r0.xyz.x));
    r2 = _396;
    float4 _411 = r0;
    _411.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _411;
    float4 _416 = r0;
    _416.x = rsqrt(r0.x);
    r0 = _416;
    float3 _422 = r0.xxx * r2.xyz;
    r0 = float4(_422.x, _422.y, _422.z, r0.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _442 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _455 = r3;
    _455.x = mad(_442.z, r2.xyz.z, mad(_442.y, r2.xyz.y, _442.x * r2.xyz.x));
    r3 = _455;
    float3 _464 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _476 = r3;
    _476.y = mad(_464.z, r2.xyz.z, mad(_464.y, r2.xyz.y, _464.x * r2.xyz.x));
    r3 = _476;
    float3 _485 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _497 = r3;
    _497.z = mad(_485.z, r2.xyz.z, mad(_485.y, r2.xyz.y, _485.x * r2.xyz.x));
    r3 = _497;
    float4 _512 = r0;
    _512.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _512;
    float4 _517 = r0;
    _517.w = rsqrt(r0.w);
    r0 = _517;
    float3 _523 = r0.www * r3.xyz;
    r2 = float4(_523.x, _523.y, _523.z, r2.w);
    float3 _530 = r0.zxy * r2.yzx;
    r3 = float4(_530.x, _530.y, _530.z, r3.w);
    float3 _541 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_541.x, _541.y, _541.z, r3.w);
    float3 _548 = r2.www * r3.xyz;
    r3 = float4(_548.x, _548.y, _548.z, r3.w);
    float3 _558 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _570 = o2;
    _570.y = mad(_558.z, r3.xyz.z, mad(_558.y, r3.xyz.y, _558.x * r3.xyz.x));
    o2 = _570;
    float3 _579 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _591 = o2;
    _591.z = mad(_579.z, r0.xyz.z, mad(_579.y, r0.xyz.y, _579.x * r0.xyz.x));
    o2 = _591;
    float3 _600 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _612 = o2;
    _612.x = mad(_600.z, r2.xyz.z, mad(_600.y, r2.xyz.y, _600.x * r2.xyz.x));
    o2 = _612;
    float3 _626 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_626.x, _626.y, _626.z, r4.w);
    float3 _641 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_641.x, _641.y, _641.z, r1.w);
    float4 _657 = r0;
    _657.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _657;
    float4 _662 = r0;
    _662.w = rsqrt(r0.w);
    r0 = _662;
    float3 _668 = r0.www * r4.xyz;
    r4 = float4(_668.x, _668.y, _668.z, r4.w);
    float3 _684 = o3;
    _684.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o3 = _684;
    float4 _688 = o4;
    _688.z = r0.y;
    o4 = _688;
    float3 _703 = o3;
    _703.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _703;
    float4 _707 = o4;
    _707.x = r2.y;
    o4 = _707;
    float3 _722 = o3;
    _722.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _722;
    float4 _726 = o4;
    _726.y = r3.y;
    o4 = _726;
    float4 _735 = r0;
    _735.x = r1.y * cb0_m[13].x;
    r0 = _735;
    float4 _742 = r0;
    _742.y = r0.x * asfloat(3216550459u);
    r0 = _742;
    float4 _747 = r0;
    _747.y = exp2(r0.y);
    r0 = _747;
    float4 _754 = r0;
    _754.y = (-r0.y) + asfloat(1065353216u);
    r0 = _754;
    float4 _761 = r0;
    _761.x = r0.y / r0.x;
    r0 = _761;
    float4 _773 = r0;
    _773.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _773;
    float4 _788 = r0;
    _788.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _788;
    float4 _793 = r0;
    _793.z = sqrt(r0.z);
    r0 = _793;
    float4 _801 = r0;
    _801.z = r0.z * cb0_m[13].y;
    r0 = _801;
    float4 _811 = r0;
    _811.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _811;
    float4 _823 = r0;
    _823.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _823;
    float4 _829 = r0;
    _829.x = exp2(-r0.x);
    r0 = _829;
    float4 _835 = r0;
    _835.x = min(r0.x, asfloat(1065353216u));
    r0 = _835;
    float4 _842 = o4;
    _842.w = (-r0.x) + asfloat(1065353216u);
    o4 = _842;
    float2 _848 = float2(asint(shader_in[1].xy));
    r0 = float4(_848.x, _848.y, r0.z, r0.w);
    float2 _854 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_854.x, _854.y, o5.z, o5.w);
    float2 _861 = float2(asint(shader_in[3].xy));
    r0 = float4(_861.x, _861.y, r0.z, r0.w);
    float2 _867 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _867.x, _867.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _876 = asfloat(v1);
    shader_in[1] = float4(_876.x, _876.y, shader_in[1].z, shader_in[1].w);
    float2 _881 = asfloat(v2);
    shader_in[2] = float4(_881.x, _881.y, shader_in[2].z, shader_in[2].w);
    float2 _886 = asfloat(v3);
    shader_in[3] = float4(_886.x, _886.y, shader_in[3].z, shader_in[3].w);
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
    v3 = stage_input.v3;
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
