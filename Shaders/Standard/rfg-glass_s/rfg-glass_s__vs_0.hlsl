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
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _50 = r0;
    _50.w = asfloat(1065353216u);
    r0 = _50;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _60 = r1;
    _60.w = asfloat(1065353216u);
    r1 = _60;
    float4 _75 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _89 = r0;
    _89.x = mad(_75.w, r1.w, mad(_75.z, r1.z, mad(_75.y, r1.y, _75.x * r1.x)));
    r0 = _89;
    float4 _101 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _115 = r0;
    _115.y = mad(_101.w, r1.w, mad(_101.z, r1.z, mad(_101.y, r1.y, _101.x * r1.x)));
    r0 = _115;
    float4 _127 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _141 = r0;
    _141.z = mad(_127.w, r1.w, mad(_127.z, r1.z, mad(_127.y, r1.y, _127.x * r1.x)));
    r0 = _141;
    float4 _152 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _166 = o0;
    _166.x = mad(_152.w, r0.w, mad(_152.z, r0.z, mad(_152.y, r0.y, _152.x * r0.x)));
    o0 = _166;
    float4 _177 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _191 = o0;
    _191.y = mad(_177.w, r0.w, mad(_177.z, r0.z, mad(_177.y, r0.y, _177.x * r0.x)));
    o0 = _191;
    float4 _202 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _216 = o0;
    _216.z = mad(_202.w, r0.w, mad(_202.z, r0.z, mad(_202.y, r0.y, _202.x * r0.x)));
    o0 = _216;
    float4 _228 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _242 = o0;
    _242.w = mad(_228.w, r0.w, mad(_228.z, r0.z, mad(_228.y, r0.y, _228.x * r0.x)));
    o0 = _242;
    float2 _248 = float2(asint(shader_in[1].xy));
    r1 = float4(_248.x, _248.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _278 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float3 _292 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_292.x, _292.y, _292.z, r0.w);
    float4 _308 = r0;
    _308.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _308;
    float4 _313 = r0;
    _313.w = rsqrt(r0.w);
    r0 = _313;
    o3 = r0.www * r1.xyz;
    float4 _327 = r0;
    _327.w = r0.y * cb0_m[13].x;
    r0 = _327;
    float4 _334 = r1;
    _334.x = r0.w * asfloat(3216550459u);
    r1 = _334;
    float4 _339 = r1;
    _339.x = exp2(r1.x);
    r1 = _339;
    float4 _346 = r1;
    _346.x = (-r1.x) + asfloat(1065353216u);
    r1 = _346;
    float4 _353 = r0;
    _353.w = r1.x / r0.w;
    r0 = _353;
    float4 _365 = r1;
    _365.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _365;
    float4 _380 = r0;
    _380.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _380;
    float4 _385 = r0;
    _385.x = sqrt(r0.x);
    r0 = _385;
    float4 _393 = r0;
    _393.x = r0.x * cb0_m[13].y;
    r0 = _393;
    float4 _403 = r0;
    _403.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _403;
    float4 _415 = r0;
    _415.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _415;
    float4 _421 = r0;
    _421.x = exp2(-r0.x);
    r0 = _421;
    float4 _427 = r0;
    _427.x = min(r0.x, asfloat(1065353216u));
    r0 = _427;
    float4 _434 = o4;
    _434.w = (-r0.x) + asfloat(1065353216u);
    o4 = _434;
    float3 _447 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_447.x, _447.y, _447.z, r0.w);
    float3 _457 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _469 = r1;
    _469.x = mad(_457.z, r0.xyz.z, mad(_457.y, r0.xyz.y, _457.x * r0.xyz.x));
    r1 = _469;
    float3 _478 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _490 = r1;
    _490.y = mad(_478.z, r0.xyz.z, mad(_478.y, r0.xyz.y, _478.x * r0.xyz.x));
    r1 = _490;
    float3 _499 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _511 = r1;
    _511.z = mad(_499.z, r0.xyz.z, mad(_499.y, r0.xyz.y, _499.x * r0.xyz.x));
    r1 = _511;
    float4 _526 = r0;
    _526.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _526;
    float4 _531 = r0;
    _531.x = rsqrt(r0.x);
    r0 = _531;
    float3 _537 = r0.xxx * r1.xyz;
    o4 = float4(_537.x, _537.y, _537.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _546 = asfloat(v1);
    shader_in[1] = float4(_546.x, _546.y, shader_in[1].z, shader_in[1].w);
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
