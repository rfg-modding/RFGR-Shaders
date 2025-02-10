cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
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
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
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
    float4 _79 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r0;
    _93.x = mad(_79.w, r1.w, mad(_79.z, r1.z, mad(_79.y, r1.y, _79.x * r1.x)));
    r0 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r0;
    _119.y = mad(_105.w, r1.w, mad(_105.z, r1.z, mad(_105.y, r1.y, _105.x * r1.x)));
    r0 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r0;
    _145.z = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r0 = _145;
    float4 _156 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _170 = o0;
    _170.x = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _195 = o0;
    _195.y = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _220 = o0;
    _220.z = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float4 _232 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _246 = o0;
    _246.w = mad(_232.w, r0.w, mad(_232.z, r0.z, mad(_232.y, r0.y, _232.x * r0.x)));
    o0 = _246;
    float3 _260 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_260.x, _260.y, _260.z, r0.w);
    float3 _274 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_274.x, _274.y, _274.z, r1.w);
    float3 _288 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_288.x, _288.y, _288.z, r2.w);
    float3 _307 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_307.x, _307.y, _307.z, r2.w);
    float4 _323 = r0;
    _323.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _323;
    float4 _328 = r0;
    _328.w = rsqrt(r0.w);
    r0 = _328;
    float3 _334 = r0.www * r2.xyz;
    r2 = float4(_334.x, _334.y, _334.z, r2.w);
    float3 _341 = r1.zxy * r2.xyz;
    r3 = float4(_341.x, _341.y, _341.z, r3.w);
    float3 _353 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_353.x, _353.y, _353.z, r2.w);
    float4 _369 = r0;
    _369.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _369;
    float4 _374 = r0;
    _374.w = rsqrt(r0.w);
    r0 = _374;
    float3 _380 = r0.www * r2.xyz;
    r2 = float4(_380.x, _380.y, _380.z, r2.w);
    float3 _390 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _402 = r3;
    _402.x = mad(_390.z, r2.xyz.z, mad(_390.y, r2.xyz.y, _390.x * r2.xyz.x));
    r3 = _402;
    float3 _411 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _423 = r3;
    _423.y = mad(_411.z, r2.xyz.z, mad(_411.y, r2.xyz.y, _411.x * r2.xyz.x));
    r3 = _423;
    float3 _432 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _444 = r3;
    _444.z = mad(_432.z, r2.xyz.z, mad(_432.y, r2.xyz.y, _432.x * r2.xyz.x));
    r3 = _444;
    float3 _453 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _465 = o2;
    _465.x = mad(_453.z, r2.xyz.z, mad(_453.y, r2.xyz.y, _453.x * r2.xyz.x));
    o2 = _465;
    float4 _480 = r0;
    _480.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _480;
    float4 _485 = r0;
    _485.w = rsqrt(r0.w);
    r0 = _485;
    float3 _491 = r0.www * r3.xyz;
    r2 = float4(_491.x, _491.y, _491.z, r2.w);
    float3 _501 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _513 = r3;
    _513.x = mad(_501.z, r1.xyz.z, mad(_501.y, r1.xyz.y, _501.x * r1.xyz.x));
    r3 = _513;
    float3 _522 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _534 = r3;
    _534.y = mad(_522.z, r1.xyz.z, mad(_522.y, r1.xyz.y, _522.x * r1.xyz.x));
    r3 = _534;
    float3 _543 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _555 = r3;
    _555.z = mad(_543.z, r1.xyz.z, mad(_543.y, r1.xyz.y, _543.x * r1.xyz.x));
    r3 = _555;
    float3 _564 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _576 = o2;
    _576.z = mad(_564.z, r1.xyz.z, mad(_564.y, r1.xyz.y, _564.x * r1.xyz.x));
    o2 = _576;
    float4 _591 = r0;
    _591.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _591;
    float4 _596 = r0;
    _596.w = rsqrt(r0.w);
    r0 = _596;
    float3 _602 = r0.www * r3.xyz;
    r1 = float4(_602.x, _602.y, _602.z, r1.w);
    float3 _609 = r2.yzx * r1.zxy;
    r3 = float4(_609.x, _609.y, _609.z, r3.w);
    float3 _620 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_620.x, _620.y, _620.z, r3.w);
    float3 _630 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _633 = -r3.xyz;
    float3 _643 = o1;
    _643.y = mad(_630.z, _633.z, mad(_630.y, _633.y, _630.x * _633.x));
    o1 = _643;
    float3 _652 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _664 = o1;
    _664.x = mad(_652.z, r2.xyz.z, mad(_652.y, r2.xyz.y, _652.x * r2.xyz.x));
    o1 = _664;
    float4 _679 = o5;
    _679.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o5 = _679;
    float3 _688 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _700 = o1;
    _700.z = mad(_688.z, r1.xyz.z, mad(_688.y, r1.xyz.y, _688.x * r1.xyz.x));
    o1 = _700;
    float4 _715 = o5;
    _715.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o5 = _715;
    float3 _721 = -r3.xyz;
    float4 _731 = o5;
    _731.y = mad(r0.xyz.z, _721.z, mad(r0.xyz.y, _721.y, r0.xyz.x * _721.x));
    o5 = _731;
    float3 _740 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _752 = o2;
    _752.y = mad(_740.z, r3.xyz.z, mad(_740.y, r3.xyz.y, _740.x * r3.xyz.x));
    o2 = _752;
    float3 _766 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_766.x, _766.y, _766.z, r0.w);
    float3 _778 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _788 = r1;
    _788.x = mad(r0.xyz.z, _778.z, mad(r0.xyz.y, _778.y, r0.xyz.x * _778.x));
    r1 = _788;
    float3 _799 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _809 = r1;
    _809.z = mad(r0.xyz.z, _799.z, mad(r0.xyz.y, _799.y, r0.xyz.x * _799.x));
    r1 = _809;
    float3 _820 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _830 = r0;
    _830.x = mad(r0.xyz.z, _820.z, mad(r0.xyz.y, _820.y, r0.xyz.x * _820.x));
    r0 = _830;
    float4 _839 = r0;
    _839.x = r0.x * cb5_m[5].y;
    r0 = _839;
    float2 _850 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_850.x, r1.y, _850.y, r1.w);
    float4 _855 = o2;
    _855.w = r1.z;
    o2 = _855;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _884 = r0;
    _884.y = float(asint(shader_in[2].x));
    r0 = _884;
    float4 _891 = o5;
    _891.w = r0.y * asfloat(981467136u);
    o5 = _891;
    float4 _894 = r0;
    _894.y = asfloat(3212836864u);
    r0 = _894;
    float4 _901 = r1;
    _901.y = r0.x * r0.y;
    r1 = _901;
    float2 _909 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_909.x, _909.y, r0.z, r0.w);
    float2 _916 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o6 = float4(_916.x, _916.y, o6.z, o6.w);
    float2 _924 = cb5_m[5].w.xx * asfloat(uint2(981467136u, 981467136u));
    o6 = float4(o6.x, o6.y, _924.x, _924.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _939 = shader_in[2];
    _939.x = asfloat(v2);
    shader_in[2] = _939;
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
