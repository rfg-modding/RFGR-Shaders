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
static float3 v4;
static float3 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _58 = r0;
    _58.x = shader_in[5].x * asfloat(1082130432u);
    r0 = _58;
    float3 _71 = (r0.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r0 = float4(_71.x, _71.y, _71.z, r0.w);
    float4 _76 = r0;
    _76.w = asfloat(1065353216u);
    r0 = _76;
    float4 _91 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _106 = r1;
    _106.x = mad(_91.w, r0.w, mad(_91.z, r0.z, mad(_91.y, r0.y, _91.x * r0.x)));
    r1 = _106;
    float4 _118 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _132 = r1;
    _132.y = mad(_118.w, r0.w, mad(_118.z, r0.z, mad(_118.y, r0.y, _118.x * r0.x)));
    r1 = _132;
    float4 _144 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _158 = r1;
    _158.z = mad(_144.w, r0.w, mad(_144.z, r0.z, mad(_144.y, r0.y, _144.x * r0.x)));
    r1 = _158;
    float4 _161 = r1;
    _161.w = asfloat(1065353216u);
    r1 = _161;
    float4 _172 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _186 = o0;
    _186.x = mad(_172.w, r1.w, mad(_172.z, r1.z, mad(_172.y, r1.y, _172.x * r1.x)));
    o0 = _186;
    float4 _197 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _211 = o0;
    _211.y = mad(_197.w, r1.w, mad(_197.z, r1.z, mad(_197.y, r1.y, _197.x * r1.x)));
    o0 = _211;
    float4 _222 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _236 = o0;
    _236.z = mad(_222.w, r1.w, mad(_222.z, r1.z, mad(_222.y, r1.y, _222.x * r1.x)));
    o0 = _236;
    float4 _248 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _262 = o0;
    _262.w = mad(_248.w, r1.w, mad(_248.z, r1.z, mad(_248.y, r1.y, _248.x * r1.x)));
    o0 = _262;
    float2 _268 = float2(asint(shader_in[1].xy));
    r0 = float4(_268.x, _268.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _289 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_289.x, _289.y, _289.z, r0.w);
    float3 _299 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_299.x, _299.y, _299.z, r1.w);
    float3 _310 = (shader_in[5].xxx * r1.xyz) + r0.xyz;
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
    r0 = float4(_400.x, _400.y, _400.z, r0.w);
    r1 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _419 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _432 = r2;
    _432.x = mad(_419.z, r1.xyz.z, mad(_419.y, r1.xyz.y, _419.x * r1.xyz.x));
    r2 = _432;
    float3 _441 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _453 = r2;
    _453.y = mad(_441.z, r1.xyz.z, mad(_441.y, r1.xyz.y, _441.x * r1.xyz.x));
    r2 = _453;
    float3 _462 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _474 = r2;
    _474.z = mad(_462.z, r1.xyz.z, mad(_462.y, r1.xyz.y, _462.x * r1.xyz.x));
    r2 = _474;
    float4 _489 = r0;
    _489.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _489;
    float4 _494 = r0;
    _494.w = rsqrt(r0.w);
    r0 = _494;
    float3 _500 = r0.www * r2.xyz;
    r1 = float4(_500.x, _500.y, _500.z, r1.w);
    float3 _507 = r0.zxy * r1.yzx;
    r2 = float4(_507.x, _507.y, _507.z, r2.w);
    float3 _518 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_518.x, _518.y, _518.z, r2.w);
    float3 _528 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _540 = o2;
    _540.z = mad(_528.z, r0.xyz.z, mad(_528.y, r0.xyz.y, _528.x * r0.xyz.x));
    o2 = _540;
    float3 _549 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _561 = o2;
    _561.x = mad(_549.z, r1.xyz.z, mad(_549.y, r1.xyz.y, _549.x * r1.xyz.x));
    o2 = _561;
    float3 _567 = r1.www * r2.xyz;
    r0 = float4(_567.x, _567.y, _567.z, r0.w);
    float3 _577 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _589 = o2;
    _589.y = mad(_577.z, r0.xyz.z, mad(_577.y, r0.xyz.y, _577.x * r0.xyz.x));
    o2 = _589;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _597 = asfloat(v1);
    shader_in[1] = float4(_597.x, _597.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
