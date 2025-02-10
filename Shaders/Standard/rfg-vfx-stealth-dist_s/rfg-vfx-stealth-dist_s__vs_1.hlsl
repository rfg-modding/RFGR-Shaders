cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float2 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _45 = r0;
    _45.w = asfloat(1065353216u);
    r0 = _45;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _55 = r1;
    _55.w = asfloat(1065353216u);
    r1 = _55;
    float4 _72 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _86 = r0;
    _86.x = mad(_72.w, r1.w, mad(_72.z, r1.z, mad(_72.y, r1.y, _72.x * r1.x)));
    r0 = _86;
    float4 _98 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _112 = r0;
    _112.z = mad(_98.w, r1.w, mad(_98.z, r1.z, mad(_98.y, r1.y, _98.x * r1.x)));
    r0 = _112;
    float4 _124 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _138 = r0;
    _138.y = mad(_124.w, r1.w, mad(_124.z, r1.z, mad(_124.y, r1.y, _124.x * r1.x)));
    r0 = _138;
    float4 _149 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _163 = o0;
    _163.x = mad(_149.w, r0.w, mad(_149.z, r0.z, mad(_149.y, r0.y, _149.x * r0.x)));
    o0 = _163;
    float4 _174 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _188 = o0;
    _188.y = mad(_174.w, r0.w, mad(_174.z, r0.z, mad(_174.y, r0.y, _174.x * r0.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _213 = o0;
    _213.z = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    o0 = _213;
    float4 _225 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _239 = o0;
    _239.w = mad(_225.w, r0.w, mad(_225.z, r0.z, mad(_225.y, r0.y, _225.x * r0.x)));
    o0 = _239;
    float3 _253 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_253.x, r0.y, _253.y, _253.z);
    float4 _266 = r0;
    _266.y = asfloat((cb6_m[3].w < r0.y) ? 4294967295u : 0u);
    r0 = _266;
    float2 _273 = o5;
    _273.x = asfloat(asuint(r0.y) & 1065353216u);
    o5 = _273;
    float4 _288 = r0;
    _288.y = mad(r0.xzw.z, r0.xzw.z, mad(r0.xzw.y, r0.xzw.y, r0.xzw.x * r0.xzw.x));
    r0 = _288;
    float4 _293 = r1;
    _293.x = rsqrt(r0.y);
    r1 = _293;
    float4 _298 = r0;
    _298.y = sqrt(r0.y);
    r0 = _298;
    float4 _305 = r0;
    _305.y = r0.y + asfloat(3221225472u);
    r0 = _305;
    float4 _315 = o3;
    _315.w = clamp(r0.y * asfloat(1015889355u), 0.0f, 1.0f);
    o3 = _315;
    float4 _325 = r0;
    _325.y = ((-r0.z) * r1.x) + asfloat(1065353216u);
    r0 = _325;
    float3 _331 = r0.xzw * r1.xxx;
    r0 = float4(_331.x, r0.y, _331.y, _331.z);
    float4 _342 = r0;
    _342.y = asfloat((abs(r0.y) < asfloat(981668463u)) ? 4294967295u : 0u);
    r0 = _342;
    float4 _351 = r1;
    _351.x = asfloat((abs(r0.x) < asfloat(981668463u)) ? 4294967295u : 0u);
    r1 = _351;
    float4 _360 = r1;
    _360.y = asfloat((asfloat(0u) == abs(r0.w)) ? 0u : 4294967295u);
    r1 = _360;
    float4 _370 = r1;
    _370.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _370;
    float4 _380 = r0;
    _380.y = asfloat(asuint(r0.y) & asuint(r1.x));
    r0 = _380;
    uint3 _385 = asuint(r0.yyy);
    float3 _387 = asfloat(uint3(0u, 0u, 1065353216u));
    float3 _389 = asfloat(uint3(1065353216u, 0u, 0u));
    bool3 _392 = bool3(_385.x != uint3(0u, 0u, 0u).x, _385.y != uint3(0u, 0u, 0u).y, _385.z != uint3(0u, 0u, 0u).z);
    float3 _393 = float3(_392.x ? _387.x : _389.x, _392.y ? _387.y : _389.y, _392.z ? _387.z : _389.z);
    r1 = float4(_393.x, _393.y, _393.z, r1.w);
    float3 _400 = r0.wxz * r1.xyz;
    r2 = float4(_400.x, _400.y, _400.z, r2.w);
    float3 _412 = (r0.zwx * r1.yzx) + (-r2.xyz);
    r1 = float4(_412.x, _412.y, _412.z, r1.w);
    float4 _428 = r0;
    _428.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _428;
    float4 _433 = r0;
    _433.y = rsqrt(r0.y);
    r0 = _433;
    float3 _439 = r0.yyy * r1.xyz;
    r1 = float4(_439.x, _439.y, _439.z, r1.w);
    float3 _446 = r0.zwx * r1.zxy;
    r2 = float4(_446.x, _446.y, _446.z, r2.w);
    float3 _457 = (r1.yzx * r0.wxz) + (-r2.xyz);
    r2 = float4(_457.x, _457.y, _457.z, r2.w);
    float4 _473 = r0;
    _473.y = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _473;
    float4 _478 = r0;
    _478.y = rsqrt(r0.y);
    r0 = _478;
    float3 _484 = r0.yyy * r2.xyz;
    r2 = float4(_484.x, _484.y, _484.z, r2.w);
    float3 _497 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_497.x, _497.y, _497.z, r3.w);
    float3 _508 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _521 = r4;
    _521.x = mad(_508.z, r3.xyz.z, mad(_508.y, r3.xyz.y, _508.x * r3.xyz.x));
    r4 = _521;
    float3 _530 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _542 = r4;
    _542.y = mad(_530.z, r3.xyz.z, mad(_530.y, r3.xyz.y, _530.x * r3.xyz.x));
    r4 = _542;
    float3 _551 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _563 = r4;
    _563.z = mad(_551.z, r3.xyz.z, mad(_551.y, r3.xyz.y, _551.x * r3.xyz.x));
    r4 = _563;
    float4 _578 = r0;
    _578.y = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _578;
    float4 _583 = r0;
    _583.y = rsqrt(r0.y);
    r0 = _583;
    float3 _589 = r0.yyy * r4.xyz;
    r3 = float4(_589.x, _589.y, _589.z, r3.w);
    float4 _605 = r0;
    _605.y = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    r0 = _605;
    float4 _614 = r0;
    _614.y = (r0.y * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _614;
    float4 _621 = o1;
    _621.y = (-r0.y) + asfloat(1065353216u);
    o1 = _621;
    float4 _636 = r0;
    _636.y = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    r0 = _636;
    float4 _644 = r0;
    _644.y = (r0.y * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _644;
    float4 _651 = o1;
    _651.x = (-r0.y) + asfloat(1065353216u);
    o1 = _651;
    float2 _655 = asfloat(uint2(0u, 1065353216u));
    o1 = float4(o1.x, o1.y, _655.x, _655.y);
    float4 _672 = o2;
    _672.w = clamp(mad(r0.xzw.z, r3.xyz.z, mad(r0.xzw.y, r3.xyz.y, r0.xzw.x * r3.xyz.x)), 0.0f, 1.0f);
    o2 = _672;
    o2 = float4(r0.xzw.x, r0.xzw.y, r0.xzw.z, o2.w);
    o3 = float4(r3.xyz.x, r3.xyz.y, r3.xyz.z, o3.w);
    float3 _687 = float3(asint(shader_in[1].xxy));
    r0 = float4(_687.x, _687.y, _687.z, r0.w);
    float3 _696 = r0.xyz * asfloat(uint3(989855744u, 989855744u, 981467136u));
    r0 = float4(_696.x, _696.y, _696.z, r0.w);
    float3 _712 = (cb0_m[12].x.xxx * asfloat(uint3(1041865114u, 3189348762u, 1028443341u))) + r0.xyz;
    o4 = float4(_712.x, o4.y, _712.y, _712.z);
    float4 _717 = o4;
    _717.y = r0.z;
    o4 = _717;
    float4 _727 = r0;
    _727.x = asfloat((cb6_m[3].w < asfloat(3323739136u)) ? 4294967295u : 0u);
    r0 = _727;
    float4 _737 = r0;
    _737.y = asfloat((asfloat(3323741184u) < cb6_m[3].w) ? 4294967295u : 0u);
    r0 = _737;
    float4 _747 = r0;
    _747.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _747;
    float2 _756 = o5;
    _756.y = (asuint(r0.x) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    o5 = _756;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _764 = asfloat(v1);
    shader_in[1] = float4(_764.x, _764.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
