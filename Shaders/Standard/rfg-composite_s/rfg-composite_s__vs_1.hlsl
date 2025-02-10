cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

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
    float3 _255 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_255.x, _255.y, _255.z, r1.w);
    float3 _265 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _278 = r2;
    _278.x = mad(_265.z, r1.xyz.z, mad(_265.y, r1.xyz.y, _265.x * r1.xyz.x));
    r2 = _278;
    float3 _287 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _299 = r2;
    _299.y = mad(_287.z, r1.xyz.z, mad(_287.y, r1.xyz.y, _287.x * r1.xyz.x));
    r2 = _299;
    float3 _308 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _320 = r2;
    _320.z = mad(_308.z, r1.xyz.z, mad(_308.y, r1.xyz.y, _308.x * r1.xyz.x));
    r2 = _320;
    float4 _335 = r0;
    _335.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _335;
    float4 _340 = r0;
    _340.w = rsqrt(r0.w);
    r0 = _340;
    float3 _346 = r0.www * r2.xyz;
    r1 = float4(_346.x, _346.y, _346.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _366 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _379 = r3;
    _379.x = mad(_366.z, r2.xyz.z, mad(_366.y, r2.xyz.y, _366.x * r2.xyz.x));
    r3 = _379;
    float3 _388 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _400 = r3;
    _400.y = mad(_388.z, r2.xyz.z, mad(_388.y, r2.xyz.y, _388.x * r2.xyz.x));
    r3 = _400;
    float3 _409 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _421 = r3;
    _421.z = mad(_409.z, r2.xyz.z, mad(_409.y, r2.xyz.y, _409.x * r2.xyz.x));
    r3 = _421;
    float4 _436 = r0;
    _436.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _436;
    float4 _441 = r0;
    _441.w = rsqrt(r0.w);
    r0 = _441;
    float3 _447 = r0.www * r3.xyz;
    r2 = float4(_447.x, _447.y, _447.z, r2.w);
    float3 _454 = r1.zxy * r2.yzx;
    r3 = float4(_454.x, _454.y, _454.z, r3.w);
    float3 _465 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_465.x, _465.y, _465.z, r3.w);
    float3 _472 = r2.www * r3.xyz;
    r3 = float4(_472.x, _472.y, _472.z, r3.w);
    float3 _486 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_486.x, _486.y, _486.z, r4.w);
    float3 _502 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_502.x, _502.y, _502.z, r0.w);
    float3 _518 = o1;
    _518.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _518;
    float3 _527 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _539 = o2;
    _539.y = mad(_527.z, r3.xyz.z, mad(_527.y, r3.xyz.y, _527.x * r3.xyz.x));
    o2 = _539;
    float3 _554 = o1;
    _554.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _554;
    float3 _563 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _575 = o2;
    _575.z = mad(_563.z, r1.xyz.z, mad(_563.y, r1.xyz.y, _563.x * r1.xyz.x));
    o2 = _575;
    float3 _590 = o1;
    _590.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _590;
    float3 _599 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _611 = o2;
    _611.x = mad(_599.z, r2.xyz.z, mad(_599.y, r2.xyz.y, _599.x * r2.xyz.x));
    o2 = _611;
    float4 _620 = r0;
    _620.w = r0.y * cb0_m[13].x;
    r0 = _620;
    float4 _627 = r1;
    _627.x = r0.w * asfloat(3216550459u);
    r1 = _627;
    float4 _632 = r1;
    _632.x = exp2(r1.x);
    r1 = _632;
    float4 _639 = r1;
    _639.x = (-r1.x) + asfloat(1065353216u);
    r1 = _639;
    float4 _646 = r0;
    _646.w = r1.x / r0.w;
    r0 = _646;
    float4 _658 = r1;
    _658.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _658;
    float4 _673 = r0;
    _673.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _673;
    float4 _678 = r0;
    _678.x = sqrt(r0.x);
    r0 = _678;
    float4 _686 = r0;
    _686.x = r0.x * cb0_m[13].y;
    r0 = _686;
    float4 _696 = r0;
    _696.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _696;
    float4 _708 = r0;
    _708.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _708;
    float4 _714 = r0;
    _714.x = exp2(-r0.x);
    r0 = _714;
    float4 _720 = r0;
    _720.x = min(r0.x, asfloat(1065353216u));
    r0 = _720;
    float4 _727 = o2;
    _727.w = (-r0.x) + asfloat(1065353216u);
    o2 = _727;
    float2 _734 = float2(asint(shader_in[1].xy));
    r0 = float4(_734.x, _734.y, r0.z, r0.w);
    float2 _743 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_743.x, _743.y, o3.z, o3.w);
    float2 _750 = float2(asint(shader_in[2].xy));
    r0 = float4(_750.x, _750.y, r0.z, r0.w);
    float2 _756 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _756.x, _756.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _765 = asfloat(v1);
    shader_in[1] = float4(_765.x, _765.y, shader_in[1].z, shader_in[1].w);
    float2 _770 = asfloat(v2);
    shader_in[2] = float4(_770.x, _770.y, shader_in[2].z, shader_in[2].w);
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
