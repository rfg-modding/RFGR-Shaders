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
static float3 v1;
static int2 v2;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float3 o1;
static float2 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(asint(shader_in[0]));
    r1 = r0 * asfloat(uint4(1065353216u, 1048576000u, 1031798784u, 1015021568u));
    r1 = frac(r1);
    float3 _79 = (r0.xyz * asfloat(uint3(1065353216u, 1048576000u, 1031798784u))) + (-r1.xyz);
    r0 = float4(_79.x, _79.y, _79.z, r0.w);
    float3 _90 = (r1.yzw * asfloat(uint3(1149239296u, 1149239296u, 1149239296u))) + r0.xyz;
    r0 = float4(_90.x, _90.y, _90.z, r0.w);
    float3 _98 = r0.xyz + asfloat(uint3(3296722944u, 3296722944u, 3296722944u));
    r1 = float4(_98.x, _98.y, _98.z, r1.w);
    float3 _111 = (r1.xyz * asfloat(uint3(1056931840u, 1056931840u, 1056931840u))) + asfloat(uint3(1132429312u, 0u, 1132429312u));
    r1 = float4(_111.x, _111.y, _111.z, r1.w);
    float3 _116 = asfloat(uint3(1140834304u, 1140834304u, 1140834304u));
    bool3 _121 = bool3(_116.x < r0.xyz.x, _116.y < r0.xyz.y, _116.z < r0.xyz.z);
    float3 _127 = asfloat(uint3(_121.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _121.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _121.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(_127.x, _127.y, _127.z, r2.w);
    float3 _137 = (r0.xyz * asfloat(uint3(1056964608u, 1056964608u, 1056964608u))) + asfloat(uint3(1132429312u, 0u, 1132429312u));
    r0 = float4(_137.x, _137.y, _137.z, r0.w);
    uint3 _142 = asuint(r2.xyz);
    bool3 _147 = bool3(_142.x != uint3(0u, 0u, 0u).x, _142.y != uint3(0u, 0u, 0u).y, _142.z != uint3(0u, 0u, 0u).z);
    float3 _148 = float3(_147.x ? r1.xyz.x : r0.xyz.x, _147.y ? r1.xyz.y : r0.xyz.y, _147.z ? r1.xyz.z : r0.xyz.z);
    r0 = float4(_148.x, _148.y, _148.z, r0.w);
    float4 _152 = r0;
    _152.w = asfloat(1065353216u);
    r0 = _152;
    float4 _166 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _180 = r1;
    _180.x = mad(_166.w, r0.w, mad(_166.z, r0.z, mad(_166.y, r0.y, _166.x * r0.x)));
    r1 = _180;
    float4 _192 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _206 = r1;
    _206.y = mad(_192.w, r0.w, mad(_192.z, r0.z, mad(_192.y, r0.y, _192.x * r0.x)));
    r1 = _206;
    float4 _218 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _232 = r1;
    _232.z = mad(_218.w, r0.w, mad(_218.z, r0.z, mad(_218.y, r0.y, _218.x * r0.x)));
    r1 = _232;
    float4 _235 = r1;
    _235.w = asfloat(1065353216u);
    r1 = _235;
    float4 _246 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _260 = o0;
    _260.x = mad(_246.w, r1.w, mad(_246.z, r1.z, mad(_246.y, r1.y, _246.x * r1.x)));
    o0 = _260;
    float4 _271 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _285 = o0;
    _285.y = mad(_271.w, r1.w, mad(_271.z, r1.z, mad(_271.y, r1.y, _271.x * r1.x)));
    o0 = _285;
    float4 _296 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _310 = o0;
    _310.z = mad(_296.w, r1.w, mad(_296.z, r1.z, mad(_296.y, r1.y, _296.x * r1.x)));
    o0 = _310;
    float4 _322 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _336 = o0;
    _336.w = mad(_322.w, r1.w, mad(_322.z, r1.z, mad(_322.y, r1.y, _322.x * r1.x)));
    o0 = _336;
    float3 _350 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_350.x, _350.y, _350.z, r0.w);
    o1 = shader_in[1].xyz;
    float2 _360 = float2(asint(shader_in[2].xy));
    r1 = float4(_360.x, _360.y, r1.z, r1.w);
    float4 _368 = r0;
    _368.w = asfloat(1056964608u) / cb2_m[0].x;
    r0 = _368;
    o2 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r0.ww;
    float4 _387 = r0;
    _387.w = r0.y * cb0_m[13].x;
    r0 = _387;
    float4 _394 = r1;
    _394.x = r0.w * asfloat(3216550459u);
    r1 = _394;
    float4 _399 = r1;
    _399.x = exp2(r1.x);
    r1 = _399;
    float4 _406 = r1;
    _406.x = (-r1.x) + asfloat(1065353216u);
    r1 = _406;
    float4 _413 = r0;
    _413.w = r1.x / r0.w;
    r0 = _413;
    float4 _423 = r1;
    _423.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _423;
    float4 _438 = r0;
    _438.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _438;
    float4 _443 = r0;
    _443.x = sqrt(r0.x);
    r0 = _443;
    float4 _451 = r0;
    _451.x = r0.x * cb0_m[13].y;
    r0 = _451;
    float4 _461 = r0;
    _461.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _461;
    float4 _473 = r0;
    _473.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _473;
    float4 _479 = r0;
    _479.x = exp2(-r0.x);
    r0 = _479;
    float4 _485 = r0;
    _485.x = min(r0.x, asfloat(1065353216u));
    r0 = _485;
    float4 _492 = o3;
    _492.w = (-r0.x) + asfloat(1065353216u);
    o3 = _492;
    float3 _501 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o3 = float4(_501.x, _501.y, _501.z, o3.w);
}

void vert_main()
{
    shader_in[0] = asfloat(v0);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float2 _513 = asfloat(v2);
    shader_in[2] = float4(_513.x, _513.y, shader_in[2].z, shader_in[2].w);
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
