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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static int2 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float2 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float3 o2;
static float2 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

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
    float3 _260 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_260.x, _260.y, _260.z, r0.w);
    float3 _274 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_274.x, _274.y, _274.z, r1.w);
    float3 _284 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _297 = r2;
    _297.x = mad(_284.z, r1.xyz.z, mad(_284.y, r1.xyz.y, _284.x * r1.xyz.x));
    r2 = _297;
    float3 _306 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _318 = r2;
    _318.y = mad(_306.z, r1.xyz.z, mad(_306.y, r1.xyz.y, _306.x * r1.xyz.x));
    r2 = _318;
    float3 _327 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _339 = r2;
    _339.z = mad(_327.z, r1.xyz.z, mad(_327.y, r1.xyz.y, _327.x * r1.xyz.x));
    r2 = _339;
    float4 _354 = r0;
    _354.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _354;
    float4 _359 = r0;
    _359.w = rsqrt(r0.w);
    r0 = _359;
    float3 _365 = r0.www * r2.xyz;
    r1 = float4(_365.x, _365.y, _365.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _384 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _397 = r3;
    _397.x = mad(_384.z, r2.xyz.z, mad(_384.y, r2.xyz.y, _384.x * r2.xyz.x));
    r3 = _397;
    float3 _406 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _418 = r3;
    _418.y = mad(_406.z, r2.xyz.z, mad(_406.y, r2.xyz.y, _406.x * r2.xyz.x));
    r3 = _418;
    float3 _427 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _439 = r3;
    _439.z = mad(_427.z, r2.xyz.z, mad(_427.y, r2.xyz.y, _427.x * r2.xyz.x));
    r3 = _439;
    float4 _454 = r0;
    _454.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _454;
    float4 _459 = r0;
    _459.w = rsqrt(r0.w);
    r0 = _459;
    float3 _465 = r0.www * r3.xyz;
    r2 = float4(_465.x, _465.y, _465.z, r2.w);
    float3 _472 = r1.zxy * r2.yzx;
    r3 = float4(_472.x, _472.y, _472.z, r3.w);
    float3 _483 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_483.x, _483.y, _483.z, r3.w);
    float3 _490 = r2.www * r3.xyz;
    r3 = float4(_490.x, _490.y, _490.z, r3.w);
    float3 _500 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _512 = o1;
    _512.y = mad(_500.z, r3.xyz.z, mad(_500.y, r3.xyz.y, _500.x * r3.xyz.x));
    o1 = _512;
    float3 _521 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _533 = o1;
    _533.z = mad(_521.z, r1.xyz.z, mad(_521.y, r1.xyz.y, _521.x * r1.xyz.x));
    o1 = _533;
    float3 _542 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _554 = o1;
    _554.x = mad(_542.z, r2.xyz.z, mad(_542.y, r2.xyz.y, _542.x * r2.xyz.x));
    o1 = _554;
    float4 _569 = r0;
    _569.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _569;
    float4 _574 = r0;
    _574.w = rsqrt(r0.w);
    r0 = _574;
    float3 _580 = r0.www * r0.xyz;
    r0 = float4(_580.x, _580.y, _580.z, r0.w);
    float3 _596 = o2;
    _596.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _596;
    float3 _611 = o2;
    _611.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _611;
    float3 _626 = o2;
    _626.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o2 = _626;
    float2 _633 = float2(asint(shader_in[5].xy));
    r0 = float4(_633.x, _633.y, r0.z, r0.w);
    o3 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float2 _647 = float2(asint(shader_in[1].xy));
    r0 = float4(_647.x, _647.y, r0.z, r0.w);
    float2 _653 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_653.x, _653.y, o4.z, o4.w);
    float2 _661 = float2(asint(shader_in[4].xy));
    r0 = float4(_661.x, _661.y, r0.z, r0.w);
    float2 _667 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _667.x, _667.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _676 = asfloat(v1);
    shader_in[1] = float4(_676.x, _676.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _687 = asfloat(v4);
    shader_in[4] = float4(_687.x, _687.y, shader_in[4].z, shader_in[4].w);
    float2 _692 = asfloat(v5);
    shader_in[5] = float4(_692.x, _692.y, shader_in[5].z, shader_in[5].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
