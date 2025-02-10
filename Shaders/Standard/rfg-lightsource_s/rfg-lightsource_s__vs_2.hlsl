cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _50 = r0;
    _50.w = asfloat(1065353216u);
    r0 = _50;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _60 = r1;
    _60.w = asfloat(1065353216u);
    r1 = _60;
    float4 _75 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _89 = r0;
    _89.x = mad(_75.w, r1.w, mad(_75.z, r1.z, mad(_75.y, r1.y, _75.x * r1.x)));
    r0 = _89;
    float4 _101 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _115 = r0;
    _115.y = mad(_101.w, r1.w, mad(_101.z, r1.z, mad(_101.y, r1.y, _101.x * r1.x)));
    r0 = _115;
    float4 _127 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _141 = r0;
    _141.z = mad(_127.w, r1.w, mad(_127.z, r1.z, mad(_127.y, r1.y, _127.x * r1.x)));
    r0 = _141;
    float4 _152 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _166 = o0;
    _166.x = mad(_152.w, r0.w, mad(_152.z, r0.z, mad(_152.y, r0.y, _152.x * r0.x)));
    o0 = _166;
    float4 _177 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _191 = o0;
    _191.y = mad(_177.w, r0.w, mad(_177.z, r0.z, mad(_177.y, r0.y, _177.x * r0.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _216 = o0;
    _216.z = mad(_202.w, r0.w, mad(_202.z, r0.z, mad(_202.y, r0.y, _202.x * r0.x)));
    o0 = _216;
    float4 _228 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _242 = o0;
    _242.w = mad(_228.w, r0.w, mad(_228.z, r0.z, mad(_228.y, r0.y, _228.x * r0.x)));
    o0 = _242;
    float3 _256 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_256.x, _256.y, _256.z, r0.w);
    float2 _263 = float2(asint(shader_in[1].xy));
    r1 = float4(_263.x, _263.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _294 = r0;
    _294.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _294;
    float4 _299 = r0;
    _299.w = rsqrt(r0.w);
    r0 = _299;
    o3 = r0.www * r0.xyz;
    float3 _317 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_317.x, _317.y, _317.z, r0.w);
    float3 _327 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _339 = r1;
    _339.x = mad(_327.z, r0.xyz.z, mad(_327.y, r0.xyz.y, _327.x * r0.xyz.x));
    r1 = _339;
    float3 _348 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _360 = r1;
    _360.y = mad(_348.z, r0.xyz.z, mad(_348.y, r0.xyz.y, _348.x * r0.xyz.x));
    r1 = _360;
    float3 _369 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _381 = r1;
    _381.z = mad(_369.z, r0.xyz.z, mad(_369.y, r0.xyz.y, _369.x * r0.xyz.x));
    r1 = _381;
    float4 _396 = r0;
    _396.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _396;
    float4 _401 = r0;
    _401.x = rsqrt(r0.x);
    r0 = _401;
    float3 _407 = r0.xxx * r1.xyz;
    o4 = float4(_407.x, _407.y, _407.z, o4.w);
    float4 _411 = o4;
    _411.w = asfloat(0u);
    o4 = _411;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _419 = asfloat(v1);
    shader_in[1] = float4(_419.x, _419.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
