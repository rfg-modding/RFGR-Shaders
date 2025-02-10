cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _44 = r0;
    _44.w = asfloat(1065353216u);
    r0 = _44;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _54 = r1;
    _54.w = asfloat(1065353216u);
    r1 = _54;
    float4 _70 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _84 = r0;
    _84.x = mad(_70.w, r1.w, mad(_70.z, r1.z, mad(_70.y, r1.y, _70.x * r1.x)));
    r0 = _84;
    float4 _96 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _110 = r0;
    _110.y = mad(_96.w, r1.w, mad(_96.z, r1.z, mad(_96.y, r1.y, _96.x * r1.x)));
    r0 = _110;
    float4 _122 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _136 = r0;
    _136.z = mad(_122.w, r1.w, mad(_122.z, r1.z, mad(_122.y, r1.y, _122.x * r1.x)));
    r0 = _136;
    float4 _147 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _161 = o0;
    _161.x = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    o0 = _161;
    float4 _172 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _186 = o0;
    _186.y = mad(_172.w, r0.w, mad(_172.z, r0.z, mad(_172.y, r0.y, _172.x * r0.x)));
    o0 = _186;
    float4 _197 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _211 = o0;
    _211.z = mad(_197.w, r0.w, mad(_197.z, r0.z, mad(_197.y, r0.y, _197.x * r0.x)));
    o0 = _211;
    float4 _223 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _237 = o0;
    _237.w = mad(_223.w, r0.w, mad(_223.z, r0.z, mad(_223.y, r0.y, _223.x * r0.x)));
    o0 = _237;
    float2 _243 = float2(asint(shader_in[1].xy));
    r1 = float4(_243.x, _243.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _265 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_265.x, _265.y, _265.z, r1.w);
    float4 _269 = r0;
    _269.w = asfloat(0u);
    r0 = _269;
    r0 = (-r0) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _298 = r0;
    _298.w = mad(r0.w, r0.w, mad(r0.z, r0.z, mad(r0.y, r0.y, r0.x * r0.x)));
    r0 = _298;
    float4 _303 = r0;
    _303.w = rsqrt(r0.w);
    r0 = _303;
    o2 = r0.www * r0.xyz;
    float4 _317 = r0;
    _317.x = r1.y * cb0_m[13].x;
    r0 = _317;
    float4 _324 = r0;
    _324.y = r0.x * asfloat(3216550459u);
    r0 = _324;
    float4 _329 = r0;
    _329.y = exp2(r0.y);
    r0 = _329;
    float4 _336 = r0;
    _336.y = (-r0.y) + asfloat(1065353216u);
    r0 = _336;
    float4 _343 = r0;
    _343.x = r0.y / r0.x;
    r0 = _343;
    float4 _355 = r0;
    _355.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _355;
    float4 _370 = r0;
    _370.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _370;
    float4 _375 = r0;
    _375.z = sqrt(r0.z);
    r0 = _375;
    float4 _383 = r0;
    _383.z = r0.z * cb0_m[13].y;
    r0 = _383;
    float4 _393 = r0;
    _393.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _393;
    float4 _405 = r0;
    _405.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _405;
    float4 _411 = r0;
    _411.x = exp2(-r0.x);
    r0 = _411;
    float4 _417 = r0;
    _417.x = min(r0.x, asfloat(1065353216u));
    r0 = _417;
    float4 _424 = o3;
    _424.w = (-r0.x) + asfloat(1065353216u);
    o3 = _424;
    float3 _433 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _447 = r0;
    _447.x = mad(_433.z, shader_in[4].xyz.z, mad(_433.y, shader_in[4].xyz.y, _433.x * shader_in[4].xyz.x));
    r0 = _447;
    float3 _456 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _469 = r0;
    _469.y = mad(_456.z, shader_in[4].xyz.z, mad(_456.y, shader_in[4].xyz.y, _456.x * shader_in[4].xyz.x));
    r0 = _469;
    float3 _478 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _491 = r0;
    _491.z = mad(_478.z, shader_in[4].xyz.z, mad(_478.y, shader_in[4].xyz.y, _478.x * shader_in[4].xyz.x));
    r0 = _491;
    float4 _506 = r0;
    _506.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _506;
    float4 _511 = r0;
    _511.w = rsqrt(r0.w);
    r0 = _511;
    float3 _517 = r0.www * r0.xyz;
    o3 = float4(_517.x, _517.y, _517.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _526 = asfloat(v1);
    shader_in[1] = float4(_526.x, _526.y, shader_in[1].z, shader_in[1].w);
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
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
