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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _59 = r1;
    _59.w = asfloat(1065353216u);
    r1 = _59;
    float4 _74 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _88 = r0;
    _88.x = mad(_74.w, r1.w, mad(_74.z, r1.z, mad(_74.y, r1.y, _74.x * r1.x)));
    r0 = _88;
    float4 _100 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _114 = r0;
    _114.y = mad(_100.w, r1.w, mad(_100.z, r1.z, mad(_100.y, r1.y, _100.x * r1.x)));
    r0 = _114;
    float4 _126 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _140 = r0;
    _140.z = mad(_126.w, r1.w, mad(_126.z, r1.z, mad(_126.y, r1.y, _126.x * r1.x)));
    r0 = _140;
    float4 _151 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _165 = o0;
    _165.x = mad(_151.w, r0.w, mad(_151.z, r0.z, mad(_151.y, r0.y, _151.x * r0.x)));
    o0 = _165;
    float4 _176 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _190 = o0;
    _190.y = mad(_176.w, r0.w, mad(_176.z, r0.z, mad(_176.y, r0.y, _176.x * r0.x)));
    o0 = _190;
    float4 _201 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _215 = o0;
    _215.z = mad(_201.w, r0.w, mad(_201.z, r0.z, mad(_201.y, r0.y, _201.x * r0.x)));
    o0 = _215;
    float4 _227 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _241 = o0;
    _241.w = mad(_227.w, r0.w, mad(_227.z, r0.z, mad(_227.y, r0.y, _227.x * r0.x)));
    o0 = _241;
    float2 _247 = float2(asint(shader_in[1].xy));
    r1 = float4(_247.x, _247.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _268 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_268.x, _268.y, _268.z, r1.w);
    float3 _278 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _291 = r2;
    _291.x = mad(_278.z, r1.xyz.z, mad(_278.y, r1.xyz.y, _278.x * r1.xyz.x));
    r2 = _291;
    float3 _300 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _312 = r2;
    _312.y = mad(_300.z, r1.xyz.z, mad(_300.y, r1.xyz.y, _300.x * r1.xyz.x));
    r2 = _312;
    float3 _321 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _333 = r2;
    _333.z = mad(_321.z, r1.xyz.z, mad(_321.y, r1.xyz.y, _321.x * r1.xyz.x));
    r2 = _333;
    float4 _348 = r0;
    _348.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _348;
    float4 _353 = r0;
    _353.w = rsqrt(r0.w);
    r0 = _353;
    float3 _359 = r0.www * r2.xyz;
    r1 = float4(_359.x, _359.y, _359.z, r1.w);
    o2 = float4(r1.xyz.x, r1.xyz.y, r1.xyz.z, o2.w);
    float4 _376 = o4;
    _376.w = clamp((r1.y * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o4 = _376;
    float4 _379 = o2;
    _379.w = asfloat(0u);
    o2 = _379;
    float3 _393 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_393.x, _393.y, _393.z, r1.w);
    float3 _407 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_407.x, _407.y, _407.z, r0.w);
    float4 _417 = r0;
    _417.w = r1.y * cb0_m[13].x;
    r0 = _417;
    float4 _424 = r1;
    _424.w = r0.w * asfloat(3216550459u);
    r1 = _424;
    float4 _429 = r1;
    _429.w = exp2(r1.w);
    r1 = _429;
    float4 _436 = r1;
    _436.w = (-r1.w) + asfloat(1065353216u);
    r1 = _436;
    float4 _443 = r0;
    _443.w = r1.w / r0.w;
    r0 = _443;
    float4 _455 = r1;
    _455.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _455;
    float4 _470 = r1;
    _470.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _470;
    float4 _475 = r1;
    _475.x = sqrt(r1.x);
    r1 = _475;
    float4 _483 = r1;
    _483.x = r1.x * cb0_m[13].y;
    r1 = _483;
    float4 _493 = r0;
    _493.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _493;
    float4 _505 = r0;
    _505.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _505;
    float4 _511 = r0;
    _511.w = exp2(-r0.w);
    r0 = _511;
    float4 _517 = r0;
    _517.w = min(r0.w, asfloat(1065353216u));
    r0 = _517;
    float4 _524 = o3;
    _524.w = (-r0.w) + asfloat(1065353216u);
    o3 = _524;
    float4 _539 = r0;
    _539.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _539;
    float4 _544 = r0;
    _544.w = rsqrt(r0.w);
    r0 = _544;
    float3 _550 = r0.www * r0.xyz;
    o3 = float4(_550.x, _550.y, _550.z, o3.w);
    float3 _560 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o4 = float4(_560.x, _560.y, _560.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _569 = asfloat(v1);
    shader_in[1] = float4(_569.x, _569.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
