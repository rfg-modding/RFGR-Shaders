cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

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
    _82.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _82;
    float4 _100 = r0;
    _100.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _100;
    float4 _118 = r0;
    _118.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
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
    float3 _239 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_239.x, _239.y, _239.z, r1.w);
    float4 _257 = r2;
    _257.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _257;
    float4 _273 = r2;
    _273.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _273;
    float4 _289 = r2;
    _289.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _289;
    float4 _304 = r0;
    _304.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _304;
    float4 _309 = r0;
    _309.w = rsqrt(r0.w);
    r0 = _309;
    float3 _315 = r0.www * r2.xyz;
    r1 = float4(_315.x, _315.y, _315.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _343 = r3;
    _343.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _343;
    float4 _359 = r3;
    _359.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _359;
    float4 _375 = r3;
    _375.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _375;
    float4 _390 = r0;
    _390.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _390;
    float4 _395 = r0;
    _395.w = rsqrt(r0.w);
    r0 = _395;
    float3 _401 = r0.www * r3.xyz;
    r2 = float4(_401.x, _401.y, _401.z, r2.w);
    float3 _408 = r1.zxy * r2.yzx;
    r3 = float4(_408.x, _408.y, _408.z, r3.w);
    float3 _419 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_419.x, _419.y, _419.z, r3.w);
    float3 _426 = r2.www * r3.xyz;
    r3 = float4(_426.x, _426.y, _426.z, r3.w);
    float3 _440 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_440.x, _440.y, _440.z, r4.w);
    float3 _457 = o1;
    _457.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _457;
    float3 _472 = o1;
    _472.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _472;
    float3 _487 = o1;
    _487.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _487;
    float3 _501 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_501.x, _501.y, _501.z, r4.w);
    float3 _515 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_515.x, _515.y, _515.z, r0.w);
    float4 _531 = r0;
    _531.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _531;
    float4 _536 = r0;
    _536.w = rsqrt(r0.w);
    r0 = _536;
    float3 _542 = r0.www * r4.xyz;
    r4 = float4(_542.x, _542.y, _542.z, r4.w);
    float3 _558 = o2;
    _558.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _558;
    float3 _567 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _579 = o3;
    _579.x = mad(_567.z, r2.xyz.z, mad(_567.y, r2.xyz.y, _567.x * r2.xyz.x));
    o3 = _579;
    float3 _594 = o2;
    _594.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _594;
    float3 _603 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _615 = o3;
    _615.z = mad(_603.z, r1.xyz.z, mad(_603.y, r1.xyz.y, _603.x * r1.xyz.x));
    o3 = _615;
    float3 _630 = o2;
    _630.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _630;
    float3 _639 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _651 = o3;
    _651.y = mad(_639.z, r3.xyz.z, mad(_639.y, r3.xyz.y, _639.x * r3.xyz.x));
    o3 = _651;
    float4 _660 = r0;
    _660.w = r0.y * cb0_m[13].x;
    r0 = _660;
    float4 _667 = r1;
    _667.x = r0.w * asfloat(3216550459u);
    r1 = _667;
    float4 _672 = r1;
    _672.x = exp2(r1.x);
    r1 = _672;
    float4 _679 = r1;
    _679.x = (-r1.x) + asfloat(1065353216u);
    r1 = _679;
    float4 _686 = r0;
    _686.w = r1.x / r0.w;
    r0 = _686;
    float4 _698 = r1;
    _698.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _698;
    float4 _713 = r0;
    _713.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _713;
    float4 _718 = r0;
    _718.x = sqrt(r0.x);
    r0 = _718;
    float4 _726 = r0;
    _726.x = r0.x * cb0_m[13].y;
    r0 = _726;
    float4 _736 = r0;
    _736.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _736;
    float4 _748 = r0;
    _748.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _748;
    float4 _754 = r0;
    _754.x = exp2(-r0.x);
    r0 = _754;
    float4 _760 = r0;
    _760.x = min(r0.x, asfloat(1065353216u));
    r0 = _760;
    float4 _767 = o3;
    _767.w = (-r0.x) + asfloat(1065353216u);
    o3 = _767;
    float2 _774 = float2(asint(shader_in[1].xy));
    r0 = float4(_774.x, _774.y, r0.z, r0.w);
    float2 _785 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(_785.x, _785.y, r0.z, r0.w);
    float2 _794 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_794.x, _794.y, o4.z, o4.w);
    float2 _801 = float2(asint(shader_in[2].xy));
    r0 = float4(_801.x, _801.y, r0.z, r0.w);
    float2 _807 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _807.x, _807.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _816 = asfloat(v1);
    shader_in[1] = float4(_816.x, _816.y, shader_in[1].z, shader_in[1].w);
    float2 _821 = asfloat(v2);
    shader_in[2] = float4(_821.x, _821.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
