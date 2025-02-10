cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float4 r4;

void vs_main()
{
    float4 _50 = r0;
    _50.w = asfloat(1065353216u);
    r0 = _50;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _61 = r1;
    _61.w = asfloat(1065353216u);
    r1 = _61;
    float4 _79 = r0;
    _79.x = mad(shader_in[2].w, r1.w, mad(shader_in[2].z, r1.z, mad(shader_in[2].y, r1.y, shader_in[2].x * r1.x)));
    r0 = _79;
    float4 _97 = r0;
    _97.y = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _97;
    float4 _115 = r0;
    _115.z = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _115;
    float4 _131 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _145 = o0;
    _145.x = mad(_131.w, r0.w, mad(_131.z, r0.z, mad(_131.y, r0.y, _131.x * r0.x)));
    o0 = _145;
    float4 _157 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _171 = o0;
    _171.y = mad(_157.w, r0.w, mad(_157.z, r0.z, mad(_157.y, r0.y, _157.x * r0.x)));
    o0 = _171;
    float4 _182 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _196 = o0;
    _196.z = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _221 = o0;
    _221.w = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float3 _235 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_235.x, _235.y, _235.z, r1.w);
    float3 _254 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_254.x, _254.y, _254.z, r1.w);
    float4 _270 = r0;
    _270.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _270;
    float4 _275 = r0;
    _275.w = rsqrt(r0.w);
    r0 = _275;
    float3 _281 = r0.www * r1.xyz;
    r1 = float4(_281.x, _281.y, _281.z, r1.w);
    float3 _289 = r1.yzx * shader_in[1].zxy;
    r2 = float4(_289.x, _289.y, _289.z, r2.w);
    float3 _302 = (shader_in[1].yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_302.x, _302.y, _302.z, r2.w);
    float3 _312 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _324 = o2;
    _324.y = mad(_312.z, r1.xyz.z, mad(_312.y, r1.xyz.y, _312.x * r1.xyz.x));
    o2 = _324;
    float4 _339 = r0;
    _339.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _339;
    float4 _344 = r0;
    _344.w = rsqrt(r0.w);
    r0 = _344;
    float3 _350 = r0.www * r2.xyz;
    r1 = float4(_350.x, _350.y, _350.z, r1.w);
    float4 _367 = r2;
    _367.x = mad(shader_in[2].xyz.z, r1.xyz.z, mad(shader_in[2].xyz.y, r1.xyz.y, shader_in[2].xyz.x * r1.xyz.x));
    r2 = _367;
    float4 _383 = r2;
    _383.y = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r2 = _383;
    float4 _399 = r2;
    _399.z = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _399;
    float3 _408 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _420 = o2;
    _420.x = mad(_408.z, r1.xyz.z, mad(_408.y, r1.xyz.y, _408.x * r1.xyz.x));
    o2 = _420;
    float4 _435 = r0;
    _435.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _435;
    float4 _440 = r0;
    _440.w = rsqrt(r0.w);
    r0 = _440;
    float3 _446 = r0.www * r2.xyz;
    r1 = float4(_446.x, _446.y, _446.z, r1.w);
    float4 _464 = r2;
    _464.x = mad(shader_in[2].xyz.z, shader_in[1].xyz.z, mad(shader_in[2].xyz.y, shader_in[1].xyz.y, shader_in[2].xyz.x * shader_in[1].xyz.x));
    r2 = _464;
    float4 _481 = r2;
    _481.y = mad(shader_in[3].xyz.z, shader_in[1].xyz.z, mad(shader_in[3].xyz.y, shader_in[1].xyz.y, shader_in[3].xyz.x * shader_in[1].xyz.x));
    r2 = _481;
    float4 _498 = r2;
    _498.z = mad(shader_in[4].xyz.z, shader_in[1].xyz.z, mad(shader_in[4].xyz.y, shader_in[1].xyz.y, shader_in[4].xyz.x * shader_in[1].xyz.x));
    r2 = _498;
    float4 _513 = r0;
    _513.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _513;
    float4 _518 = r0;
    _518.w = rsqrt(r0.w);
    r0 = _518;
    float3 _524 = r0.www * r2.xyz;
    r2 = float4(_524.x, _524.y, _524.z, r2.w);
    float3 _531 = r1.yzx * r2.zxy;
    r3 = float4(_531.x, _531.y, _531.z, r3.w);
    float3 _543 = (r2.yzx * r1.zxy) + (-r3.xyz);
    r3 = float4(_543.x, _543.y, _543.z, r3.w);
    float3 _557 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_557.x, _557.y, _557.z, r4.w);
    float3 _573 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_573.x, _573.y, _573.z, r0.w);
    float3 _580 = -r3.xyz;
    float3 _590 = o1;
    _590.y = mad(r4.xyz.z, _580.z, mad(r4.xyz.y, _580.y, r4.xyz.x * _580.x));
    o1 = _590;
    float3 _599 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _602 = -r3.xyz;
    float4 _612 = o5;
    _612.y = mad(_599.z, _602.z, mad(_599.y, _602.y, _599.x * _602.x));
    o5 = _612;
    float3 _627 = o1;
    _627.x = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _627;
    float3 _636 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _648 = o5;
    _648.x = mad(_636.z, r1.xyz.z, mad(_636.y, r1.xyz.y, _636.x * r1.xyz.x));
    o5 = _648;
    float3 _663 = o1;
    _663.z = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _663;
    float3 _672 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _684 = o5;
    _684.z = mad(_672.z, r2.xyz.z, mad(_672.y, r2.xyz.y, _672.x * r2.xyz.x));
    o5 = _684;
    float3 _693 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _706 = o2;
    _706.z = mad(_693.z, shader_in[1].xyz.z, mad(_693.y, shader_in[1].xyz.y, _693.x * shader_in[1].xyz.x));
    o2 = _706;
    float3 _720 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_720.x, _720.y, _720.z, r1.w);
    float3 _732 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _742 = r2;
    _742.x = mad(r1.xyz.z, _732.z, mad(r1.xyz.y, _732.y, r1.xyz.x * _732.x));
    r2 = _742;
    float3 _753 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _763 = r2;
    _763.z = mad(r1.xyz.z, _753.z, mad(r1.xyz.y, _753.y, r1.xyz.x * _753.x));
    r2 = _763;
    float3 _774 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _784 = r0;
    _784.w = mad(r1.xyz.z, _774.z, mad(r1.xyz.y, _774.y, r1.xyz.x * _774.x));
    r0 = _784;
    float4 _793 = r0;
    _793.w = r0.w * cb5_m[5].y;
    r0 = _793;
    float2 _804 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_804.x, r1.y, _804.y, r1.w);
    float4 _809 = o2;
    _809.w = r1.z;
    o2 = _809;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _839 = r1;
    _839.z = r0.y * cb0_m[13].x;
    r1 = _839;
    float4 _846 = r1;
    _846.w = r1.z * asfloat(3216550459u);
    r1 = _846;
    float4 _851 = r1;
    _851.w = exp2(r1.w);
    r1 = _851;
    float4 _858 = r1;
    _858.w = (-r1.w) + asfloat(1065353216u);
    r1 = _858;
    float4 _865 = r1;
    _865.z = r1.w / r1.z;
    r1 = _865;
    float4 _877 = r1;
    _877.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _877;
    float4 _892 = r0;
    _892.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _892;
    float4 _897 = r0;
    _897.x = sqrt(r0.x);
    r0 = _897;
    float4 _905 = r0;
    _905.x = r0.x * cb0_m[13].y;
    r0 = _905;
    float4 _915 = r0;
    _915.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _915;
    float4 _927 = r0;
    _927.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _927;
    float4 _933 = r0;
    _933.x = exp2(-r0.x);
    r0 = _933;
    float4 _939 = r0;
    _939.x = min(r0.x, asfloat(1065353216u));
    r0 = _939;
    float4 _946 = o5;
    _946.w = (-r0.x) + asfloat(1065353216u);
    o5 = _946;
    float4 _950 = r0;
    _950.x = asfloat(3212836864u);
    r0 = _950;
    float4 _957 = r1;
    _957.y = r0.w * r0.x;
    r1 = _957;
    float2 _965 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_965.x, _965.y, o6.z, o6.w);
    float2 _971 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _971.x, _971.y);
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
