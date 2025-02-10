cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
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
    float4 cb2_m[19] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v1;
static int2 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _57 = r0;
    _57.w = asfloat(1065353216u);
    r0 = _57;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _67 = r1;
    _67.w = asfloat(1065353216u);
    r1 = _67;
    float4 _83 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _97 = r0;
    _97.y = mad(_83.w, r1.w, mad(_83.z, r1.z, mad(_83.y, r1.y, _83.x * r1.x)));
    r0 = _97;
    float4 _108 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _122 = r0;
    _122.x = mad(_108.w, r1.w, mad(_108.z, r1.z, mad(_108.y, r1.y, _108.x * r1.x)));
    r0 = _122;
    float4 _134 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _148 = r0;
    _148.z = mad(_134.w, r1.w, mad(_134.z, r1.z, mad(_134.y, r1.y, _134.x * r1.x)));
    r0 = _148;
    float4 _159 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _173 = o0;
    _173.x = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _184 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _198 = o0;
    _198.y = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _209 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _223 = o0;
    _223.z = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    o0 = _223;
    float4 _235 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _249 = o0;
    _249.w = mad(_235.w, r0.w, mad(_235.z, r0.z, mad(_235.y, r0.y, _235.x * r0.x)));
    o0 = _249;
    float3 _263 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_263.x, _263.y, _263.z, r1.w);
    float2 _275 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_275.x, _275.y, r0.z, r0.w);
    float2 _288 = (r0.xy * asfloat(uint2(989855744u, 989855744u))) + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_288.x, _288.y, r0.z, r0.w);
    float2 _300 = r0.xy + float2(cb2_m[18].z, cb2_m[18].w);
    r0 = float4(r0.x, r0.y, _300.x, _300.y);
    o1 = r0.zw * float2(cb2_m[18].x, cb2_m[18].y);
    float3 _323 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_323.x, _323.y, _323.z, r2.w);
    float3 _334 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _347 = r3;
    _347.x = mad(_334.z, r2.xyz.z, mad(_334.y, r2.xyz.y, _334.x * r2.xyz.x));
    r3 = _347;
    float3 _356 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _368 = r3;
    _368.y = mad(_356.z, r2.xyz.z, mad(_356.y, r2.xyz.y, _356.x * r2.xyz.x));
    r3 = _368;
    float3 _377 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _389 = r3;
    _389.z = mad(_377.z, r2.xyz.z, mad(_377.y, r2.xyz.y, _377.x * r2.xyz.x));
    r3 = _389;
    float4 _404 = r0;
    _404.z = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _404;
    float4 _409 = r0;
    _409.z = rsqrt(r0.z);
    r0 = _409;
    float3 _415 = r0.zzz * r3.xyz;
    r2 = float4(_415.x, _415.y, _415.z, r2.w);
    float3 _422 = r2.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r3 = float4(_422.x, _422.y, _422.z, r3.w);
    float3 _433 = (r2.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r3.xyz);
    r3 = float4(_433.x, _433.y, _433.z, r3.w);
    float4 _446 = r0;
    _446.z = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r0 = _446;
    float4 _451 = r0;
    _451.z = rsqrt(r0.z);
    r0 = _451;
    float3 _457 = r0.zzz * r3.xyz;
    r3 = float4(_457.x, _457.y, _457.z, r3.w);
    float3 _465 = r2.yzx * (-r3.xyz);
    r4 = float4(_465.x, _465.y, _465.z, r4.w);
    float3 _478 = ((-r3.zxy) * r2.zxy) + (-r4.xyz);
    r4 = float4(_478.x, _478.y, _478.z, r4.w);
    float3 _488 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _500 = o2;
    _500.x = mad(_488.z, r4.xyz.z, mad(_488.y, r4.xyz.y, _488.x * r4.xyz.x));
    o2 = _500;
    float2 _507 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _510 = -r3.xz;
    float3 _517 = o2;
    _517.y = mad(_507.y, _510.y, _507.x * _510.x);
    o2 = _517;
    float3 _526 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _538 = o2;
    _538.z = mad(_526.z, r2.xyz.z, mad(_526.y, r2.xyz.y, _526.x * r2.xyz.x));
    o2 = _538;
    float4 _553 = r0;
    _553.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _553;
    float4 _558 = r0;
    _558.z = rsqrt(r0.z);
    r0 = _558;
    float3 _564 = r0.zzz * r1.xyz;
    r1 = float4(_564.x, _564.y, _564.z, r1.w);
    float4 _580 = o3;
    _580.z = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    o3 = _580;
    float2 _586 = -r3.xz;
    float4 _593 = o3;
    _593.y = mad(r1.zy.y, _586.y, r1.zy.x * _586.x);
    o3 = _593;
    float4 _608 = o3;
    _608.x = mad(r1.xyz.z, r4.xyz.z, mad(r1.xyz.y, r4.xyz.y, r1.xyz.x * r4.xyz.x));
    o3 = _608;
    float4 _617 = o3;
    _617.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o3 = _617;
    float2 _628 = r0.xy + float2(cb2_m[16].z, cb2_m[16].w);
    r0 = float4(r0.x, r0.y, _628.x, _628.y);
    float2 _639 = r0.zw * float2(cb2_m[16].x, cb2_m[16].y);
    o4 = float4(_639.x, _639.y, o4.z, o4.w);
    float2 _646 = float2(asint(shader_in[2].xy));
    r0 = float4(r0.x, r0.y, _646.x, _646.y);
    float2 _654 = r0.zw * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _654.x, _654.y);
    float2 _666 = r0.xy + float2(cb2_m[17].z, cb2_m[17].w);
    r0 = float4(r0.x, r0.y, _666.x, _666.y);
    o5 = float4(r0.xy.x, r0.xy.y, o5.z, o5.w);
    float2 _681 = r0.zw * float2(cb2_m[17].x, cb2_m[17].y);
    o5 = float4(o5.x, o5.y, _681.x, _681.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float2 _692 = asfloat(v2);
    shader_in[2] = float4(_692.x, _692.y, shader_in[2].z, shader_in[2].w);
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
