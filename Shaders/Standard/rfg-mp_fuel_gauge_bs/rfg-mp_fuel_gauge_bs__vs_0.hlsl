cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float4 o1;
static float3 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _45 = r0;
    _45.w = asfloat(1065353216u);
    r0 = _45;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _55 = r1;
    _55.w = asfloat(1065353216u);
    r1 = _55;
    float4 _73 = r0;
    _73.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _73;
    float4 _91 = r0;
    _91.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _91;
    float4 _109 = r0;
    _109.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _109;
    float4 _125 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _139 = o0;
    _139.x = mad(_125.w, r0.w, mad(_125.z, r0.z, mad(_125.y, r0.y, _125.x * r0.x)));
    o0 = _139;
    float4 _151 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _165 = o0;
    _165.y = mad(_151.w, r0.w, mad(_151.z, r0.z, mad(_151.y, r0.y, _151.x * r0.x)));
    o0 = _165;
    float4 _177 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _191 = o0;
    _191.z = mad(_177.w, r0.w, mad(_177.z, r0.z, mad(_177.y, r0.y, _177.x * r0.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _216 = o0;
    _216.w = mad(_202.w, r0.w, mad(_202.z, r0.z, mad(_202.y, r0.y, _202.x * r0.x)));
    o0 = _216;
    float3 _230 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_230.x, _230.y, _230.z, r0.w);
    o1 = shader_in[6].zyxw;
    float4 _244 = r0;
    _244.w = r0.y * cb0_m[13].x;
    r0 = _244;
    float4 _251 = r1;
    _251.x = r0.w * asfloat(3216550459u);
    r1 = _251;
    float4 _256 = r1;
    _256.x = exp2(r1.x);
    r1 = _256;
    float4 _263 = r1;
    _263.x = (-r1.x) + asfloat(1065353216u);
    r1 = _263;
    float4 _270 = r0;
    _270.w = r1.x / r0.w;
    r0 = _270;
    float4 _282 = r1;
    _282.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _282;
    float4 _297 = r0;
    _297.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _297;
    float4 _302 = r0;
    _302.x = sqrt(r0.x);
    r0 = _302;
    float4 _310 = r0;
    _310.x = r0.x * cb0_m[13].y;
    r0 = _310;
    float4 _320 = r0;
    _320.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _320;
    float4 _332 = r0;
    _332.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _332;
    float4 _338 = r0;
    _338.x = exp2(-r0.x);
    r0 = _338;
    float4 _344 = r0;
    _344.x = min(r0.x, asfloat(1065353216u));
    r0 = _344;
    float3 _351 = o2;
    _351.z = (-r0.x) + asfloat(1065353216u);
    o2 = _351;
    float4 _360 = r0;
    _360.x = shader_in[6].z * cb2_m[1].x;
    r0 = _360;
    float4 _367 = r0;
    _367.x = r0.x * asfloat(1092616192u);
    r0 = _367;
    float2 _374 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, r0.y, _374.x, _374.y);
    float4 _378 = r0;
    _378.y = asfloat(0u);
    r0 = _378;
    float2 _389 = (r0.zw * asfloat(uint2(981467136u, 981467136u))) + r0.xy;
    o2 = float3(_389.x, _389.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _398 = asfloat(v1);
    shader_in[1] = float4(_398.x, _398.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
