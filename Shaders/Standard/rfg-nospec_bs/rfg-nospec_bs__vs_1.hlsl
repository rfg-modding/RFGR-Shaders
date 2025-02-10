cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static int2 v3;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
    float4 _84 = r0;
    _84.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _84;
    float4 _102 = r0;
    _102.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _102;
    float4 _120 = r0;
    _120.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _120;
    float4 _136 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _150 = o0;
    _150.x = mad(_136.w, r0.w, mad(_136.z, r0.z, mad(_136.y, r0.y, _136.x * r0.x)));
    o0 = _150;
    float4 _162 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _176 = o0;
    _176.y = mad(_162.w, r0.w, mad(_162.z, r0.z, mad(_162.y, r0.y, _162.x * r0.x)));
    o0 = _176;
    float4 _188 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _202 = o0;
    _202.z = mad(_188.w, r0.w, mad(_188.z, r0.z, mad(_188.y, r0.y, _188.x * r0.x)));
    o0 = _202;
    float4 _214 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _228 = o0;
    _228.w = mad(_214.w, r0.w, mad(_214.z, r0.z, mad(_214.y, r0.y, _214.x * r0.x)));
    o0 = _228;
    float2 _234 = float2(asint(shader_in[3].xy));
    r1 = float4(_234.x, _234.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _256 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_256.x, _256.y, _256.z, r1.w);
    float4 _274 = r2;
    _274.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _274;
    float4 _290 = r2;
    _290.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _290;
    float4 _306 = r2;
    _306.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _306;
    float4 _321 = r0;
    _321.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _321;
    float4 _326 = r0;
    _326.w = rsqrt(r0.w);
    r0 = _326;
    float3 _332 = r0.www * r2.xyz;
    r1 = float4(_332.x, _332.y, _332.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _360 = r3;
    _360.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _360;
    float4 _376 = r3;
    _376.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _376;
    float4 _392 = r3;
    _392.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _392;
    float4 _407 = r0;
    _407.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _407;
    float4 _412 = r0;
    _412.w = rsqrt(r0.w);
    r0 = _412;
    float3 _418 = r0.www * r3.xyz;
    r2 = float4(_418.x, _418.y, _418.z, r2.w);
    float3 _425 = r1.zxy * r2.yzx;
    r3 = float4(_425.x, _425.y, _425.z, r3.w);
    float3 _436 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_436.x, _436.y, _436.z, r3.w);
    float3 _443 = r2.www * r3.xyz;
    r3 = float4(_443.x, _443.y, _443.z, r3.w);
    float3 _457 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_457.x, _457.y, _457.z, r4.w);
    float3 _473 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_473.x, _473.y, _473.z, r0.w);
    float3 _489 = o2;
    _489.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _489;
    float3 _498 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _510 = o3;
    _510.y = mad(_498.z, r3.xyz.z, mad(_498.y, r3.xyz.y, _498.x * r3.xyz.x));
    o3 = _510;
    float3 _525 = o2;
    _525.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _525;
    float3 _534 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _546 = o3;
    _546.z = mad(_534.z, r1.xyz.z, mad(_534.y, r1.xyz.y, _534.x * r1.xyz.x));
    o3 = _546;
    float3 _561 = o2;
    _561.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _561;
    float3 _570 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _582 = o3;
    _582.x = mad(_570.z, r2.xyz.z, mad(_570.y, r2.xyz.y, _570.x * r2.xyz.x));
    o3 = _582;
    float4 _591 = r0;
    _591.w = r0.y * cb0_m[13].x;
    r0 = _591;
    float4 _598 = r1;
    _598.x = r0.w * asfloat(3216550459u);
    r1 = _598;
    float4 _603 = r1;
    _603.x = exp2(r1.x);
    r1 = _603;
    float4 _610 = r1;
    _610.x = (-r1.x) + asfloat(1065353216u);
    r1 = _610;
    float4 _617 = r0;
    _617.w = r1.x / r0.w;
    r0 = _617;
    float4 _629 = r1;
    _629.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _629;
    float4 _644 = r0;
    _644.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _644;
    float4 _649 = r0;
    _649.x = sqrt(r0.x);
    r0 = _649;
    float4 _657 = r0;
    _657.x = r0.x * cb0_m[13].y;
    r0 = _657;
    float4 _667 = r0;
    _667.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _667;
    float4 _679 = r0;
    _679.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _679;
    float4 _685 = r0;
    _685.x = exp2(-r0.x);
    r0 = _685;
    float4 _691 = r0;
    _691.x = min(r0.x, asfloat(1065353216u));
    r0 = _691;
    float4 _698 = o3;
    _698.w = (-r0.x) + asfloat(1065353216u);
    o3 = _698;
    float2 _704 = float2(asint(shader_in[2].xy));
    r0 = float4(_704.x, _704.y, r0.z, r0.w);
    float2 _715 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_715.x, _715.y, r0.z, r0.w);
    float2 _721 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _721.x, _721.y);
    float2 _728 = float2(asint(shader_in[1].xy));
    r0 = float4(_728.x, _728.y, r0.z, r0.w);
    float2 _734 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_734.x, _734.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _743 = asfloat(v1);
    shader_in[1] = float4(_743.x, _743.y, shader_in[1].z, shader_in[1].w);
    float2 _748 = asfloat(v2);
    shader_in[2] = float4(_748.x, _748.y, shader_in[2].z, shader_in[2].w);
    float2 _753 = asfloat(v3);
    shader_in[3] = float4(_753.x, _753.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
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
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
