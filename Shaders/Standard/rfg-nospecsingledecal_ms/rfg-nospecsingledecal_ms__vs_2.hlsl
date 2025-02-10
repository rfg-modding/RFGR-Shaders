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
static float3 v5;
static float3 v6;
static float3 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _62 = r0;
    _62.x = shader_in[6].x * asfloat(1082130432u);
    r0 = _62;
    float3 _75 = (r0.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r0 = float4(_75.x, _75.y, _75.z, r0.w);
    float4 _80 = r0;
    _80.w = asfloat(1065353216u);
    r0 = _80;
    float4 _94 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _109 = r1;
    _109.x = mad(_94.w, r0.w, mad(_94.z, r0.z, mad(_94.y, r0.y, _94.x * r0.x)));
    r1 = _109;
    float4 _121 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _135 = r1;
    _135.y = mad(_121.w, r0.w, mad(_121.z, r0.z, mad(_121.y, r0.y, _121.x * r0.x)));
    r1 = _135;
    float4 _147 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _161 = r1;
    _161.z = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    r1 = _161;
    float4 _164 = r1;
    _164.w = asfloat(1065353216u);
    r1 = _164;
    float4 _175 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _189 = o0;
    _189.x = mad(_175.w, r1.w, mad(_175.z, r1.z, mad(_175.y, r1.y, _175.x * r1.x)));
    o0 = _189;
    float4 _200 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _214 = o0;
    _214.y = mad(_200.w, r1.w, mad(_200.z, r1.z, mad(_200.y, r1.y, _200.x * r1.x)));
    o0 = _214;
    float4 _225 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _239 = o0;
    _239.z = mad(_225.w, r1.w, mad(_225.z, r1.z, mad(_225.y, r1.y, _225.x * r1.x)));
    o0 = _239;
    float4 _251 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _265 = o0;
    _265.w = mad(_251.w, r1.w, mad(_251.z, r1.z, mad(_251.y, r1.y, _251.x * r1.x)));
    o0 = _265;
    float3 _278 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_278.x, _278.y, _278.z, r0.w);
    float3 _288 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_288.x, _288.y, _288.z, r1.w);
    float3 _299 = (shader_in[6].xxx * r1.xyz) + r0.xyz;
    r0 = float4(_299.x, _299.y, _299.z, r0.w);
    float3 _309 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _321 = r1;
    _321.x = mad(_309.z, r0.xyz.z, mad(_309.y, r0.xyz.y, _309.x * r0.xyz.x));
    r1 = _321;
    float3 _330 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _342 = r1;
    _342.y = mad(_330.z, r0.xyz.z, mad(_330.y, r0.xyz.y, _330.x * r0.xyz.x));
    r1 = _342;
    float3 _351 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _363 = r1;
    _363.z = mad(_351.z, r0.xyz.z, mad(_351.y, r0.xyz.y, _351.x * r0.xyz.x));
    r1 = _363;
    float4 _378 = r0;
    _378.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _378;
    float4 _383 = r0;
    _383.x = rsqrt(r0.x);
    r0 = _383;
    float3 _389 = r0.xxx * r1.xyz;
    r0 = float4(_389.x, _389.y, _389.z, r0.w);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _409 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _422 = r2;
    _422.x = mad(_409.z, r1.xyz.z, mad(_409.y, r1.xyz.y, _409.x * r1.xyz.x));
    r2 = _422;
    float3 _431 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _443 = r2;
    _443.y = mad(_431.z, r1.xyz.z, mad(_431.y, r1.xyz.y, _431.x * r1.xyz.x));
    r2 = _443;
    float3 _452 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _464 = r2;
    _464.z = mad(_452.z, r1.xyz.z, mad(_452.y, r1.xyz.y, _452.x * r1.xyz.x));
    r2 = _464;
    float4 _479 = r0;
    _479.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _479;
    float4 _484 = r0;
    _484.w = rsqrt(r0.w);
    r0 = _484;
    float3 _490 = r0.www * r2.xyz;
    r1 = float4(_490.x, _490.y, _490.z, r1.w);
    float3 _497 = r0.zxy * r1.yzx;
    r2 = float4(_497.x, _497.y, _497.z, r2.w);
    float3 _508 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_508.x, _508.y, _508.z, r2.w);
    float3 _518 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _530 = o1;
    _530.z = mad(_518.z, r0.xyz.z, mad(_518.y, r0.xyz.y, _518.x * r0.xyz.x));
    o1 = _530;
    float3 _539 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _551 = o1;
    _551.x = mad(_539.z, r1.xyz.z, mad(_539.y, r1.xyz.y, _539.x * r1.xyz.x));
    o1 = _551;
    float3 _557 = r1.www * r2.xyz;
    r0 = float4(_557.x, _557.y, _557.z, r0.w);
    float3 _567 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _579 = o1;
    _579.y = mad(_567.z, r0.xyz.z, mad(_567.y, r0.xyz.y, _567.x * r0.xyz.x));
    o1 = _579;
    float2 _586 = float2(asint(shader_in[2].xy));
    r0 = float4(_586.x, _586.y, r0.z, r0.w);
    float2 _597 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_597.x, _597.y, r0.z, r0.w);
    float2 _606 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _606.x, _606.y);
    float2 _613 = float2(asint(shader_in[1].xy));
    r0 = float4(_613.x, _613.y, r0.z, r0.w);
    float2 _619 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_619.x, _619.y, o2.z, o2.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _628 = asfloat(v1);
    shader_in[1] = float4(_628.x, _628.y, shader_in[1].z, shader_in[1].w);
    float2 _633 = asfloat(v2);
    shader_in[2] = float4(_633.x, _633.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
