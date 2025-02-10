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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
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
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _64 = r0;
    _64.x = shader_in[5].x * asfloat(1082130432u);
    r0 = _64;
    float3 _77 = (r0.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r0 = float4(_77.x, _77.y, _77.z, r0.w);
    float4 _82 = r0;
    _82.w = asfloat(1065353216u);
    r0 = _82;
    float4 _97 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _112 = r1;
    _112.x = mad(_97.w, r0.w, mad(_97.z, r0.z, mad(_97.y, r0.y, _97.x * r0.x)));
    r1 = _112;
    float4 _124 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _138 = r1;
    _138.y = mad(_124.w, r0.w, mad(_124.z, r0.z, mad(_124.y, r0.y, _124.x * r0.x)));
    r1 = _138;
    float4 _150 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _164 = r1;
    _164.z = mad(_150.w, r0.w, mad(_150.z, r0.z, mad(_150.y, r0.y, _150.x * r0.x)));
    r1 = _164;
    float4 _167 = r1;
    _167.w = asfloat(1065353216u);
    r1 = _167;
    float4 _178 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _192 = o0;
    _192.x = mad(_178.w, r1.w, mad(_178.z, r1.z, mad(_178.y, r1.y, _178.x * r1.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _217 = o0;
    _217.y = mad(_203.w, r1.w, mad(_203.z, r1.z, mad(_203.y, r1.y, _203.x * r1.x)));
    o0 = _217;
    float4 _228 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _242 = o0;
    _242.z = mad(_228.w, r1.w, mad(_228.z, r1.z, mad(_228.y, r1.y, _228.x * r1.x)));
    o0 = _242;
    float4 _254 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _268 = o0;
    _268.w = mad(_254.w, r1.w, mad(_254.z, r1.z, mad(_254.y, r1.y, _254.x * r1.x)));
    o0 = _268;
    float3 _282 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_282.x, _282.y, _282.z, r0.w);
    float2 _289 = float2(asint(shader_in[1].xy));
    r1 = float4(_289.x, _289.y, r1.z, r1.w);
    float2 _301 = r1.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r1 = float4(_301.x, _301.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _322 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_322.x, _322.y, _322.z, r1.w);
    float3 _332 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_332.x, _332.y, _332.z, r2.w);
    float3 _344 = (shader_in[5].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_344.x, _344.y, _344.z, r1.w);
    float3 _354 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _366 = r2;
    _366.x = mad(_354.z, r1.xyz.z, mad(_354.y, r1.xyz.y, _354.x * r1.xyz.x));
    r2 = _366;
    float3 _375 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _387 = r2;
    _387.y = mad(_375.z, r1.xyz.z, mad(_375.y, r1.xyz.y, _375.x * r1.xyz.x));
    r2 = _387;
    float3 _396 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _408 = r2;
    _408.z = mad(_396.z, r1.xyz.z, mad(_396.y, r1.xyz.y, _396.x * r1.xyz.x));
    r2 = _408;
    float4 _423 = r0;
    _423.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _423;
    float4 _428 = r0;
    _428.w = rsqrt(r0.w);
    r0 = _428;
    float3 _434 = r0.www * r2.xyz;
    r1 = float4(_434.x, _434.y, _434.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _453 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _466 = r3;
    _466.x = mad(_453.z, r2.xyz.z, mad(_453.y, r2.xyz.y, _453.x * r2.xyz.x));
    r3 = _466;
    float3 _475 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _487 = r3;
    _487.y = mad(_475.z, r2.xyz.z, mad(_475.y, r2.xyz.y, _475.x * r2.xyz.x));
    r3 = _487;
    float3 _496 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _508 = r3;
    _508.z = mad(_496.z, r2.xyz.z, mad(_496.y, r2.xyz.y, _496.x * r2.xyz.x));
    r3 = _508;
    float4 _523 = r0;
    _523.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _523;
    float4 _528 = r0;
    _528.w = rsqrt(r0.w);
    r0 = _528;
    float3 _534 = r0.www * r3.xyz;
    r2 = float4(_534.x, _534.y, _534.z, r2.w);
    float3 _541 = r1.zxy * r2.yzx;
    r3 = float4(_541.x, _541.y, _541.z, r3.w);
    float3 _552 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_552.x, _552.y, _552.z, r3.w);
    float3 _559 = r2.www * r3.xyz;
    r3 = float4(_559.x, _559.y, _559.z, r3.w);
    float3 _569 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _581 = o2;
    _581.y = mad(_569.z, r3.xyz.z, mad(_569.y, r3.xyz.y, _569.x * r3.xyz.x));
    o2 = _581;
    float3 _590 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _602 = o2;
    _602.z = mad(_590.z, r1.xyz.z, mad(_590.y, r1.xyz.y, _590.x * r1.xyz.x));
    o2 = _602;
    float3 _611 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _623 = o2;
    _623.x = mad(_611.z, r2.xyz.z, mad(_611.y, r2.xyz.y, _611.x * r2.xyz.x));
    o2 = _623;
    float4 _638 = r0;
    _638.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _638;
    float4 _643 = r0;
    _643.w = rsqrt(r0.w);
    r0 = _643;
    float3 _649 = r0.www * r0.xyz;
    r0 = float4(_649.x, _649.y, _649.z, r0.w);
    float3 _665 = o3;
    _665.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _665;
    float3 _680 = o3;
    _680.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _680;
    float3 _695 = o3;
    _695.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _695;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _703 = asfloat(v1);
    shader_in[1] = float4(_703.x, _703.y, shader_in[1].z, shader_in[1].w);
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
