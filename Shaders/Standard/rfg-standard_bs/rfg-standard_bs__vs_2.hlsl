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
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
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
    float4 _136 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _150 = o0;
    _150.x = mad(_136.w, r0.w, mad(_136.z, r0.z, mad(_136.y, r0.y, _136.x * r0.x)));
    o0 = _150;
    float4 _162 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _176 = o0;
    _176.y = mad(_162.w, r0.w, mad(_162.z, r0.z, mad(_162.y, r0.y, _162.x * r0.x)));
    o0 = _176;
    float4 _188 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _202 = o0;
    _202.z = mad(_188.w, r0.w, mad(_188.z, r0.z, mad(_188.y, r0.y, _188.x * r0.x)));
    o0 = _202;
    float4 _214 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _228 = o0;
    _228.w = mad(_214.w, r0.w, mad(_214.z, r0.z, mad(_214.y, r0.y, _214.x * r0.x)));
    o0 = _228;
    float3 _242 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_242.x, _242.y, _242.z, r0.w);
    float2 _249 = float2(asint(shader_in[3].xy));
    r1 = float4(_249.x, _249.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _271 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_271.x, _271.y, _271.z, r1.w);
    float4 _289 = r2;
    _289.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _289;
    float4 _305 = r2;
    _305.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _305;
    float4 _321 = r2;
    _321.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _321;
    float4 _336 = r0;
    _336.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _336;
    float4 _341 = r0;
    _341.w = rsqrt(r0.w);
    r0 = _341;
    float3 _347 = r0.www * r2.xyz;
    r1 = float4(_347.x, _347.y, _347.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _375 = r3;
    _375.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _375;
    float4 _391 = r3;
    _391.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _391;
    float4 _407 = r3;
    _407.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _407;
    float4 _422 = r0;
    _422.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _422;
    float4 _427 = r0;
    _427.w = rsqrt(r0.w);
    r0 = _427;
    float3 _433 = r0.www * r3.xyz;
    r2 = float4(_433.x, _433.y, _433.z, r2.w);
    float3 _440 = r1.zxy * r2.yzx;
    r3 = float4(_440.x, _440.y, _440.z, r3.w);
    float3 _451 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_451.x, _451.y, _451.z, r3.w);
    float3 _458 = r2.www * r3.xyz;
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float3 _468 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _480 = o2;
    _480.y = mad(_468.z, r3.xyz.z, mad(_468.y, r3.xyz.y, _468.x * r3.xyz.x));
    o2 = _480;
    float3 _495 = o3;
    _495.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _495;
    float3 _504 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _516 = o2;
    _516.z = mad(_504.z, r1.xyz.z, mad(_504.y, r1.xyz.y, _504.x * r1.xyz.x));
    o2 = _516;
    float3 _531 = o3;
    _531.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _531;
    float3 _546 = o3;
    _546.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _546;
    float3 _555 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _567 = o2;
    _567.x = mad(_555.z, r2.xyz.z, mad(_555.y, r2.xyz.y, _555.x * r2.xyz.x));
    o2 = _567;
    float2 _573 = float2(asint(shader_in[2].xy));
    r0 = float4(_573.x, _573.y, r0.z, r0.w);
    float2 _584 = r0.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_584.x, _584.y, r0.z, r0.w);
    float2 _590 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _590.x, _590.y);
    float2 _597 = float2(asint(shader_in[1].xy));
    r0 = float4(_597.x, _597.y, r0.z, r0.w);
    float2 _603 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_603.x, _603.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _612 = asfloat(v1);
    shader_in[1] = float4(_612.x, _612.y, shader_in[1].z, shader_in[1].w);
    float2 _617 = asfloat(v2);
    shader_in[2] = float4(_617.x, _617.y, shader_in[2].z, shader_in[2].w);
    float2 _622 = asfloat(v3);
    shader_in[3] = float4(_622.x, _622.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
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
