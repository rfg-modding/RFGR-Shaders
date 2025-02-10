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
    _86.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _86;
    float4 _104 = r0;
    _104.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
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
    o1 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o1.w);
    float3 _230 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_230.x, r0.y, _230.y, _230.z);
    float4 _244 = r0;
    _244.y = asfloat((shader_in[6].w < r0.y) ? 4294967295u : 0u);
    r0 = _244;
    float4 _251 = o1;
    _251.w = asfloat(asuint(r0.y) & 1065353216u);
    o1 = _251;
    float4 _260 = r0;
    _260.y = r0.z * cb0_m[13].x;
    r0 = _260;
    float4 _267 = r1;
    _267.x = r0.y * asfloat(3216550459u);
    r1 = _267;
    float4 _272 = r1;
    _272.x = exp2(r1.x);
    r1 = _272;
    float4 _279 = r1;
    _279.x = (-r1.x) + asfloat(1065353216u);
    r1 = _279;
    float4 _286 = r0;
    _286.y = r1.x / r0.y;
    r0 = _286;
    float4 _296 = r1;
    _296.x = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _296;
    float4 _311 = r0;
    _311.x = mad(r0.xzw.z, r0.xzw.z, mad(r0.xzw.y, r0.xzw.y, r0.xzw.x * r0.xzw.x));
    r0 = _311;
    float4 _316 = r0;
    _316.x = sqrt(r0.x);
    r0 = _316;
    float4 _324 = r0;
    _324.x = r0.x * cb0_m[13].y;
    r0 = _324;
    float4 _334 = r0;
    _334.y = (asuint(r1.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _334;
    float4 _346 = r0;
    _346.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _346;
    float4 _352 = r0;
    _352.x = exp2(-r0.x);
    r0 = _352;
    float4 _358 = r0;
    _358.x = min(r0.x, asfloat(1065353216u));
    r0 = _358;
    float3 _365 = o2;
    _365.z = (-r0.x) + asfloat(1065353216u);
    o2 = _365;
    float2 _372 = float2(asint(shader_in[1].xy));
    r0 = float4(_372.x, _372.y, r0.z, r0.w);
    float2 _381 = r0.xy * asfloat(uint2(989855744u, 989855744u));
    o2 = float3(_381.x, _381.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _390 = asfloat(v1);
    shader_in[1] = float4(_390.x, _390.y, shader_in[1].z, shader_in[1].w);
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
