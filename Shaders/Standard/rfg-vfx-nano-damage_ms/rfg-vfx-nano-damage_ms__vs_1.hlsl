cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
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
    float3 _274 = (-float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z)) + float3(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z);
    r0 = float4(_274.x, _274.y, _274.z, r0.w);
    float3 _282 = (-r0.xyz) + r1.xyz;
    r0 = float4(_282.x, _282.y, _282.z, r0.w);
    float4 _298 = r0;
    _298.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _298;
    float4 _303 = r0;
    _303.x = sqrt(r0.x);
    r0 = _303;
    float4 _310 = o1;
    _310.w = r0.x * asfloat(1056964608u);
    o1 = _310;
    float2 _317 = float2(asint(shader_in[1].xy));
    r0 = float4(_317.x, _317.y, r0.z, r0.w);
    float2 _328 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_328.x, _328.y, r0.z, r0.w);
    float2 _337 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float4(_337.x, _337.y, o1.z, o1.w);
    float4 _343 = o1;
    _343.z = cb6_m[3].w;
    o1 = _343;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _351 = asfloat(v1);
    shader_in[1] = float4(_351.x, _351.y, shader_in[1].z, shader_in[1].w);
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
