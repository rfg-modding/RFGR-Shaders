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
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _68 = r1;
    _68.w = asfloat(1065353216u);
    r1 = _68;
    float4 _84 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _98 = r0;
    _98.y = mad(_84.w, r1.w, mad(_84.z, r1.z, mad(_84.y, r1.y, _84.x * r1.x)));
    r0 = _98;
    float4 _109 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _123 = r0;
    _123.x = mad(_109.w, r1.w, mad(_109.z, r1.z, mad(_109.y, r1.y, _109.x * r1.x)));
    r0 = _123;
    float4 _135 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _149 = r0;
    _149.z = mad(_135.w, r1.w, mad(_135.z, r1.z, mad(_135.y, r1.y, _135.x * r1.x)));
    r0 = _149;
    float4 _160 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _174 = o0;
    _174.x = mad(_160.w, r0.w, mad(_160.z, r0.z, mad(_160.y, r0.y, _160.x * r0.x)));
    o0 = _174;
    float4 _185 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _199 = o0;
    _199.y = mad(_185.w, r0.w, mad(_185.z, r0.z, mad(_185.y, r0.y, _185.x * r0.x)));
    o0 = _199;
    float4 _210 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _224 = o0;
    _224.z = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float4 _236 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _250 = o0;
    _250.w = mad(_236.w, r0.w, mad(_236.z, r0.z, mad(_236.y, r0.y, _236.x * r0.x)));
    o0 = _250;
    float2 _256 = float2(asint(shader_in[2].xy));
    r1 = float4(_256.x, _256.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _278 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float3 _292 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r2 = float4(_292.x, _292.y, _292.z, r2.w);
    float2 _305 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_305.x, _305.y, r0.z, r0.w);
    float2 _317 = (r0.xy * asfloat(uint2(989855744u, 989855744u))) + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_317.x, _317.y, r0.z, r0.w);
    float4 _333 = r0;
    _333.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _333;
    float4 _338 = r0;
    _338.z = rsqrt(r0.z);
    r0 = _338;
    float3 _344 = r0.zzz * r1.xyz;
    r1 = float4(_344.x, _344.y, _344.z, r1.w);
    float3 _358 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_358.x, _358.y, _358.z, r3.w);
    float3 _369 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _382 = r4;
    _382.x = mad(_369.z, r3.xyz.z, mad(_369.y, r3.xyz.y, _369.x * r3.xyz.x));
    r4 = _382;
    float3 _391 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _403 = r4;
    _403.y = mad(_391.z, r3.xyz.z, mad(_391.y, r3.xyz.y, _391.x * r3.xyz.x));
    r4 = _403;
    float3 _412 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _424 = r4;
    _424.z = mad(_412.z, r3.xyz.z, mad(_412.y, r3.xyz.y, _412.x * r3.xyz.x));
    r4 = _424;
    float4 _439 = r0;
    _439.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _439;
    float4 _444 = r0;
    _444.z = rsqrt(r0.z);
    r0 = _444;
    float3 _450 = r0.zzz * r4.xyz;
    r3 = float4(_450.x, _450.y, _450.z, r3.w);
    float3 _457 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r4 = float4(_457.x, _457.y, _457.z, r4.w);
    float3 _468 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r4.xyz);
    r4 = float4(_468.x, _468.y, _468.z, r4.w);
    float4 _481 = r0;
    _481.z = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _481;
    float4 _486 = r0;
    _486.z = rsqrt(r0.z);
    r0 = _486;
    float3 _492 = r0.zzz * r4.xyz;
    r4 = float4(_492.x, _492.y, _492.z, r4.w);
    float3 _500 = r3.yzx * (-r4.xyz);
    r5 = float4(_500.x, _500.y, _500.z, r5.w);
    float3 _513 = ((-r4.zxy) * r3.zxy) + (-r5.xyz);
    r5 = float4(_513.x, _513.y, _513.z, r5.w);
    float3 _529 = o2;
    _529.x = mad(r1.xyz.z, r5.xyz.z, mad(r1.xyz.y, r5.xyz.y, r1.xyz.x * r5.xyz.x));
    o2 = _529;
    float2 _535 = -r4.xz;
    float3 _542 = o2;
    _542.y = mad(r1.zy.y, _535.y, r1.zy.x * _535.x);
    o2 = _542;
    float3 _557 = o2;
    _557.z = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o2 = _557;
    float4 _561 = o3;
    _561.z = r3.y;
    o3 = _561;
    float3 _570 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _582 = o4;
    _582.z = mad(_570.z, r3.xyz.z, mad(_570.y, r3.xyz.y, _570.x * r3.xyz.x));
    o4 = _582;
    float4 _587 = o3;
    _587.y = -r4.z;
    o3 = _587;
    float2 _594 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _597 = -r4.xz;
    float4 _604 = o4;
    _604.y = mad(_594.y, _597.y, _594.x * _597.x);
    o4 = _604;
    float4 _608 = o3;
    _608.x = r5.y;
    o3 = _608;
    float3 _617 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _629 = o4;
    _629.x = mad(_617.z, r5.xyz.z, mad(_617.y, r5.xyz.y, _617.x * r5.xyz.x));
    o4 = _629;
    float4 _638 = o3;
    _638.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o3 = _638;
    float4 _647 = r0;
    _647.z = r2.y * cb0_m[13].x;
    r0 = _647;
    float4 _654 = r0;
    _654.w = r0.z * asfloat(3216550459u);
    r0 = _654;
    float4 _659 = r0;
    _659.w = exp2(r0.w);
    r0 = _659;
    float4 _666 = r0;
    _666.w = (-r0.w) + asfloat(1065353216u);
    r0 = _666;
    float4 _673 = r0;
    _673.z = r0.w / r0.z;
    r0 = _673;
    float4 _685 = r0;
    _685.w = asfloat((asfloat(1008981770u) < abs(r2.y)) ? 4294967295u : 0u);
    r0 = _685;
    float4 _700 = r1;
    _700.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _700;
    float4 _705 = r1;
    _705.x = sqrt(r1.x);
    r1 = _705;
    float4 _713 = r1;
    _713.x = r1.x * cb0_m[13].y;
    r1 = _713;
    float4 _723 = r0;
    _723.z = (asuint(r0.w) != 0u) ? r0.z : asfloat(1065353216u);
    r0 = _723;
    float4 _735 = r0;
    _735.z = (r0.z * r1.x) + (-cb0_m[13].w);
    r0 = _735;
    float4 _741 = r0;
    _741.z = exp2(-r0.z);
    r0 = _741;
    float4 _747 = r0;
    _747.z = min(r0.z, asfloat(1065353216u));
    r0 = _747;
    float4 _754 = o4;
    _754.w = (-r0.z) + asfloat(1065353216u);
    o4 = _754;
    float2 _765 = r0.xy + float2(cb2_m[16].z, cb2_m[16].w);
    r0 = float4(r0.x, r0.y, _765.x, _765.y);
    float2 _776 = r0.zw * float2(cb2_m[16].x, cb2_m[16].y);
    o5 = float4(_776.x, _776.y, o5.z, o5.w);
    o5 = float4(o5.x, o5.y, r0.xy.x, r0.xy.y);
    float2 _792 = r0.xy + float2(cb2_m[17].z, cb2_m[17].w);
    r0 = float4(r0.x, r0.y, _792.x, _792.y);
    float2 _804 = r0.xy + float2(cb2_m[18].z, cb2_m[18].w);
    r0 = float4(_804.x, _804.y, r0.z, r0.w);
    float2 _815 = r0.xy * float2(cb2_m[18].x, cb2_m[18].y);
    o6 = float4(o6.x, o6.y, _815.x, _815.y);
    float2 _826 = r0.zw * float2(cb2_m[17].x, cb2_m[17].y);
    o6 = float4(_826.x, _826.y, o6.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float2 _837 = asfloat(v2);
    shader_in[2] = float4(_837.x, _837.y, shader_in[2].z, shader_in[2].w);
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
