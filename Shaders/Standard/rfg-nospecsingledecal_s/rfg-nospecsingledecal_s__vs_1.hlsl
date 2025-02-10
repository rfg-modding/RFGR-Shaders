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
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _79 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r0;
    _93.x = mad(_79.w, r1.w, mad(_79.z, r1.z, mad(_79.y, r1.y, _79.x * r1.x)));
    r0 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r0;
    _119.y = mad(_105.w, r1.w, mad(_105.z, r1.z, mad(_105.y, r1.y, _105.x * r1.x)));
    r0 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r0;
    _145.z = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r0 = _145;
    float4 _156 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _170 = o0;
    _170.x = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _195 = o0;
    _195.y = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _220 = o0;
    _220.z = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float4 _232 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _246 = o0;
    _246.w = mad(_232.w, r0.w, mad(_232.z, r0.z, mad(_232.y, r0.y, _232.x * r0.x)));
    o0 = _246;
    float3 _259 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_259.x, _259.y, _259.z, r1.w);
    float3 _269 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _282 = r2;
    _282.x = mad(_269.z, r1.xyz.z, mad(_269.y, r1.xyz.y, _269.x * r1.xyz.x));
    r2 = _282;
    float3 _291 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _303 = r2;
    _303.y = mad(_291.z, r1.xyz.z, mad(_291.y, r1.xyz.y, _291.x * r1.xyz.x));
    r2 = _303;
    float3 _312 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _324 = r2;
    _324.z = mad(_312.z, r1.xyz.z, mad(_312.y, r1.xyz.y, _312.x * r1.xyz.x));
    r2 = _324;
    float4 _339 = r0;
    _339.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _339;
    float4 _344 = r0;
    _344.w = rsqrt(r0.w);
    r0 = _344;
    float3 _350 = r0.www * r2.xyz;
    r1 = float4(_350.x, _350.y, _350.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _370 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _383 = r3;
    _383.x = mad(_370.z, r2.xyz.z, mad(_370.y, r2.xyz.y, _370.x * r2.xyz.x));
    r3 = _383;
    float3 _392 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _404 = r3;
    _404.y = mad(_392.z, r2.xyz.z, mad(_392.y, r2.xyz.y, _392.x * r2.xyz.x));
    r3 = _404;
    float3 _413 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _425 = r3;
    _425.z = mad(_413.z, r2.xyz.z, mad(_413.y, r2.xyz.y, _413.x * r2.xyz.x));
    r3 = _425;
    float4 _440 = r0;
    _440.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _440;
    float4 _445 = r0;
    _445.w = rsqrt(r0.w);
    r0 = _445;
    float3 _451 = r0.www * r3.xyz;
    r2 = float4(_451.x, _451.y, _451.z, r2.w);
    float3 _458 = r1.zxy * r2.yzx;
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float3 _469 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_469.x, _469.y, _469.z, r3.w);
    float3 _476 = r2.www * r3.xyz;
    r3 = float4(_476.x, _476.y, _476.z, r3.w);
    float3 _490 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_490.x, _490.y, _490.z, r4.w);
    float3 _506 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_506.x, _506.y, _506.z, r0.w);
    float3 _522 = o1;
    _522.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _522;
    float3 _531 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _543 = o2;
    _543.y = mad(_531.z, r3.xyz.z, mad(_531.y, r3.xyz.y, _531.x * r3.xyz.x));
    o2 = _543;
    float3 _558 = o1;
    _558.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _558;
    float3 _567 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _579 = o2;
    _579.z = mad(_567.z, r1.xyz.z, mad(_567.y, r1.xyz.y, _567.x * r1.xyz.x));
    o2 = _579;
    float3 _594 = o1;
    _594.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _594;
    float3 _603 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _615 = o2;
    _615.x = mad(_603.z, r2.xyz.z, mad(_603.y, r2.xyz.y, _603.x * r2.xyz.x));
    o2 = _615;
    float4 _624 = r0;
    _624.w = r0.y * cb0_m[13].x;
    r0 = _624;
    float4 _631 = r1;
    _631.x = r0.w * asfloat(3216550459u);
    r1 = _631;
    float4 _636 = r1;
    _636.x = exp2(r1.x);
    r1 = _636;
    float4 _643 = r1;
    _643.x = (-r1.x) + asfloat(1065353216u);
    r1 = _643;
    float4 _650 = r0;
    _650.w = r1.x / r0.w;
    r0 = _650;
    float4 _662 = r1;
    _662.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _662;
    float4 _677 = r0;
    _677.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _677;
    float4 _682 = r0;
    _682.x = sqrt(r0.x);
    r0 = _682;
    float4 _690 = r0;
    _690.x = r0.x * cb0_m[13].y;
    r0 = _690;
    float4 _700 = r0;
    _700.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _700;
    float4 _712 = r0;
    _712.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _712;
    float4 _718 = r0;
    _718.x = exp2(-r0.x);
    r0 = _718;
    float4 _724 = r0;
    _724.x = min(r0.x, asfloat(1065353216u));
    r0 = _724;
    float4 _731 = o2;
    _731.w = (-r0.x) + asfloat(1065353216u);
    o2 = _731;
    float2 _738 = float2(asint(shader_in[2].xy));
    r0 = float4(_738.x, _738.y, r0.z, r0.w);
    float2 _749 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_749.x, _749.y, r0.z, r0.w);
    float2 _758 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _758.x, _758.y);
    float2 _765 = float2(asint(shader_in[1].xy));
    r0 = float4(_765.x, _765.y, r0.z, r0.w);
    float2 _771 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_771.x, _771.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _780 = asfloat(v1);
    shader_in[1] = float4(_780.x, _780.y, shader_in[1].z, shader_in[1].w);
    float2 _785 = asfloat(v2);
    shader_in[2] = float4(_785.x, _785.y, shader_in[2].z, shader_in[2].w);
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
