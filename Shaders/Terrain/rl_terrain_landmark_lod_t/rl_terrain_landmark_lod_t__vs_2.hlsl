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
static int4 v0;
static int2 v1;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(asint(shader_in[0]));
    r1 = r0 * asfloat(uint4(1065353216u, 1048576000u, 1031798784u, 1015021568u));
    r1 = frac(r1);
    float3 _75 = (r0.xyz * asfloat(uint3(1065353216u, 1048576000u, 1031798784u))) + (-r1.xyz);
    r0 = float4(_75.x, _75.y, _75.z, r0.w);
    float3 _86 = (r1.yzw * asfloat(uint3(1149239296u, 1149239296u, 1149239296u))) + r0.xyz;
    r0 = float4(_86.x, _86.y, _86.z, r0.w);
    float3 _94 = r0.xyz + asfloat(uint3(3296722944u, 3296722944u, 3296722944u));
    r1 = float4(_94.x, _94.y, _94.z, r1.w);
    float3 _107 = (r1.xyz * asfloat(uint3(1056931840u, 1056931840u, 1056931840u))) + asfloat(uint3(1132429312u, 0u, 1132429312u));
    r1 = float4(_107.x, _107.y, _107.z, r1.w);
    float3 _112 = asfloat(uint3(1140834304u, 1140834304u, 1140834304u));
    bool3 _117 = bool3(_112.x < r0.xyz.x, _112.y < r0.xyz.y, _112.z < r0.xyz.z);
    float3 _123 = asfloat(uint3(_117.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _117.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _117.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(_123.x, _123.y, _123.z, r2.w);
    float3 _133 = (r0.xyz * asfloat(uint3(1056964608u, 1056964608u, 1056964608u))) + asfloat(uint3(1132429312u, 0u, 1132429312u));
    r0 = float4(_133.x, _133.y, _133.z, r0.w);
    uint3 _138 = asuint(r2.xyz);
    bool3 _143 = bool3(_138.x != uint3(0u, 0u, 0u).x, _138.y != uint3(0u, 0u, 0u).y, _138.z != uint3(0u, 0u, 0u).z);
    float3 _144 = float3(_143.x ? r1.xyz.x : r0.xyz.x, _143.y ? r1.xyz.y : r0.xyz.y, _143.z ? r1.xyz.z : r0.xyz.z);
    r0 = float4(_144.x, _144.y, _144.z, r0.w);
    float4 _148 = r0;
    _148.w = asfloat(1065353216u);
    r0 = _148;
    float4 _162 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _176 = r1;
    _176.x = mad(_162.w, r0.w, mad(_162.z, r0.z, mad(_162.y, r0.y, _162.x * r0.x)));
    r1 = _176;
    float4 _188 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _202 = r1;
    _202.y = mad(_188.w, r0.w, mad(_188.z, r0.z, mad(_188.y, r0.y, _188.x * r0.x)));
    r1 = _202;
    float4 _214 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _228 = r1;
    _228.z = mad(_214.w, r0.w, mad(_214.z, r0.z, mad(_214.y, r0.y, _214.x * r0.x)));
    r1 = _228;
    float4 _231 = r1;
    _231.w = asfloat(1065353216u);
    r1 = _231;
    float4 _242 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _256 = o0;
    _256.x = mad(_242.w, r1.w, mad(_242.z, r1.z, mad(_242.y, r1.y, _242.x * r1.x)));
    o0 = _256;
    float4 _267 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _281 = o0;
    _281.y = mad(_267.w, r1.w, mad(_267.z, r1.z, mad(_267.y, r1.y, _267.x * r1.x)));
    o0 = _281;
    float4 _292 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _306 = o0;
    _306.z = mad(_292.w, r1.w, mad(_292.z, r1.z, mad(_292.y, r1.y, _292.x * r1.x)));
    o0 = _306;
    float4 _318 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _332 = o0;
    _332.w = mad(_318.w, r1.w, mad(_318.z, r1.z, mad(_318.y, r1.y, _318.x * r1.x)));
    o0 = _332;
    float3 _346 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_346.x, _346.y, _346.z, r0.w);
    float2 _353 = float2(asint(shader_in[1].xy));
    r1 = float4(_353.x, _353.y, r1.z, r1.w);
    float4 _361 = r0;
    _361.w = asfloat(1056964608u) / cb2_m[0].x;
    r0 = _361;
    o1 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r0.ww;
    float4 _380 = r0;
    _380.w = r0.y * cb0_m[13].x;
    r0 = _380;
    float4 _387 = r1;
    _387.x = r0.w * asfloat(3216550459u);
    r1 = _387;
    float4 _392 = r1;
    _392.x = exp2(r1.x);
    r1 = _392;
    float4 _399 = r1;
    _399.x = (-r1.x) + asfloat(1065353216u);
    r1 = _399;
    float4 _406 = r0;
    _406.w = r1.x / r0.w;
    r0 = _406;
    float4 _416 = r1;
    _416.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _416;
    float4 _431 = r0;
    _431.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _431;
    float4 _436 = r0;
    _436.x = sqrt(r0.x);
    r0 = _436;
    float4 _444 = r0;
    _444.x = r0.x * cb0_m[13].y;
    r0 = _444;
    float4 _454 = r0;
    _454.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _454;
    float4 _466 = r0;
    _466.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _466;
    float4 _472 = r0;
    _472.x = exp2(-r0.x);
    r0 = _472;
    float4 _478 = r0;
    _478.x = min(r0.x, asfloat(1065353216u));
    r0 = _478;
    float4 _485 = o2;
    _485.w = (-r0.x) + asfloat(1065353216u);
    o2 = _485;
    float3 _494 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o2 = float4(_494.x, _494.y, _494.z, o2.w);
}

void vert_main()
{
    shader_in[0] = asfloat(v0);
    float2 _502 = asfloat(v1);
    shader_in[1] = float4(_502.x, _502.y, shader_in[1].z, shader_in[1].w);
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
