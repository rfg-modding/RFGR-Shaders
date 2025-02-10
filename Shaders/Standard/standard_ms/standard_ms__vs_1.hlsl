cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float2 o2;
static float3 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _57 = r0;
    _57.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _57;
    float3 _70 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_70.x, _70.y, _70.z, r0.w);
    float4 _75 = r0;
    _75.w = asfloat(1065353216u);
    r0 = _75;
    float4 _90 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _105 = r1;
    _105.x = mad(_90.w, r0.w, mad(_90.z, r0.z, mad(_90.y, r0.y, _90.x * r0.x)));
    r1 = _105;
    float4 _117 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _131 = r1;
    _131.y = mad(_117.w, r0.w, mad(_117.z, r0.z, mad(_117.y, r0.y, _117.x * r0.x)));
    r1 = _131;
    float4 _143 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _157 = r1;
    _157.z = mad(_143.w, r0.w, mad(_143.z, r0.z, mad(_143.y, r0.y, _143.x * r0.x)));
    r1 = _157;
    float4 _160 = r1;
    _160.w = asfloat(1065353216u);
    r1 = _160;
    float4 _171 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _185 = o0;
    _185.x = mad(_171.w, r1.w, mad(_171.z, r1.z, mad(_171.y, r1.y, _171.x * r1.x)));
    o0 = _185;
    float4 _196 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _210 = o0;
    _210.y = mad(_196.w, r1.w, mad(_196.z, r1.z, mad(_196.y, r1.y, _196.x * r1.x)));
    o0 = _210;
    float4 _221 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _235 = o0;
    _235.z = mad(_221.w, r1.w, mad(_221.z, r1.z, mad(_221.y, r1.y, _221.x * r1.x)));
    o0 = _235;
    float4 _246 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _260 = o0;
    _260.w = mad(_246.w, r1.w, mad(_246.z, r1.z, mad(_246.y, r1.y, _246.x * r1.x)));
    o0 = _260;
    float3 _273 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_273.x, _273.y, _273.z, r0.w);
    float3 _283 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_283.x, _283.y, _283.z, r1.w);
    float3 _294 = (shader_in[4].xxx * r1.xyz) + r0.xyz;
    r0 = float4(_294.x, _294.y, _294.z, r0.w);
    float3 _304 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _316 = r1;
    _316.x = mad(_304.z, r0.xyz.z, mad(_304.y, r0.xyz.y, _304.x * r0.xyz.x));
    r1 = _316;
    float3 _325 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _337 = r1;
    _337.y = mad(_325.z, r0.xyz.z, mad(_325.y, r0.xyz.y, _325.x * r0.xyz.x));
    r1 = _337;
    float3 _346 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _358 = r1;
    _358.z = mad(_346.z, r0.xyz.z, mad(_346.y, r0.xyz.y, _346.x * r0.xyz.x));
    r1 = _358;
    float4 _373 = r0;
    _373.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _373;
    float4 _378 = r0;
    _378.x = rsqrt(r0.x);
    r0 = _378;
    o1 = r0.xxx * r1.xyz;
    float2 _389 = float2(asint(shader_in[1].xy));
    r0 = float4(_389.x, _389.y, r0.z, r0.w);
    o2 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _413 = asfloat(v1);
    shader_in[1] = float4(_413.x, _413.y, shader_in[1].z, shader_in[1].w);
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
