cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _82 = r0;
    _82.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _82;
    float4 _100 = r0;
    _100.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _100;
    float4 _118 = r0;
    _118.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _118;
    float4 _134 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _148 = o0;
    _148.x = mad(_134.w, r0.w, mad(_134.z, r0.z, mad(_134.y, r0.y, _134.x * r0.x)));
    o0 = _148;
    float4 _160 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _174 = o0;
    _174.y = mad(_160.w, r0.w, mad(_160.z, r0.z, mad(_160.y, r0.y, _160.x * r0.x)));
    o0 = _174;
    float4 _186 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _200 = o0;
    _200.z = mad(_186.w, r0.w, mad(_186.z, r0.z, mad(_186.y, r0.y, _186.x * r0.x)));
    o0 = _200;
    float4 _212 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _226 = o0;
    _226.w = mad(_212.w, r0.w, mad(_212.z, r0.z, mad(_212.y, r0.y, _212.x * r0.x)));
    o0 = _226;
    float3 _240 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_240.x, _240.y, _240.z, r0.w);
    float2 _247 = float2(asint(shader_in[1].xy));
    r1 = float4(_247.x, _247.y, r1.z, r1.w);
    float2 _259 = r1.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r1 = float4(_259.x, _259.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _280 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_280.x, _280.y, _280.z, r1.w);
    float4 _298 = r2;
    _298.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _298;
    float4 _314 = r2;
    _314.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _314;
    float4 _330 = r2;
    _330.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _330;
    float4 _345 = r0;
    _345.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _345;
    float4 _350 = r0;
    _350.w = rsqrt(r0.w);
    r0 = _350;
    float3 _356 = r0.www * r2.xyz;
    r1 = float4(_356.x, _356.y, _356.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _383 = r3;
    _383.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _383;
    float4 _399 = r3;
    _399.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _399;
    float4 _415 = r3;
    _415.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _415;
    float4 _430 = r0;
    _430.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _430;
    float4 _435 = r0;
    _435.w = rsqrt(r0.w);
    r0 = _435;
    float3 _441 = r0.www * r3.xyz;
    r2 = float4(_441.x, _441.y, _441.z, r2.w);
    float3 _448 = r1.zxy * r2.yzx;
    r3 = float4(_448.x, _448.y, _448.z, r3.w);
    float3 _459 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_459.x, _459.y, _459.z, r3.w);
    float3 _466 = r2.www * r3.xyz;
    r3 = float4(_466.x, _466.y, _466.z, r3.w);
    float3 _476 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _488 = o2;
    _488.y = mad(_476.z, r3.xyz.z, mad(_476.y, r3.xyz.y, _476.x * r3.xyz.x));
    o2 = _488;
    float3 _497 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _509 = o2;
    _509.z = mad(_497.z, r1.xyz.z, mad(_497.y, r1.xyz.y, _497.x * r1.xyz.x));
    o2 = _509;
    float3 _518 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _530 = o2;
    _530.x = mad(_518.z, r2.xyz.z, mad(_518.y, r2.xyz.y, _518.x * r2.xyz.x));
    o2 = _530;
    float4 _545 = r0;
    _545.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _545;
    float4 _550 = r0;
    _550.w = rsqrt(r0.w);
    r0 = _550;
    float3 _556 = r0.www * r0.xyz;
    r0 = float4(_556.x, _556.y, _556.z, r0.w);
    float3 _572 = o3;
    _572.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _572;
    float3 _587 = o3;
    _587.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _587;
    float3 _602 = o3;
    _602.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _602;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _610 = asfloat(v1);
    shader_in[1] = float4(_610.x, _610.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
