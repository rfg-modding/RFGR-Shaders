cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _39 = r0;
    _39.w = asfloat(1065353216u);
    r0 = _39;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _49 = r1;
    _49.w = asfloat(1065353216u);
    r1 = _49;
    float4 _67 = r0;
    _67.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _67;
    float4 _85 = r0;
    _85.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _85;
    float4 _103 = r0;
    _103.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _103;
    float4 _120 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _134 = o0;
    _134.x = mad(_120.w, r0.w, mad(_120.z, r0.z, mad(_120.y, r0.y, _120.x * r0.x)));
    o0 = _134;
    float4 _146 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _160 = o0;
    _160.y = mad(_146.w, r0.w, mad(_146.z, r0.z, mad(_146.y, r0.y, _146.x * r0.x)));
    o0 = _160;
    float4 _172 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _186 = o0;
    _186.z = mad(_172.w, r0.w, mad(_172.z, r0.z, mad(_172.y, r0.y, _172.x * r0.x)));
    o0 = _186;
    float4 _197 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _211 = o0;
    _211.w = mad(_197.w, r0.w, mad(_197.z, r0.z, mad(_197.y, r0.y, _197.x * r0.x)));
    o0 = _211;
    float3 _225 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_225.x, _225.y, _225.z, r1.w);
    float4 _235 = r1;
    _235.w = r1.y * cb0_m[13].x;
    r1 = _235;
    float4 _243 = r2;
    _243.x = r1.w * asfloat(3216550459u);
    r2 = _243;
    float4 _248 = r2;
    _248.x = exp2(r2.x);
    r2 = _248;
    float4 _255 = r2;
    _255.x = (-r2.x) + asfloat(1065353216u);
    r2 = _255;
    float4 _262 = r1;
    _262.w = r2.x / r1.w;
    r1 = _262;
    float4 _274 = r2;
    _274.x = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r2 = _274;
    float4 _289 = r1;
    _289.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _289;
    float4 _294 = r1;
    _294.x = sqrt(r1.x);
    r1 = _294;
    float4 _302 = r1;
    _302.x = r1.x * cb0_m[13].y;
    r1 = _302;
    float4 _312 = r1;
    _312.y = (asuint(r2.x) != 0u) ? r1.w : asfloat(1065353216u);
    r1 = _312;
    float4 _324 = r1;
    _324.x = (r1.y * r1.x) + (-cb0_m[13].w);
    r1 = _324;
    float4 _330 = r1;
    _330.x = exp2(-r1.x);
    r1 = _330;
    float4 _336 = r1;
    _336.x = min(r1.x, asfloat(1065353216u));
    r1 = _336;
    float4 _343 = o1;
    _343.w = (-r1.x) + asfloat(1065353216u);
    o1 = _343;
    float4 _346 = r0;
    _346.w = asfloat(0u);
    r0 = _346;
    r0 = (-r0) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _375 = r0;
    _375.w = mad(r0.w, r0.w, mad(r0.z, r0.z, mad(r0.y, r0.y, r0.x * r0.x)));
    r0 = _375;
    float4 _380 = r0;
    _380.w = rsqrt(r0.w);
    r0 = _380;
    float3 _386 = r0.www * r0.xyz;
    r0 = float4(_386.x, _386.y, _386.z, r0.w);
    float3 _400 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_400.x, _400.y, _400.z, r1.w);
    float4 _417 = r2;
    _417.x = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r2 = _417;
    float4 _433 = r2;
    _433.y = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _433;
    float4 _449 = r2;
    _449.z = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _449;
    float4 _464 = r0;
    _464.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _464;
    float4 _469 = r0;
    _469.w = rsqrt(r0.w);
    r0 = _469;
    float3 _475 = r0.www * r2.xyz;
    r1 = float4(_475.x, _475.y, _475.z, r1.w);
    float4 _491 = o1;
    _491.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o1 = _491;
    float2 _498 = float2(asint(shader_in[1].xy));
    r0 = float4(_498.x, _498.y, r0.z, r0.w);
    float2 _507 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_507.x, _507.y, r0.z, r0.w);
    float4 _520 = o1;
    _520.x = (shader_in[6].w * asfloat(1056964608u)) + r0.x;
    o1 = _520;
    float4 _524 = o1;
    _524.y = r0.y;
    o1 = _524;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _532 = asfloat(v1);
    shader_in[1] = float4(_532.x, _532.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
    v2 = stage_input.v2;
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
