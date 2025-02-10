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
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _43 = r0;
    _43.w = asfloat(1065353216u);
    r0 = _43;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _53 = r1;
    _53.w = asfloat(1065353216u);
    r1 = _53;
    float4 _71 = r0;
    _71.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _71;
    float4 _89 = r0;
    _89.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _89;
    float4 _107 = r0;
    _107.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _107;
    float4 _124 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _138 = o0;
    _138.x = mad(_124.w, r0.w, mad(_124.z, r0.z, mad(_124.y, r0.y, _124.x * r0.x)));
    o0 = _138;
    float4 _150 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _164 = o0;
    _164.y = mad(_150.w, r0.w, mad(_150.z, r0.z, mad(_150.y, r0.y, _150.x * r0.x)));
    o0 = _164;
    float4 _176 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _190 = o0;
    _190.z = mad(_176.w, r0.w, mad(_176.z, r0.z, mad(_176.y, r0.y, _176.x * r0.x)));
    o0 = _190;
    float4 _202 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _216 = o0;
    _216.w = mad(_202.w, r0.w, mad(_202.z, r0.z, mad(_202.y, r0.y, _202.x * r0.x)));
    o0 = _216;
    float2 _222 = float2(asint(shader_in[1].xy));
    r1 = float4(_222.x, _222.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _244 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_244.x, _244.y, _244.z, r1.w);
    float4 _248 = r0;
    _248.w = asfloat(0u);
    r0 = _248;
    r0 = (-r0) + float4(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z, cb0_m[11].w);
    float4 _277 = r0;
    _277.w = mad(r0.w, r0.w, mad(r0.z, r0.z, mad(r0.y, r0.y, r0.x * r0.x)));
    r0 = _277;
    float4 _282 = r0;
    _282.w = rsqrt(r0.w);
    r0 = _282;
    o2 = r0.www * r0.xyz;
    float4 _296 = r0;
    _296.x = r1.y * cb0_m[13].x;
    r0 = _296;
    float4 _303 = r0;
    _303.y = r0.x * asfloat(3216550459u);
    r0 = _303;
    float4 _308 = r0;
    _308.y = exp2(r0.y);
    r0 = _308;
    float4 _315 = r0;
    _315.y = (-r0.y) + asfloat(1065353216u);
    r0 = _315;
    float4 _322 = r0;
    _322.x = r0.y / r0.x;
    r0 = _322;
    float4 _334 = r0;
    _334.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _334;
    float4 _349 = r0;
    _349.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _349;
    float4 _354 = r0;
    _354.z = sqrt(r0.z);
    r0 = _354;
    float4 _362 = r0;
    _362.z = r0.z * cb0_m[13].y;
    r0 = _362;
    float4 _372 = r0;
    _372.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _372;
    float4 _384 = r0;
    _384.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _384;
    float4 _390 = r0;
    _390.x = exp2(-r0.x);
    r0 = _390;
    float4 _396 = r0;
    _396.x = min(r0.x, asfloat(1065353216u));
    r0 = _396;
    float4 _403 = o3;
    _403.w = (-r0.x) + asfloat(1065353216u);
    o3 = _403;
    float3 _417 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_417.x, _417.y, _417.z, r0.w);
    float4 _434 = r1;
    _434.x = mad(shader_in[6].xyz.z, r0.xyz.z, mad(shader_in[6].xyz.y, r0.xyz.y, shader_in[6].xyz.x * r0.xyz.x));
    r1 = _434;
    float4 _450 = r1;
    _450.y = mad(shader_in[7].xyz.z, r0.xyz.z, mad(shader_in[7].xyz.y, r0.xyz.y, shader_in[7].xyz.x * r0.xyz.x));
    r1 = _450;
    float4 _466 = r1;
    _466.z = mad(shader_in[8].xyz.z, r0.xyz.z, mad(shader_in[8].xyz.y, r0.xyz.y, shader_in[8].xyz.x * r0.xyz.x));
    r1 = _466;
    float4 _481 = r0;
    _481.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _481;
    float4 _486 = r0;
    _486.x = rsqrt(r0.x);
    r0 = _486;
    float3 _492 = r0.xxx * r1.xyz;
    o3 = float4(_492.x, _492.y, _492.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _501 = asfloat(v1);
    shader_in[1] = float4(_501.x, _501.y, shader_in[1].z, shader_in[1].w);
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
