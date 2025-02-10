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
    float4 cb2_m[6] : packoffset(c0);
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
    float4 _66 = r0;
    _66.x = shader_in[6].x * asfloat(1082130432u);
    r0 = _66;
    float3 _79 = (r0.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r0 = float4(_79.x, _79.y, _79.z, r0.w);
    float4 _84 = r0;
    _84.w = asfloat(1065353216u);
    r0 = _84;
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
    float2 _291 = float2(asint(shader_in[1].xy));
    r1 = float4(_291.x, _291.y, r1.z, r1.w);
    float2 _302 = r1.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r1 = float4(_302.x, _302.y, r1.z, r1.w);
    float2 _311 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r1 = float4(_311.x, _311.y, r1.z, r1.w);
    o1 = r1.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(r1.xy.x, r1.xy.y, o4.z, o4.w);
    float3 _339 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_339.x, _339.y, _339.z, r1.w);
    float3 _349 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_349.x, _349.y, _349.z, r2.w);
    float3 _361 = (shader_in[6].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_361.x, _361.y, _361.z, r1.w);
    float3 _371 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _383 = r2;
    _383.x = mad(_371.z, r1.xyz.z, mad(_371.y, r1.xyz.y, _371.x * r1.xyz.x));
    r2 = _383;
    float3 _392 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _404 = r2;
    _404.y = mad(_392.z, r1.xyz.z, mad(_392.y, r1.xyz.y, _392.x * r1.xyz.x));
    r2 = _404;
    float3 _413 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _425 = r2;
    _425.z = mad(_413.z, r1.xyz.z, mad(_413.y, r1.xyz.y, _413.x * r1.xyz.x));
    r2 = _425;
    float4 _440 = r0;
    _440.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _440;
    float4 _445 = r0;
    _445.w = rsqrt(r0.w);
    r0 = _445;
    float3 _451 = r0.www * r2.xyz;
    r1 = float4(_451.x, _451.y, _451.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _470 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _483 = r3;
    _483.x = mad(_470.z, r2.xyz.z, mad(_470.y, r2.xyz.y, _470.x * r2.xyz.x));
    r3 = _483;
    float3 _492 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _504 = r3;
    _504.y = mad(_492.z, r2.xyz.z, mad(_492.y, r2.xyz.y, _492.x * r2.xyz.x));
    r3 = _504;
    float3 _513 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _525 = r3;
    _525.z = mad(_513.z, r2.xyz.z, mad(_513.y, r2.xyz.y, _513.x * r2.xyz.x));
    r3 = _525;
    float4 _540 = r0;
    _540.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _540;
    float4 _545 = r0;
    _545.w = rsqrt(r0.w);
    r0 = _545;
    float3 _551 = r0.www * r3.xyz;
    r2 = float4(_551.x, _551.y, _551.z, r2.w);
    float3 _558 = r1.zxy * r2.yzx;
    r3 = float4(_558.x, _558.y, _558.z, r3.w);
    float3 _569 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_569.x, _569.y, _569.z, r3.w);
    float3 _576 = r2.www * r3.xyz;
    r3 = float4(_576.x, _576.y, _576.z, r3.w);
    float3 _586 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _598 = o2;
    _598.y = mad(_586.z, r3.xyz.z, mad(_586.y, r3.xyz.y, _586.x * r3.xyz.x));
    o2 = _598;
    float3 _607 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _619 = o2;
    _619.z = mad(_607.z, r1.xyz.z, mad(_607.y, r1.xyz.y, _607.x * r1.xyz.x));
    o2 = _619;
    float3 _628 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _640 = o2;
    _640.x = mad(_628.z, r2.xyz.z, mad(_628.y, r2.xyz.y, _628.x * r2.xyz.x));
    o2 = _640;
    float4 _655 = r0;
    _655.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _655;
    float4 _660 = r0;
    _660.w = rsqrt(r0.w);
    r0 = _660;
    float3 _666 = r0.www * r0.xyz;
    r0 = float4(_666.x, _666.y, _666.z, r0.w);
    float3 _682 = o3;
    _682.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _682;
    float3 _697 = o3;
    _697.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _697;
    float3 _712 = o3;
    _712.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _712;
    float2 _718 = float2(asint(shader_in[2].xy));
    r0 = float4(_718.x, _718.y, r0.z, r0.w);
    float2 _724 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _724.x, _724.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _733 = asfloat(v1);
    shader_in[1] = float4(_733.x, _733.y, shader_in[1].z, shader_in[1].w);
    float2 _738 = asfloat(v2);
    shader_in[2] = float4(_738.x, _738.y, shader_in[2].z, shader_in[2].w);
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
