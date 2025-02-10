cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float2 _51 = float2(asint(shader_in[0].xy));
    r0 = float4(_51.x, _51.y, r0.z, r0.w);
    float4 _60 = r0;
    _60.y = r0.y + asfloat(1191182336u);
    r0 = _60;
    float4 _68 = r1;
    _68.y = r0.x * asfloat(1015021568u);
    r1 = _68;
    float4 _75 = r0;
    _75.x = r0.y * asfloat(998244352u);
    r0 = _75;
    float4 _80 = r1;
    _80.z = trunc(r0.x);
    r1 = _80;
    float4 _91 = r1;
    _91.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _91;
    float4 _95 = r1;
    _95.w = asfloat(1065353216u);
    r1 = _95;
    float4 _112 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _126 = r0;
    _126.y = mad(_112.w, r1.w, mad(_112.z, r1.z, mad(_112.y, r1.y, _112.x * r1.x)));
    r0 = _126;
    float4 _137 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _151 = r0;
    _151.x = mad(_137.w, r1.w, mad(_137.z, r1.z, mad(_137.y, r1.y, _137.x * r1.x)));
    r0 = _151;
    float4 _163 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _177 = r0;
    _177.z = mad(_163.w, r1.w, mad(_163.z, r1.z, mad(_163.y, r1.y, _163.x * r1.x)));
    r0 = _177;
    float4 _180 = r0;
    _180.w = asfloat(1065353216u);
    r0 = _180;
    float4 _191 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _205 = o0;
    _205.x = mad(_191.w, r0.w, mad(_191.z, r0.z, mad(_191.y, r0.y, _191.x * r0.x)));
    o0 = _205;
    float4 _216 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _230 = o0;
    _230.y = mad(_216.w, r0.w, mad(_216.z, r0.z, mad(_216.y, r0.y, _216.x * r0.x)));
    o0 = _230;
    float4 _241 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _255 = o0;
    _255.z = mad(_241.w, r0.w, mad(_241.z, r0.z, mad(_241.y, r0.y, _241.x * r0.x)));
    o0 = _255;
    float4 _267 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _281 = o0;
    _281.w = mad(_267.w, r0.w, mad(_267.z, r0.z, mad(_267.y, r0.y, _267.x * r0.x)));
    o0 = _281;
    float2 _292 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r1 = float4(_292.x, _292.y, r1.z, r1.w);
    float2 _305 = (r1.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r1 = float4(_305.x, _305.y, r1.z, r1.w);
    float2 _318 = r1.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r1 = float4(_318.x, _318.y, r1.z, r1.w);
    o1 = (r1.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o2 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _355 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_355.x, _355.y, _355.z, r0.w);
    float3 _369 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_369.x, _369.y, _369.z, r1.w);
    float3 _379 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _392 = r2;
    _392.x = mad(_379.z, r1.xyz.z, mad(_379.y, r1.xyz.y, _379.x * r1.xyz.x));
    r2 = _392;
    float3 _401 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _413 = r2;
    _413.y = mad(_401.z, r1.xyz.z, mad(_401.y, r1.xyz.y, _401.x * r1.xyz.x));
    r2 = _413;
    float3 _422 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _434 = r2;
    _434.z = mad(_422.z, r1.xyz.z, mad(_422.y, r1.xyz.y, _422.x * r1.xyz.x));
    r2 = _434;
    float4 _449 = r0;
    _449.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _449;
    float4 _454 = r0;
    _454.w = rsqrt(r0.w);
    r0 = _454;
    o3 = r0.www * r2.xyz;
    float4 _468 = r0;
    _468.w = r0.y * cb0_m[13].x;
    r0 = _468;
    float4 _475 = r1;
    _475.x = r0.w * asfloat(3216550459u);
    r1 = _475;
    float4 _480 = r1;
    _480.x = exp2(r1.x);
    r1 = _480;
    float4 _487 = r1;
    _487.x = (-r1.x) + asfloat(1065353216u);
    r1 = _487;
    float4 _494 = r0;
    _494.w = r1.x / r0.w;
    r0 = _494;
    float4 _506 = r1;
    _506.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _506;
    float4 _521 = r0;
    _521.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _521;
    float4 _526 = r0;
    _526.x = sqrt(r0.x);
    r0 = _526;
    float4 _534 = r0;
    _534.x = r0.x * cb0_m[13].y;
    r0 = _534;
    float4 _544 = r0;
    _544.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _544;
    float4 _556 = r0;
    _556.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _556;
    float4 _562 = r0;
    _562.x = exp2(-r0.x);
    r0 = _562;
    float4 _568 = r0;
    _568.x = min(r0.x, asfloat(1065353216u));
    r0 = _568;
    float4 _575 = o4;
    _575.w = (-r0.x) + asfloat(1065353216u);
    o4 = _575;
    float3 _584 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o4 = float4(_584.x, _584.y, _584.z, o4.w);
}

void vert_main()
{
    float2 _589 = asfloat(v0);
    shader_in[0] = float4(_589.x, _589.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
