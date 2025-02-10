cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
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
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    float4 _77 = r1;
    _77.x = mad(shader_in[2].w, r0.w, mad(shader_in[2].z, r0.z, mad(shader_in[2].y, r0.y, shader_in[2].x * r0.x)));
    r1 = _77;
    float4 _95 = r1;
    _95.y = mad(shader_in[3].w, r0.w, mad(shader_in[3].z, r0.z, mad(shader_in[3].y, r0.y, shader_in[3].x * r0.x)));
    r1 = _95;
    float4 _113 = r1;
    _113.z = mad(shader_in[4].w, r0.w, mad(shader_in[4].z, r0.z, mad(shader_in[4].y, r0.y, shader_in[4].x * r0.x)));
    r1 = _113;
    float4 _116 = r1;
    _116.w = asfloat(1065353216u);
    r1 = _116;
    float4 _132 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _146 = o0;
    _146.x = mad(_132.w, r1.w, mad(_132.z, r1.z, mad(_132.y, r1.y, _132.x * r1.x)));
    o0 = _146;
    float4 _158 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _172 = o0;
    _172.y = mad(_158.w, r1.w, mad(_158.z, r1.z, mad(_158.y, r1.y, _158.x * r1.x)));
    o0 = _172;
    float4 _183 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _197 = o0;
    _197.z = mad(_183.w, r1.w, mad(_183.z, r1.z, mad(_183.y, r1.y, _183.x * r1.x)));
    o0 = _197;
    float4 _208 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _222 = o0;
    _222.w = mad(_208.w, r1.w, mad(_208.z, r1.z, mad(_208.y, r1.y, _208.x * r1.x)));
    o0 = _222;
    float4 _226 = r0;
    _226.x = asfloat(3212836864u);
    r0 = _226;
    float3 _240 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(r0.x, _240.x, _240.y, _240.z);
    float3 _252 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _262 = r1;
    _262.x = mad(r0.yzw.z, _252.z, mad(r0.yzw.y, _252.y, r0.yzw.x * _252.x));
    r1 = _262;
    float4 _271 = r1;
    _271.x = r1.x * cb5_m[5].y;
    r1 = _271;
    float4 _278 = r1;
    _278.y = r0.x * r1.x;
    r1 = _278;
    float3 _289 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _300 = r2;
    _300.x = mad(r0.yzw.z, _289.z, mad(r0.yzw.y, _289.y, r0.yzw.x * _289.x));
    r2 = _300;
    float3 _311 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _321 = r2;
    _321.z = mad(r0.yzw.z, _311.z, mad(r0.yzw.y, _311.y, r0.yzw.x * _311.x));
    r2 = _321;
    float2 _331 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_331.x, r1.y, _331.y, r1.w);
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _343 = o3;
    _343.w = r1.z;
    o3 = _343;
    float3 _355 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_355.x, _355.y, _355.z, r0.w);
    float3 _369 = r0.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r1 = float4(_369.x, _369.y, _369.z, r1.w);
    float3 _387 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r0.xyz) + (-r1.xyz);
    r1 = float4(_387.x, _387.y, _387.z, r1.w);
    float4 _403 = r0;
    _403.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _403;
    float4 _408 = r0;
    _408.w = rsqrt(r0.w);
    r0 = _408;
    float3 _414 = r0.www * r1.xyz;
    r1 = float4(_414.x, _414.y, _414.z, r1.w);
    float3 _421 = r0.zxy * r1.xyz;
    r2 = float4(_421.x, _421.y, _421.z, r2.w);
    float3 _432 = (r0.yzx * r1.yzx) + (-r2.xyz);
    r1 = float4(_432.x, _432.y, _432.z, r1.w);
    float4 _448 = r0;
    _448.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _448;
    float4 _453 = r0;
    _453.w = rsqrt(r0.w);
    r0 = _453;
    float3 _459 = r0.www * r1.xyz;
    r1 = float4(_459.x, _459.y, _459.z, r1.w);
    float4 _476 = r2;
    _476.x = mad(shader_in[2].xyz.z, r1.xyz.z, mad(shader_in[2].xyz.y, r1.xyz.y, shader_in[2].xyz.x * r1.xyz.x));
    r2 = _476;
    float4 _492 = r2;
    _492.y = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r2 = _492;
    float4 _508 = r2;
    _508.z = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _508;
    float3 _517 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _529 = o3;
    _529.x = mad(_517.z, r1.xyz.z, mad(_517.y, r1.xyz.y, _517.x * r1.xyz.x));
    o3 = _529;
    float4 _544 = r0;
    _544.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _544;
    float4 _549 = r0;
    _549.w = rsqrt(r0.w);
    r0 = _549;
    float3 _555 = r0.www * r2.xyz;
    r1 = float4(_555.x, _555.y, _555.z, r1.w);
    float4 _572 = r2;
    _572.x = mad(shader_in[2].xyz.z, r0.xyz.z, mad(shader_in[2].xyz.y, r0.xyz.y, shader_in[2].xyz.x * r0.xyz.x));
    r2 = _572;
    float4 _588 = r2;
    _588.y = mad(shader_in[3].xyz.z, r0.xyz.z, mad(shader_in[3].xyz.y, r0.xyz.y, shader_in[3].xyz.x * r0.xyz.x));
    r2 = _588;
    float4 _604 = r2;
    _604.z = mad(shader_in[4].xyz.z, r0.xyz.z, mad(shader_in[4].xyz.y, r0.xyz.y, shader_in[4].xyz.x * r0.xyz.x));
    r2 = _604;
    float3 _613 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _625 = o3;
    _625.z = mad(_613.z, r0.xyz.z, mad(_613.y, r0.xyz.y, _613.x * r0.xyz.x));
    o3 = _625;
    float4 _640 = r0;
    _640.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _640;
    float4 _645 = r0;
    _645.x = rsqrt(r0.x);
    r0 = _645;
    float3 _651 = r0.xxx * r2.xyz;
    r0 = float4(_651.x, _651.y, _651.z, r0.w);
    float3 _658 = r1.yzx * r0.zxy;
    r2 = float4(_658.x, _658.y, _658.z, r2.w);
    float3 _669 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_669.x, _669.y, _669.z, r2.w);
    float3 _679 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _691 = o2;
    _691.x = mad(_679.z, r1.xyz.z, mad(_679.y, r1.xyz.y, _679.x * r1.xyz.x));
    o2 = _691;
    float3 _700 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _712 = o2;
    _712.z = mad(_700.z, r0.xyz.z, mad(_700.y, r0.xyz.y, _700.x * r0.xyz.x));
    o2 = _712;
    float3 _721 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _724 = -r2.xyz;
    float3 _734 = o2;
    _734.y = mad(_721.z, _724.z, mad(_721.y, _724.y, _721.x * _724.x));
    o2 = _734;
    float3 _743 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _755 = o3;
    _755.y = mad(_743.z, r2.xyz.z, mad(_743.y, r2.xyz.y, _743.x * r2.xyz.x));
    o3 = _755;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
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
