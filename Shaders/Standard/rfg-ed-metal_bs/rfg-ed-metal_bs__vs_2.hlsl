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
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static int2 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float2 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _57 = r0;
    _57.w = asfloat(1065353216u);
    r0 = _57;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _67 = r1;
    _67.w = asfloat(1065353216u);
    r1 = _67;
    float4 _85 = r0;
    _85.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _85;
    float4 _103 = r0;
    _103.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _103;
    float4 _121 = r0;
    _121.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _121;
    float4 _137 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _151 = o0;
    _151.x = mad(_137.w, r0.w, mad(_137.z, r0.z, mad(_137.y, r0.y, _137.x * r0.x)));
    o0 = _151;
    float4 _163 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _177 = o0;
    _177.y = mad(_163.w, r0.w, mad(_163.z, r0.z, mad(_163.y, r0.y, _163.x * r0.x)));
    o0 = _177;
    float4 _189 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _203 = o0;
    _203.z = mad(_189.w, r0.w, mad(_189.z, r0.z, mad(_189.y, r0.y, _189.x * r0.x)));
    o0 = _203;
    float4 _215 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _229 = o0;
    _229.w = mad(_215.w, r0.w, mad(_215.z, r0.z, mad(_215.y, r0.y, _215.x * r0.x)));
    o0 = _229;
    float3 _243 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_243.x, _243.y, _243.z, r0.w);
    float2 _251 = float2(asint(shader_in[5].xy));
    r1 = float4(_251.x, _251.y, r1.z, r1.w);
    float2 _262 = r1.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_262.x, _262.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _283 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_283.x, _283.y, _283.z, r1.w);
    float4 _301 = r2;
    _301.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _301;
    float4 _317 = r2;
    _317.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _317;
    float4 _333 = r2;
    _333.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _333;
    float4 _348 = r0;
    _348.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _348;
    float4 _353 = r0;
    _353.w = rsqrt(r0.w);
    r0 = _353;
    float3 _359 = r0.www * r2.xyz;
    r1 = float4(_359.x, _359.y, _359.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _386 = r3;
    _386.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _386;
    float4 _402 = r3;
    _402.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _402;
    float4 _418 = r3;
    _418.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _418;
    float4 _433 = r0;
    _433.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _433;
    float4 _438 = r0;
    _438.w = rsqrt(r0.w);
    r0 = _438;
    float3 _444 = r0.www * r3.xyz;
    r2 = float4(_444.x, _444.y, _444.z, r2.w);
    float3 _451 = r1.zxy * r2.yzx;
    r3 = float4(_451.x, _451.y, _451.z, r3.w);
    float3 _462 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_462.x, _462.y, _462.z, r3.w);
    float3 _469 = r2.www * r3.xyz;
    r3 = float4(_469.x, _469.y, _469.z, r3.w);
    float3 _479 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _491 = o2;
    _491.y = mad(_479.z, r3.xyz.z, mad(_479.y, r3.xyz.y, _479.x * r3.xyz.x));
    o2 = _491;
    float3 _500 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _512 = o2;
    _512.z = mad(_500.z, r1.xyz.z, mad(_500.y, r1.xyz.y, _500.x * r1.xyz.x));
    o2 = _512;
    float3 _521 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _533 = o2;
    _533.x = mad(_521.z, r2.xyz.z, mad(_521.y, r2.xyz.y, _521.x * r2.xyz.x));
    o2 = _533;
    float4 _548 = r0;
    _548.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _548;
    float4 _553 = r0;
    _553.w = rsqrt(r0.w);
    r0 = _553;
    float3 _559 = r0.www * r0.xyz;
    r0 = float4(_559.x, _559.y, _559.z, r0.w);
    float3 _575 = o3;
    _575.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _575;
    float3 _590 = o3;
    _590.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _590;
    float3 _605 = o3;
    _605.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _605;
    float2 _611 = float2(asint(shader_in[1].xy));
    r0 = float4(_611.x, _611.y, r0.z, r0.w);
    float2 _622 = r0.xy * float2(cb2_m[3].x, cb2_m[3].y);
    r0 = float4(_622.x, _622.y, r0.z, r0.w);
    float2 _628 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_628.x, _628.y, o4.z, o4.w);
    float2 _636 = float2(asint(shader_in[4].xy));
    r0 = float4(_636.x, _636.y, r0.z, r0.w);
    float2 _642 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _642.x, _642.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _651 = asfloat(v1);
    shader_in[1] = float4(_651.x, _651.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _662 = asfloat(v4);
    shader_in[4] = float4(_662.x, _662.y, shader_in[4].z, shader_in[4].w);
    float2 _667 = asfloat(v5);
    shader_in[5] = float4(_667.x, _667.y, shader_in[5].z, shader_in[5].w);
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
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
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
