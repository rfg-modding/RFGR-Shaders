cbuffer cb0_t : register(b160)
{
    float4 cb0_m[16] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[15] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float3 o4;
static float3 o5;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _44 = r0;
    _44.w = asfloat(1065353216u);
    r0 = _44;
    float3 _64 = shader_in[0].xyz * float3(cb2_m[12].y, cb2_m[12].z, cb2_m[12].w);
    r1 = float4(_64.x, _64.y, _64.z, r1.w);
    float4 _69 = r1;
    _69.w = asfloat(1065353216u);
    r1 = _69;
    float4 _81 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _95 = r0;
    _95.x = mad(_81.w, r1.w, mad(_81.z, r1.z, mad(_81.y, r1.y, _81.x * r1.x)));
    r0 = _95;
    float4 _107 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _121 = r0;
    _121.y = mad(_107.w, r1.w, mad(_107.z, r1.z, mad(_107.y, r1.y, _107.x * r1.x)));
    r0 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r0;
    _147.z = mad(_133.w, r1.w, mad(_133.z, r1.z, mad(_133.y, r1.y, _133.x * r1.x)));
    r0 = _147;
    float4 _158 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _172 = r1;
    _172.x = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    r1 = _172;
    float4 _181 = r1;
    _181.z = r1.x * cb2_m[14].y;
    r1 = _181;
    float4 _192 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _206 = r1;
    _206.x = mad(_192.w, r0.w, mad(_192.z, r0.z, mad(_192.y, r0.y, _192.x * r0.x)));
    r1 = _206;
    float4 _217 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _231 = r1;
    _231.y = mad(_217.w, r0.w, mad(_217.z, r0.z, mad(_217.y, r0.y, _217.x * r0.x)));
    r1 = _231;
    float4 _243 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _257 = r1;
    _257.w = mad(_243.w, r0.w, mad(_243.z, r0.z, mad(_243.y, r0.y, _243.x * r0.x)));
    r1 = _257;
    float3 _271 = r0.xyz + (-float3(cb2_m[9].y, cb2_m[9].z, cb2_m[9].w));
    r0 = float4(_271.x, _271.y, _271.z, r0.w);
    o0 = r1;
    o3 = float4(o3.x, o3.y, r1.zw.x, r1.zw.y);
    float2 _284 = r1.ww + r1.xy;
    r1 = float4(_284.x, _284.y, r1.z, r1.w);
    o1 = r0.xyz;
    float3 _297 = float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    float3 _309 = o2;
    _309.x = mad(_297.z, r0.xyz.z, mad(_297.y, r0.xyz.y, _297.x * r0.xyz.x));
    o2 = _309;
    float3 _319 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float3 _331 = o2;
    _331.y = mad(_319.z, r0.xyz.z, mad(_319.y, r0.xyz.y, _319.x * r0.xyz.x));
    o2 = _331;
    float3 _341 = float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    float3 _353 = o2;
    _353.z = mad(_341.z, r0.xyz.z, mad(_341.y, r0.xyz.y, _341.x * r0.xyz.x));
    o2 = _353;
    float2 _366 = asfloat(uint2(1056964608u, 1056964608u)) / float2(cb0_m[15].x, cb0_m[15].y);
    r0 = float4(_366.x, _366.y, r0.z, r0.w);
    float2 _373 = r1.ww * r0.xy;
    r0 = float4(_373.x, _373.y, r0.z, r0.w);
    float2 _384 = (r1.xy * asfloat(uint2(1056964608u, 3204448256u))) + r0.xy;
    o3 = float4(_384.x, _384.y, o3.z, o3.w);
    o4 = (-float3(cb2_m[8].y, cb2_m[8].z, cb2_m[8].w)) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    o5 = (-float3(cb2_m[8].y, cb2_m[8].z, cb2_m[8].w)) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
