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
    float4 cb2_m[2] : packoffset(c0);
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
    float4 _96 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _111 = r1;
    _111.x = mad(_96.w, r0.w, mad(_96.z, r0.z, mad(_96.y, r0.y, _96.x * r0.x)));
    r1 = _111;
    float4 _123 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _137 = r1;
    _137.y = mad(_123.w, r0.w, mad(_123.z, r0.z, mad(_123.y, r0.y, _123.x * r0.x)));
    r1 = _137;
    float4 _149 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _163 = r1;
    _163.z = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    r1 = _163;
    float4 _166 = r1;
    _166.w = asfloat(1065353216u);
    r1 = _166;
    float4 _177 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _191 = o0;
    _191.x = mad(_177.w, r1.w, mad(_177.z, r1.z, mad(_177.y, r1.y, _177.x * r1.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _216 = o0;
    _216.y = mad(_202.w, r1.w, mad(_202.z, r1.z, mad(_202.y, r1.y, _202.x * r1.x)));
    o0 = _216;
    float4 _227 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _241 = o0;
    _241.z = mad(_227.w, r1.w, mad(_227.z, r1.z, mad(_227.y, r1.y, _227.x * r1.x)));
    o0 = _241;
    float4 _253 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _267 = o0;
    _267.w = mad(_253.w, r1.w, mad(_253.z, r1.z, mad(_253.y, r1.y, _253.x * r1.x)));
    o0 = _267;
    float3 _281 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_281.x, _281.y, _281.z, r0.w);
    float2 _288 = float2(asint(shader_in[1].xy));
    r1 = float4(_288.x, _288.y, r1.z, r1.w);
    float2 _299 = r1.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r1 = float4(_299.x, _299.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _320 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_320.x, _320.y, _320.z, r1.w);
    float3 _330 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_330.x, _330.y, _330.z, r2.w);
    float3 _342 = (shader_in[5].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_342.x, _342.y, _342.z, r1.w);
    float3 _352 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _364 = r2;
    _364.x = mad(_352.z, r1.xyz.z, mad(_352.y, r1.xyz.y, _352.x * r1.xyz.x));
    r2 = _364;
    float3 _373 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _385 = r2;
    _385.y = mad(_373.z, r1.xyz.z, mad(_373.y, r1.xyz.y, _373.x * r1.xyz.x));
    r2 = _385;
    float3 _394 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _406 = r2;
    _406.z = mad(_394.z, r1.xyz.z, mad(_394.y, r1.xyz.y, _394.x * r1.xyz.x));
    r2 = _406;
    float4 _421 = r0;
    _421.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _421;
    float4 _426 = r0;
    _426.w = rsqrt(r0.w);
    r0 = _426;
    float3 _432 = r0.www * r2.xyz;
    r1 = float4(_432.x, _432.y, _432.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _451 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _464 = r3;
    _464.x = mad(_451.z, r2.xyz.z, mad(_451.y, r2.xyz.y, _451.x * r2.xyz.x));
    r3 = _464;
    float3 _473 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _485 = r3;
    _485.y = mad(_473.z, r2.xyz.z, mad(_473.y, r2.xyz.y, _473.x * r2.xyz.x));
    r3 = _485;
    float3 _494 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _506 = r3;
    _506.z = mad(_494.z, r2.xyz.z, mad(_494.y, r2.xyz.y, _494.x * r2.xyz.x));
    r3 = _506;
    float4 _521 = r0;
    _521.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _521;
    float4 _526 = r0;
    _526.w = rsqrt(r0.w);
    r0 = _526;
    float3 _532 = r0.www * r3.xyz;
    r2 = float4(_532.x, _532.y, _532.z, r2.w);
    float3 _539 = r1.zxy * r2.yzx;
    r3 = float4(_539.x, _539.y, _539.z, r3.w);
    float3 _550 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_550.x, _550.y, _550.z, r3.w);
    float3 _557 = r2.www * r3.xyz;
    r3 = float4(_557.x, _557.y, _557.z, r3.w);
    float3 _567 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _579 = o2;
    _579.y = mad(_567.z, r3.xyz.z, mad(_567.y, r3.xyz.y, _567.x * r3.xyz.x));
    o2 = _579;
    float3 _588 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _600 = o2;
    _600.z = mad(_588.z, r1.xyz.z, mad(_588.y, r1.xyz.y, _588.x * r1.xyz.x));
    o2 = _600;
    float3 _609 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _621 = o2;
    _621.x = mad(_609.z, r2.xyz.z, mad(_609.y, r2.xyz.y, _609.x * r2.xyz.x));
    o2 = _621;
    float4 _636 = r0;
    _636.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _636;
    float4 _641 = r0;
    _641.w = rsqrt(r0.w);
    r0 = _641;
    float3 _647 = r0.www * r0.xyz;
    r0 = float4(_647.x, _647.y, _647.z, r0.w);
    float3 _663 = o3;
    _663.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _663;
    float3 _678 = o3;
    _678.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _678;
    float3 _693 = o3;
    _693.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _693;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _701 = asfloat(v1);
    shader_in[1] = float4(_701.x, _701.y, shader_in[1].z, shader_in[1].w);
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
