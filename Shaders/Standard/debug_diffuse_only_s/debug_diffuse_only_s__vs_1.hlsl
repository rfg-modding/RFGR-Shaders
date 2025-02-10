cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _44 = r0;
    _44.w = asfloat(1065353216u);
    r0 = _44;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _55 = r1;
    _55.w = asfloat(1065353216u);
    r1 = _55;
    float4 _70 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _84 = r0;
    _84.x = mad(_70.w, r1.w, mad(_70.z, r1.z, mad(_70.y, r1.y, _70.x * r1.x)));
    r0 = _84;
    float4 _96 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _110 = r0;
    _110.y = mad(_96.w, r1.w, mad(_96.z, r1.z, mad(_96.y, r1.y, _96.x * r1.x)));
    r0 = _110;
    float4 _122 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _136 = r0;
    _136.z = mad(_122.w, r1.w, mad(_122.z, r1.z, mad(_122.y, r1.y, _122.x * r1.x)));
    r0 = _136;
    float4 _147 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _161 = o0;
    _161.x = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    o0 = _161;
    float4 _172 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _186 = o0;
    _186.y = mad(_172.w, r0.w, mad(_172.z, r0.z, mad(_172.y, r0.y, _172.x * r0.x)));
    o0 = _186;
    float4 _197 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _211 = o0;
    _211.z = mad(_197.w, r0.w, mad(_197.z, r0.z, mad(_197.y, r0.y, _197.x * r0.x)));
    o0 = _211;
    float4 _223 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _237 = o0;
    _237.w = mad(_223.w, r0.w, mad(_223.z, r0.z, mad(_223.y, r0.y, _223.x * r0.x)));
    o0 = _237;
    float3 _250 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_250.x, _250.y, _250.z, r0.w);
    float3 _265 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_265.x, _265.y, _265.z, r1.w);
    float3 _275 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _288 = r2;
    _288.x = mad(_275.z, r1.xyz.z, mad(_275.y, r1.xyz.y, _275.x * r1.xyz.x));
    r2 = _288;
    float3 _297 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _309 = r2;
    _309.y = mad(_297.z, r1.xyz.z, mad(_297.y, r1.xyz.y, _297.x * r1.xyz.x));
    r2 = _309;
    float3 _318 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _330 = r2;
    _330.z = mad(_318.z, r1.xyz.z, mad(_318.y, r1.xyz.y, _318.x * r1.xyz.x));
    r2 = _330;
    float4 _345 = r0;
    _345.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _345;
    float4 _350 = r0;
    _350.w = rsqrt(r0.w);
    r0 = _350;
    float3 _356 = r0.www * r2.xyz;
    r1 = float4(_356.x, _356.y, _356.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _376 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _389 = r3;
    _389.x = mad(_376.z, r2.xyz.z, mad(_376.y, r2.xyz.y, _376.x * r2.xyz.x));
    r3 = _389;
    float3 _398 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _410 = r3;
    _410.y = mad(_398.z, r2.xyz.z, mad(_398.y, r2.xyz.y, _398.x * r2.xyz.x));
    r3 = _410;
    float3 _419 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _431 = r3;
    _431.z = mad(_419.z, r2.xyz.z, mad(_419.y, r2.xyz.y, _419.x * r2.xyz.x));
    r3 = _431;
    float4 _446 = r0;
    _446.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _446;
    float4 _451 = r0;
    _451.w = rsqrt(r0.w);
    r0 = _451;
    float3 _457 = r0.www * r3.xyz;
    r2 = float4(_457.x, _457.y, _457.z, r2.w);
    float3 _464 = r1.zxy * r2.yzx;
    r3 = float4(_464.x, _464.y, _464.z, r3.w);
    float3 _475 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_475.x, _475.y, _475.z, r3.w);
    float3 _482 = r2.www * r3.xyz;
    r3 = float4(_482.x, _482.y, _482.z, r3.w);
    float3 _498 = o1;
    _498.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o1 = _498;
    float3 _507 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _519 = o2;
    _519.y = mad(_507.z, r3.xyz.z, mad(_507.y, r3.xyz.y, _507.x * r3.xyz.x));
    o2 = _519;
    float3 _534 = o1;
    _534.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o1 = _534;
    float3 _543 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _555 = o2;
    _555.z = mad(_543.z, r1.xyz.z, mad(_543.y, r1.xyz.y, _543.x * r1.xyz.x));
    o2 = _555;
    float3 _570 = o1;
    _570.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o1 = _570;
    float3 _579 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _591 = o2;
    _591.x = mad(_579.z, r2.xyz.z, mad(_579.y, r2.xyz.y, _579.x * r2.xyz.x));
    o2 = _591;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
