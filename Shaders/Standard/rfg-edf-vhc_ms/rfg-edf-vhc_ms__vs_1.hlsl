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
    float4 _62 = r0;
    _62.w = asfloat(1065353216u);
    r0 = _62;
    float4 _72 = r1;
    _72.x = shader_in[6].x * asfloat(1082130432u);
    r1 = _72;
    float3 _85 = (r1.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r1 = float4(_85.x, _85.y, _85.z, r1.w);
    float4 _89 = r1;
    _89.w = asfloat(1065353216u);
    r1 = _89;
    float4 _104 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _118 = r0;
    _118.x = mad(_104.w, r1.w, mad(_104.z, r1.z, mad(_104.y, r1.y, _104.x * r1.x)));
    r0 = _118;
    float4 _130 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _144 = r0;
    _144.y = mad(_130.w, r1.w, mad(_130.z, r1.z, mad(_130.y, r1.y, _130.x * r1.x)));
    r0 = _144;
    float4 _156 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _170 = r0;
    _170.z = mad(_156.w, r1.w, mad(_156.z, r1.z, mad(_156.y, r1.y, _156.x * r1.x)));
    r0 = _170;
    float4 _181 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _195 = o0;
    _195.x = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _220 = o0;
    _220.y = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float4 _231 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _245 = o0;
    _245.z = mad(_231.w, r0.w, mad(_231.z, r0.z, mad(_231.y, r0.y, _231.x * r0.x)));
    o0 = _245;
    float4 _257 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _271 = o0;
    _271.w = mad(_257.w, r0.w, mad(_257.z, r0.z, mad(_257.y, r0.y, _257.x * r0.x)));
    o0 = _271;
    float2 _277 = float2(asint(shader_in[2].xy));
    r1 = float4(_277.x, _277.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _298 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_298.x, _298.y, _298.z, r1.w);
    float3 _308 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_308.x, _308.y, _308.z, r2.w);
    float3 _320 = (shader_in[6].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_320.x, _320.y, _320.z, r1.w);
    float3 _330 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _342 = r2;
    _342.x = mad(_330.z, r1.xyz.z, mad(_330.y, r1.xyz.y, _330.x * r1.xyz.x));
    r2 = _342;
    float3 _351 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _363 = r2;
    _363.y = mad(_351.z, r1.xyz.z, mad(_351.y, r1.xyz.y, _351.x * r1.xyz.x));
    r2 = _363;
    float3 _372 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _384 = r2;
    _384.z = mad(_372.z, r1.xyz.z, mad(_372.y, r1.xyz.y, _372.x * r1.xyz.x));
    r2 = _384;
    float4 _399 = r0;
    _399.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _399;
    float4 _404 = r0;
    _404.w = rsqrt(r0.w);
    r0 = _404;
    float3 _410 = r0.www * r2.xyz;
    r1 = float4(_410.x, _410.y, _410.z, r1.w);
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
    float3 _518 = r1.zxy * r2.yzx;
    r3 = float4(_518.x, _518.y, _518.z, r3.w);
    float3 _529 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_529.x, _529.y, _529.z, r3.w);
    float3 _536 = r2.www * r3.xyz;
    r3 = float4(_536.x, _536.y, _536.z, r3.w);
    float3 _550 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_550.x, _550.y, _550.z, r4.w);
    float3 _567 = o2;
    _567.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _567;
    float3 _582 = o2;
    _582.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _582;
    float3 _597 = o2;
    _597.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _597;
    float3 _611 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_611.x, _611.y, _611.z, r4.w);
    float3 _625 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_625.x, _625.y, _625.z, r0.w);
    float4 _641 = r0;
    _641.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _641;
    float4 _646 = r0;
    _646.w = rsqrt(r0.w);
    r0 = _646;
    float3 _652 = r0.www * r4.xyz;
    r4 = float4(_652.x, _652.y, _652.z, r4.w);
    float3 _668 = o3;
    _668.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _668;
    float3 _677 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _689 = o4;
    _689.z = mad(_677.z, r1.xyz.z, mad(_677.y, r1.xyz.y, _677.x * r1.xyz.x));
    o4 = _689;
    float3 _704 = o3;
    _704.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _704;
    float3 _713 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _725 = o4;
    _725.x = mad(_713.z, r2.xyz.z, mad(_713.y, r2.xyz.y, _713.x * r2.xyz.x));
    o4 = _725;
    float3 _740 = o3;
    _740.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _740;
    float3 _749 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _761 = o4;
    _761.y = mad(_749.z, r3.xyz.z, mad(_749.y, r3.xyz.y, _749.x * r3.xyz.x));
    o4 = _761;
    float4 _770 = r0;
    _770.w = r0.y * cb0_m[13].x;
    r0 = _770;
    float4 _777 = r1;
    _777.x = r0.w * asfloat(3216550459u);
    r1 = _777;
    float4 _782 = r1;
    _782.x = exp2(r1.x);
    r1 = _782;
    float4 _789 = r1;
    _789.x = (-r1.x) + asfloat(1065353216u);
    r1 = _789;
    float4 _796 = r0;
    _796.w = r1.x / r0.w;
    r0 = _796;
    float4 _808 = r1;
    _808.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _808;
    float4 _823 = r0;
    _823.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _823;
    float4 _828 = r0;
    _828.x = sqrt(r0.x);
    r0 = _828;
    float4 _836 = r0;
    _836.x = r0.x * cb0_m[13].y;
    r0 = _836;
    float4 _846 = r0;
    _846.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _846;
    float4 _858 = r0;
    _858.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _858;
    float4 _864 = r0;
    _864.x = exp2(-r0.x);
    r0 = _864;
    float4 _870 = r0;
    _870.x = min(r0.x, asfloat(1065353216u));
    r0 = _870;
    float4 _877 = o4;
    _877.w = (-r0.x) + asfloat(1065353216u);
    o4 = _877;
    float2 _883 = float2(asint(shader_in[1].xy));
    r0 = float4(_883.x, _883.y, r0.z, r0.w);
    float2 _894 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r0 = float4(_894.x, _894.y, r0.z, r0.w);
    float2 _900 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_900.x, _900.y, r0.z, r0.w);
    float2 _911 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(o5.x, o5.y, _911.x, _911.y);
    o5 = float4(r0.xy.x, r0.xy.y, o5.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _924 = asfloat(v1);
    shader_in[1] = float4(_924.x, _924.y, shader_in[1].z, shader_in[1].w);
    float2 _929 = asfloat(v2);
    shader_in[2] = float4(_929.x, _929.y, shader_in[2].z, shader_in[2].w);
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
