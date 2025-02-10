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
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;
static float3 v6;
static float3 v7;
static float3 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
    float3 v8 : TEXCOORD8;
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
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _67 = r0;
    _67.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _67;
    float3 _80 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_80.x, _80.y, _80.z, r0.w);
    float4 _85 = r0;
    _85.w = asfloat(1065353216u);
    r0 = _85;
    float4 _99 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _114 = r1;
    _114.x = mad(_99.w, r0.w, mad(_99.z, r0.z, mad(_99.y, r0.y, _99.x * r0.x)));
    r1 = _114;
    float4 _126 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _140 = r1;
    _140.y = mad(_126.w, r0.w, mad(_126.z, r0.z, mad(_126.y, r0.y, _126.x * r0.x)));
    r1 = _140;
    float4 _152 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _166 = r1;
    _166.z = mad(_152.w, r0.w, mad(_152.z, r0.z, mad(_152.y, r0.y, _152.x * r0.x)));
    r1 = _166;
    float4 _169 = r1;
    _169.w = asfloat(1065353216u);
    r1 = _169;
    float4 _180 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _194 = o0;
    _194.x = mad(_180.w, r1.w, mad(_180.z, r1.z, mad(_180.y, r1.y, _180.x * r1.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _219 = o0;
    _219.y = mad(_205.w, r1.w, mad(_205.z, r1.z, mad(_205.y, r1.y, _205.x * r1.x)));
    o0 = _219;
    float4 _230 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _244 = o0;
    _244.z = mad(_230.w, r1.w, mad(_230.z, r1.z, mad(_230.y, r1.y, _230.x * r1.x)));
    o0 = _244;
    float4 _256 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _270 = o0;
    _270.w = mad(_256.w, r1.w, mad(_256.z, r1.z, mad(_256.y, r1.y, _256.x * r1.x)));
    o0 = _270;
    float3 _284 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_284.x, _284.y, _284.z, r0.w);
    float2 _291 = float2(asint(shader_in[3].xy));
    r1 = float4(_291.x, _291.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _313 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_313.x, _313.y, _313.z, r1.w);
    float3 _323 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_323.x, _323.y, _323.z, r2.w);
    float3 _335 = (shader_in[7].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_335.x, _335.y, _335.z, r1.w);
    float3 _345 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _357 = r2;
    _357.x = mad(_345.z, r1.xyz.z, mad(_345.y, r1.xyz.y, _345.x * r1.xyz.x));
    r2 = _357;
    float3 _366 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _378 = r2;
    _378.y = mad(_366.z, r1.xyz.z, mad(_366.y, r1.xyz.y, _366.x * r1.xyz.x));
    r2 = _378;
    float3 _387 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _399 = r2;
    _399.z = mad(_387.z, r1.xyz.z, mad(_387.y, r1.xyz.y, _387.x * r1.xyz.x));
    r2 = _399;
    float4 _414 = r0;
    _414.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _414;
    float4 _419 = r0;
    _419.w = rsqrt(r0.w);
    r0 = _419;
    float3 _425 = r0.www * r2.xyz;
    r1 = float4(_425.x, _425.y, _425.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _445 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _458 = r3;
    _458.x = mad(_445.z, r2.xyz.z, mad(_445.y, r2.xyz.y, _445.x * r2.xyz.x));
    r3 = _458;
    float3 _467 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _479 = r3;
    _479.y = mad(_467.z, r2.xyz.z, mad(_467.y, r2.xyz.y, _467.x * r2.xyz.x));
    r3 = _479;
    float3 _488 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _500 = r3;
    _500.z = mad(_488.z, r2.xyz.z, mad(_488.y, r2.xyz.y, _488.x * r2.xyz.x));
    r3 = _500;
    float4 _515 = r0;
    _515.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _515;
    float4 _520 = r0;
    _520.w = rsqrt(r0.w);
    r0 = _520;
    float3 _526 = r0.www * r3.xyz;
    r2 = float4(_526.x, _526.y, _526.z, r2.w);
    float3 _533 = r1.zxy * r2.yzx;
    r3 = float4(_533.x, _533.y, _533.z, r3.w);
    float3 _544 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_544.x, _544.y, _544.z, r3.w);
    float3 _551 = r2.www * r3.xyz;
    r3 = float4(_551.x, _551.y, _551.z, r3.w);
    float3 _561 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _573 = o2;
    _573.y = mad(_561.z, r3.xyz.z, mad(_561.y, r3.xyz.y, _561.x * r3.xyz.x));
    o2 = _573;
    float3 _582 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _594 = o2;
    _594.z = mad(_582.z, r1.xyz.z, mad(_582.y, r1.xyz.y, _582.x * r1.xyz.x));
    o2 = _594;
    float3 _603 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _615 = o2;
    _615.x = mad(_603.z, r2.xyz.z, mad(_603.y, r2.xyz.y, _603.x * r2.xyz.x));
    o2 = _615;
    float4 _630 = r0;
    _630.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _630;
    float4 _635 = r0;
    _635.w = rsqrt(r0.w);
    r0 = _635;
    float3 _641 = r0.www * r0.xyz;
    r0 = float4(_641.x, _641.y, _641.z, r0.w);
    float3 _657 = o3;
    _657.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _657;
    float3 _672 = o3;
    _672.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _672;
    float3 _687 = o3;
    _687.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _687;
    float2 _693 = float2(asint(shader_in[2].xy));
    r0 = float4(_693.x, _693.y, r0.z, r0.w);
    float2 _704 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_704.x, _704.y, r0.z, r0.w);
    float2 _710 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _710.x, _710.y);
    float2 _717 = float2(asint(shader_in[1].xy));
    r0 = float4(_717.x, _717.y, r0.z, r0.w);
    float2 _723 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_723.x, _723.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _732 = asfloat(v1);
    shader_in[1] = float4(_732.x, _732.y, shader_in[1].z, shader_in[1].w);
    float2 _737 = asfloat(v2);
    shader_in[2] = float4(_737.x, _737.y, shader_in[2].z, shader_in[2].w);
    float2 _742 = asfloat(v3);
    shader_in[3] = float4(_742.x, _742.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
    shader_in[8] = float4(v8.x, v8.y, v8.z, shader_in[8].w);
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
