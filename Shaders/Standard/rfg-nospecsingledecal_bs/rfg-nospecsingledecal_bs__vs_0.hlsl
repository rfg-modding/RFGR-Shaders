cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
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
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _81 = r0;
    _81.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _81;
    float4 _99 = r0;
    _99.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _99;
    float4 _117 = r0;
    _117.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _117;
    float4 _132 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _146 = o0;
    _146.x = mad(_132.w, r0.w, mad(_132.z, r0.z, mad(_132.y, r0.y, _132.x * r0.x)));
    o0 = _146;
    float4 _158 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _172 = o0;
    _172.y = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _184 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _198 = o0;
    _198.z = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _210 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _224 = o0;
    _224.w = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float3 _238 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_238.x, _238.y, _238.z, r0.w);
    float3 _252 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_252.x, _252.y, _252.z, r1.w);
    float4 _270 = r2;
    _270.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _270;
    float4 _286 = r2;
    _286.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _286;
    float4 _302 = r2;
    _302.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _302;
    float4 _317 = r0;
    _317.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _317;
    float4 _322 = r0;
    _322.w = rsqrt(r0.w);
    r0 = _322;
    float3 _328 = r0.www * r2.xyz;
    r1 = float4(_328.x, _328.y, _328.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _356 = r3;
    _356.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _356;
    float4 _372 = r3;
    _372.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _372;
    float4 _388 = r3;
    _388.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _388;
    float4 _403 = r0;
    _403.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _403;
    float4 _408 = r0;
    _408.w = rsqrt(r0.w);
    r0 = _408;
    float3 _414 = r0.www * r3.xyz;
    r2 = float4(_414.x, _414.y, _414.z, r2.w);
    float3 _421 = r1.zxy * r2.yzx;
    r3 = float4(_421.x, _421.y, _421.z, r3.w);
    float3 _432 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_432.x, _432.y, _432.z, r3.w);
    float3 _439 = r2.www * r3.xyz;
    r3 = float4(_439.x, _439.y, _439.z, r3.w);
    float3 _449 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _461 = o1;
    _461.y = mad(_449.z, r3.xyz.z, mad(_449.y, r3.xyz.y, _449.x * r3.xyz.x));
    o1 = _461;
    float4 _465 = o2;
    _465.y = r3.y;
    o2 = _465;
    float3 _474 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _486 = o1;
    _486.z = mad(_474.z, r1.xyz.z, mad(_474.y, r1.xyz.y, _474.x * r1.xyz.x));
    o1 = _486;
    float4 _490 = o2;
    _490.z = r1.y;
    o2 = _490;
    float3 _499 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _511 = o1;
    _511.x = mad(_499.z, r2.xyz.z, mad(_499.y, r2.xyz.y, _499.x * r2.xyz.x));
    o1 = _511;
    float4 _515 = o2;
    _515.x = r2.y;
    o2 = _515;
    float4 _524 = r0;
    _524.w = r0.y * cb0_m[13].x;
    r0 = _524;
    float4 _531 = r1;
    _531.x = r0.w * asfloat(3216550459u);
    r1 = _531;
    float4 _536 = r1;
    _536.x = exp2(r1.x);
    r1 = _536;
    float4 _543 = r1;
    _543.x = (-r1.x) + asfloat(1065353216u);
    r1 = _543;
    float4 _550 = r0;
    _550.w = r1.x / r0.w;
    r0 = _550;
    float4 _562 = r1;
    _562.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _562;
    float4 _577 = r0;
    _577.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _577;
    float4 _582 = r0;
    _582.x = sqrt(r0.x);
    r0 = _582;
    float4 _590 = r0;
    _590.x = r0.x * cb0_m[13].y;
    r0 = _590;
    float4 _600 = r0;
    _600.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _600;
    float4 _612 = r0;
    _612.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _612;
    float4 _618 = r0;
    _618.x = exp2(-r0.x);
    r0 = _618;
    float4 _624 = r0;
    _624.x = min(r0.x, asfloat(1065353216u));
    r0 = _624;
    float4 _631 = o2;
    _631.w = (-r0.x) + asfloat(1065353216u);
    o2 = _631;
    float2 _638 = float2(asint(shader_in[2].xy));
    r0 = float4(_638.x, _638.y, r0.z, r0.w);
    float2 _649 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_649.x, _649.y, r0.z, r0.w);
    float2 _658 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _658.x, _658.y);
    float2 _665 = float2(asint(shader_in[1].xy));
    r0 = float4(_665.x, _665.y, r0.z, r0.w);
    float2 _671 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_671.x, _671.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _680 = asfloat(v1);
    shader_in[1] = float4(_680.x, _680.y, shader_in[1].z, shader_in[1].w);
    float2 _685 = asfloat(v2);
    shader_in[2] = float4(_685.x, _685.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
