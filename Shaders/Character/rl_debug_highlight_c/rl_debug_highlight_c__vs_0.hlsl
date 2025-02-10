cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v2;
static int4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _50 = r0;
    _50.x = shader_in[2].y + shader_in[2].x;
    r0 = _50;
    float4 _58 = r0;
    _58.x = r0.x + shader_in[2].z;
    r0 = _58;
    float4 _66 = r0;
    _66.x = r0.x + shader_in[2].w;
    r0 = _66;
    float4 _73 = r0;
    _73.x = asfloat(1065353216u) / r0.x;
    r0 = _73;
    r1 = asfloat(asint(shader_in[3]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _90 = asint(r1.y);
    r2 = shader_in[2].yyyy * float4(cb4_m[_90].x, cb4_m[_90].y, cb4_m[_90].z, cb4_m[_90].w);
    int _114 = asint(r1.x);
    r2 = (shader_in[2].xxxx * float4(cb4_m[_114].x, cb4_m[_114].y, cb4_m[_114].z, cb4_m[_114].w)) + r2;
    int _133 = asint(r1.z);
    r2 = (shader_in[2].zzzz * float4(cb4_m[_133].x, cb4_m[_133].y, cb4_m[_133].z, cb4_m[_133].w)) + r2;
    int _152 = asint(r1.w);
    r2 = (shader_in[2].wwww * float4(cb4_m[_152].x, cb4_m[_152].y, cb4_m[_152].z, cb4_m[_152].w)) + r2;
    r3 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r3.w);
    float4 _173 = r3;
    _173.w = asfloat(1065353216u);
    r3 = _173;
    float4 _189 = r2;
    _189.x = mad(r2.w, r3.w, mad(r2.z, r3.z, mad(r2.y, r3.y, r2.x * r3.x)));
    r2 = _189;
    int _198 = asint(r1.y) + 1;
    r4 = shader_in[2].yyyy * float4(cb4_m[_198].x, cb4_m[_198].y, cb4_m[_198].z, cb4_m[_198].w);
    int _217 = asint(r1.x) + 1;
    r4 = (shader_in[2].xxxx * float4(cb4_m[_217].x, cb4_m[_217].y, cb4_m[_217].z, cb4_m[_217].w)) + r4;
    int _237 = asint(r1.z) + 1;
    r4 = (shader_in[2].zzzz * float4(cb4_m[_237].x, cb4_m[_237].y, cb4_m[_237].z, cb4_m[_237].w)) + r4;
    int _257 = asint(r1.w) + 1;
    r4 = (shader_in[2].wwww * float4(cb4_m[_257].x, cb4_m[_257].y, cb4_m[_257].z, cb4_m[_257].w)) + r4;
    float4 _285 = r2;
    _285.y = mad(r4.w, r3.w, mad(r4.z, r3.z, mad(r4.y, r3.y, r4.x * r3.x)));
    r2 = _285;
    int _293 = asint(r1.y) + 2;
    r4 = shader_in[2].yyyy * float4(cb4_m[_293].x, cb4_m[_293].y, cb4_m[_293].z, cb4_m[_293].w);
    int _311 = asint(r1.x) + 2;
    r4 = (shader_in[2].xxxx * float4(cb4_m[_311].x, cb4_m[_311].y, cb4_m[_311].z, cb4_m[_311].w)) + r4;
    int _331 = asint(r1.z) + 2;
    r4 = (shader_in[2].zzzz * float4(cb4_m[_331].x, cb4_m[_331].y, cb4_m[_331].z, cb4_m[_331].w)) + r4;
    int _351 = asint(r1.w) + 2;
    r1 = (shader_in[2].wwww * float4(cb4_m[_351].x, cb4_m[_351].y, cb4_m[_351].z, cb4_m[_351].w)) + r4;
    float4 _379 = r2;
    _379.z = mad(r1.w, r3.w, mad(r1.z, r3.z, mad(r1.y, r3.y, r1.x * r3.x)));
    r2 = _379;
    float3 _385 = r0.xxx * r2.xyz;
    r0 = float4(_385.x, _385.y, _385.z, r0.w);
    float4 _389 = r0;
    _389.w = asfloat(1065353216u);
    r0 = _389;
    float4 _400 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _414 = r1;
    _414.x = mad(_400.w, r0.w, mad(_400.z, r0.z, mad(_400.y, r0.y, _400.x * r0.x)));
    r1 = _414;
    float4 _425 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _439 = r1;
    _439.y = mad(_425.w, r0.w, mad(_425.z, r0.z, mad(_425.y, r0.y, _425.x * r0.x)));
    r1 = _439;
    float4 _450 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _464 = r1;
    _464.z = mad(_450.w, r0.w, mad(_450.z, r0.z, mad(_450.y, r0.y, _450.x * r0.x)));
    r1 = _464;
    float4 _467 = r1;
    _467.w = asfloat(1065353216u);
    r1 = _467;
    float4 _478 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _492 = o0;
    _492.x = mad(_478.w, r1.w, mad(_478.z, r1.z, mad(_478.y, r1.y, _478.x * r1.x)));
    o0 = _492;
    float4 _503 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _517 = o0;
    _517.y = mad(_503.w, r1.w, mad(_503.z, r1.z, mad(_503.y, r1.y, _503.x * r1.x)));
    o0 = _517;
    float4 _528 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _542 = o0;
    _542.z = mad(_528.w, r1.w, mad(_528.z, r1.z, mad(_528.y, r1.y, _528.x * r1.x)));
    o0 = _542;
    float4 _553 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _567 = o0;
    _567.w = mad(_553.w, r1.w, mad(_553.z, r1.z, mad(_553.y, r1.y, _553.x * r1.x)));
    o0 = _567;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[2] = v2;
    shader_in[3] = asfloat(v3);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
