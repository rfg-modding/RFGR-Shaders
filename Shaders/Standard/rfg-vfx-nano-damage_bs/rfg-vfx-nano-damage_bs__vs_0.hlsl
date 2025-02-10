cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
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
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float o1;
static float4 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _45 = r0;
    _45.w = asfloat(1065353216u);
    r0 = _45;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _55 = r1;
    _55.w = asfloat(1065353216u);
    r1 = _55;
    float4 _73 = r0;
    _73.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _73;
    float4 _91 = r0;
    _91.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _91;
    float4 _109 = r0;
    _109.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _109;
    float4 _125 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _139 = o0;
    _139.x = mad(_125.w, r0.w, mad(_125.z, r0.z, mad(_125.y, r0.y, _125.x * r0.x)));
    o0 = _139;
    float4 _151 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _165 = o0;
    _165.y = mad(_151.w, r0.w, mad(_151.z, r0.z, mad(_151.y, r0.y, _151.x * r0.x)));
    o0 = _165;
    float4 _177 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _191 = o0;
    _191.z = mad(_177.w, r0.w, mad(_177.z, r0.z, mad(_177.y, r0.y, _177.x * r0.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _216 = o0;
    _216.w = mad(_202.w, r0.w, mad(_202.z, r0.z, mad(_202.y, r0.y, _202.x * r0.x)));
    o0 = _216;
    float3 _230 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_230.x, _230.y, _230.z, r1.w);
    float4 _240 = r0;
    _240.w = r1.y * cb0_m[13].x;
    r0 = _240;
    float4 _247 = r1;
    _247.w = r0.w * asfloat(3216550459u);
    r1 = _247;
    float4 _252 = r1;
    _252.w = exp2(r1.w);
    r1 = _252;
    float4 _259 = r1;
    _259.w = (-r1.w) + asfloat(1065353216u);
    r1 = _259;
    float4 _266 = r0;
    _266.w = r1.w / r0.w;
    r0 = _266;
    float4 _278 = r1;
    _278.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _278;
    float4 _293 = r1;
    _293.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _293;
    float4 _298 = r1;
    _298.x = sqrt(r1.x);
    r1 = _298;
    float4 _306 = r1;
    _306.x = r1.x * cb0_m[13].y;
    r1 = _306;
    float4 _316 = r0;
    _316.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _316;
    float4 _328 = r0;
    _328.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _328;
    float4 _334 = r0;
    _334.w = exp2(-r0.w);
    r0 = _334;
    float4 _340 = r0;
    _340.w = min(r0.w, asfloat(1065353216u));
    r0 = _340;
    o1 = (-r0.w) + asfloat(1065353216u);
    float3 _361 = shader_in[6].zyx + (-float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z));
    r1 = float4(_361.x, _361.y, _361.z, r1.w);
    float3 _369 = r0.xyz + (-r1.xyz);
    r0 = float4(_369.x, _369.y, _369.z, r0.w);
    float4 _385 = r0;
    _385.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _385;
    float4 _390 = r0;
    _390.x = sqrt(r0.x);
    r0 = _390;
    float4 _397 = o2;
    _397.w = r0.x * asfloat(1056964608u);
    o2 = _397;
    float2 _404 = float2(asint(shader_in[1].xy));
    r0 = float4(_404.x, _404.y, r0.z, r0.w);
    float2 _415 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_415.x, _415.y, r0.z, r0.w);
    float2 _424 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_424.x, _424.y, o2.z, o2.w);
    float4 _430 = o2;
    _430.z = shader_in[6].w;
    o2 = _430;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _438 = asfloat(v1);
    shader_in[1] = float4(_438.x, _438.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
