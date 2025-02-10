cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v4;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v4 : TEXCOORD4;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _42 = r0;
    _42.w = asfloat(1065353216u);
    r0 = _42;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _52 = r1;
    _52.w = asfloat(1065353216u);
    r1 = _52;
    float4 _70 = r0;
    _70.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _70;
    float4 _88 = r0;
    _88.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _88;
    float4 _106 = r0;
    _106.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _106;
    float4 _123 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _137 = o0;
    _137.x = mad(_123.w, r0.w, mad(_123.z, r0.z, mad(_123.y, r0.y, _123.x * r0.x)));
    o0 = _137;
    float4 _149 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _163 = o0;
    _163.y = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    o0 = _163;
    float4 _175 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _189 = o0;
    _189.z = mad(_175.w, r0.w, mad(_175.z, r0.z, mad(_175.y, r0.y, _175.x * r0.x)));
    o0 = _189;
    float4 _201 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _215 = o0;
    _215.w = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    o0 = _215;
    float2 _221 = float2(asint(shader_in[1].xy));
    r1 = float4(_221.x, _221.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _243 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_243.x, _243.y, _243.z, r1.w);
    float4 _253 = r1;
    _253.w = r1.y * cb0_m[13].x;
    r1 = _253;
    float4 _261 = r2;
    _261.x = r1.w * asfloat(3216550459u);
    r2 = _261;
    float4 _266 = r2;
    _266.x = exp2(r2.x);
    r2 = _266;
    float4 _273 = r2;
    _273.x = (-r2.x) + asfloat(1065353216u);
    r2 = _273;
    float4 _280 = r1;
    _280.w = r2.x / r1.w;
    r1 = _280;
    float4 _292 = r2;
    _292.x = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r2 = _292;
    float4 _307 = r1;
    _307.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _307;
    float4 _312 = r1;
    _312.x = sqrt(r1.x);
    r1 = _312;
    float4 _320 = r1;
    _320.x = r1.x * cb0_m[13].y;
    r1 = _320;
    float4 _330 = r1;
    _330.y = (asuint(r2.x) != 0u) ? r1.w : asfloat(1065353216u);
    r1 = _330;
    float4 _342 = r1;
    _342.x = (r1.y * r1.x) + (-cb0_m[13].w);
    r1 = _342;
    float4 _348 = r1;
    _348.x = exp2(-r1.x);
    r1 = _348;
    float4 _354 = r1;
    _354.x = min(r1.x, asfloat(1065353216u));
    r1 = _354;
    float4 _361 = r1;
    _361.x = (-r1.x) + asfloat(1065353216u);
    r1 = _361;
    float4 _365 = o2;
    _365.w = r1.x;
    o2 = _365;
    float4 _369 = o3;
    _369.w = r1.x;
    o3 = _369;
    float3 _383 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_383.x, _383.y, _383.z, r1.w);
    float4 _400 = r2;
    _400.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _400;
    float4 _416 = r2;
    _416.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _416;
    float4 _432 = r2;
    _432.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _432;
    float4 _447 = r1;
    _447.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _447;
    float4 _452 = r1;
    _452.x = rsqrt(r1.x);
    r1 = _452;
    float3 _458 = r1.xxx * r2.xyz;
    o2 = float4(_458.x, _458.y, _458.z, o2.w);
    float4 _462 = r0;
    _462.w = asfloat(0u);
    r0 = _462;
    r0 = (-r0) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _491 = r0;
    _491.w = mad(r0.w, r0.w, mad(r0.z, r0.z, mad(r0.y, r0.y, r0.x * r0.x)));
    r0 = _491;
    float4 _496 = r0;
    _496.w = rsqrt(r0.w);
    r0 = _496;
    float3 _502 = r0.www * r0.xyz;
    o3 = float4(_502.x, _502.y, _502.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _511 = asfloat(v1);
    shader_in[1] = float4(_511.x, _511.y, shader_in[1].z, shader_in[1].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
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
    v4 = stage_input.v4;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
