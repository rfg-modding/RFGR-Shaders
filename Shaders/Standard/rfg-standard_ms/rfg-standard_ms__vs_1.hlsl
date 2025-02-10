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
    float4 cb2_m[3] : packoffset(c0);
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
    float4 _62 = r0;
    _62.w = asfloat(1065353216u);
    r0 = _62;
    float4 _72 = r1;
    _72.x = shader_in[7].x * asfloat(1082130432u);
    r1 = _72;
    float3 _85 = (r1.xxx * shader_in[6].xyz) + shader_in[0].xyz;
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
    float2 _288 = r1.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r1 = float4(_288.x, _288.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _310 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_310.x, _310.y, _310.z, r1.w);
    float3 _320 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_320.x, _320.y, _320.z, r2.w);
    float3 _332 = (shader_in[7].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_332.x, _332.y, _332.z, r1.w);
    float3 _342 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _354 = r2;
    _354.x = mad(_342.z, r1.xyz.z, mad(_342.y, r1.xyz.y, _342.x * r1.xyz.x));
    r2 = _354;
    float3 _363 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _375 = r2;
    _375.y = mad(_363.z, r1.xyz.z, mad(_363.y, r1.xyz.y, _363.x * r1.xyz.x));
    r2 = _375;
    float3 _384 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _396 = r2;
    _396.z = mad(_384.z, r1.xyz.z, mad(_384.y, r1.xyz.y, _384.x * r1.xyz.x));
    r2 = _396;
    float4 _411 = r0;
    _411.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _411;
    float4 _416 = r0;
    _416.w = rsqrt(r0.w);
    r0 = _416;
    float3 _422 = r0.www * r2.xyz;
    r1 = float4(_422.x, _422.y, _422.z, r1.w);
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
    float3 _530 = r1.zxy * r2.yzx;
    r3 = float4(_530.x, _530.y, _530.z, r3.w);
    float3 _541 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_541.x, _541.y, _541.z, r3.w);
    float3 _548 = r2.www * r3.xyz;
    r3 = float4(_548.x, _548.y, _548.z, r3.w);
    float3 _562 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_562.x, _562.y, _562.z, r4.w);
    float3 _579 = o2;
    _579.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _579;
    float3 _594 = o2;
    _594.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _594;
    float3 _609 = o2;
    _609.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _609;
    float3 _623 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_623.x, _623.y, _623.z, r4.w);
    float3 _637 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_637.x, _637.y, _637.z, r0.w);
    float3 _653 = o3;
    _653.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _653;
    float3 _662 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _674 = o4;
    _674.z = mad(_662.z, r1.xyz.z, mad(_662.y, r1.xyz.y, _662.x * r1.xyz.x));
    o4 = _674;
    float3 _689 = o3;
    _689.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _689;
    float3 _698 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _710 = o4;
    _710.x = mad(_698.z, r2.xyz.z, mad(_698.y, r2.xyz.y, _698.x * r2.xyz.x));
    o4 = _710;
    float3 _725 = o3;
    _725.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _725;
    float3 _734 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _746 = o4;
    _746.y = mad(_734.z, r3.xyz.z, mad(_734.y, r3.xyz.y, _734.x * r3.xyz.x));
    o4 = _746;
    float4 _755 = r0;
    _755.w = r0.y * cb0_m[13].x;
    r0 = _755;
    float4 _762 = r1;
    _762.x = r0.w * asfloat(3216550459u);
    r1 = _762;
    float4 _767 = r1;
    _767.x = exp2(r1.x);
    r1 = _767;
    float4 _774 = r1;
    _774.x = (-r1.x) + asfloat(1065353216u);
    r1 = _774;
    float4 _781 = r0;
    _781.w = r1.x / r0.w;
    r0 = _781;
    float4 _793 = r1;
    _793.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _793;
    float4 _808 = r0;
    _808.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _808;
    float4 _813 = r0;
    _813.x = sqrt(r0.x);
    r0 = _813;
    float4 _821 = r0;
    _821.x = r0.x * cb0_m[13].y;
    r0 = _821;
    float4 _831 = r0;
    _831.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _831;
    float4 _843 = r0;
    _843.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _843;
    float4 _849 = r0;
    _849.x = exp2(-r0.x);
    r0 = _849;
    float4 _855 = r0;
    _855.x = min(r0.x, asfloat(1065353216u));
    r0 = _855;
    float4 _862 = o4;
    _862.w = (-r0.x) + asfloat(1065353216u);
    o4 = _862;
    float2 _868 = float2(asint(shader_in[1].xy));
    r0 = float4(_868.x, _868.y, r0.z, r0.w);
    float2 _874 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_874.x, _874.y, o5.z, o5.w);
    float2 _881 = float2(asint(shader_in[3].xy));
    r0 = float4(_881.x, _881.y, r0.z, r0.w);
    float2 _887 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _887.x, _887.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _896 = asfloat(v1);
    shader_in[1] = float4(_896.x, _896.y, shader_in[1].z, shader_in[1].w);
    float2 _901 = asfloat(v2);
    shader_in[2] = float4(_901.x, _901.y, shader_in[2].z, shader_in[2].w);
    float2 _906 = asfloat(v3);
    shader_in[3] = float4(_906.x, _906.y, shader_in[3].z, shader_in[3].w);
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
