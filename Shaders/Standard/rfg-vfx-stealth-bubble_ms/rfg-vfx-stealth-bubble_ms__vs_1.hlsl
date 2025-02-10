cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float3 v3;
static float3 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _48 = r0;
    _48.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _48;
    float3 _61 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_61.x, _61.y, _61.z, r0.w);
    float4 _66 = r0;
    _66.w = asfloat(1065353216u);
    r0 = _66;
    float4 _83 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _98 = r1;
    _98.x = mad(_83.w, r0.w, mad(_83.z, r0.z, mad(_83.y, r0.y, _83.x * r0.x)));
    r1 = _98;
    float4 _110 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _124 = r1;
    _124.y = mad(_110.w, r0.w, mad(_110.z, r0.z, mad(_110.y, r0.y, _110.x * r0.x)));
    r1 = _124;
    float4 _136 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _150 = r1;
    _150.z = mad(_136.w, r0.w, mad(_136.z, r0.z, mad(_136.y, r0.y, _136.x * r0.x)));
    r1 = _150;
    float4 _153 = r1;
    _153.w = asfloat(1065353216u);
    r1 = _153;
    float4 _164 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _178 = o0;
    _178.x = mad(_164.w, r1.w, mad(_164.z, r1.z, mad(_164.y, r1.y, _164.x * r1.x)));
    o0 = _178;
    float4 _189 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _203 = o0;
    _203.y = mad(_189.w, r1.w, mad(_189.z, r1.z, mad(_189.y, r1.y, _189.x * r1.x)));
    o0 = _203;
    float4 _214 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _228 = o0;
    _228.z = mad(_214.w, r1.w, mad(_214.z, r1.z, mad(_214.y, r1.y, _214.x * r1.x)));
    o0 = _228;
    float4 _239 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _253 = o0;
    _253.w = mad(_239.w, r1.w, mad(_239.z, r1.z, mad(_239.y, r1.y, _239.x * r1.x)));
    o0 = _253;
    float4 _256 = r1;
    _256.w = asfloat(0u);
    r1 = _256;
    r0 = (-r1) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _286 = r0;
    _286.w = mad(r0.w, r0.w, mad(r0.z, r0.z, mad(r0.y, r0.y, r0.x * r0.x)));
    r0 = _286;
    float4 _291 = r0;
    _291.w = rsqrt(r0.w);
    r0 = _291;
    float3 _297 = r0.www * r0.xyz;
    r0 = float4(_297.x, _297.y, _297.z, r0.w);
    float3 _311 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_311.x, _311.y, _311.z, r1.w);
    float3 _321 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_321.x, _321.y, _321.z, r2.w);
    float3 _333 = (shader_in[4].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_333.x, _333.y, _333.z, r1.w);
    float3 _343 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _355 = r2;
    _355.x = mad(_343.z, r1.xyz.z, mad(_343.y, r1.xyz.y, _343.x * r1.xyz.x));
    r2 = _355;
    float3 _364 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _376 = r2;
    _376.y = mad(_364.z, r1.xyz.z, mad(_364.y, r1.xyz.y, _364.x * r1.xyz.x));
    r2 = _376;
    float3 _385 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _397 = r2;
    _397.z = mad(_385.z, r1.xyz.z, mad(_385.y, r1.xyz.y, _385.x * r1.xyz.x));
    r2 = _397;
    float4 _412 = r0;
    _412.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _412;
    float4 _417 = r0;
    _417.w = rsqrt(r0.w);
    r0 = _417;
    float3 _423 = r0.www * r2.xyz;
    r1 = float4(_423.x, _423.y, _423.z, r1.w);
    float4 _439 = r0;
    _439.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _439;
    float2 _446 = float2(asint(shader_in[1].xy));
    r1 = float4(_446.x, _446.y, r1.z, r1.w);
    float2 _455 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(r0.x, _455.x, _455.y, r0.w);
    float4 _467 = r0;
    _467.x = (cb6_m[3].w * asfloat(1056964608u)) + r0.y;
    r0 = _467;
    o1 = r0.xzw;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _477 = asfloat(v1);
    shader_in[1] = float4(_477.x, _477.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
