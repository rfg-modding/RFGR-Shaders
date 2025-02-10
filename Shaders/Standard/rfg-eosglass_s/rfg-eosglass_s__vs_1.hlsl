cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

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
    float3 _257 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_257.x, _257.y, _257.z, r1.w);
    float3 _267 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _280 = r2;
    _280.x = mad(_267.z, r1.xyz.z, mad(_267.y, r1.xyz.y, _267.x * r1.xyz.x));
    r2 = _280;
    float3 _289 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _301 = r2;
    _301.y = mad(_289.z, r1.xyz.z, mad(_289.y, r1.xyz.y, _289.x * r1.xyz.x));
    r2 = _301;
    float3 _310 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _322 = r2;
    _322.z = mad(_310.z, r1.xyz.z, mad(_310.y, r1.xyz.y, _310.x * r1.xyz.x));
    r2 = _322;
    float4 _337 = r0;
    _337.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _337;
    float4 _342 = r0;
    _342.w = rsqrt(r0.w);
    r0 = _342;
    float3 _348 = r0.www * r2.xyz;
    r1 = float4(_348.x, _348.y, _348.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _367 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _380 = r3;
    _380.x = mad(_367.z, r2.xyz.z, mad(_367.y, r2.xyz.y, _367.x * r2.xyz.x));
    r3 = _380;
    float3 _389 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _401 = r3;
    _401.y = mad(_389.z, r2.xyz.z, mad(_389.y, r2.xyz.y, _389.x * r2.xyz.x));
    r3 = _401;
    float3 _410 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _422 = r3;
    _422.z = mad(_410.z, r2.xyz.z, mad(_410.y, r2.xyz.y, _410.x * r2.xyz.x));
    r3 = _422;
    float4 _437 = r0;
    _437.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _437;
    float4 _442 = r0;
    _442.w = rsqrt(r0.w);
    r0 = _442;
    float3 _448 = r0.www * r3.xyz;
    r2 = float4(_448.x, _448.y, _448.z, r2.w);
    float3 _455 = r1.zxy * r2.yzx;
    r3 = float4(_455.x, _455.y, _455.z, r3.w);
    float3 _466 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_466.x, _466.y, _466.z, r3.w);
    float3 _473 = r2.www * r3.xyz;
    r3 = float4(_473.x, _473.y, _473.z, r3.w);
    float3 _488 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_488.x, _488.y, _488.z, r4.w);
    float4 _505 = r0;
    _505.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _505;
    float4 _510 = r0;
    _510.w = rsqrt(r0.w);
    r0 = _510;
    float3 _516 = r0.www * r4.xyz;
    r4 = float4(_516.x, _516.y, _516.z, r4.w);
    float3 _532 = o1;
    _532.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _532;
    float3 _547 = o1;
    _547.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _547;
    float4 _562 = r0;
    _562.w = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    r0 = _562;
    float3 _566 = o1;
    _566.z = r0.w;
    o1 = _566;
    float4 _573 = r0;
    _573.w = r0.w + r0.w;
    r0 = _573;
    float3 _583 = (r1.xyz * (-r0.www)) + r4.xyz;
    r4 = float4(_583.x, _583.y, _583.z, r4.w);
    o3 = r4.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u));
    float3 _602 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_602.x, _602.y, _602.z, r4.w);
    float3 _616 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_616.x, _616.y, _616.z, r0.w);
    float3 _632 = o2;
    _632.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _632;
    float3 _641 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _653 = o4;
    _653.x = mad(_641.z, r2.xyz.z, mad(_641.y, r2.xyz.y, _641.x * r2.xyz.x));
    o4 = _653;
    float3 _668 = o2;
    _668.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _668;
    float3 _677 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _689 = o4;
    _689.z = mad(_677.z, r1.xyz.z, mad(_677.y, r1.xyz.y, _677.x * r1.xyz.x));
    o4 = _689;
    float3 _704 = o2;
    _704.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _704;
    float3 _713 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _725 = o4;
    _725.y = mad(_713.z, r3.xyz.z, mad(_713.y, r3.xyz.y, _713.x * r3.xyz.x));
    o4 = _725;
    float4 _734 = r0;
    _734.w = r0.y * cb0_m[13].x;
    r0 = _734;
    float4 _741 = r1;
    _741.x = r0.w * asfloat(3216550459u);
    r1 = _741;
    float4 _746 = r1;
    _746.x = exp2(r1.x);
    r1 = _746;
    float4 _753 = r1;
    _753.x = (-r1.x) + asfloat(1065353216u);
    r1 = _753;
    float4 _760 = r0;
    _760.w = r1.x / r0.w;
    r0 = _760;
    float4 _772 = r1;
    _772.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _772;
    float4 _787 = r0;
    _787.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _787;
    float4 _792 = r0;
    _792.x = sqrt(r0.x);
    r0 = _792;
    float4 _800 = r0;
    _800.x = r0.x * cb0_m[13].y;
    r0 = _800;
    float4 _810 = r0;
    _810.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _810;
    float4 _822 = r0;
    _822.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _822;
    float4 _828 = r0;
    _828.x = exp2(-r0.x);
    r0 = _828;
    float4 _834 = r0;
    _834.x = min(r0.x, asfloat(1065353216u));
    r0 = _834;
    float4 _841 = o4;
    _841.w = (-r0.x) + asfloat(1065353216u);
    o4 = _841;
    float2 _848 = float2(asint(shader_in[1].xy));
    r0 = float4(_848.x, _848.y, r0.z, r0.w);
    float2 _857 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_857.x, _857.y, o5.z, o5.w);
    float2 _865 = float2(asint(shader_in[4].xy));
    r0 = float4(_865.x, _865.y, r0.z, r0.w);
    float2 _871 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _871.x, _871.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _880 = asfloat(v1);
    shader_in[1] = float4(_880.x, _880.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _891 = asfloat(v4);
    shader_in[4] = float4(_891.x, _891.y, shader_in[4].z, shader_in[4].w);
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
