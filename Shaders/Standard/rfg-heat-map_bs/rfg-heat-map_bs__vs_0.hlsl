cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _35 = r0;
    _35.w = asfloat(1065353216u);
    r0 = _35;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _46 = r1;
    _46.w = asfloat(1065353216u);
    r1 = _46;
    float4 _64 = r0;
    _64.x = mad(shader_in[2].w, r1.w, mad(shader_in[2].z, r1.z, mad(shader_in[2].y, r1.y, shader_in[2].x * r1.x)));
    r0 = _64;
    float4 _82 = r0;
    _82.y = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _82;
    float4 _100 = r0;
    _100.z = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _100;
    float4 _117 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _131 = o0;
    _131.x = mad(_117.w, r0.w, mad(_117.z, r0.z, mad(_117.y, r0.y, _117.x * r0.x)));
    o0 = _131;
    float4 _143 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _157 = o0;
    _157.y = mad(_143.w, r0.w, mad(_143.z, r0.z, mad(_143.y, r0.y, _143.x * r0.x)));
    o0 = _157;
    float4 _168 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _182 = o0;
    _182.z = mad(_168.w, r0.w, mad(_168.z, r0.z, mad(_168.y, r0.y, _168.x * r0.x)));
    o0 = _182;
    float4 _193 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _207 = o0;
    _207.w = mad(_193.w, r0.w, mad(_193.z, r0.z, mad(_193.y, r0.y, _193.x * r0.x)));
    o0 = _207;
    float3 _221 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_221.x, _221.y, _221.z, r1.w);
    float3 _235 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_235.x, _235.y, _235.z, r0.w);
    float4 _251 = r0;
    _251.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _251;
    float4 _256 = r0;
    _256.x = sqrt(r0.x);
    r0 = _256;
    float4 _266 = r0;
    _266.x = r0.x + (-cb0_m[13].x);
    r0 = _266;
    float4 _277 = r0;
    _277.x = clamp(r0.x / cb0_m[13].y, 0.0f, 1.0f);
    r0 = _277;
    float3 _284 = o1;
    _284.z = (-r0.x) + asfloat(1065353216u);
    o1 = _284;
    float4 _299 = r0;
    _299.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _299;
    float4 _304 = r0;
    _304.x = rsqrt(r0.x);
    r0 = _304;
    float3 _310 = r0.xxx * r1.xyz;
    r0 = float4(_310.x, _310.y, _310.z, r0.w);
    float3 _324 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_324.x, _324.y, _324.z, r1.w);
    float4 _342 = r2;
    _342.x = mad(shader_in[2].xyz.z, r1.xyz.z, mad(shader_in[2].xyz.y, r1.xyz.y, shader_in[2].xyz.x * r1.xyz.x));
    r2 = _342;
    float4 _358 = r2;
    _358.y = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r2 = _358;
    float4 _374 = r2;
    _374.z = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _374;
    float4 _389 = r0;
    _389.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _389;
    float4 _394 = r0;
    _394.w = rsqrt(r0.w);
    r0 = _394;
    float3 _400 = r0.www * r2.xyz;
    r1 = float4(_400.x, _400.y, _400.z, r1.w);
    float4 _416 = r0;
    _416.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _416;
    float3 _421 = o1;
    _421.x = abs(r0.x);
    o1 = _421;
    float3 _425 = o1;
    _425.y = asfloat(1056964608u);
    o1 = _425;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
