cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float4 o1;
static float3 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _40 = r0;
    _40.w = asfloat(1065353216u);
    r0 = _40;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _50 = r1;
    _50.w = asfloat(1065353216u);
    r1 = _50;
    float4 _68 = r0;
    _68.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _68;
    float4 _86 = r0;
    _86.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _86;
    float4 _104 = r0;
    _104.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _104;
    float4 _121 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _135 = o0;
    _135.x = mad(_121.w, r0.w, mad(_121.z, r0.z, mad(_121.y, r0.y, _121.x * r0.x)));
    o0 = _135;
    float4 _147 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _161 = o0;
    _161.y = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    o0 = _161;
    float4 _173 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _187 = o0;
    _187.z = mad(_173.w, r0.w, mad(_173.z, r0.z, mad(_173.y, r0.y, _173.x * r0.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _212 = o0;
    _212.w = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float3 _226 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_226.x, _226.y, _226.z, r0.w);
    o1 = shader_in[6].zyxw;
    float4 _240 = r0;
    _240.w = r0.y * cb0_m[13].x;
    r0 = _240;
    float4 _247 = r1;
    _247.x = r0.w * asfloat(3216550459u);
    r1 = _247;
    float4 _252 = r1;
    _252.x = exp2(r1.x);
    r1 = _252;
    float4 _259 = r1;
    _259.x = (-r1.x) + asfloat(1065353216u);
    r1 = _259;
    float4 _266 = r0;
    _266.w = r1.x / r0.w;
    r0 = _266;
    float4 _278 = r1;
    _278.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _278;
    float4 _293 = r0;
    _293.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _293;
    float4 _298 = r0;
    _298.x = sqrt(r0.x);
    r0 = _298;
    float4 _306 = r0;
    _306.x = r0.x * cb0_m[13].y;
    r0 = _306;
    float4 _316 = r0;
    _316.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _316;
    float4 _328 = r0;
    _328.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _328;
    float4 _334 = r0;
    _334.x = exp2(-r0.x);
    r0 = _334;
    float4 _340 = r0;
    _340.x = min(r0.x, asfloat(1065353216u));
    r0 = _340;
    float3 _347 = o2;
    _347.z = (-r0.x) + asfloat(1065353216u);
    o2 = _347;
    float2 _354 = float2(asint(shader_in[1].xy));
    r0 = float4(_354.x, _354.y, r0.z, r0.w);
    float2 _363 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(_363.x, _363.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _372 = asfloat(v1);
    shader_in[1] = float4(_372.x, _372.y, shader_in[1].z, shader_in[1].w);
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
