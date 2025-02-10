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
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _39 = r0;
    _39.w = asfloat(1065353216u);
    r0 = _39;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _49 = r1;
    _49.w = asfloat(1065353216u);
    r1 = _49;
    float4 _65 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _79 = r0;
    _79.x = mad(_65.w, r1.w, mad(_65.z, r1.z, mad(_65.y, r1.y, _65.x * r1.x)));
    r0 = _79;
    float4 _91 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _105 = r0;
    _105.y = mad(_91.w, r1.w, mad(_91.z, r1.z, mad(_91.y, r1.y, _91.x * r1.x)));
    r0 = _105;
    float4 _117 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _131 = r0;
    _131.z = mad(_117.w, r1.w, mad(_117.z, r1.z, mad(_117.y, r1.y, _117.x * r1.x)));
    r0 = _131;
    float4 _142 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _156 = o0;
    _156.x = mad(_142.w, r0.w, mad(_142.z, r0.z, mad(_142.y, r0.y, _142.x * r0.x)));
    o0 = _156;
    float4 _167 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _181 = o0;
    _181.y = mad(_167.w, r0.w, mad(_167.z, r0.z, mad(_167.y, r0.y, _167.x * r0.x)));
    o0 = _181;
    float4 _192 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _206 = o0;
    _206.z = mad(_192.w, r0.w, mad(_192.z, r0.z, mad(_192.y, r0.y, _192.x * r0.x)));
    o0 = _206;
    float4 _218 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _232 = o0;
    _232.w = mad(_218.w, r0.w, mad(_218.z, r0.z, mad(_218.y, r0.y, _218.x * r0.x)));
    o0 = _232;
    float3 _246 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_246.x, _246.y, _246.z, r0.w);
    float4 _256 = r0;
    _256.w = r0.y * cb0_m[13].x;
    r0 = _256;
    float4 _263 = r1;
    _263.x = r0.w * asfloat(3216550459u);
    r1 = _263;
    float4 _268 = r1;
    _268.x = exp2(r1.x);
    r1 = _268;
    float4 _275 = r1;
    _275.x = (-r1.x) + asfloat(1065353216u);
    r1 = _275;
    float4 _282 = r0;
    _282.w = r1.x / r0.w;
    r0 = _282;
    float4 _294 = r1;
    _294.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _294;
    float4 _309 = r0;
    _309.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _309;
    float4 _314 = r0;
    _314.x = sqrt(r0.x);
    r0 = _314;
    float4 _322 = r0;
    _322.x = r0.x * cb0_m[13].y;
    r0 = _322;
    float4 _332 = r0;
    _332.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _332;
    float4 _344 = r0;
    _344.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _344;
    float4 _350 = r0;
    _350.x = exp2(-r0.x);
    r0 = _350;
    float4 _356 = r0;
    _356.x = min(r0.x, asfloat(1065353216u));
    r0 = _356;
    float2 _363 = o1;
    _363.y = (-r0.x) + asfloat(1065353216u);
    o1 = _363;
    float4 _370 = r0;
    _370.x = float(asint(shader_in[2].x));
    r0 = _370;
    float2 _377 = o1;
    _377.x = r0.x * asfloat(981467136u);
    o1 = _377;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float4 _387 = shader_in[2];
    _387.x = asfloat(v2);
    shader_in[2] = _387;
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v2 = stage_input.v2;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
