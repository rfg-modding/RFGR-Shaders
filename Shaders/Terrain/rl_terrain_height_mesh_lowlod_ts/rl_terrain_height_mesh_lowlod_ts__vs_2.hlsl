cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    float4 _71 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _86 = r1;
    _86.y = mad(_71.w, r0.w, mad(_71.z, r0.z, mad(_71.y, r0.y, _71.x * r0.x)));
    r1 = _86;
    float4 _89 = r1;
    _89.w = asfloat(1065353216u);
    r1 = _89;
    float4 _100 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _114 = r1;
    _114.x = mad(_100.w, r0.w, mad(_100.z, r0.z, mad(_100.y, r0.y, _100.x * r0.x)));
    r1 = _114;
    float4 _126 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _140 = r1;
    _140.z = mad(_126.w, r0.w, mad(_126.z, r0.z, mad(_126.y, r0.y, _126.x * r0.x)));
    r1 = _140;
    float4 _151 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _165 = o0;
    _165.x = mad(_151.w, r1.w, mad(_151.z, r1.z, mad(_151.y, r1.y, _151.x * r1.x)));
    o0 = _165;
    float4 _176 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _190 = o0;
    _190.y = mad(_176.w, r1.w, mad(_176.z, r1.z, mad(_176.y, r1.y, _176.x * r1.x)));
    o0 = _190;
    float4 _201 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _215 = o0;
    _215.z = mad(_201.w, r1.w, mad(_201.z, r1.z, mad(_201.y, r1.y, _201.x * r1.x)));
    o0 = _215;
    float4 _227 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _241 = o0;
    _241.w = mad(_227.w, r1.w, mad(_227.z, r1.z, mad(_227.y, r1.y, _227.x * r1.x)));
    o0 = _241;
    float2 _252 = r1.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_252.x, _252.y, r0.z, r0.w);
    float2 _265 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_265.x, _265.y, r0.z, r0.w);
    float2 _278 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_278.x, _278.y, r0.z, r0.w);
    o1 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _310 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_310.x, _310.y, _310.z, r0.w);
    float3 _320 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _332 = r1;
    _332.x = mad(_320.z, r0.xyz.z, mad(_320.y, r0.xyz.y, _320.x * r0.xyz.x));
    r1 = _332;
    float3 _341 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _353 = r1;
    _353.y = mad(_341.z, r0.xyz.z, mad(_341.y, r0.xyz.y, _341.x * r0.xyz.x));
    r1 = _353;
    float3 _362 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _374 = r1;
    _374.z = mad(_362.z, r0.xyz.z, mad(_362.y, r0.xyz.y, _362.x * r0.xyz.x));
    r1 = _374;
    float4 _389 = r0;
    _389.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _389;
    float4 _394 = r0;
    _394.x = rsqrt(r0.x);
    r0 = _394;
    float3 _400 = r0.xxx * r1.xyz;
    o3 = float4(_400.x, _400.y, _400.z, o3.w);
    float4 _408 = r0;
    _408.x = float(asint(shader_in[2].x));
    r0 = _408;
    float4 _414 = o3;
    _414.w = r0.x * asfloat(981467136u);
    o3 = _414;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _428 = shader_in[2];
    _428.x = asfloat(v2);
    shader_in[2] = _428;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
