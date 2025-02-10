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

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _77 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _91 = r0;
    _91.x = mad(_77.w, r1.w, mad(_77.z, r1.z, mad(_77.y, r1.y, _77.x * r1.x)));
    r0 = _91;
    float4 _103 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _117 = r0;
    _117.y = mad(_103.w, r1.w, mad(_103.z, r1.z, mad(_103.y, r1.y, _103.x * r1.x)));
    r0 = _117;
    float4 _129 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _143 = r0;
    _143.z = mad(_129.w, r1.w, mad(_129.z, r1.z, mad(_129.y, r1.y, _129.x * r1.x)));
    r0 = _143;
    float4 _154 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _168 = o0;
    _168.x = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    o0 = _168;
    float4 _179 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _193 = o0;
    _193.y = mad(_179.w, r0.w, mad(_179.z, r0.z, mad(_179.y, r0.y, _179.x * r0.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _218 = o0;
    _218.z = mad(_204.w, r0.w, mad(_204.z, r0.z, mad(_204.y, r0.y, _204.x * r0.x)));
    o0 = _218;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r0.w, mad(_230.z, r0.z, mad(_230.y, r0.y, _230.x * r0.x)));
    o0 = _244;
    float2 _250 = float2(asint(shader_in[1].xy));
    r1 = float4(_250.x, _250.y, r1.z, r1.w);
    float2 _261 = r1.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r1 = float4(_261.x, _261.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _291 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_291.x, _291.y, _291.z, r1.w);
    float3 _305 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_305.x, _305.y, _305.z, r0.w);
    float4 _315 = r0;
    _315.w = r1.y * cb0_m[13].x;
    r0 = _315;
    float4 _322 = r1;
    _322.w = r0.w * asfloat(3216550459u);
    r1 = _322;
    float4 _327 = r1;
    _327.w = exp2(r1.w);
    r1 = _327;
    float4 _334 = r1;
    _334.w = (-r1.w) + asfloat(1065353216u);
    r1 = _334;
    float4 _341 = r0;
    _341.w = r1.w / r0.w;
    r0 = _341;
    float4 _353 = r1;
    _353.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _353;
    float4 _368 = r1;
    _368.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _368;
    float4 _373 = r1;
    _373.x = sqrt(r1.x);
    r1 = _373;
    float4 _381 = r1;
    _381.x = r1.x * cb0_m[13].y;
    r1 = _381;
    float4 _391 = r0;
    _391.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _391;
    float4 _403 = r0;
    _403.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _403;
    float4 _409 = r0;
    _409.w = exp2(-r0.w);
    r0 = _409;
    float4 _415 = r0;
    _415.w = min(r0.w, asfloat(1065353216u));
    r0 = _415;
    float4 _422 = o3;
    _422.w = (-r0.w) + asfloat(1065353216u);
    o3 = _422;
    float4 _437 = r0;
    _437.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _437;
    float4 _442 = r0;
    _442.w = rsqrt(r0.w);
    r0 = _442;
    float3 _448 = r0.www * r0.xyz;
    o3 = float4(_448.x, _448.y, _448.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _457 = asfloat(v1);
    shader_in[1] = float4(_457.x, _457.y, shader_in[1].z, shader_in[1].w);
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
