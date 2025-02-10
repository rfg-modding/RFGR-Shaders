cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _46 = r0;
    _46.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _46;
    float3 _59 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_59.x, _59.y, _59.z, r0.w);
    float4 _64 = r0;
    _64.w = asfloat(1065353216u);
    r0 = _64;
    float4 _80 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _95 = r1;
    _95.x = mad(_80.w, r0.w, mad(_80.z, r0.z, mad(_80.y, r0.y, _80.x * r0.x)));
    r1 = _95;
    float4 _107 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _121 = r1;
    _121.y = mad(_107.w, r0.w, mad(_107.z, r0.z, mad(_107.y, r0.y, _107.x * r0.x)));
    r1 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r1;
    _147.z = mad(_133.w, r0.w, mad(_133.z, r0.z, mad(_133.y, r0.y, _133.x * r0.x)));
    r1 = _147;
    float4 _150 = r1;
    _150.w = asfloat(1065353216u);
    r1 = _150;
    float4 _161 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _175 = o0;
    _175.x = mad(_161.w, r1.w, mad(_161.z, r1.z, mad(_161.y, r1.y, _161.x * r1.x)));
    o0 = _175;
    float4 _186 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _200 = o0;
    _200.y = mad(_186.w, r1.w, mad(_186.z, r1.z, mad(_186.y, r1.y, _186.x * r1.x)));
    o0 = _200;
    float4 _211 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _225 = o0;
    _225.z = mad(_211.w, r1.w, mad(_211.z, r1.z, mad(_211.y, r1.y, _211.x * r1.x)));
    o0 = _225;
    float4 _236 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _250 = o0;
    _250.w = mad(_236.w, r1.w, mad(_236.z, r1.z, mad(_236.y, r1.y, _236.x * r1.x)));
    o0 = _250;
    float3 _264 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_264.x, _264.y, _264.z, r0.w);
    float4 _274 = r0;
    _274.w = r0.y * cb0_m[13].x;
    r0 = _274;
    float4 _281 = r1;
    _281.x = r0.w * asfloat(3216550459u);
    r1 = _281;
    float4 _286 = r1;
    _286.x = exp2(r1.x);
    r1 = _286;
    float4 _293 = r1;
    _293.x = (-r1.x) + asfloat(1065353216u);
    r1 = _293;
    float4 _300 = r0;
    _300.w = r1.x / r0.w;
    r0 = _300;
    float4 _312 = r1;
    _312.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _312;
    float4 _327 = r0;
    _327.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _327;
    float4 _332 = r0;
    _332.x = sqrt(r0.x);
    r0 = _332;
    float4 _340 = r0;
    _340.x = r0.x * cb0_m[13].y;
    r0 = _340;
    float4 _350 = r0;
    _350.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _350;
    float4 _362 = r0;
    _362.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _362;
    float4 _368 = r0;
    _368.x = exp2(-r0.x);
    r0 = _368;
    float4 _374 = r0;
    _374.x = min(r0.x, asfloat(1065353216u));
    r0 = _374;
    float3 _381 = o1;
    _381.z = (-r0.x) + asfloat(1065353216u);
    o1 = _381;
    float2 _388 = float2(asint(shader_in[1].xy));
    r0 = float4(_388.x, _388.y, r0.z, r0.w);
    float2 _397 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o1 = float3(_397.x, _397.y, o1.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _406 = asfloat(v1);
    shader_in[1] = float4(_406.x, _406.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
