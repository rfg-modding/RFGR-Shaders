cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _48 = r0;
    _48.w = asfloat(1065353216u);
    r0 = _48;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _58 = r1;
    _58.w = asfloat(1065353216u);
    r1 = _58;
    float4 _76 = r0;
    _76.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _76;
    float4 _94 = r0;
    _94.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _94;
    float4 _112 = r0;
    _112.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _112;
    float4 _128 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _142 = o0;
    _142.x = mad(_128.w, r0.w, mad(_128.z, r0.z, mad(_128.y, r0.y, _128.x * r0.x)));
    o0 = _142;
    float4 _154 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _168 = o0;
    _168.y = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    o0 = _168;
    float4 _180 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _194 = o0;
    _194.z = mad(_180.w, r0.w, mad(_180.z, r0.z, mad(_180.y, r0.y, _180.x * r0.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _219 = o0;
    _219.w = mad(_205.w, r0.w, mad(_205.z, r0.z, mad(_205.y, r0.y, _205.x * r0.x)));
    o0 = _219;
    float3 _233 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_233.x, _233.y, _233.z, r0.w);
    float2 _240 = float2(asint(shader_in[1].xy));
    r1 = float4(_240.x, _240.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _265 = r0;
    _265.w = r0.y * cb0_m[13].x;
    r0 = _265;
    float4 _272 = r1;
    _272.x = r0.w * asfloat(3216550459u);
    r1 = _272;
    float4 _277 = r1;
    _277.x = exp2(r1.x);
    r1 = _277;
    float4 _284 = r1;
    _284.x = (-r1.x) + asfloat(1065353216u);
    r1 = _284;
    float4 _291 = r0;
    _291.w = r1.x / r0.w;
    r0 = _291;
    float4 _303 = r1;
    _303.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _303;
    float4 _318 = r0;
    _318.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _318;
    float4 _323 = r0;
    _323.x = sqrt(r0.x);
    r0 = _323;
    float4 _331 = r0;
    _331.x = r0.x * cb0_m[13].y;
    r0 = _331;
    float4 _341 = r0;
    _341.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _341;
    float4 _353 = r0;
    _353.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _353;
    float4 _359 = r0;
    _359.x = exp2(-r0.x);
    r0 = _359;
    float4 _365 = r0;
    _365.x = min(r0.x, asfloat(1065353216u));
    r0 = _365;
    float4 _372 = o3;
    _372.w = (-r0.x) + asfloat(1065353216u);
    o3 = _372;
    float3 _385 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_385.x, _385.y, _385.z, r0.w);
    float4 _402 = r1;
    _402.x = mad(shader_in[3].xyz.z, r0.xyz.z, mad(shader_in[3].xyz.y, r0.xyz.y, shader_in[3].xyz.x * r0.xyz.x));
    r1 = _402;
    float4 _418 = r1;
    _418.y = mad(shader_in[4].xyz.z, r0.xyz.z, mad(shader_in[4].xyz.y, r0.xyz.y, shader_in[4].xyz.x * r0.xyz.x));
    r1 = _418;
    float4 _434 = r1;
    _434.z = mad(shader_in[5].xyz.z, r0.xyz.z, mad(shader_in[5].xyz.y, r0.xyz.y, shader_in[5].xyz.x * r0.xyz.x));
    r1 = _434;
    float4 _449 = r0;
    _449.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _449;
    float4 _454 = r0;
    _454.x = rsqrt(r0.x);
    r0 = _454;
    float3 _460 = r0.xxx * r1.xyz;
    o3 = float4(_460.x, _460.y, _460.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _469 = asfloat(v1);
    shader_in[1] = float4(_469.x, _469.y, shader_in[1].z, shader_in[1].w);
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
