cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static int2 v4;
static int2 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float2 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
static float3 o2;
static float2 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _80 = r0;
    _80.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _80;
    float4 _98 = r0;
    _98.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _98;
    float4 _116 = r0;
    _116.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _116;
    float4 _132 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _146 = o0;
    _146.x = mad(_132.w, r0.w, mad(_132.z, r0.z, mad(_132.y, r0.y, _132.x * r0.x)));
    o0 = _146;
    float4 _158 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _172 = o0;
    _172.y = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _184 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _198 = o0;
    _198.z = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _210 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _224 = o0;
    _224.w = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float3 _238 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_238.x, _238.y, _238.z, r0.w);
    float3 _252 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_252.x, _252.y, _252.z, r1.w);
    float4 _270 = r2;
    _270.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _270;
    float4 _286 = r2;
    _286.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _286;
    float4 _302 = r2;
    _302.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _302;
    float4 _317 = r0;
    _317.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _317;
    float4 _322 = r0;
    _322.w = rsqrt(r0.w);
    r0 = _322;
    float3 _328 = r0.www * r2.xyz;
    r1 = float4(_328.x, _328.y, _328.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _355 = r3;
    _355.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _355;
    float4 _371 = r3;
    _371.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _371;
    float4 _387 = r3;
    _387.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _387;
    float4 _402 = r0;
    _402.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _402;
    float4 _407 = r0;
    _407.w = rsqrt(r0.w);
    r0 = _407;
    float3 _413 = r0.www * r3.xyz;
    r2 = float4(_413.x, _413.y, _413.z, r2.w);
    float3 _420 = r1.zxy * r2.yzx;
    r3 = float4(_420.x, _420.y, _420.z, r3.w);
    float3 _431 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_431.x, _431.y, _431.z, r3.w);
    float3 _438 = r2.www * r3.xyz;
    r3 = float4(_438.x, _438.y, _438.z, r3.w);
    float3 _448 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _460 = o1;
    _460.y = mad(_448.z, r3.xyz.z, mad(_448.y, r3.xyz.y, _448.x * r3.xyz.x));
    o1 = _460;
    float3 _469 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _481 = o1;
    _481.z = mad(_469.z, r1.xyz.z, mad(_469.y, r1.xyz.y, _469.x * r1.xyz.x));
    o1 = _481;
    float3 _490 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _502 = o1;
    _502.x = mad(_490.z, r2.xyz.z, mad(_490.y, r2.xyz.y, _490.x * r2.xyz.x));
    o1 = _502;
    float4 _517 = r0;
    _517.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _517;
    float4 _522 = r0;
    _522.w = rsqrt(r0.w);
    r0 = _522;
    float3 _528 = r0.www * r0.xyz;
    r0 = float4(_528.x, _528.y, _528.z, r0.w);
    float3 _544 = o2;
    _544.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _544;
    float3 _559 = o2;
    _559.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _559;
    float3 _574 = o2;
    _574.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _574;
    float2 _581 = float2(asint(shader_in[5].xy));
    r0 = float4(_581.x, _581.y, r0.z, r0.w);
    o3 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float2 _595 = float2(asint(shader_in[1].xy));
    r0 = float4(_595.x, _595.y, r0.z, r0.w);
    float2 _601 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_601.x, _601.y, o4.z, o4.w);
    float2 _609 = float2(asint(shader_in[4].xy));
    r0 = float4(_609.x, _609.y, r0.z, r0.w);
    float2 _615 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _615.x, _615.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _624 = asfloat(v1);
    shader_in[1] = float4(_624.x, _624.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _635 = asfloat(v4);
    shader_in[4] = float4(_635.x, _635.y, shader_in[4].z, shader_in[4].w);
    float2 _640 = asfloat(v5);
    shader_in[5] = float4(_640.x, _640.y, shader_in[5].z, shader_in[5].w);
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
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
