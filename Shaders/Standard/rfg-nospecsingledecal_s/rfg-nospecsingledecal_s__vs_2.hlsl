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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _60 = r0;
    _60.w = asfloat(1065353216u);
    r0 = _60;
    float4 _74 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _89 = r1;
    _89.x = mad(_74.w, r0.w, mad(_74.z, r0.z, mad(_74.y, r0.y, _74.x * r0.x)));
    r1 = _89;
    float4 _101 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _115 = r1;
    _115.y = mad(_101.w, r0.w, mad(_101.z, r0.z, mad(_101.y, r0.y, _101.x * r0.x)));
    r1 = _115;
    float4 _127 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _141 = r1;
    _141.z = mad(_127.w, r0.w, mad(_127.z, r0.z, mad(_127.y, r0.y, _127.x * r0.x)));
    r1 = _141;
    float4 _144 = r1;
    _144.w = asfloat(1065353216u);
    r1 = _144;
    float4 _155 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _169 = o0;
    _169.x = mad(_155.w, r1.w, mad(_155.z, r1.z, mad(_155.y, r1.y, _155.x * r1.x)));
    o0 = _169;
    float4 _180 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _194 = o0;
    _194.y = mad(_180.w, r1.w, mad(_180.z, r1.z, mad(_180.y, r1.y, _180.x * r1.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _219 = o0;
    _219.z = mad(_205.w, r1.w, mad(_205.z, r1.z, mad(_205.y, r1.y, _205.x * r1.x)));
    o0 = _219;
    float4 _231 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _245 = o0;
    _245.w = mad(_231.w, r1.w, mad(_231.z, r1.z, mad(_231.y, r1.y, _231.x * r1.x)));
    o0 = _245;
    float3 _258 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float3 _268 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _280 = r1;
    _280.x = mad(_268.z, r0.xyz.z, mad(_268.y, r0.xyz.y, _268.x * r0.xyz.x));
    r1 = _280;
    float3 _289 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _301 = r1;
    _301.y = mad(_289.z, r0.xyz.z, mad(_289.y, r0.xyz.y, _289.x * r0.xyz.x));
    r1 = _301;
    float3 _310 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _322 = r1;
    _322.z = mad(_310.z, r0.xyz.z, mad(_310.y, r0.xyz.y, _310.x * r0.xyz.x));
    r1 = _322;
    float4 _337 = r0;
    _337.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _337;
    float4 _342 = r0;
    _342.x = rsqrt(r0.x);
    r0 = _342;
    float3 _348 = r0.xxx * r1.xyz;
    r0 = float4(_348.x, _348.y, _348.z, r0.w);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _368 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _381 = r2;
    _381.x = mad(_368.z, r1.xyz.z, mad(_368.y, r1.xyz.y, _368.x * r1.xyz.x));
    r2 = _381;
    float3 _390 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _402 = r2;
    _402.y = mad(_390.z, r1.xyz.z, mad(_390.y, r1.xyz.y, _390.x * r1.xyz.x));
    r2 = _402;
    float3 _411 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _423 = r2;
    _423.z = mad(_411.z, r1.xyz.z, mad(_411.y, r1.xyz.y, _411.x * r1.xyz.x));
    r2 = _423;
    float4 _438 = r0;
    _438.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _438;
    float4 _443 = r0;
    _443.w = rsqrt(r0.w);
    r0 = _443;
    float3 _449 = r0.www * r2.xyz;
    r1 = float4(_449.x, _449.y, _449.z, r1.w);
    float3 _456 = r0.zxy * r1.yzx;
    r2 = float4(_456.x, _456.y, _456.z, r2.w);
    float3 _467 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_467.x, _467.y, _467.z, r2.w);
    float3 _477 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _489 = o1;
    _489.z = mad(_477.z, r0.xyz.z, mad(_477.y, r0.xyz.y, _477.x * r0.xyz.x));
    o1 = _489;
    float3 _498 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _510 = o1;
    _510.x = mad(_498.z, r1.xyz.z, mad(_498.y, r1.xyz.y, _498.x * r1.xyz.x));
    o1 = _510;
    float3 _516 = r1.www * r2.xyz;
    r0 = float4(_516.x, _516.y, _516.z, r0.w);
    float3 _526 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _538 = o1;
    _538.y = mad(_526.z, r0.xyz.z, mad(_526.y, r0.xyz.y, _526.x * r0.xyz.x));
    o1 = _538;
    float2 _545 = float2(asint(shader_in[2].xy));
    r0 = float4(_545.x, _545.y, r0.z, r0.w);
    float2 _556 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_556.x, _556.y, r0.z, r0.w);
    float2 _565 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _565.x, _565.y);
    float2 _572 = float2(asint(shader_in[1].xy));
    r0 = float4(_572.x, _572.y, r0.z, r0.w);
    float2 _578 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_578.x, _578.y, o2.z, o2.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _587 = asfloat(v1);
    shader_in[1] = float4(_587.x, _587.y, shader_in[1].z, shader_in[1].w);
    float2 _592 = asfloat(v2);
    shader_in[2] = float4(_592.x, _592.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
