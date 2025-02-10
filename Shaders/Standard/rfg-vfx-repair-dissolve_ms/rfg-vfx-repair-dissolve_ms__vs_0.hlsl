cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
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
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _50 = r0;
    _50.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _50;
    float3 _63 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_63.x, _63.y, _63.z, r0.w);
    float4 _68 = r0;
    _68.w = asfloat(1065353216u);
    r0 = _68;
    float4 _84 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _99 = r1;
    _99.x = mad(_84.w, r0.w, mad(_84.z, r0.z, mad(_84.y, r0.y, _84.x * r0.x)));
    r1 = _99;
    float4 _111 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _125 = r1;
    _125.y = mad(_111.w, r0.w, mad(_111.z, r0.z, mad(_111.y, r0.y, _111.x * r0.x)));
    r1 = _125;
    float4 _137 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _151 = r1;
    _151.z = mad(_137.w, r0.w, mad(_137.z, r0.z, mad(_137.y, r0.y, _137.x * r0.x)));
    r1 = _151;
    float4 _154 = r1;
    _154.w = asfloat(1065353216u);
    r1 = _154;
    float4 _165 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _179 = o0;
    _179.x = mad(_165.w, r1.w, mad(_165.z, r1.z, mad(_165.y, r1.y, _165.x * r1.x)));
    o0 = _179;
    float4 _190 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _204 = o0;
    _204.y = mad(_190.w, r1.w, mad(_190.z, r1.z, mad(_190.y, r1.y, _190.x * r1.x)));
    o0 = _204;
    float4 _215 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _229 = o0;
    _229.z = mad(_215.w, r1.w, mad(_215.z, r1.z, mad(_215.y, r1.y, _215.x * r1.x)));
    o0 = _229;
    float4 _240 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _254 = o0;
    _254.w = mad(_240.w, r1.w, mad(_240.z, r1.z, mad(_240.y, r1.y, _240.x * r1.x)));
    o0 = _254;
    float3 _268 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_268.x, _268.y, _268.z, r0.w);
    float4 _278 = r0;
    _278.w = r0.y * cb0_m[13].x;
    r0 = _278;
    float4 _285 = r1;
    _285.x = r0.w * asfloat(3216550459u);
    r1 = _285;
    float4 _290 = r1;
    _290.x = exp2(r1.x);
    r1 = _290;
    float4 _297 = r1;
    _297.x = (-r1.x) + asfloat(1065353216u);
    r1 = _297;
    float4 _304 = r0;
    _304.w = r1.x / r0.w;
    r0 = _304;
    float4 _316 = r1;
    _316.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _316;
    float4 _331 = r0;
    _331.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _331;
    float4 _336 = r0;
    _336.x = sqrt(r0.x);
    r0 = _336;
    float4 _344 = r0;
    _344.x = r0.x * cb0_m[13].y;
    r0 = _344;
    float4 _354 = r0;
    _354.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _354;
    float4 _366 = r0;
    _366.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _366;
    float4 _372 = r0;
    _372.x = exp2(-r0.x);
    r0 = _372;
    float4 _378 = r0;
    _378.x = min(r0.x, asfloat(1065353216u));
    r0 = _378;
    float4 _385 = o1;
    _385.w = (-r0.x) + asfloat(1065353216u);
    o1 = _385;
    float2 _392 = float2(asint(shader_in[1].xy));
    r0 = float4(_392.x, _392.y, r0.z, r0.w);
    float2 _403 = r0.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(_403.x, _403.y, r0.z, r0.w);
    float2 _412 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_412.x, _412.y, o1.z, o1.w);
    float4 _418 = o1;
    _418.z = cb6_m[3].w;
    o1 = _418;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _426 = asfloat(v1);
    shader_in[1] = float4(_426.x, _426.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
