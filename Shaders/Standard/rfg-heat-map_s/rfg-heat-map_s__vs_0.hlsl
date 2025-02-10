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
static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _36 = r0;
    _36.w = asfloat(1065353216u);
    r0 = _36;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _47 = r1;
    _47.w = asfloat(1065353216u);
    r1 = _47;
    float4 _63 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _77 = r0;
    _77.x = mad(_63.w, r1.w, mad(_63.z, r1.z, mad(_63.y, r1.y, _63.x * r1.x)));
    r0 = _77;
    float4 _89 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _103 = r0;
    _103.y = mad(_89.w, r1.w, mad(_89.z, r1.z, mad(_89.y, r1.y, _89.x * r1.x)));
    r0 = _103;
    float4 _115 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _129 = r0;
    _129.z = mad(_115.w, r1.w, mad(_115.z, r1.z, mad(_115.y, r1.y, _115.x * r1.x)));
    r0 = _129;
    float4 _140 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _154 = o0;
    _154.x = mad(_140.w, r0.w, mad(_140.z, r0.z, mad(_140.y, r0.y, _140.x * r0.x)));
    o0 = _154;
    float4 _165 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _179 = o0;
    _179.y = mad(_165.w, r0.w, mad(_165.z, r0.z, mad(_165.y, r0.y, _165.x * r0.x)));
    o0 = _179;
    float4 _190 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _204 = o0;
    _204.z = mad(_190.w, r0.w, mad(_190.z, r0.z, mad(_190.y, r0.y, _190.x * r0.x)));
    o0 = _204;
    float4 _216 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _230 = o0;
    _230.w = mad(_216.w, r0.w, mad(_216.z, r0.z, mad(_216.y, r0.y, _216.x * r0.x)));
    o0 = _230;
    float3 _244 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_244.x, _244.y, _244.z, r1.w);
    float3 _258 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float4 _274 = r0;
    _274.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _274;
    float4 _279 = r0;
    _279.x = sqrt(r0.x);
    r0 = _279;
    float4 _289 = r0;
    _289.x = r0.x + (-cb0_m[13].x);
    r0 = _289;
    float4 _300 = r0;
    _300.x = clamp(r0.x / cb0_m[13].y, 0.0f, 1.0f);
    r0 = _300;
    float3 _307 = o1;
    _307.z = (-r0.x) + asfloat(1065353216u);
    o1 = _307;
    float4 _322 = r0;
    _322.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _322;
    float4 _327 = r0;
    _327.x = rsqrt(r0.x);
    r0 = _327;
    float3 _333 = r0.xxx * r1.xyz;
    r0 = float4(_333.x, _333.y, _333.z, r0.w);
    float3 _347 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_347.x, _347.y, _347.z, r1.w);
    float3 _357 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _370 = r2;
    _370.x = mad(_357.z, r1.xyz.z, mad(_357.y, r1.xyz.y, _357.x * r1.xyz.x));
    r2 = _370;
    float3 _379 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _391 = r2;
    _391.y = mad(_379.z, r1.xyz.z, mad(_379.y, r1.xyz.y, _379.x * r1.xyz.x));
    r2 = _391;
    float3 _400 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _412 = r2;
    _412.z = mad(_400.z, r1.xyz.z, mad(_400.y, r1.xyz.y, _400.x * r1.xyz.x));
    r2 = _412;
    float4 _427 = r0;
    _427.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _427;
    float4 _432 = r0;
    _432.w = rsqrt(r0.w);
    r0 = _432;
    float3 _438 = r0.www * r2.xyz;
    r1 = float4(_438.x, _438.y, _438.z, r1.w);
    float4 _454 = r0;
    _454.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _454;
    float3 _459 = o1;
    _459.x = abs(r0.x);
    o1 = _459;
    float3 _463 = o1;
    _463.y = asfloat(1056964608u);
    o1 = _463;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
