cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
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
static float3 o3;
static float3 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _50 = r0;
    _50.w = asfloat(1065353216u);
    r0 = _50;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _60 = r1;
    _60.w = asfloat(1065353216u);
    r1 = _60;
    float4 _78 = r0;
    _78.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _78;
    float4 _96 = r0;
    _96.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _96;
    float4 _114 = r0;
    _114.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _114;
    float4 _130 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _144 = o0;
    _144.x = mad(_130.w, r0.w, mad(_130.z, r0.z, mad(_130.y, r0.y, _130.x * r0.x)));
    o0 = _144;
    float4 _156 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _170 = o0;
    _170.y = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _182 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _196 = o0;
    _196.z = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _221 = o0;
    _221.w = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float2 _227 = float2(asint(shader_in[1].xy));
    r1 = float4(_227.x, _227.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _261 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_261.x, _261.y, _261.z, r1.w);
    float3 _275 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_275.x, _275.y, _275.z, r0.w);
    float4 _291 = r0;
    _291.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _291;
    float4 _296 = r0;
    _296.w = rsqrt(r0.w);
    r0 = _296;
    o3 = r0.www * r1.xyz;
    float3 _314 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_314.x, _314.y, _314.z, r1.w);
    float4 _332 = r2;
    _332.x = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r2 = _332;
    float4 _348 = r2;
    _348.y = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _348;
    float4 _364 = r2;
    _364.z = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _364;
    float4 _379 = r0;
    _379.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _379;
    float4 _384 = r0;
    _384.w = rsqrt(r0.w);
    r0 = _384;
    o4 = r0.www * r2.xyz;
    float4 _398 = r0;
    _398.w = r0.y * cb0_m[13].x;
    r0 = _398;
    float4 _405 = r1;
    _405.x = r0.w * asfloat(3216550459u);
    r1 = _405;
    float4 _410 = r1;
    _410.x = exp2(r1.x);
    r1 = _410;
    float4 _417 = r1;
    _417.x = (-r1.x) + asfloat(1065353216u);
    r1 = _417;
    float4 _424 = r0;
    _424.w = r1.x / r0.w;
    r0 = _424;
    float4 _436 = r1;
    _436.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _436;
    float4 _451 = r0;
    _451.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _451;
    float4 _456 = r0;
    _456.x = sqrt(r0.x);
    r0 = _456;
    float4 _464 = r0;
    _464.x = r0.x * cb0_m[13].y;
    r0 = _464;
    float4 _474 = r0;
    _474.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _474;
    float4 _486 = r0;
    _486.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _486;
    float4 _492 = r0;
    _492.x = exp2(-r0.x);
    r0 = _492;
    float4 _498 = r0;
    _498.x = min(r0.x, asfloat(1065353216u));
    r0 = _498;
    float4 _505 = o5;
    _505.w = (-r0.x) + asfloat(1065353216u);
    o5 = _505;
    float3 _514 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o5 = float4(_514.x, _514.y, _514.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _523 = asfloat(v1);
    shader_in[1] = float4(_523.x, _523.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
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
