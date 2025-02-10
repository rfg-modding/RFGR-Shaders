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
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float3 v5;
static float3 v6;
static float3 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _63 = r0;
    _63.x = shader_in[6].x * asfloat(1082130432u);
    r0 = _63;
    float3 _76 = (r0.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r0 = float4(_76.x, _76.y, _76.z, r0.w);
    float4 _81 = r0;
    _81.w = asfloat(1065353216u);
    r0 = _81;
    float4 _95 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _110 = r1;
    _110.x = mad(_95.w, r0.w, mad(_95.z, r0.z, mad(_95.y, r0.y, _95.x * r0.x)));
    r1 = _110;
    float4 _122 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _136 = r1;
    _136.y = mad(_122.w, r0.w, mad(_122.z, r0.z, mad(_122.y, r0.y, _122.x * r0.x)));
    r1 = _136;
    float4 _148 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _162 = r1;
    _162.z = mad(_148.w, r0.w, mad(_148.z, r0.z, mad(_148.y, r0.y, _148.x * r0.x)));
    r1 = _162;
    float4 _165 = r1;
    _165.w = asfloat(1065353216u);
    r1 = _165;
    float4 _176 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _190 = o0;
    _190.x = mad(_176.w, r1.w, mad(_176.z, r1.z, mad(_176.y, r1.y, _176.x * r1.x)));
    o0 = _190;
    float4 _201 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _215 = o0;
    _215.y = mad(_201.w, r1.w, mad(_201.z, r1.z, mad(_201.y, r1.y, _201.x * r1.x)));
    o0 = _215;
    float4 _226 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _240 = o0;
    _240.z = mad(_226.w, r1.w, mad(_226.z, r1.z, mad(_226.y, r1.y, _226.x * r1.x)));
    o0 = _240;
    float4 _252 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _266 = o0;
    _266.w = mad(_252.w, r1.w, mad(_252.z, r1.z, mad(_252.y, r1.y, _252.x * r1.x)));
    o0 = _266;
    float3 _280 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_280.x, _280.y, _280.z, r0.w);
    float3 _294 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_294.x, _294.y, _294.z, r1.w);
    float3 _304 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_304.x, _304.y, _304.z, r2.w);
    float3 _316 = (shader_in[6].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_316.x, _316.y, _316.z, r1.w);
    float3 _326 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _338 = r2;
    _338.x = mad(_326.z, r1.xyz.z, mad(_326.y, r1.xyz.y, _326.x * r1.xyz.x));
    r2 = _338;
    float3 _347 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _359 = r2;
    _359.y = mad(_347.z, r1.xyz.z, mad(_347.y, r1.xyz.y, _347.x * r1.xyz.x));
    r2 = _359;
    float3 _368 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _380 = r2;
    _380.z = mad(_368.z, r1.xyz.z, mad(_368.y, r1.xyz.y, _368.x * r1.xyz.x));
    r2 = _380;
    float4 _395 = r0;
    _395.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _395;
    float4 _400 = r0;
    _400.w = rsqrt(r0.w);
    r0 = _400;
    float3 _406 = r0.www * r2.xyz;
    r1 = float4(_406.x, _406.y, _406.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _426 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _439 = r3;
    _439.x = mad(_426.z, r2.xyz.z, mad(_426.y, r2.xyz.y, _426.x * r2.xyz.x));
    r3 = _439;
    float3 _448 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _460 = r3;
    _460.y = mad(_448.z, r2.xyz.z, mad(_448.y, r2.xyz.y, _448.x * r2.xyz.x));
    r3 = _460;
    float3 _469 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _481 = r3;
    _481.z = mad(_469.z, r2.xyz.z, mad(_469.y, r2.xyz.y, _469.x * r2.xyz.x));
    r3 = _481;
    float4 _496 = r0;
    _496.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _496;
    float4 _501 = r0;
    _501.w = rsqrt(r0.w);
    r0 = _501;
    float3 _507 = r0.www * r3.xyz;
    r2 = float4(_507.x, _507.y, _507.z, r2.w);
    float3 _514 = r1.zxy * r2.yzx;
    r3 = float4(_514.x, _514.y, _514.z, r3.w);
    float3 _525 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_525.x, _525.y, _525.z, r3.w);
    float3 _532 = r2.www * r3.xyz;
    r3 = float4(_532.x, _532.y, _532.z, r3.w);
    float3 _542 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _554 = o1;
    _554.y = mad(_542.z, r3.xyz.z, mad(_542.y, r3.xyz.y, _542.x * r3.xyz.x));
    o1 = _554;
    float4 _558 = o2;
    _558.y = r3.y;
    o2 = _558;
    float3 _567 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _579 = o1;
    _579.z = mad(_567.z, r1.xyz.z, mad(_567.y, r1.xyz.y, _567.x * r1.xyz.x));
    o1 = _579;
    float4 _583 = o2;
    _583.z = r1.y;
    o2 = _583;
    float3 _592 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _604 = o1;
    _604.x = mad(_592.z, r2.xyz.z, mad(_592.y, r2.xyz.y, _592.x * r2.xyz.x));
    o1 = _604;
    float4 _608 = o2;
    _608.x = r2.y;
    o2 = _608;
    float4 _617 = r0;
    _617.w = r0.y * cb0_m[13].x;
    r0 = _617;
    float4 _624 = r1;
    _624.x = r0.w * asfloat(3216550459u);
    r1 = _624;
    float4 _629 = r1;
    _629.x = exp2(r1.x);
    r1 = _629;
    float4 _636 = r1;
    _636.x = (-r1.x) + asfloat(1065353216u);
    r1 = _636;
    float4 _643 = r0;
    _643.w = r1.x / r0.w;
    r0 = _643;
    float4 _655 = r1;
    _655.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _655;
    float4 _670 = r0;
    _670.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _670;
    float4 _675 = r0;
    _675.x = sqrt(r0.x);
    r0 = _675;
    float4 _683 = r0;
    _683.x = r0.x * cb0_m[13].y;
    r0 = _683;
    float4 _693 = r0;
    _693.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _693;
    float4 _705 = r0;
    _705.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _705;
    float4 _711 = r0;
    _711.x = exp2(-r0.x);
    r0 = _711;
    float4 _717 = r0;
    _717.x = min(r0.x, asfloat(1065353216u));
    r0 = _717;
    float4 _724 = o2;
    _724.w = (-r0.x) + asfloat(1065353216u);
    o2 = _724;
    float2 _731 = float2(asint(shader_in[2].xy));
    r0 = float4(_731.x, _731.y, r0.z, r0.w);
    float2 _742 = r0.xy * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(_742.x, _742.y, r0.z, r0.w);
    float2 _751 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _751.x, _751.y);
    float2 _758 = float2(asint(shader_in[1].xy));
    r0 = float4(_758.x, _758.y, r0.z, r0.w);
    float2 _764 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_764.x, _764.y, o3.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _773 = asfloat(v1);
    shader_in[1] = float4(_773.x, _773.y, shader_in[1].z, shader_in[1].w);
    float2 _778 = asfloat(v2);
    shader_in[2] = float4(_778.x, _778.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
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
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
