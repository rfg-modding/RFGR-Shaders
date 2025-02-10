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
    float4 cb2_m[6] : packoffset(c0);
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
    float4 _67 = r0;
    _67.x = shader_in[6].x * asfloat(1082130432u);
    r0 = _67;
    float3 _80 = (r0.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r0 = float4(_80.x, _80.y, _80.z, r0.w);
    float4 _85 = r0;
    _85.w = asfloat(1065353216u);
    r0 = _85;
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
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _298 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_298.x, _298.y, _298.z, r0.w);
    float3 _308 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_308.x, _308.y, _308.z, r2.w);
    float3 _320 = (shader_in[6].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_320.x, _320.y, _320.z, r0.w);
    float3 _330 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _342 = r2;
    _342.x = mad(_330.z, r0.xyz.z, mad(_330.y, r0.xyz.y, _330.x * r0.xyz.x));
    r2 = _342;
    float3 _351 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _363 = r2;
    _363.y = mad(_351.z, r0.xyz.z, mad(_351.y, r0.xyz.y, _351.x * r0.xyz.x));
    r2 = _363;
    float3 _372 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _384 = r2;
    _384.z = mad(_372.z, r0.xyz.z, mad(_372.y, r0.xyz.y, _372.x * r0.xyz.x));
    r2 = _384;
    float4 _399 = r0;
    _399.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _399;
    float4 _404 = r0;
    _404.x = rsqrt(r0.x);
    r0 = _404;
    float3 _410 = r0.xxx * r2.xyz;
    r0 = float4(_410.x, _410.y, _410.z, r0.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _430 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _443 = r3;
    _443.x = mad(_430.z, r2.xyz.z, mad(_430.y, r2.xyz.y, _430.x * r2.xyz.x));
    r3 = _443;
    float3 _452 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _464 = r3;
    _464.y = mad(_452.z, r2.xyz.z, mad(_452.y, r2.xyz.y, _452.x * r2.xyz.x));
    r3 = _464;
    float3 _473 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _485 = r3;
    _485.z = mad(_473.z, r2.xyz.z, mad(_473.y, r2.xyz.y, _473.x * r2.xyz.x));
    r3 = _485;
    float4 _500 = r0;
    _500.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _500;
    float4 _505 = r0;
    _505.w = rsqrt(r0.w);
    r0 = _505;
    float3 _511 = r0.www * r3.xyz;
    r2 = float4(_511.x, _511.y, _511.z, r2.w);
    float3 _518 = r0.zxy * r2.yzx;
    r3 = float4(_518.x, _518.y, _518.z, r3.w);
    float3 _529 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_529.x, _529.y, _529.z, r3.w);
    float3 _536 = r2.www * r3.xyz;
    r3 = float4(_536.x, _536.y, _536.z, r3.w);
    float3 _546 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _558 = o2;
    _558.y = mad(_546.z, r3.xyz.z, mad(_546.y, r3.xyz.y, _546.x * r3.xyz.x));
    o2 = _558;
    float3 _567 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _579 = o2;
    _579.z = mad(_567.z, r0.xyz.z, mad(_567.y, r0.xyz.y, _567.x * r0.xyz.x));
    o2 = _579;
    float3 _588 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _600 = o2;
    _600.x = mad(_588.z, r2.xyz.z, mad(_588.y, r2.xyz.y, _588.x * r2.xyz.x));
    o2 = _600;
    float3 _614 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_614.x, _614.y, _614.z, r4.w);
    float3 _629 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_629.x, _629.y, _629.z, r1.w);
    float4 _645 = r0;
    _645.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _645;
    float4 _650 = r0;
    _650.w = rsqrt(r0.w);
    r0 = _650;
    float3 _656 = r0.www * r4.xyz;
    r4 = float4(_656.x, _656.y, _656.z, r4.w);
    float3 _672 = o3;
    _672.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o3 = _672;
    float4 _676 = o4;
    _676.z = r0.y;
    o4 = _676;
    float3 _691 = o3;
    _691.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _691;
    float4 _695 = o4;
    _695.x = r2.y;
    o4 = _695;
    float3 _710 = o3;
    _710.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _710;
    float4 _714 = o4;
    _714.y = r3.y;
    o4 = _714;
    float4 _723 = r0;
    _723.x = r1.y * cb0_m[13].x;
    r0 = _723;
    float4 _730 = r0;
    _730.y = r0.x * asfloat(3216550459u);
    r0 = _730;
    float4 _735 = r0;
    _735.y = exp2(r0.y);
    r0 = _735;
    float4 _742 = r0;
    _742.y = (-r0.y) + asfloat(1065353216u);
    r0 = _742;
    float4 _749 = r0;
    _749.x = r0.y / r0.x;
    r0 = _749;
    float4 _761 = r0;
    _761.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _761;
    float4 _776 = r0;
    _776.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _776;
    float4 _781 = r0;
    _781.z = sqrt(r0.z);
    r0 = _781;
    float4 _789 = r0;
    _789.z = r0.z * cb0_m[13].y;
    r0 = _789;
    float4 _799 = r0;
    _799.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _799;
    float4 _811 = r0;
    _811.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _811;
    float4 _817 = r0;
    _817.x = exp2(-r0.x);
    r0 = _817;
    float4 _823 = r0;
    _823.x = min(r0.x, asfloat(1065353216u));
    r0 = _823;
    float4 _830 = o4;
    _830.w = (-r0.x) + asfloat(1065353216u);
    o4 = _830;
    float2 _836 = float2(asint(shader_in[1].xy));
    r0 = float4(_836.x, _836.y, r0.z, r0.w);
    float2 _847 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r0 = float4(_847.x, _847.y, r0.z, r0.w);
    float2 _853 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_853.x, _853.y, r0.z, r0.w);
    float2 _864 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(o5.x, o5.y, _864.x, _864.y);
    o5 = float4(r0.xy.x, r0.xy.y, o5.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _877 = asfloat(v1);
    shader_in[1] = float4(_877.x, _877.y, shader_in[1].z, shader_in[1].w);
    float2 _882 = asfloat(v2);
    shader_in[2] = float4(_882.x, _882.y, shader_in[2].z, shader_in[2].w);
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
