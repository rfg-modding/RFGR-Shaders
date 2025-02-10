cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _77 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _91 = r0;
    _91.x = mad(_77.w, r1.w, mad(_77.z, r1.z, mad(_77.y, r1.y, _77.x * r1.x)));
    r0 = _91;
    float4 _103 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _117 = r0;
    _117.y = mad(_103.w, r1.w, mad(_103.z, r1.z, mad(_103.y, r1.y, _103.x * r1.x)));
    r0 = _117;
    float4 _129 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _143 = r0;
    _143.z = mad(_129.w, r1.w, mad(_129.z, r1.z, mad(_129.y, r1.y, _129.x * r1.x)));
    r0 = _143;
    float4 _154 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _168 = o0;
    _168.x = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    o0 = _168;
    float4 _179 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _193 = o0;
    _193.y = mad(_179.w, r0.w, mad(_179.z, r0.z, mad(_179.y, r0.y, _179.x * r0.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _218 = o0;
    _218.z = mad(_204.w, r0.w, mad(_204.z, r0.z, mad(_204.y, r0.y, _204.x * r0.x)));
    o0 = _218;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r0.w, mad(_230.z, r0.z, mad(_230.y, r0.y, _230.x * r0.x)));
    o0 = _244;
    float2 _250 = float2(asint(shader_in[1].xy));
    r1 = float4(_250.x, _250.y, r1.z, r1.w);
    float2 _261 = r1.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r1 = float4(_261.x, _261.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _283 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_283.x, _283.y, _283.z, r1.w);
    float3 _297 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_297.x, _297.y, _297.z, r0.w);
    float4 _307 = r0;
    _307.w = r1.y * cb0_m[13].x;
    r0 = _307;
    float4 _314 = r1;
    _314.w = r0.w * asfloat(3216550459u);
    r1 = _314;
    float4 _319 = r1;
    _319.w = exp2(r1.w);
    r1 = _319;
    float4 _326 = r1;
    _326.w = (-r1.w) + asfloat(1065353216u);
    r1 = _326;
    float4 _333 = r0;
    _333.w = r1.w / r0.w;
    r0 = _333;
    float4 _345 = r1;
    _345.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _345;
    float4 _360 = r1;
    _360.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _360;
    float4 _365 = r1;
    _365.x = sqrt(r1.x);
    r1 = _365;
    float4 _373 = r1;
    _373.x = r1.x * cb0_m[13].y;
    r1 = _373;
    float4 _383 = r0;
    _383.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _383;
    float4 _395 = r0;
    _395.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _395;
    float4 _401 = r0;
    _401.w = exp2(-r0.w);
    r0 = _401;
    float4 _407 = r0;
    _407.w = min(r0.w, asfloat(1065353216u));
    r0 = _407;
    float4 _414 = o2;
    _414.w = (-r0.w) + asfloat(1065353216u);
    o2 = _414;
    float4 _429 = r0;
    _429.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _429;
    float4 _434 = r0;
    _434.w = rsqrt(r0.w);
    r0 = _434;
    float3 _440 = r0.www * r0.xyz;
    o2 = float4(_440.x, _440.y, _440.z, o2.w);
    float3 _454 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_454.x, _454.y, _454.z, r0.w);
    float3 _464 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _476 = r1;
    _476.x = mad(_464.z, r0.xyz.z, mad(_464.y, r0.xyz.y, _464.x * r0.xyz.x));
    r1 = _476;
    float3 _485 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _497 = r1;
    _497.z = mad(_485.z, r0.xyz.z, mad(_485.y, r0.xyz.y, _485.x * r0.xyz.x));
    r1 = _497;
    float3 _506 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _518 = r1;
    _518.y = mad(_506.z, r0.xyz.z, mad(_506.y, r0.xyz.y, _506.x * r0.xyz.x));
    r1 = _518;
    float4 _533 = r0;
    _533.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _533;
    float4 _538 = r0;
    _538.x = rsqrt(r0.x);
    r0 = _538;
    float4 _545 = r0;
    _545.x = r0.x * r1.y;
    r0 = _545;
    float4 _557 = o3;
    _557.w = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o3 = _557;
    float3 _566 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o3 = float4(_566.x, _566.y, _566.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _575 = asfloat(v1);
    shader_in[1] = float4(_575.x, _575.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
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
    v3 = stage_input.v3;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
