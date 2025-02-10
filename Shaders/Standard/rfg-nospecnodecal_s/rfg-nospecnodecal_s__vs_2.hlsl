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
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    float4 _71 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _86 = r1;
    _86.x = mad(_71.w, r0.w, mad(_71.z, r0.z, mad(_71.y, r0.y, _71.x * r0.x)));
    r1 = _86;
    float4 _98 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _112 = r1;
    _112.y = mad(_98.w, r0.w, mad(_98.z, r0.z, mad(_98.y, r0.y, _98.x * r0.x)));
    r1 = _112;
    float4 _124 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _138 = r1;
    _138.z = mad(_124.w, r0.w, mad(_124.z, r0.z, mad(_124.y, r0.y, _124.x * r0.x)));
    r1 = _138;
    float4 _141 = r1;
    _141.w = asfloat(1065353216u);
    r1 = _141;
    float4 _152 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _166 = o0;
    _166.x = mad(_152.w, r1.w, mad(_152.z, r1.z, mad(_152.y, r1.y, _152.x * r1.x)));
    o0 = _166;
    float4 _177 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _191 = o0;
    _191.y = mad(_177.w, r1.w, mad(_177.z, r1.z, mad(_177.y, r1.y, _177.x * r1.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _216 = o0;
    _216.z = mad(_202.w, r1.w, mad(_202.z, r1.z, mad(_202.y, r1.y, _202.x * r1.x)));
    o0 = _216;
    float4 _228 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _242 = o0;
    _242.w = mad(_228.w, r1.w, mad(_228.z, r1.z, mad(_228.y, r1.y, _228.x * r1.x)));
    o0 = _242;
    float2 _248 = float2(asint(shader_in[1].xy));
    r0 = float4(_248.x, _248.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _269 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_269.x, _269.y, _269.z, r0.w);
    float3 _279 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _291 = r1;
    _291.x = mad(_279.z, r0.xyz.z, mad(_279.y, r0.xyz.y, _279.x * r0.xyz.x));
    r1 = _291;
    float3 _300 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _312 = r1;
    _312.y = mad(_300.z, r0.xyz.z, mad(_300.y, r0.xyz.y, _300.x * r0.xyz.x));
    r1 = _312;
    float3 _321 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _333 = r1;
    _333.z = mad(_321.z, r0.xyz.z, mad(_321.y, r0.xyz.y, _321.x * r0.xyz.x));
    r1 = _333;
    float4 _348 = r0;
    _348.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _348;
    float4 _353 = r0;
    _353.x = rsqrt(r0.x);
    r0 = _353;
    float3 _359 = r0.xxx * r1.xyz;
    r0 = float4(_359.x, _359.y, _359.z, r0.w);
    r1 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _378 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _391 = r2;
    _391.x = mad(_378.z, r1.xyz.z, mad(_378.y, r1.xyz.y, _378.x * r1.xyz.x));
    r2 = _391;
    float3 _400 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _412 = r2;
    _412.y = mad(_400.z, r1.xyz.z, mad(_400.y, r1.xyz.y, _400.x * r1.xyz.x));
    r2 = _412;
    float3 _421 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _433 = r2;
    _433.z = mad(_421.z, r1.xyz.z, mad(_421.y, r1.xyz.y, _421.x * r1.xyz.x));
    r2 = _433;
    float4 _448 = r0;
    _448.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _448;
    float4 _453 = r0;
    _453.w = rsqrt(r0.w);
    r0 = _453;
    float3 _459 = r0.www * r2.xyz;
    r1 = float4(_459.x, _459.y, _459.z, r1.w);
    float3 _466 = r0.zxy * r1.yzx;
    r2 = float4(_466.x, _466.y, _466.z, r2.w);
    float3 _477 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_477.x, _477.y, _477.z, r2.w);
    float3 _487 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _499 = o2;
    _499.z = mad(_487.z, r0.xyz.z, mad(_487.y, r0.xyz.y, _487.x * r0.xyz.x));
    o2 = _499;
    float3 _508 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _520 = o2;
    _520.x = mad(_508.z, r1.xyz.z, mad(_508.y, r1.xyz.y, _508.x * r1.xyz.x));
    o2 = _520;
    float3 _526 = r1.www * r2.xyz;
    r0 = float4(_526.x, _526.y, _526.z, r0.w);
    float3 _536 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _548 = o2;
    _548.y = mad(_536.z, r0.xyz.z, mad(_536.y, r0.xyz.y, _536.x * r0.xyz.x));
    o2 = _548;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _556 = asfloat(v1);
    shader_in[1] = float4(_556.x, _556.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
