cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float4 o2;
static float2 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _38 = r0;
    _38.w = asfloat(1065353216u);
    r0 = _38;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _49 = r1;
    _49.w = asfloat(1065353216u);
    r1 = _49;
    float4 _67 = r0;
    _67.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _67;
    float4 _85 = r0;
    _85.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _85;
    float4 _103 = r0;
    _103.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _103;
    float4 _120 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _134 = r1;
    _134.x = mad(_120.w, r0.w, mad(_120.z, r0.z, mad(_120.y, r0.y, _120.x * r0.x)));
    r1 = _134;
    float4 _146 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _160 = r1;
    _160.y = mad(_146.w, r0.w, mad(_146.z, r0.z, mad(_146.y, r0.y, _146.x * r0.x)));
    r1 = _160;
    float4 _172 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _186 = r1;
    _186.z = mad(_172.w, r0.w, mad(_172.z, r0.z, mad(_172.y, r0.y, _172.x * r0.x)));
    r1 = _186;
    float4 _197 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _211 = r1;
    _211.w = mad(_197.w, r0.w, mad(_197.z, r0.z, mad(_197.y, r0.y, _197.x * r0.x)));
    r1 = _211;
    float3 _225 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_225.x, _225.y, _225.z, r0.w);
    o0 = r1;
    o1 = r1;
    float3 _241 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float4 _259 = r2;
    _259.x = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r2 = _259;
    float4 _275 = r2;
    _275.y = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _275;
    float4 _291 = r2;
    _291.z = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _291;
    float4 _306 = r0;
    _306.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _306;
    float4 _311 = r0;
    _311.w = rsqrt(r0.w);
    r0 = _311;
    float3 _317 = r0.www * r2.xyz;
    o2 = float4(_317.x, _317.y, _317.z, o2.w);
    float4 _321 = o2;
    _321.w = asfloat(0u);
    o2 = _321;
    float4 _330 = r0;
    _330.w = r0.y * cb0_m[13].x;
    r0 = _330;
    float4 _337 = r1;
    _337.x = r0.w * asfloat(3216550459u);
    r1 = _337;
    float4 _342 = r1;
    _342.x = exp2(r1.x);
    r1 = _342;
    float4 _349 = r1;
    _349.x = (-r1.x) + asfloat(1065353216u);
    r1 = _349;
    float4 _356 = r0;
    _356.w = r1.x / r0.w;
    r0 = _356;
    float4 _368 = r1;
    _368.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _368;
    float4 _383 = r0;
    _383.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _383;
    float4 _388 = r0;
    _388.x = sqrt(r0.x);
    r0 = _388;
    float4 _396 = r0;
    _396.x = r0.x * cb0_m[13].y;
    r0 = _396;
    float4 _406 = r0;
    _406.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _406;
    float4 _418 = r0;
    _418.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _418;
    float4 _424 = r0;
    _424.x = exp2(-r0.x);
    r0 = _424;
    float4 _430 = r0;
    _430.x = min(r0.x, asfloat(1065353216u));
    r0 = _430;
    float2 _437 = o3;
    _437.y = (-r0.x) + asfloat(1065353216u);
    o3 = _437;
    float2 _443 = o3;
    _443.x = cb0_m[12].x;
    o3 = _443;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
