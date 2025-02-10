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
static int2 v2;
static int2 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float3 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _42 = r0;
    _42.w = asfloat(1065353216u);
    r0 = _42;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _52 = r1;
    _52.w = asfloat(1065353216u);
    r1 = _52;
    float4 _68 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _82 = r0;
    _82.x = mad(_68.w, r1.w, mad(_68.z, r1.z, mad(_68.y, r1.y, _68.x * r1.x)));
    r0 = _82;
    float4 _94 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _108 = r0;
    _108.y = mad(_94.w, r1.w, mad(_94.z, r1.z, mad(_94.y, r1.y, _94.x * r1.x)));
    r0 = _108;
    float4 _120 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _134 = r0;
    _134.z = mad(_120.w, r1.w, mad(_120.z, r1.z, mad(_120.y, r1.y, _120.x * r1.x)));
    r0 = _134;
    float4 _145 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _159 = o0;
    _159.x = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    o0 = _159;
    float4 _170 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _184 = o0;
    _184.y = mad(_170.w, r0.w, mad(_170.z, r0.z, mad(_170.y, r0.y, _170.x * r0.x)));
    o0 = _184;
    float4 _195 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _209 = o0;
    _209.z = mad(_195.w, r0.w, mad(_195.z, r0.z, mad(_195.y, r0.y, _195.x * r0.x)));
    o0 = _209;
    float4 _221 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _235 = o0;
    _235.w = mad(_221.w, r0.w, mad(_221.z, r0.z, mad(_221.y, r0.y, _221.x * r0.x)));
    o0 = _235;
    float3 _249 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_249.x, _249.y, _249.z, r0.w);
    float2 _257 = float2(asint(shader_in[1].xy));
    r1 = float4(_257.x, _257.y, r1.z, r1.w);
    float2 _266 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_266.x, _266.y, o1.z, o1.w);
    float2 _273 = float2(asint(shader_in[2].xy));
    r1 = float4(_273.x, _273.y, r1.z, r1.w);
    float2 _279 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(o1.x, o1.y, _279.x, _279.y);
    float4 _289 = r0;
    _289.w = r0.y * cb0_m[13].x;
    r0 = _289;
    float4 _296 = r1;
    _296.x = r0.w * asfloat(3216550459u);
    r1 = _296;
    float4 _301 = r1;
    _301.x = exp2(r1.x);
    r1 = _301;
    float4 _308 = r1;
    _308.x = (-r1.x) + asfloat(1065353216u);
    r1 = _308;
    float4 _315 = r0;
    _315.w = r1.x / r0.w;
    r0 = _315;
    float4 _327 = r1;
    _327.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _327;
    float4 _342 = r0;
    _342.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _342;
    float4 _347 = r0;
    _347.x = sqrt(r0.x);
    r0 = _347;
    float4 _355 = r0;
    _355.x = r0.x * cb0_m[13].y;
    r0 = _355;
    float4 _365 = r0;
    _365.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _365;
    float4 _377 = r0;
    _377.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _377;
    float4 _383 = r0;
    _383.x = exp2(-r0.x);
    r0 = _383;
    float4 _389 = r0;
    _389.x = min(r0.x, asfloat(1065353216u));
    r0 = _389;
    float3 _396 = o2;
    _396.z = (-r0.x) + asfloat(1065353216u);
    o2 = _396;
    float2 _402 = float2(asint(shader_in[3].xy));
    r0 = float4(_402.x, _402.y, r0.z, r0.w);
    float2 _408 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(_408.x, _408.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _417 = asfloat(v1);
    shader_in[1] = float4(_417.x, _417.y, shader_in[1].z, shader_in[1].w);
    float2 _422 = asfloat(v2);
    shader_in[2] = float4(_422.x, _422.y, shader_in[2].z, shader_in[2].w);
    float2 _427 = asfloat(v3);
    shader_in[3] = float4(_427.x, _427.y, shader_in[3].z, shader_in[3].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
