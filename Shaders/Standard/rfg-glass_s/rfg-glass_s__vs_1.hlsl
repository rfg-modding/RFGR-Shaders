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
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float3 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _61 = r1;
    _61.w = asfloat(1065353216u);
    r1 = _61;
    float4 _76 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _90 = r0;
    _90.x = mad(_76.w, r1.w, mad(_76.z, r1.z, mad(_76.y, r1.y, _76.x * r1.x)));
    r0 = _90;
    float4 _102 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _116 = r0;
    _116.y = mad(_102.w, r1.w, mad(_102.z, r1.z, mad(_102.y, r1.y, _102.x * r1.x)));
    r0 = _116;
    float4 _128 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _142 = r0;
    _142.z = mad(_128.w, r1.w, mad(_128.z, r1.z, mad(_128.y, r1.y, _128.x * r1.x)));
    r0 = _142;
    float4 _153 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _167 = o0;
    _167.x = mad(_153.w, r0.w, mad(_153.z, r0.z, mad(_153.y, r0.y, _153.x * r0.x)));
    o0 = _167;
    float4 _178 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _192 = o0;
    _192.y = mad(_178.w, r0.w, mad(_178.z, r0.z, mad(_178.y, r0.y, _178.x * r0.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _217 = o0;
    _217.z = mad(_203.w, r0.w, mad(_203.z, r0.z, mad(_203.y, r0.y, _203.x * r0.x)));
    o0 = _217;
    float4 _229 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _243 = o0;
    _243.w = mad(_229.w, r0.w, mad(_229.z, r0.z, mad(_229.y, r0.y, _229.x * r0.x)));
    o0 = _243;
    float2 _249 = float2(asint(shader_in[1].xy));
    r1 = float4(_249.x, _249.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _283 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_283.x, _283.y, _283.z, r1.w);
    float3 _297 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_297.x, _297.y, _297.z, r0.w);
    float4 _313 = r0;
    _313.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _313;
    float4 _318 = r0;
    _318.w = rsqrt(r0.w);
    r0 = _318;
    o3 = r0.www * r1.xyz;
    float3 _336 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_336.x, _336.y, _336.z, r1.w);
    float3 _346 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _359 = r2;
    _359.x = mad(_346.z, r1.xyz.z, mad(_346.y, r1.xyz.y, _346.x * r1.xyz.x));
    r2 = _359;
    float3 _368 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _380 = r2;
    _380.y = mad(_368.z, r1.xyz.z, mad(_368.y, r1.xyz.y, _368.x * r1.xyz.x));
    r2 = _380;
    float3 _389 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _401 = r2;
    _401.z = mad(_389.z, r1.xyz.z, mad(_389.y, r1.xyz.y, _389.x * r1.xyz.x));
    r2 = _401;
    float4 _416 = r0;
    _416.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _416;
    float4 _421 = r0;
    _421.w = rsqrt(r0.w);
    r0 = _421;
    o4 = r0.www * r2.xyz;
    float4 _435 = r0;
    _435.w = r0.y * cb0_m[13].x;
    r0 = _435;
    float4 _442 = r1;
    _442.x = r0.w * asfloat(3216550459u);
    r1 = _442;
    float4 _447 = r1;
    _447.x = exp2(r1.x);
    r1 = _447;
    float4 _454 = r1;
    _454.x = (-r1.x) + asfloat(1065353216u);
    r1 = _454;
    float4 _461 = r0;
    _461.w = r1.x / r0.w;
    r0 = _461;
    float4 _473 = r1;
    _473.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _473;
    float4 _488 = r0;
    _488.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _488;
    float4 _493 = r0;
    _493.x = sqrt(r0.x);
    r0 = _493;
    float4 _501 = r0;
    _501.x = r0.x * cb0_m[13].y;
    r0 = _501;
    float4 _511 = r0;
    _511.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _511;
    float4 _523 = r0;
    _523.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _523;
    float4 _529 = r0;
    _529.x = exp2(-r0.x);
    r0 = _529;
    float4 _535 = r0;
    _535.x = min(r0.x, asfloat(1065353216u));
    r0 = _535;
    float4 _542 = o5;
    _542.w = (-r0.x) + asfloat(1065353216u);
    o5 = _542;
    float3 _551 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o5 = float4(_551.x, _551.y, _551.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _560 = asfloat(v1);
    shader_in[1] = float4(_560.x, _560.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
